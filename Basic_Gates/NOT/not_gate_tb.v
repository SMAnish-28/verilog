// TestBench for NOT gate implementation
module not_gate_tb;
reg a;
wire y;

not_gate_s uut(a, y);

initial begin
    a = 0;
    #10
    b = 1;
    #10
    $finish();
end

endmodule