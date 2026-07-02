//gatelevel
module full_adder(
	input a,
	input b,
	input cin,
	output sum,
	output cout
);
wire w1,w2,w3;
    xor g1(w1,a,b);
    and g2(w2,a,b);
    xor g3(sum,w1,cin);
    and g4(w3,w1,cin);
    or  g5(cout,w2,w3);
endmodule