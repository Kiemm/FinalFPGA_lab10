module control_unit (
    input run,
    input clk,
    input reset,
    input [8:0] IR,
	 input [8:0] flag,	// A < B less than // A > B greater than // A == B
    output reg [3:0] mux_sel,
    output reg [15:0] en_reg, // enR0 đến enR6, enCount(R7), enA, enG, enADDR, enDout, enIR, enW,flag
    output reg incr_pc,
    output reg addsub_sel, // 0: add, 1: sub
    output reg W,
	 /*######## debug write  ########*/
	 output reg [2:0] step,
	 output [8:0] IR_process
);

    // Giải mã các trường trong IR
    wire [2:0] opcode = IR[8:6];
    wire [2:0] Rx = IR[5:3];
    wire [2:0] Ry = IR[2:0];
	 assign IR_process = IR;
    // Biến step để theo dõi chu kỳ lệnh
    
    reg [2:0] next_step;

    // Khối đồng bộ cập nhật giá trị của step
    always @(posedge clk or posedge reset) begin
        if (reset)
            step <= 0;
        else if(run)
            step <= next_step;
    end

    // Khối combinational tính toán tín hiệu điều khiển và xác định bước tiếp theo
    always @(*) begin
        // Mặc định: tăng bước lên 1
        next_step = step + 1;

        // Giá trị mặc định cho các tín hiệu điều khiển
        mux_sel = 4'b0000;
        en_reg  = 15'b0;
        incr_pc = 0;
        addsub_sel = 0;
        W = 0;
        
        // Bước 0 chung: enable thanh ghi IR
        if (step == 3'd0)
            en_reg[12] = 1; // enIR
        
        // Điều khiển theo opcode và bước
        case (opcode)
            /* ########## mv Rx, Ry ########### */
            3'b000: begin
                case (step)
                    3'd1: begin
                        mux_sel = {1'b0, Ry};  // Chọn Rx = nội dung của Ry
                        en_reg[Rx] = 1;        // Enable ghi vào Rx
                    end
                    3'd2: begin
                        incr_pc = 1;           		// Tăng PC
                    end
                    3'd3: begin
                        mux_sel = {1'b0, 3'b111}; 	// Chọn R7 (ADD)
                        en_reg[11] = 1;          // Enable ghi ADDR
                    end
                    3'd4: begin
                        next_step = 0;         // Reset bước về 0, hoàn thành chu kỳ lệnh
                    end
                endcase
            end
            /* ########## miv Rx, #D ########### */
            3'b001: begin 
                case (step)
                    3'd1: begin
                        incr_pc = 1;           // Tăng PC
                    end
                    3'd2: begin
                        mux_sel = {1'b0, 3'b111}; // Chọn R7 (ADDR)
                        en_reg[11] = 1;          // Enable ghi ADDR
                    end
                    3'd3: begin
                        mux_sel = 9;          			// Chọn nguồn dữ liệu Din
                        en_reg[{1'b0,Rx}] = 1;        // Enable ghi vào Rx
                    end
                    3'd4: begin
                        incr_pc = 1;           // Tăng PC
                    end
                    3'd5: begin
                        mux_sel = {1'b0, 3'b111}; // Chọn R7 (ADDR)
                        en_reg[11] = 1;          // Enable ghi ADDR
                    end
                    3'd6: begin
                        next_step = 0;         // Reset bước về 0
                    end
                endcase
            end
            /* ########## add Rx, Ry ########### */
            3'b010: begin
                case (step)
                    3'd1: begin
                        mux_sel = {1'b0, Rx};  // Chọn nguồn từ Rx
                        en_reg[10] = 1;        // Enable thanh ghi A
                    end
                    3'd2: begin
                        mux_sel = {1'b0, Ry};  // Chọn nguồn từ Ry
                        en_reg[8] = 1;         // Enable ghi kết quả vào G (giá trị tính toán)
                    end
                    3'd3: begin
                        mux_sel = 8;           	// Chọn nguồn từ G
                        en_reg[Rx] = 1;  			// Ghi kết quả vào Rx
                    end
                    3'd4: begin
                        incr_pc = 1;           // Tăng PC
                    end
                    3'd5: begin
                        mux_sel = {1'b0, 3'b111}; // Chọn R7 (ADDR)
                        en_reg[11] = 1;          // Enable ghi ADDR
                    end
                    3'd6: begin
                        next_step = 0;         // Reset bước về 0
                    end
                endcase
            end
            /* ########## sub Rx, Ry ########### */ 
            3'b011: begin
                case (step)
                    3'd1: begin
                        mux_sel = {1'b0, Rx};  // Chọn nguồn từ Rx
                        en_reg[10] = 1;        // Enable thanh ghi A
                    end
                    3'd2: begin
                        addsub_sel = 1;        // Chọn phép trừ
                        mux_sel = {1'b0, Ry};  // Chọn nguồn từ Ry
                        en_reg[8] = 1;         // Enable ghi kết quả vào G
                    end
                    3'd3: begin
                        mux_sel = 8;           // Chọn nguồn từ G
                        en_reg[Rx] = 1;        // Ghi kết quả vào Rx
                    end
                    3'd4: begin
                        incr_pc = 1;           // Tăng PC
                    end
                    3'd5: begin
                        mux_sel = {1'b0, 3'b111}; // Chọn R7 (ADDR)
                        en_reg[11] = 1;          // Enable ghi ADDR
                    end
                    3'd6: begin
                        next_step = 0;         // Reset bước về 0
                    end
                endcase
            end
				/* ########## ld Rx,[Ry] ########### */ 
            3'b100: begin
                case (step)
                    3'd1: begin
                        mux_sel = {1'b0, Ry};  // Chọn nguồn từ Ry
                        en_reg[11] = 1;        // Enable ghi ADDR
                    end
                    3'd2: begin
								mux_sel = 9;  			  // Chọn nguồn từ Din
                        en_reg[Rx] = 1;        // Enable ghi Rx
                    end
						  3'd3: begin
                        incr_pc = 1;           // Tăng PC
                    end
                    3'd4: begin
                        mux_sel = {1'b0, 3'b111}; // Chọn R7 (ADDR)
                        en_reg[11] = 1;          // Enable ghi ADDR
                    end
                    3'd5: begin
                        next_step = 0;         // Reset bước về 0
                    end
                endcase
            end
				/* ########## st Rx,[Ry] ########### */
				// luu gia tri Rx vao thanh ghi dia chi Ry	
            3'b101: begin
                case (step)
                    3'd1: begin
                        mux_sel = {1'b0, Ry};  // Chọn nguồn từ Ry
                        en_reg[11] = 1;        // Enable ghi ADDR
                    end
                    3'd2: begin
								mux_sel = {1'b0, Rx};  // Chọn nguồn từ Rx
                        en_reg[13] = 1;        // Enable ghi Dout
                    end
                    3'd3: begin
                        en_reg[14] = 1;        // Enable ghi W
                    end
						  3'd4: begin
                        incr_pc = 1;           // Tăng PC
                    end
                    3'd5: begin
                        mux_sel = {1'b0, 3'b111}; // Chọn R7 (ADDR)
                        en_reg[11] = 1;          // Enable ghi ADDR
                    end
                    3'd6: begin
                        next_step = 0;         // Reset bước về 0
                    end
                endcase
            end
				/* ########## mvzn Rx, Ry ########### */
            3'b110: begin
                case (step)
						  3'd1: begin
                        en_reg[15] = 1;        // Enable ghi vào Flag
                    end
						  3'd2: begin
                        next_step = flag[0]? 4: next_step; // Nếu flag[0] = 1 hay G == A || Đùng thì next_step = 4 || Sai thì mv
                    end
                    3'd3: begin
                        mux_sel = {1'b0, Ry};  // Chọn Rx = nội dung của Ry
                        en_reg[Rx] = 1;        // Enable ghi vào Rx
                    end
                    3'd4: begin
                        incr_pc = 1;           		// Tăng PC
                    end
                    3'd5: begin
                        mux_sel = {1'b0, 3'b111}; 	// Chọn R7 (ADD)
                        en_reg[11] = 1;          // Enable ghi ADDR
                    end
                    3'd6: begin
                        next_step = 0;         // Reset bước về 0, hoàn thành chu kỳ lệnh
                    end
                endcase
            end
            default: begin
                next_step = 0; // Đối với lệnh NOP hoặc không xác định
            end
        endcase
    end

endmodule
