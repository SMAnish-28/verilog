`timescale 1ns/1ps
// `include "1101_non_ov.v"
`include "1101_ov.v"

module tb_1101();

reg clk, rst, in;
wire out;

// non_ov_1101 dut(.clk(clk), .rst(rst), .in(in), .out(out));
ov_1101 dut(clk, rst, in, out);

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
    // $dumpfile("tb_1101_non_ov.vcd");
    $dumpfile("tb_1101_ov.vcd");
    $dumpvars(0, tb_1101);
end

initial begin
    in = 0;
    #15 in = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 1;
    #10 in = 0;
    #10 in = 1;
    #10 in = 0;
    #20 $finish;
end

endmodule