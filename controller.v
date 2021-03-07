`timescale 1ns / 1ps
module controller(in, clear, count);
    input [2:0] count;
    output reg [2:0] in;
    output reg clear;
    
    initial  clear=1;
    always @(count) begin
         case (count)
            0: begin #2 clear=0; in=5; end
            1: #2 in=5;
            2: #2 in=2;
            3: #2 in=2;
            4: #2 in=6;
            5: #2 in=6;
          endcase
    end
endmodule
