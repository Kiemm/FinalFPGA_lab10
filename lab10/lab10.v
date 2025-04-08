	module lab10(
		input [9:0] SW,
		input [3:0] KEY,
		input CLOCK_50,
		output [0:6] HEX0,HEX1,HEX2,HEX3,
		output [9:0] LEDR,
		output [7:0] LEDG
);
	
	/*##############  Control  ##############*/
	wire clk;
	timer u3(.Clk(CLOCK_50),.out_clk(clk),.nRst(KEY[2])); 
	wire re = SW[1];
	wire run = SW[0];
	wire w;
	
	/*##############  BUS  ##############*/
	wire [8:0] Din_bus;
	wire [8:0] Addr_bus;
	wire [8:0] Dout_bus;
	
	/*##############  Debug wire  ##############*/
	wire [2:0] step;
	wire [8:0] IR_process;
	wire [8:0] IR;
	wire [8:0] R0;
	wire [8:0] R1;
	wire [8:0] R2;
	wire [8:0] R3;
	wire [8:0] R4;
	wire [8:0] R5;
	wire [8:0] R6;
	wire [8:0] R7;
	wire [8:0] A;
	wire [8:0] G;
	wire [8:0] addsub;
	wire [3:0] Mux_out;
	wire [14:0] en_reg;
	
	/*##############  ROM  ##############*/
	/*
	rom rom_unit(
		.addr(Addr_bus),
		.data(Din_bus)
	);
	*/
	wire [8:0] addr_rom = {2'b00,Addr_bus[6:0]};
	
	wire en_mem = ~(Addr_bus[8]|Addr_bus[7]);
	wire en_led = ~(Addr_bus[8]|~Addr_bus[7]);
	
	wire wr_en_mem = en_mem&w;
	wire wr_en_led = en_led&w;
	
	rom_program memoey(
								.clk(clk),         		// Clock
								.en_write(wr_en_mem),    			// Ghi khi en_write = 1
								.addr(addr_rom),        // Địa chỉ 9-bit (0–128)
								.wdata(Dout_bus),       // Dữ liệu ghi
								.rdata(Din_bus)        	// Dữ liệu đọc
								);
								
	/*##############  LED Display MEM  ##############*/
	wire [8:0] MEM0,MEM1,MEM2,MEM3;
	rom_led LED(
					.clk(clk),         		// Clock
					.en_write(wr_en_led),    			// Ghi khi en_write = 1
					.addr(addr_rom),        // Địa chỉ 9-bit (0–128)
					.wdata(Dout_bus),       // Dữ liệu ghi
					.MEM0(MEM0),
					.MEM1(MEM1),
					.MEM2(MEM2),
					.MEM3(MEM3)
					);
								
	/*##############  CPU  ##############*/
	CPU CPU_unit(
		.in_Din(Din_bus),									// Data input
		.in_clk(clk),										// Clock
		.in_re(re),											// Reset
		.in_run(run),										// Run
		.out_Addr(Addr_bus),								// Address memory
		.out_Dout(Dout_bus),								// Data output
		.out_W(w),											// Write memoey enable
		//debug wire
		.step(step),
		.IR_process(IR_process),
		.IR(IR),
		.R0(R0),
		.R1(R1),
		.R2(R2),
		.R3(R3),
		.R4(R4),
		.R5(R5),
		.R6(R6),
		.R7(R7),
		.A(A),
		.G(G),
		.addsub(addsub),
		.Mux_out(Mux_out),
		.en_reg(en_reg)
	);
	
	/*##############  CPU  ##############*/
	assign LEDG[7:0] = MEM0[7:0];
	assign LEDR[8:0] = R2[8:0];	
	
endmodule
