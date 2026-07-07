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