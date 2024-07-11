`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 05:38:02
// Design Name: 
// Module Name: clock_generator_tb
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

module clock_generator_tb;
    reg clk_in;
    reg reset;
    wire clk_out1;
    wire clk_out2;
    wire clk_out3;
    clock_generator uut (
        .clk_in(clk_in),
        .reset(reset),
        .clk_out1(clk_out1),
        .clk_out2(clk_out2),
        .clk_out3(clk_out3)
    );
    always #5 clk_in = ~clk_in; 

    initial begin
        clk_in = 0;
        reset = 0;
        #10 reset = 1;
        #10 reset = 0;
        #1000;
        $stop;
    end
    initial begin
        $monitor("Time=%0t | clk_out1=%b | clk_out2=%b | clk_out3=%b", $time, clk_out1, clk_out2, clk_out3);
    end

endmodule
