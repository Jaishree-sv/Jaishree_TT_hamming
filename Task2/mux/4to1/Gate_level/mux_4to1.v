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