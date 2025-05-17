// J-K Flip-Flop
module JK_FF (
    input J, K, clk, reset,
    output reg Q
);
    always @(posedge clk or posedge reset) begin
        if (reset) Q <= 0;
        else begin
            case ({J, K})
                2'b00: Q <= Q;
                2'b01: Q <= 0;
                2'b10: Q <= 1;
                2'b11: Q <= ~Q;
            endcase
        end
    end
endmodule

// D Flip-Flop
module D_FF (
    input D, clk, reset,
    output reg Q
);
    always @(posedge clk or posedge reset) begin
        if (reset) Q <= 0;
        else Q <= D;
    end
endmodule

// T Flip-Flop
module T_FF (
    input T, clk, reset,
    output reg Q
);
    always @(posedge clk or posedge reset) begin
        if (reset) Q <= 0;
        else if (T) Q <= ~Q;
    end
endmodule
