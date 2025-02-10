`timescale 1ns/1ps
`include "ov_1010.v"

module tb_ov();

reg clk, rst, in;
wire out;

ov_1010 dut(.clk(clk), .rst(rst), .in(in), .out(out));

initial begin
    clk = 0;
    rst = 1;
    #15 rst = 0;
end

always #5 clk = ~clk;

initial begin
    $monitor("%t || in = %b || out = %b || state = %d", $time, in, out, dut.ps);
    $dumpfile("ov.vcd");
    $dumpvars(0, tb_ov);
end

initial begin
    in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 $finish;
end

endmodule