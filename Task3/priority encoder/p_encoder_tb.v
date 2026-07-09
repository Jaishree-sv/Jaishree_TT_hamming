`timescale 1ns/1ps

module p_encoder_tb;

  reg [7:0] A;
  wire [2:0] Y;

p_encoder uut(
    .A(A),
    .Y(Y)
);

initial begin
    $monitor("Time=%0t A=%b Y=%b", $time, A, Y);
    A = 8'b00000001; #10;
    A = 8'b00000010; #10;
    A = 8'b00000100; #10;
    A = 8'b00001100; #10;
    A = 8'b00110000; #10;
    A = 8'b10010000; #10;
    A = 8'b00010100; #10;
    A = 8'b11110000; #10;
    A = 8'b00000000; #10;
    $finish;
end

endmodule