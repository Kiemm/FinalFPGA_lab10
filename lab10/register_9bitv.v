module register_9bit (
    input wire [8:0] d,
    input wire clk,
    input wire en, // Write enable
    input wire re, // Reset enable
    output reg [8:0] q
);
    always @(posedge clk) begin
        if (re) // Reset has higher priority
            q <= 9'b0;
        else if (en) // Write to register only if reset is not active
            q <= d;
    end
endmodule
