module rom_program (
    input  wire        clk,         // Clock
    input  wire        en_write,    // Ghi khi en_write = 1
    input  wire [8:0]  addr,        // Địa chỉ 8-bit (0–31)
    input  wire [8:0]  wdata,       // Dữ liệu ghi
    output wire [8:0]  rdata        // Dữ liệu đọc
);

    reg [8:0] memory [0:31];

    initial begin
        memory[0]  = 9'b001001000; // mvi R1,#1
        memory[1]  = 9'b000000001;
        memory[2]  = 9'b001000000; // mvi R2,#0
        memory[3]  = 9'b000000000;
        memory[4]  = 9'b001011000; // mvi R3,#0x40
        memory[5]  = 9'b010000000;
        memory[6]  = 9'b101010011; // st R2,R3
        memory[7]  = 9'b010010001; // add R2,R1
        memory[8]  = 9'b001011000; // mvi R3,#0x0F
        memory[9]  = 9'b000001111;
        memory[10] = 9'b000101111; // mv R5,R7
        memory[11] = 9'b001100000; // mvi R4,#0x0F
        memory[12] = 9'b000001111;
        memory[13] = 9'b000000111; // mv R0,R7
        memory[14] = 9'b011100001; // sub R4,R1
        memory[15] = 9'b110111000; // mvnz R7,R0
        memory[16] = 9'b011011001; // sub R3,R1
        memory[17] = 9'b110111101; // mvnz R7,R5
        memory[18] = 9'b001111000; // mvi R7,#addr 4
        memory[19] = 9'b000000011;
        // Nếu cần, khởi tạo các ô còn lại = 0
        memory[20] = 9'b000000000;
        memory[21] = 9'b000000000;
        memory[22] = 9'b000000000;
        memory[23] = 9'b000000000;
        memory[24] = 9'b000000000;
        memory[25] = 9'b000000000;
        memory[26] = 9'b000000000;
        memory[27] = 9'b000000000;
        memory[28] = 9'b000000000;
        memory[29] = 9'b000000000;
        memory[30] = 9'b000000000;
        memory[31] = 9'b000000000;
    end

    // Ghi dữ liệu khi en_write = 1
    always @(posedge clk) begin
        if (en_write) begin
            memory[addr] <= wdata;
        end
    end

    // Đọc dữ liệu từ bộ nhớ
    assign rdata = memory[addr];

endmodule
