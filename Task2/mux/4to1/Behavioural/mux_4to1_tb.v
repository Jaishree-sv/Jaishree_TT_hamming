`timescale 1ns/1ps

module mux_4to1_tb;

reg d0, d1, d2, d3;
reg s1, s2;
wire y;

mux_4to1 uut (
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .s1(s1),
    .s2(s2),
    .y(y)
);

initial begin

    d0 = 0; d1 = 1; d2 = 0; d3 = 1;

    s1 = 0; s2 = 0; #10;
    s1 = 0; s2 = 1; #10;
    s1 = 1; s2 = 0; #10;
    s1 = 1; s2 = 1; #10;

 
    d0 = 1; d1 = 0; d2 = 1; d3 = 0;

    s1 = 0; s2 = 0; #10;
    s1 = 0; s2 = 1; #10;
    s1 = 1; s2 = 0; #10;
    s1 = 1; s2 = 1; #10;

    $finish;
end

initial begin
    $monitor("Time=%0t d0=%b d1=%b d2=%b d3=%b s1=%b s2=%b y=%b",
             $time, d0, d1, d2, d3, s1, s2, y);
end

endmodule