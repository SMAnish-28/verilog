`timescale 1ns/1ps
`include "non_ov_0110.v"

module tb_non_ov();

reg clk, rst, in;
wire out;

non_ov_0110 dut(.clk(clk), .rst(rst), .in(in), .out(out));

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
    $dumpfile("non_ov.vcd");
    $dumpvars(0, tb_non_ov);
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