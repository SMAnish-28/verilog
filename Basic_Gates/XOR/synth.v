module xor_gate(input a_in, b_in, output reg y_out);

always @ (a_in, b_in)
begin
    if(a_in == b_in)
        y_out = 0
    else   
        y_out = 1
end

endmodule