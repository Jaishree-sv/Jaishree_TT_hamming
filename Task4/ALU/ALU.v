module ALU(input [3:0] A, input [3:0] B,input [2:0]sel, output reg [4:0] Y);
always @(*) begin
    case (sel)
        3'b000:Y = A + B;
        3'b001:Y = A - B;
        3'b010:Y = A>>1;
        3'b011:Y = A<<1;
        3'b100:Y = A&B;
        3'b101:Y = A^B;
        3'b110:Y = A|B;
        3'b111:Y = ~A;
        default: Y = 5'b00000;
    endcase
end
endmodule