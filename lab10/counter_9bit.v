module counter_9bit (
    input wire clk,
    input wire re,         // Reset signal
    input wire en_write,   // Enable to load a value
    input wire incr_pc,    // Enable to increment PC
    input wire [8:0] d,    // Input data to load
    output reg [8:0] q     // Output value
);

    always @(posedge clk) begin
        if (re)             // Reset has the highest priority
            q <= 9'b0;
        else if (en_write)  // Write data if reset is not active
            q <= d;
        else if (incr_pc)   // Increment the counter if no other condition is active
            q <= q + 1;
    end

endmodule