//behavioural
module demux_1to4(input s1,s2,input d,output reg y0,y1,y2,y3);
always @(*) begin
	y0= 0;y1 = 0;y2 = 0;y3 = 0;
    case ({s1, s2})
        2'b00:y0 = d;
        2'b01:y1 = d;
        2'b10:y2 = d;
        2'b11:y3 = d;
    endcase
end
endmodule

module demux_1to8(input d,input s0,s1,s2,output reg y0,y1,y2,y3,y4,y5,y6,y7);

reg d0, d1;

always @(*) begin
    d0 = 0;
    d1 = 0;

    if (s0 == 0)
        d0 = d;
    else
        d1 = d;
end


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

