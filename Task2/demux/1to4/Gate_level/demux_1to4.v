//gate_level
module demux_1to4(input s1,input s2,input d,output y0,output y1,output y2,output y3);
wire s1n,s2n;
not g1(s1n,s1);
not g2(s2n,s2);

and g3(y0,d,s1n,s2n);
and g4(y1,d,s1n,s2);
and g5(y2,d,s1,s2n);
and g6(y3,d,s1,s2);


endmodule