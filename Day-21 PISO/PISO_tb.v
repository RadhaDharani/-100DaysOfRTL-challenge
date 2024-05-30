`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2024 22:36:28
// Design Name: 
// Module Name: PISO_tb
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


module piso_shift_register_tb;
    reg clk;
    reg reset;
    reg load;
    reg [3:0] parallel_in;
    wire serial_out;
    piso_shift_register uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .parallel_in(parallel_in),
        .serial_out(serial_out)
    );
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  
    end
    initial begin
        reset = 1;
        load = 0;
        parallel_in = 4'b0000;
        #10 reset = 0;  
        #10 load = 1; parallel_in = 4'b1101;
        #10 load = 0;
        #50 $finish;  
    end
    
    initial begin
        $monitor("Time: %g, clk = %b, reset = %b, load = %b, parallel_in = %b, serial_out = %b", $time, clk, reset, load, parallel_in, serial_out);
    end
endmodule

