module Ring_Counter (
    input clk, reset,
    output reg [2:0] out
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            out <= 3'b001;
        else
            out <= {out[1:0], out[2]};
    end
endmodule
