`timescale 1ns/1ps

module demux_1to4_tb;

reg d;
reg s1, s2;
wire y0, y1, y2, y3;

demux_1to4 uut (
    .d(d),
    .s1(s1),
    .s2(s2),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3)
);

initial begin
 
    d = 0;

    s1 = 0; s2 = 0; #10;
    s1 = 0; s2 = 1; #10;
    s1 = 1; s2 = 0; #10;
    s1 = 1; s2 = 1; #10;

    d = 1;

    s1 = 0; s2 = 0; #10;
    s1 = 0; s2 = 1; #10;
    s1 = 1; s2 = 0; #10;
    s1 = 1; s2 = 1; #10;

    $finish;
end

initial begin
    $monitor("Time=%0t d=%b s1=%b s2=%b y0=%b y1=%b y2=%b y3=%b",
             $time, d, s1, s2, y0, y1, y2, y3);
end

endmodule