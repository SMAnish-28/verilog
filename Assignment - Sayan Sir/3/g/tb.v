// Testbench for 4-bit Unsigned Up Counter with Async Clear
module tb_Up_Counter_Async_Clear();
    reg clk, clr;
    wire [3:0] count;
    Up_Counter_Async_Clear uut(clk, clr, count);

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin
        clr = 1;
        #10 clr = 0;
        #50 clr = 1;
        #10 clr = 0;
        #50 $finish;
    end
endmodule