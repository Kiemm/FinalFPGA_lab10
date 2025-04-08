module control_unit_tb;

    // Signals
    reg clk, reset;
    reg [8:0] IR;
    wire [3:0] mux_sel;
    wire [14:0] en_reg;
    wire incr_pc, addsub_sel, W;
    wire [2:0] step;
    wire [8:0] IR_process;

    // Instantiate the module
    control_unit uut (
        .clk(clk),
        .reset(reset),
        .IR(IR),
        .mux_sel(mux_sel),
        .en_reg(en_reg),
        .incr_pc(incr_pc),
        .addsub_sel(addsub_sel),
        .W(W),
        .step(step),
        .IR_process(IR_process)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        IR = 9'b000_000_000; // Example opcode
        
        // Hold reset for some time
        #10 reset = 0;

        // Test different instruction cases
        #100 IR = 9'b000_001_010; // mv Rx, Ry example
        #100 IR = 9'b001_011_100; // miv Rx, #D example
        #100 IR = 9'b010_010_011; // add Rx, Ry example
        #100 IR = 9'b011_101_110; // sub Rx, Ry example
        
        // Allow some time for execution
        #50 $finish;
    end

    initial begin
        $monitor("Time=%0t | IR=%b | Step=%d | mux_sel=%b | en_reg=%b | incr_pc=%b | addsub_sel=%b | W=%b", 
            $time, IR, step, mux_sel, en_reg, incr_pc, addsub_sel, W);
    end

endmodule