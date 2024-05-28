`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.05.2024 19:45:05
// Design Name: 
// Module Name: DFlipflop_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module d_flip_flop_tb;
    reg clk;
    reg d;
    wire q;

    d_flip_flop uut (
        .clk(clk),
        .d(d),
        .q(q)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin

        d = 0;

        #10 d = 1;
        #10 d = 0;
        #10 d = 1;
        #20;
      
        #10 $finish;
    end
    initial begin
        $monitor("Time: %g, clk = %b, d = %b, q = %b", $time, clk, d, q);
    end
endmodule
