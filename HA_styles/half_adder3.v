module half_adder(input wire A, B, output wire S, C);

// synthesizable design - RTL design

always@*
begin
    S = A ^ B;
    C = A & B;
end

endmodule