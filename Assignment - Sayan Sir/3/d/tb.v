// Testbench for Ring Counter
module tb_Ring_Counter();
    reg clk, reset;
    wire [2:0] out;
    Ring_Counter uut(clk, reset, out);

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin
        reset = 1;
        #10 reset = 0;
        #50 $finish;
    end
endmodule