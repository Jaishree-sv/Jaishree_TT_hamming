`timescale 1ns/1ps

module demux_1to8_tb;

reg d;
reg s0, s1, s2;
wire y0, y1, y2, y3, y4, y5, y6, y7;

demux_1to8 uut (
    .d(d),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7)
);

initial begin
    d = 1;

    s0 = 0; s1 = 0; s2 = 0; #10;
    s0 = 0; s1 = 0; s2 = 1; #10;
    s0 = 0; s1 = 1; s2 = 0; #10;
    s0 = 0; s1 = 1; s2 = 1; #10;
    s0 = 1; s1 = 0; s2 = 0; #10;
    s0 = 1; s1 = 0; s2 = 1; #10;
    s0 = 1; s1 = 1; s2 = 0; #10;
    s0 = 1; s1 = 1; s2 = 1; #10;

    d = 0;

    s0 = 0; s1 = 0; s2 = 0; #10;
    s0 = 0; s1 = 0; s2 = 1; #10;
    s0 = 0; s1 = 1; s2 = 0; #10;
    s0 = 0; s1 = 1; s2 = 1; #10;
    s0 = 1; s1 = 0; s2 = 0; #10;
    s0 = 1; s1 = 0; s2 = 1; #10;
    s0 = 1; s1 = 1; s2 = 0; #10;
    s0 = 1; s1 = 1; s2 = 1; #10;

    $finish;
end

endmodule