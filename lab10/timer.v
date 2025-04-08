module timer( 
 input Clk, nRst, 
 output out_clk); 
 reg [25:0]delay; 
 assign out_clk = delay? 1:0; 
  
 always@(posedge Clk or negedge nRst) 
 begin 
  if(~nRst) delay = 0; 
  else begin 
   //if (delay==35999999) //set for board (0.5s < clk <1s) 
   if (delay == 50000) //set for testbench 
    delay <=0; 
   else 
    delay <= delay +1; 
  end 
 end 
endmodule