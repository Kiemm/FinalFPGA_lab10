module rom_led (
    input  wire        clk,         // Clock
    input  wire        en_write,    // Ghi khi en_write = 1
    input  wire [8:0]  addr,        // Địa chỉ 9-bit (0–3)
    input  wire [8:0]  wdata,       // Dữ liệu ghi
    output wire [8:0]  rdata,        // Dữ liệu đọc
	 output wire [8:0]  MEM0,
	 output wire [8:0]  MEM1,
	 output wire [8:0]  MEM2,
	 output wire [8:0]  MEM3
);

    reg [8:0] memory [0:3];
	 assign MEM0 = memory[0];
	 assign MEM1 = memory[1];
	 assign MEM2 = memory[2];
	 assign MEM3 = memory[3]; 
	 
    initial begin
        memory[0]  = 9'b111111111; // mvi R1,#1
        memory[1]  = 9'b111111111;
        memory[2]  = 9'b111111111; // mvi R2,#0
        memory[3]  = 9'b111111111;
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
