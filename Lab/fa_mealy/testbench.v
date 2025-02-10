`timescale 1ns/1ps

module testbench();

    reg a, b, clk, rst;
    wire q;

    main dut(a, b, clk, rst, q);

    initial begin
        $dumpfile("testbench.vcd");
        $dumpvars(0, testbench);

        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        a = 0; b = 0; rst = 1;
        #10 rst = 0;
        #10 a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 $finish;
    end

endmodule