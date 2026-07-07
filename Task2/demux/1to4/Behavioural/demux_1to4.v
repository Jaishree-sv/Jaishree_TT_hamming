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