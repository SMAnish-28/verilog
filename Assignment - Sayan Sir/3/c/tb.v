// Testbench for 3-bit Up-Down Ripple Counter
module tb_UpDown_Ripple_Counter();
    reg clk, reset, up_down;
    wire [2:0] count;
    UpDown_Ripple_Counter uut(clk, reset, up_down, count);

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin
        reset = 1; up_down = 1;
        #10 reset = 0;
        #40 up_down = 0;
        #40 $finish;
    end
endmodule