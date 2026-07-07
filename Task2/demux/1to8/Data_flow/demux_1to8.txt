//data_flow
module demux_1to4(input s1,input s2,input d,output y0,output y1,output y2,output y3);

wire s1n,s2n;

assign s1n = ~s1;
assign s2n = ~s2;

assign y0 = (d & s1n & s2n); 
assign y1 = (d & s1n & s2) ;
assign y2 = (d & s1 & s2n) ;
assign y3 = (d & s1 & s2) ;

endmodule

module demux_1to8(input d,input s0,s1,s2,output y0,y1,y2,y3,y4,y5,y6,y7);

wire d0,d1;

assign d0 = d&~s0;
assign d1 = d&s0;

demux_1to4 dmux1(
    .d(d0),
    .s1(s1),
    .s2(s2),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

demux_1to4 dmux2(
    .d(d1),
    .s1(s1),
    .s2(s2),
    .y0(y4),
    .y1(y5),
    .y2(y6),
    .y3(y7)
);
endmodule

