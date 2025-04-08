module CPU(
	input wire [8:0] in_Din,
	input wire in_clk,
	input wire in_re,
	input wire in_run,
	output wire [8:0]out_Addr,
	output wire [8:0]out_Dout,
	output wire out_W,
	output wire [2:0] step,
	output wire [8:0] IR_process,
	output wire [8:0] IR,
	output wire [8:0] R0,
	output wire [8:0] R1,
	output wire [8:0] R2,
	output wire [8:0] R3,
	output wire [8:0] R4,
	output wire [8:0] R5,
	output wire [8:0] R6,
	output wire [8:0] R7,
	output wire [8:0] A,
	output wire [8:0] G,
	output wire [8:0] addsub,
	output wire [3:0] Mux_out,
	output wire [15:0] en_reg
);
	
	
	//- 0- R0
	//- 1- R1
	//- 2- R2
	//- 3- R3
	//- 4- R4
	//- 5- R5
	//- 6- R6
	//- 7- R7
	//- 8- G
	//- 9- Din
	//- 10- A
	//- 11- ADDR
	//- 12- IR
	//- 13- Dout
	//- 14- W
	//- 15- flag
	wire [15:0]en_reg_wire;
	
	//- 0- R0
	//- 1- R1
	//- 2- R2
	//- 3- R3
	//- 4- R4
	//- 5- R5
	//- 6- R6
	//- 7- R7
	//- 8- G
	//- 9- Din
	wire [8:0] mux_output_wire;

	/*##############  Register_IR ##############*/
	wire [8:0] IR_output;
	register_9bit IR_reg(
								 .d(in_Din),
								 .clk(in_clk),
								 .en(en_reg_wire[12]),
								 .q(IR_output),
								 .re(in_re)
								);
	
	/*##############  Register_0 ##############*/
	wire [8:0] R0_output;
	register_9bit R0_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[0]),
								 .q(R0_output),
								 .re(in_re)
								);
	
	/*##############  Register_1 ##############*/
	wire [8:0] R1_output;
	register_9bit R1_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[1]),
								 .q(R1_output),
								 .re(in_re)
								);
	
	/*##############  Register_2 ##############*/
	wire [8:0] R2_output;
	register_9bit R2_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[2]),
								 .q(R2_output),
								 .re(in_re)
								);
	
	/*##############  Register_3 ##############*/
	wire [8:0] R3_output;
	register_9bit R3_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[3]),
								 .q(R3_output),
								 .re(in_re)
								);
	
	/*##############  Register_4 ##############*/
	wire [8:0] R4_output;
	register_9bit R4_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[4]),
								 .q(R4_output),
								 .re(in_re)
								);
	
	/*##############  Register_5 ##############*/
	wire [8:0] R5_output;
	register_9bit R5_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[5]),
								 .q(R5_output),
								 .re(in_re)
								);
	
	/*##############  Register_6 ##############*/
	wire [8:0] R6_output;
	register_9bit R6_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[6]),
								 .q(R6_output),
								 .re(in_re)
								);
								
	/*##############  Register_7 ##############*/
	wire [8:0] R7_output;
	wire incr_pc;
	counter_9bit R7_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .incr_pc(incr_pc),
								 .en_write(en_reg_wire[7]),
								 .q(R7_output),
								 .re(in_re)
								);
								
	/*##############  Register_W ##############*/
	register_1bit W_reg(
								 .d(en_reg_wire[14]),
								 .clk(in_clk),
								 .q(out_W),
								 .re(in_re)
								);
								
								
	/*##############  Register_ADDR ##############*/
	register_9bit ADDR_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[11]),
								 .q(out_Addr),
								 .re(in_re)
								);
								
	/*##############  Register_Dout ##############*/
	register_9bit Dout_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[13]),
								 .q(out_Dout),
								 .re(in_re)
								);
								
	/*##############  Register_G ##############*/
	wire [8:0] G_output;
	wire [8:0] addsub_out;
	wire addsub_sel;
	register_9bit G_reg(
								 .d(addsub_out),
								 .clk(in_clk),
								 .en(en_reg_wire[8]),
								 .q(G_output),
								 .re(in_re)
								);
	/*##############  comparator ##############*/
	wire A_eq_B;
	wire A_gt_B;
	wire A_lt_B;
	comparator comparator_unit(
								.A(G_output),     // Số A - 9 bit = G
								.B(9'h000),			// Số B - 9 bit = 0
								.A_eq_B(A_eq_B),  // A == B
								.A_gt_B(A_gt_B),  // A > B greater than
								.A_lt_B(A_lt_B)   // A < B less than
							);
	/*##############  Register_flag ##############*/
	wire[8:0] flag_reg_input = {6'b000000,A_lt_B,A_gt_B,A_eq_B}; 
	wire[8:0] flag_reg_output;
	register_9bit flag_reg(
								 .d(flag_reg_input),
								 .clk(in_clk),
								 .en(en_reg_wire[15]),
								 .q(flag_reg_output),
								 .re(in_re)
								);
								
	/*##############  Register_A ##############*/
	wire [8:0] A_output;
	register_9bit A_reg(
								 .d(mux_output_wire),
								 .clk(in_clk),
								 .en(en_reg_wire[10]),
								 .q(A_output),
								 .re(in_re)
								);
								
	/*##############  add sub ##############*/
	addsub_9bit addsub_unit(
							.A(A_output),
							.B(mux_output_wire),
							.sub_mode(addsub_sel), // 0: add, 1: sub
							.result(addsub_out)
							);
	
	/*##############  Mux ##############*/	
	wire [3:0]mux_sel_wire;
	mux_9to1 Mux_unit(
							.in0(R0_output), 
							.in1(R1_output), 
							.in2(R2_output), 
							.in3(R3_output), 
							.in4(R4_output), 
							.in5(R5_output), 
							.in6(R6_output), 
							.in7(R7_output), 
							.in8(G_output),
							.in9(in_Din),
							.sel(mux_sel_wire),
							.out(mux_output_wire)
							);
	
	control_unit uut (
		.clk(in_clk),
		.reset(in_re),
		.run(in_run),
		.IR(IR_output),
		.flag(flag_reg_output),
		.mux_sel(mux_sel_wire),
		.en_reg(en_reg_wire),
		.incr_pc(incr_pc),
		.addsub_sel(addsub_sel),
		.step(step),
		.IR_process(IR_process)
	);
	 
	assign IR = IR_output;
	assign R0 = R0_output;
	assign R1 = R1_output;
	assign R2 = R2_output;
	assign R3 = R3_output;
	assign R4 = R4_output;
	assign R5 = R5_output;
	assign R6 = R6_output;
	assign R7 = R7_output;
	assign A = A_output;
	assign G  = G_output;
	assign addsub = addsub_out;
	assign Mux_out = mux_sel_wire;
	assign en_reg = en_reg_wire;

endmodule
