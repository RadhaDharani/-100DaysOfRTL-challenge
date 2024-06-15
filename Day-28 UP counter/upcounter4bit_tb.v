`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.06.2024 22:25:09
// Design Name: 
// Module Name: upcounter4bit_tb
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


module up_counter_tb;
reg clk;
reg reset;
wire [3:0] count;
up_counter uut (
    .clk(clk), 
    .reset(reset), 
    .count(count)
);

initial begin
    clk = 0;
    reset = 0;

    reset = 1;
    #5 reset = 0;
    #100;
    #200 $finish;
end

always #5 clk = ~clk;

initial begin
    $monitor("At time %t, count = %d", $time, count);
end

endmodule
