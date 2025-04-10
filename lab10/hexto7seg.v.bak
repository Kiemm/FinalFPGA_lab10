module hexto7seg(C,Dspl);
	input [3:0]C;
	output [0:6]Dspl;
	wire [3:0] Cb;

	assign Cb=~C;
	assign Dspl[0]=(Cb[3]&Cb[1]&(C[2]^C[0]))|(C[3]&C[0]&(C[2]^C[1]));
	assign Dspl[1]=(C[2]&C[1]&Cb[0])|(C[3]&C[1]&C[0])|(C[2]&Cb[1]&(C[3]^C[0]));
	assign Dspl[2]=C[3]&C[2]&(Cb[0]|C[1])|(Cb[3]&Cb[2]&C[1]&Cb[0]);
	assign Dspl[3]=(C[2]&C[1]&C[0])|(Cb[3]&Cb[2]&Cb[1]&C[0])|(C[3]&Cb[2]&C[1]&Cb[0])|(Cb[3]&C[2]&Cb[1]&Cb[0]);
	assign Dspl[4]=(Cb[3]&C[0])|(Cb[3]&C[2]&Cb[1])|(Cb[2]&Cb[1]&C[0]);
	assign Dspl[5]=(Cb[3]&Cb[2]&(C[1]|C[0]))|(Cb[3]&C[1]&C[0])|(C[3]&C[2]&Cb[1]&C[0]);
	assign Dspl[6]=(Cb[3]&Cb[2]&Cb[1])|(Cb[3]&C[2]&C[1]&C[0])|(C[3]&C[2]&Cb[1]&Cb[0]);

endmodule
