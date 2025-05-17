// Testbench for Pulse Generator
module tb_Pulse_Generator();
    reg clk, reset;
    wire pulse;
    Pulse_Generator uut(clk, reset, pulse);

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin
        reset = 1;
        #10 reset = 0;
        #100 $finish;
    end
endmodule