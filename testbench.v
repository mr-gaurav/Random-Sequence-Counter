`timescale 1ns / 1ps
module test_RandomCounter();
    reg clk;
    wire clear;
    wire [2:0] in;
    wire [2:0] count;
    RandomCounter dut1 (count, clk, clear, in);
    controller dut2(in, clear, count, clk);
    
    always #5 clk=~clk;
    initial begin
        clk=0;
        $dumpfile("testRandomCounter.vcd");
        $dumpvars(0,test_RandomCounter);
        $monitor("time=%g, count=%d", $time, count);
        #200 $finish;
    end

endmodule
