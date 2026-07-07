//gate_level
module mux_4to1(input d0,input d1,input d2,input d3,input s0,input s1,output y);
wire w1,w2,w3,w4;
wire s0n,s1n;
not g1(s0n,s0);
not g2(s1n,s1);

and g3(w1,d0,s0n,s1n);
and g4(w2,d1,s0n,s1);
and g5(w3,d2,s0,s1n);
and g6(w4,d3,s0,s1);

or g7(y,w1,w2,w3,w4);

endmodule

module mux_8to1(input i0,input i1,input i2,input i3,input i4,input i5,input i6,input i7,input s0,input s1,input s2,output Y);

wire w1,w2;
wire s2n,w3,w4;

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

not g8(s2n,s2);
and g9(w3,s2n,w1);
and g10(w4,s2,w2);
or g11(Y,w3,w4);


endmodule