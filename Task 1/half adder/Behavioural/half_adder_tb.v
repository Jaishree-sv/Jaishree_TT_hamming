//testbench
`timescale 1ns/1ps
module half_adder_tb;
reg a,b;
wire sum,cout;
half_adder ha(
	.a(a),
	.b(b),
	.sum(sum),
	.cout(cout)
);
initial begin 
	$monitor("At time %0t:a=%b b=%b sum=%b cout=%b", $time, a, b, sum, cout); 
	a = 1'b0;b=1'b0;
	#10 a = 1'b0;b=1'b1;	
	#10 a = 1'b1;b=1'b0;	
	#10 a = 1'b1;b=1'b1;
	#10 $finish;
	
end
endmodule