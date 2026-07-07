//behavioural
module mux_4to1(input d0,input d1,input d2,input d3,input s0,input s1, output reg y);
always @(*) begin
    case ({s0,s1})
        2'b00:y = d0;
        2'b01:y = d1;
        2'b10:y = d2;
        2'b11:y = d3;
        default:y = 0;
    endcase
end
endmodule

module mux_8to1(input i0,input i1,input i2,input i3,input i4,input i5,input i6,input i7,input s0,input s1,input s2,output reg Y);

wire w1,w2;

mux_4to1 mux1(
    .d0(i0),
    .d1(i1),
    .d2(i2),
    .d3(i3),
    .s0(s0),
    .s1(s1),
    .y(w1)
);

mux_4to1 mux2(
    .d0(i4),
    .d1(i5),
    .d2(i6),
    .d3(i7),
    .s0(s0),
    .s1(s1),
    .y(w2)
);

always@(*) begin
     case(s2)
	1'b0 :Y = w1;
	1'b1 :Y = w2;
     endcase
end
endmodule