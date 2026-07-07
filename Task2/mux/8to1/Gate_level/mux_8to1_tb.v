`timescale 1ns/1ps

module tb_mux_8to1;

reg i0,i1,i2,i3,i4,i5,i6,i7;
reg s0,s1,s2;
wire Y;

mux_8to1 uut(
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .i4(i4),
    .i5(i5),
    .i6(i6),
    .i7(i7),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .Y(Y)
);

initial begin

    i0=0;
    i1=1;
    i2=0;
    i3=1;
    i4=1;
    i5=0;
    i6=1;
    i7=0;

    $display("s2 s1 s0 | Y");
    $monitor("%b  %b  %b | %b", s2,s1,s0,Y);

    s2=0; s1=0; s0=0; #10;   
    s2=0; s1=0; s0=1; #10;   
    s2=0; s1=1; s0=0; #10;  
    s2=0; s1=1; s0=1; #10;  

    s2=1; s1=0; s0=0; #10;   
    s2=1; s1=0; s0=1; #10; 
    s2=1; s1=1; s0=0; #10;   
    s2=1; s1=1; s0=1; #10;   

    $finish;

end

endmodule