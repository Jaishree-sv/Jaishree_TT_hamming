//testbench
`timescale 1ns/1ps
module full_adder_tb;
reg a,b,cin;
wire sum,cout;
full_adder ha(
	.a(a),
	.b(b),
	.cin(cin),
	.sum(sum),
	.cout(cout)
);
initial begin 
	$monitor("At time %0t:a=%b b=%b cin=%b sum=%b cout=%b", $time, a, b,cin, sum, cout); 
	a = 1'b0;b=1'b0;cin=1'b0;
	#10 a = 1'b0;b=1'b0;cin=1'b1;	
	#10 a = 1'b0;b=1'b1;cin=1'b0;
	#10 a = 1'b0;b=1'b1;cin=1'b1;
	#10 a = 1'b1;b=1'b0;cin=1'b0;
	#10 a = 1'b1;b=1'b0;cin=1'b1;
	#10 a = 1'b1;b=1'b1;cin=1'b0;
	#10 a = 1'b1;b=1'b1;cin=1'b1;
	#10 $finish;
	
end
endmodule