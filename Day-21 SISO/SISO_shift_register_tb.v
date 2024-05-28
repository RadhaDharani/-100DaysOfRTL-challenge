`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2024 19:57:04
// Design Name: 
// Module Name: SISO_shift_register_tb
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

module siso_shift_register_tb;
    reg clk;
    reg reset;
    reg data_in;
    wire data_out;
    siso_shift_register uut (
        .clk(clk),
        .reset(reset),
        .data_in(data_in),
        .data_out(data_out)
    );
    initial begin
        clk = 0;
        reset = 0;
        data_in = 0;
        reset = 1; #10;
        reset = 0; #10;
        data_in = 1; #10;
        data_in = 0; #10;
        data_in = 1; #10;
        data_in = 1; #10;
        data_in = 0; #10;
        data_in = 1; #10;
        #100 $finish;
    end
    always begin
        #5 clk = ~clk;
    end

    initial begin
        $monitor("Time=%0d: clk=%b reset=%b data_in=%b data_out=%b shift_reg=%b", 
                 $time, clk, reset, data_in, data_out, uut.shift_reg);
    end

endmodule

