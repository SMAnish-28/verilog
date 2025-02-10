// AND gate using data flow modeling

module and_gate_d(a, b, y);

input a, b;
output y;

assign y = a & b;

endmodule