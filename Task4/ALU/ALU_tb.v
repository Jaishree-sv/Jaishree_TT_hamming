module ALU_tb;

reg [3:0] A, B;
reg [2:0] sel;
  wire [4:0] Y;

ALU uut (
    .A(A),
    .B(B),
    .sel(sel),
    .Y(Y)
);

initial begin
  	 $monitor("Time=%0t A=%b B=%b sel=%b Y=%b", $time, A, B, sel, Y);
  
    A = 4'b0100; B = 4'b0010; sel = 3'b000; #10;
    A = 4'b0100; B = 4'b0010; sel = 3'b001; #10;
    A = 4'b0100; B = 4'b0010; sel = 3'b010; #10;
    A = 4'b0100; B = 4'b0010; sel = 3'b011; #10;
    A = 4'b0100; B = 4'b0010; sel = 3'b100; #10;
    A = 4'b0100; B = 4'b0010; sel = 3'b101; #10;
    A = 4'b0100; B = 4'b0010; sel = 3'b110; #10;
    A = 4'b0100; B = 4'b0010; sel = 3'b111; #10;

    A = 4'b1111; B = 4'b0001; sel = 3'b000; #10;
    A = 4'b1111; B = 4'b0001; sel = 3'b001; #10;

    A = 4'b0000; B = 4'b0000; sel = 3'b000; #10;
    A = 4'b1010; B = 4'b0101; sel = 3'b100; #10;

    $finish;
end

endmodule