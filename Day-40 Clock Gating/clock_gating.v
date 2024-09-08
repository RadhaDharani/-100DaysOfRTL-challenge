`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2024 15:06:54
// Design Name: 
// Module Name: clock_gating
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

module clock_gating (
    input  wire clk,        
    input  wire enable,     
    output wire gated_clk   
);
    reg clk_en;             
    always @(negedge clk) begin
        clk_en <= enable;
    end
    assign gated_clk = clk & clk_en;

endmodule


