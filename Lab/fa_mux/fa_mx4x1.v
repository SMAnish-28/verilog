module mux4x1(a, b, c, d, s1, s0, y);
    input a, b, c, d, s0, s1;
    output y;
    
    assign y = s1 ? (s0 ? d : c) : (s0 ? b : a);
endmodule

module main(a, b, cin, s, cout);

    input a, b, cin;
    output s, cout;

    wire cinbar;

    assign cinbar = ~cin;

    mux4x1 m1(cin, cinbar, cinbar, cin, a, b, s);
    mux4x1 m2(1'b0, cin, cin, 1'b1, a, b, cout);

endmodule