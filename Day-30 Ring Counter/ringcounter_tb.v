`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 00:02:17
// Design Name: 
// Module Name: ringcounter_tb
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


module ring_counter_tb;

reg clk;        
reg reset;      
wire [3:0] q;  

ring_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);
initial begin
    clk = 0;
    forever #5 clk = ~clk; 
end

initial begin    
    reset = 1;
    #10 reset = 0;
    $monitor("Time: %0t, q: %b", $time, q);
    #50 $finish;
end

endmodule

