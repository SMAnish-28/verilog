// Testbench for Shift Register
module tb_Shift_Register();
    reg clk, reset, dir;
    reg [2:0] data_in;
    wire [2:0] out;
    Shift_Register uut(clk, reset, dir, data_in, out);

    initial begin clk = 0; forever #5 clk = ~clk; end
    initial begin
        data_in = 3'b101; reset = 1; dir = 1;
        #10 reset = 0;
        #20 dir = 0;
        #20 $finish;
    end
endmodule