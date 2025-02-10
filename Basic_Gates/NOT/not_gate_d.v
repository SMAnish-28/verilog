// NOT gate using data flow modeling
module not_gate_d(a, y);
input a;
output y;

assign y = ~a;

endmodule