module addsub_9bit (
    input wire [8:0] A,
    input wire [8:0] B,
    input wire sub_mode, // 0: add, 1: sub
    output wire [8:0] result
);
    assign result = sub_mode ? (A - B) : (A + B);
endmodule
