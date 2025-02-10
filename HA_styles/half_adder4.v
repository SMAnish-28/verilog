module half_adder(input A, B, output wire S, C);

// concurrent execution of multiple assign constructs
// continuous assignment

assign S = A ^ B;
assign C = A & B;

endmodule