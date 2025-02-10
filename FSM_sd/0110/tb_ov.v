`timescale 1ns/1ps
`include "ov_0110.v"

module tb_ov();

reg clk, rst, in;
wire out;

ov_0110 dut(clk, rst, in, out);

initial begin
    clk = 1'b0;
    rst = 1'b1;
    #15 rst = 1'b0;
end

initial forever begin
    #5 clk = ~clk;
end

initial begin
    $monitor("%t || in = %b || out = %b || state = %d", $time, in, out, dut.state);
    $dumpfile("ov.vcd");
    $dumpvars(0, tb_ov);
end

initial begin
    in = 0;
    #15 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #10 $finish;
end

endmodule