module control ( input W, input M , input D ,input arm, output reg A);

always@(*) begin
A = 0;
if(arm == 1) begin
	if (D == 1 || W == 1) begin
	A = 1;
	end
end

if (M == 1 && W == 1) begin
	A = 1;
end

end

endmodule
