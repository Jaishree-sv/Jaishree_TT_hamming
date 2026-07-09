`timescale 1ns/1ps

module encoder_tb;

reg [3:0] A;
wire [1:0] Y;

encoder uut(
    .A(A),
    .Y(Y)
);

initial begin
    $monitor("Time=%0t A=%b Y=%b", $time, A, Y);
    A = 4'b0001; #10;
    A = 4'b0010; #10;
    A = 4'b0100; #10;
    A = 4'b1000; #10;
    A = 4'b0000; #10;
    A = 4'b1111; #10;
    $finish;
end

endmodule