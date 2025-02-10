// AND gate using behavioral modeling

module and_gate_b(a, b, y);

input a, b;
output y;

always @ (a, b)
    y = a & b;

endmodule