module comparator(input [3:0] A,B, output reg A_greater_B, A_equal_B ,A_lesser_B);

always@(*) begin
  A_greater_B = 0;
  A_equal_B = 0;
  A_lesser_B = 0;

if (A>B) 
	A_greater_B = 1;
	A_equal_B = 0;
        A_lesser_B = 0;

else if (A<B) 
	A_lesser_B = 1;
	A_equal_B = 0; 
        A_greater_B = 0;

else 
	A_equal_B = 1;
	A_greater_B = 0; 
        A_lesser_B = 0;

end

endmodule