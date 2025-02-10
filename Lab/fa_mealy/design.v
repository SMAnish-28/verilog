`timescale 1ns/1ps

module d_ff(d, clk, rst, q);

    input d, clk, rst;
    output reg q;
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            q <= 1'b0;
        else
            q <= d;
    end

endmodule

module main(a, b, clk, rst, q);

    input a, b, clk, rst;
    output reg q;
    wire xr1, nd1, nd2, xr2, o1, qq;
    
    assign qq = q;
    
    xor xor1(xr1, a, b);
    xor xor2(xr2, xr1, qq);
    and a1(nd1, a, b);
    and a2(nd2, xr1, qq);
    or or1(o1, nd1, nd2);

    d_ff dff1(o1, clk, rst, q);

endmodule