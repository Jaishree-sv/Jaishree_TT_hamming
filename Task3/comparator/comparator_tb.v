`timescale 1ns/1ps

module comparator_tb;

reg [3:0] A, B;
wire A_greater_B, A_equal_B, A_lesser_B;

comparator uut(
    .A(A),
    .B(B),
    .A_greater_B(A_greater_B),
    .A_equal_B(A_equal_B),
    .A_lesser_B(A_lesser_B)
);

initial begin
    $monitor("Time=%0t A=%d B=%d AgB=%b AeB=%b AlB=%b",
              $time, A, B, A_greater_B, A_equal_B, A_lesser_B);

    A = 4'd5;  B = 4'd3;  #10;
    A = 4'd2;  B = 4'd7;  #10;
    A = 4'd6;  B = 4'd6;  #10;
    A = 4'd0;  B = 4'd15; #10;
    A = 4'd15; B = 4'd0;  #10;

    $finish;
end

endmodule