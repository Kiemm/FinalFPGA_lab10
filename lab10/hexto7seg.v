module hexto7seg (
    input wire [3:0] C,
    output reg [6:0] Dspl    // a-g (không tính dấu chấm)
);
    always @(*) begin
        case (C)
            4'd0: Dspl = 7'b1000000;
            4'd1: Dspl = 7'b1111001;
            4'd2: Dspl = 7'b0100100;
            4'd3: Dspl = 7'b0110000;
            4'd4: Dspl = 7'b0011001;
            4'd5: Dspl = 7'b0010010;
            4'd6: Dspl = 7'b0000010;
            4'd7: Dspl = 7'b1111000;
            4'd8: Dspl = 7'b0000000;
            4'd9: Dspl = 7'b0010000;
            default: Dspl = 7'b1111111; // blank
        endcase
    end
endmodule
