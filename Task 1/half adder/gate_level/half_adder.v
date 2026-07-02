//gate level
module half_Adder (input a, input b,output sum,output cout);
  xor(sum,a,b);
  and(cout,a,b);
endmodule


