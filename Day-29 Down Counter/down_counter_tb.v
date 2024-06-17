`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.06.2024 19:23:51
// Design Name: 
// Module Name: down_counter_tb
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


module down_counter_tb;
reg clk;
reg reset;
wire [3:0] count;
down_counter uut (
    .clk(clk), 
    .reset(reset), 
    .count(count)
);

initial begin
    clk = 0;
    reset = 0;
    reset = 1;
    #10 reset = 0;
    #100;
    $finish;
end
always #5 clk = ~clk;

initial begin
    $monitor("At time %t, count = %d", $time, count);
end

endmodule

