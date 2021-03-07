module Tff(out, in, clk, reset);
    output reg out;
    input in, clk, reset;
    
    always @(posedge clk)
        out<= reset ? 0 : in ? ~out : out;
endmodule