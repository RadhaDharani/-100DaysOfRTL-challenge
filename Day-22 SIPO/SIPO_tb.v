`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2024 19:13:55
// Design Name: 
// Module Name: SIPO_tb
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

module sipo_shift_register_tb;
    reg clk;
    reg reset;
    reg serial_in;
    wire [3:0] parallel_out;
    sipo_shift_register uut (
        .clk(clk),
        .reset(reset),
        .serial_in(serial_in),
        .parallel_out(parallel_out)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    initial begin
        reset = 1;
        serial_in = 0;
        #10 reset = 0; 
        #10 serial_in = 1;
        #10 serial_in = 0;
        #10 serial_in = 1;
        #10 serial_in = 1;
        #40 $finish;  
    end
    initial begin
        $monitor("Time: %g, clk = %b, reset = %b, serial_in = %b, parallel_out = %b", $time, clk, reset, serial_in, parallel_out);
    end
endmodule

