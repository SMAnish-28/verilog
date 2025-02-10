`timescale 1ns/1ps

module fa_mx4x1_tb;
    reg a, b, cin;
    wire s, cout;

    main dut(a, b, cin, s, cout);

    initial begin
        $dumpfile("fa_mx4x1_tb.vcd");
        $dumpvars(0, fa_mx4x1_tb);
    end

    initial begin
        a = 0; b = 0; cin = 0;
        #10 
        $display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
        a = 0; b = 0; cin = 1;
        #10 
        $display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
        a = 0; b = 1; cin = 0;
        #10 
        $display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
        a = 0; b = 1; cin = 1;
        #10 
        $display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
        a = 1; b = 0; cin = 0;
        #10 
        $display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
        a = 1; b = 0; cin = 1;
        #10 
        $display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
        a = 1; b = 1; cin = 0;
        #10 
        $display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
        a = 1; b = 1; cin = 1;
        #10 
        $display("a=%b, b=%b, cin=%b, s=%b, cout=%b", a, b, cin, s, cout);
        $finish;
    end
endmodule