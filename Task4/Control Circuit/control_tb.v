module control_tb;

reg W, M, D, arm;
wire A;

control uut (
    .W(W),
    .M(M),
    .D(D),
    .arm(arm),
    .A(A)
);

initial begin
    $monitor("Time=%0t arm=%b D=%b W=%b M=%b A=%b", $time, arm, D, W, M, A);

    arm=0; D=0; W=0; M=0; #10;
    arm=1; D=1; W=0; M=0; #10;
    arm=1; D=0; W=1; M=0; #10;
    arm=1; D=0; W=0; M=0; #10;
    arm=0; D=1; W=0; M=0; #10;
    arm=0; D=0; W=1; M=1; #10;
    arm=1; D=0; W=1; M=1; #10;
    arm=1; D=0; W=0; M=1; #10;
    arm=1; D=1; W=1; M=1; #10;

    $finish;
end

endmodule