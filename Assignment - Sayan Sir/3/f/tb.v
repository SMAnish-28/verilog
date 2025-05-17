// Testbench for Mod Counters
module tb_Mod_Counter();
    reg clk, reset;
    wire [1:0] mod2_out;
    wire [2:0] mod5_out;
    wire [3:0] mod10_out;

    Mod_Counter #(.N(2)) mod2(clk, reset, mod2_out);
    Mod_Counter #(.N(5)) mod5(clk, reset, mod5_out);
    Mod_Counter #(.N(10)) mod10(clk, reset, mod10_out);

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin
        reset = 1;
        #10 reset = 0;
        #100 $finish;
    end
endmodule