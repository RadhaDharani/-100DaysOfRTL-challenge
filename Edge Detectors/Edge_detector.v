`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.11.2024 19:37:36
// Design Name: 
// Module Name: Edge_detector
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


module RisingEdgeDetector (
    input wire clk,    
    input wire d,      
    output wire det    
);

    reg d_prev;

    always @(posedge clk) begin
        d_prev <= d;  
    end
    assign det = d & ~d_prev;  
endmodule

