`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.11.2024 08:53:35
// Design Name: 
// Module Name: Edge_detector_tb
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


`timescale 1ns / 1ps

module RisingEdgeDetector_tb;
    reg clk;
    reg d;
    wire det;
    RisingEdgeDetector uut (
        .clk(clk),
        .d(d),
        .det(det)
    );
    initial begin
        clk = 0;
        forever #10 clk = ~clk;  
    end

    initial begin
        d = 0;
        #20;
        d = 0;
        #20;
        d = 1;
        #20;
        d = 1;
        #20;
        d = 0;
        #20;
        d = 1;
        #20;
        d = 0;
        #20;

        $finish;
    end

    initial begin
        $monitor("Time = %0t | clk = %b | d = %b | det = %b", $time, clk, d, det);
    end

endmodule

