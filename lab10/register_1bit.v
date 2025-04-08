module register_1bit (
    input wire d,
    input wire clk,
    input wire re, // Reset enable
    output reg q
);
    always @(posedge clk) begin
        if (re) // Reset has higher priority
            q <= 0;
        else    // Write to register only if reset is not active
            q <= d;
    end
endmodule