// ================================================
// FULL ADDER MODULE (các bit đơn)
module full_adder(
    input  a,
    input  b,
    input  cin,
    output sum,
    output cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
endmodule

// ================================================
// 4-bit Ripple Carry Adder: cộng hai số 4-bit, kết quả 5-bit (bao gồm bit tràn)
module adder4_5(
    input  [3:0] a,
    input  [3:0] b,
    output [4:0] sum
);
    wire c1, c2, c3;
    wire s0, s1, s2, s3;
    
    full_adder FA0 (.a(a[0]), .b(b[0]), .cin(1'b0),   .sum(s0), .cout(c1));
    full_adder FA1 (.a(a[1]), .b(b[1]), .cin(c1),     .sum(s1), .cout(c2));
    full_adder FA2 (.a(a[2]), .b(b[2]), .cin(c2),     .sum(s2), .cout(c3));
    full_adder FA3 (.a(a[3]), .b(b[3]), .cin(c3),     .sum(s3), .cout(sum[4]));
    
    assign sum[3:0] = {s3, s2, s1, s0};
endmodule

// ================================================
// 4-bit Ripple Carry Adder phiên bản không dùng toán tử '+' trực tiếp.
// Ở đây kết quả ta chỉ cần 4 bit (bit tràn không được sử dụng).
module adder4(
    input  [3:0] a,
    input  [3:0] b,
    output [3:0] sum
);
    wire [4:0] tmp;
    adder4_5 add_inst (.a(a), .b(b), .sum(tmp));
    assign sum = tmp[3:0];
endmodule

// ================================================
// Một stage của thuật toán Double Dabble:
// - Với 28-bit "shift register" được chia thành 4 nhóm BCD (bits [27:12]) và phần binary (bits [11:0]).
// - Với 4 nhóm BCD, thực hiện “cộng 3” nếu (nibble + 11) cho ra bit tràn (tức nibble ≥ 5)
//   qua mạch cộng. Sau đó dịch trái 1 bit toàn bộ thanh.
module double_dabble_stage(
    input  [27:0] in,
    output [27:0] out
);
    // Xử lý 4 nibble BCD: nibble0 = in[27:24], nibble1 = in[23:20],
    // nibble2 = in[19:16], nibble3 = in[15:12].
    wire [4:0] tmp0, tmp1, tmp2, tmp3;
    wire        corr0, corr1, corr2, corr3;
    wire [3:0]  nib0_corr, nib1_corr, nib2_corr, nib3_corr;
    wire [3:0]  add3_0 = 4'd3;
    wire [3:0]  add3_1 = 4'd3;
    wire [3:0]  add3_2 = 4'd3;
    wire [3:0]  add3_3 = 4'd3;
    
    // Tính (nibble + 11) dùng adder4_5
    adder4_5 u0 (.a(in[27:24]), .b(4'd11), .sum(tmp0));
    adder4_5 u1 (.a(in[23:20]), .b(4'd11), .sum(tmp1));
    adder4_5 u2 (.a(in[19:16]), .b(4'd11), .sum(tmp2));
    adder4_5 u3 (.a(in[15:12]), .b(4'd11), .sum(tmp3));
    
    // Bit tràn của mỗi phép cộng là chỉ thị (1 khi nibble >= 5)
    assign corr0 = tmp0[4];
    assign corr1 = tmp1[4];
    assign corr2 = tmp2[4];
    assign corr3 = tmp3[4];
    
    // Sử dụng multiplexer dạng điều kiện để chọn thêm 3 hay 0,
    // sau đó cộng với nibble ban đầu bằng module adder4.
    // (Cách viết dưới đây dùng toán tử điều kiện “?:” chấp nhận ở mức cấu hình mạch.)
    wire [3:0] add_val0 = corr0 ? add3_0 : 4'd0;
    wire [3:0] add_val1 = corr1 ? add3_1 : 4'd0;
    wire [3:0] add_val2 = corr2 ? add3_2 : 4'd0;
    wire [3:0] add_val3 = corr3 ? add3_3 : 4'd0;
    
    adder4 u0a (.a(in[27:24]), .b(add_val0), .sum(nib0_corr));
    adder4 u1a (.a(in[23:20]), .b(add_val1), .sum(nib1_corr));
    adder4 u2a (.a(in[19:16]), .b(add_val2), .sum(nib2_corr));
    adder4 u3a (.a(in[15:12]), .b(add_val3), .sum(nib3_corr));
    
    // Gộp lại phần BCD sau hiệu chỉnh và phần binary không thay đổi (in[11:0]),
    // sau đó dịch trái 1 bit toàn bộ 28-bit (không dùng toán tử '+')
    wire [27:0] corrected;
    assign corrected = { nib0_corr, nib1_corr, nib2_corr, nib3_corr, in[11:0] };
    // Dịch trái 1 bit: phần bit ngoài cùng bên trái bị mất, thêm 0 vào LSB.
    assign out = { corrected[26:0], 1'b0 };
endmodule

// ================================================
// Top module: bin2bcd
// Sử dụng 16 stage "double_dabble_stage" nối tiếp (không dùng vòng lặp)
module bin2bcd(
    input  [15:0] bin,          // Số 16-bit đầu vào (thập lục phân)
    output [3:0] thousands,     // Chữ số hàng nghìn
    output [3:0] hundreds,      // Chữ số hàng trăm
    output [3:0] tens,          // Chữ số hàng chục
    output [3:0] ones           // Chữ số hàng đơn vị
);
    // Thanh dịch 28 bit: 16 bit binary kết hợp với 12 bit ban đầu cho BCD
    // (theo cách unroll ở ví dụ trước, phần BCD nằm ở bits [27:12])
    wire [27:0] stage0;
    assign stage0 = {12'd0, bin};
    
    // Unroll 16 stage bằng cách nối tiếp các module double_dabble_stage
    wire [27:0] stage1, stage2, stage3, stage4, stage5, stage6, stage7;
    wire [27:0] stage8, stage9, stage10, stage11, stage12, stage13, stage14, stage15, stage16;
    
    double_dabble_stage s0  (.in(stage0),  .out(stage1));
    double_dabble_stage s1  (.in(stage1),  .out(stage2));
    double_dabble_stage s2  (.in(stage2),  .out(stage3));
    double_dabble_stage s3  (.in(stage3),  .out(stage4));
    double_dabble_stage s4  (.in(stage4),  .out(stage5));
    double_dabble_stage s5  (.in(stage5),  .out(stage6));
    double_dabble_stage s6  (.in(stage6),  .out(stage7));
    double_dabble_stage s7  (.in(stage7),  .out(stage8));
    double_dabble_stage s8  (.in(stage8),  .out(stage9));
    double_dabble_stage s9  (.in(stage9),  .out(stage10));
    double_dabble_stage s10 (.in(stage10), .out(stage11));
    double_dabble_stage s11 (.in(stage11), .out(stage12));
    double_dabble_stage s12 (.in(stage12), .out(stage13));
    double_dabble_stage s13 (.in(stage13), .out(stage14));
    double_dabble_stage s14 (.in(stage14), .out(stage15));
    double_dabble_stage s15 (.in(stage15), .out(stage16));
    
    // Sau 16 bước, các chữ số BCD nằm ở:
    // thousands: stage16[27:24], hundreds: stage16[23:20],
    // tens: stage16[19:16], ones: stage16[15:12]
    assign thousands = stage16[27:24];
    assign hundreds  = stage16[23:20];
    assign tens      = stage16[19:16];
    assign ones      = stage16[15:12];
    
endmodule