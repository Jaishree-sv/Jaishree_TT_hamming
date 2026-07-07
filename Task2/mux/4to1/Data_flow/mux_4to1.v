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