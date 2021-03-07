`timescale 1ns / 1ps
module RandomCounter(count, clk, clear, in);
    output [2:0] count;
    input clk, clear;
    input [2:0] in;

    Tff c0(count[0], in[0], clk, clear);
    Tff c1(count[1], in[1], clk, clear);
    Tff c2(count[2], in[2], clk, clear);
endmodule