`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.05.2024 19:11:38
// Design Name: 
// Module Name: PIPO
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


module pipo_shift_register (
    input wire clk,
    input wire reset,
    input wire [3:0] parallel_in,
    output reg [3:0] parallel_out
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            parallel_out <= 4'b0000;  
        end else begin
            parallel_out <= parallel_in;  
        end
    end
endmodule

