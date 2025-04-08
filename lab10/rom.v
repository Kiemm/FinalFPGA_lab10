module rom (
    input [8:0] addr,  // 5-bit address to access 32 locations
    output reg [8:0] data // 9-bit instruction output
);

    always @(*) begin
        case (addr)
            9'h000: data = 9'b001001000; // mvi R1, #1
            9'h001: data = 9'b000000001; 
            9'h002: data = 9'b001010000; // mvi R2, #1
            9'h003: data = 9'b000000010; 
            9'h004: data = 9'b010010001; // add R2, R1
            9'h005: data = 9'b000011010; // mv R3 R2 
            9'h006: data = 9'b111111111; // Stop
            9'h007: data = 9'b000000111; // mv R0, R7
            9'h008: data = 9'b011100001; // Inner sub R4, R1
            9'h009: data = 9'b110111000; 
            9'h00A: data = 9'b011011001; 
            9'h00B: data = 9'b110111101; 
            9'h00C: data = 9'b001111000; 
            9'h00D: data = 9'b000000100; // mvnz R7, R0
            default: data = 9'b000000000; // Default to NOP
        endcase
    end
endmodule