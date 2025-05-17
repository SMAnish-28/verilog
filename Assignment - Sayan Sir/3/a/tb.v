// Testbench for JK Flip-Flop
`include "design.v"

module tb_JK_FF();
    reg J, K, clk, reset;
    wire Q;
    JK_FF uut(J, K, clk, reset, Q);

    initial begin
        clk = 0; forever #5 clk = ~clk;
    end

    initial begin
        reset = 1; J = 0; K = 0;
        #10 reset = 0; J = 1; K = 0;
        #10 J = 0; K = 1;
        #10 J = 1; K = 1;
        #10 J = 0; K = 0;
        #20 $finish;
    end
endmodule

// Testbench for D Flip-Flop
module tb_D_FF();
    reg D, clk, reset;
    wire Q;
    D_FF uut(D, clk, reset, Q);

    initial begin clk = 0; forever #5 clk = ~clk; end

    initial begin
        reset = 1; D = 0;
        #10 reset = 0; D = 1;
        #10 D = 0;
        #10 D = 1;
        #10 $finish;
    end
endmodule

// Testbench for T Flip-Flop
module tb_T_FF();
    reg T, clk, reset;
    wire Q;
    T_FF uut(T, clk, reset, Q);

    initial begin clk = 0; forever #5 clk = ~clk; end

    initial begin
        reset = 1; T = 0;
        #10 reset = 0; T = 1;
        #10 T = 1;
        #10 T = 0;
        #10 T = 1;
        #10 $finish;
    end
endmodule