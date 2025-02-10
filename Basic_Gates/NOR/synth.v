module nor_gate(input a_in, b_in, output reg y_out);

always @ (a_in, b_in)
begin
    if(a_in == 0 && b_in == 0)
        y_out = 1
    else 
        y_out = 0 
end

endmodule