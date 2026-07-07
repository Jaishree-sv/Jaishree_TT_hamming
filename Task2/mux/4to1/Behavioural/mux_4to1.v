//behavioural
module mux_4to1(input d0,input d1,input d2,input d3,input s1,input s2,output reg y);
always @(*) begin
    case ({s1, s2})
        2'b00:y = d0;
        2'b01:y = d1;
        2'b10:y = d2;
        2'b11:y = d3;
        default:y = 0;
    endcase
end
endmodule