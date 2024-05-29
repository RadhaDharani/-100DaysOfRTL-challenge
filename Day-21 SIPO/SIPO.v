`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2024 19:12:36
// Design Name: 
// Module Name: SIPO
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

module sipo_shift_register (
    input wire clk,
    input wire reset,
    input wire serial_in,
    output reg [3:0] parallel_out
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            parallel_out <= 4'b0000;  
        end else begin
            parallel_out <= {parallel_out[2:0], serial_in};  
        end
    end
endmodule


