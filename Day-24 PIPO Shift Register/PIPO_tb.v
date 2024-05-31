`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2024 19:12:17
// Design Name: 
// Module Name: PIPO_tb
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


module pipo_shift_register_tb;
    reg clk;
    reg reset;
    reg [3:0] parallel_in;
    wire [3:0] parallel_out;
    pipo_shift_register uut (
        .clk(clk),
        .reset(reset),
        .parallel_in(parallel_in),
        .parallel_out(parallel_out)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
 
        reset = 1;
        parallel_in = 4'b0000;
        #10 reset = 0;  
        #10 parallel_in = 4'b1010;
        #10 parallel_in = 4'b1100;
        #30 $finish; 
    end
    initial begin
        $monitor("Time: %g, clk = %b, reset = %b, parallel_in = %b, parallel_out = %b", $time, clk, reset, parallel_in, parallel_out);
    end
endmodule

