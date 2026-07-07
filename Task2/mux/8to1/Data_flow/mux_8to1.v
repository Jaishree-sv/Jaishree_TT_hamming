//data_flow
module mux_4to1(input d0,input d1,input d2,input d3,input s0,input s1,output y);
wire w1,w2,w3,w4;
wire s0n,s1n;

assign s0n = ~s0;
assign s1n = ~s1;

assign w1 = (d0 & s0n & s1n); 
assign w2 = (d1 & s0n & s1) ;
assign w3 = (d2 & s0 & s1n) ;
assign w4 = (d3 & s0 & s1) ;

assign y = (w1 | w2 | w3 | w4);


endmodule

module mux_8to1(input i0,input i1,input i2,input i3,input i4,input i5,input i6,input i7,input s0,input s1,input s2,output Y);
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
assign Y = (w1 & ~s2) | (w2 & s2);
endmodule