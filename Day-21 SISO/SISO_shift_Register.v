`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.05.2024 19:54:31
// Design Name: 
// Module Name: SISO_shift_Register
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


module siso_shift_register (
    input wire clk,
    input wire reset,
    input wire data_in,
    output reg data_out
);

    reg [3:0] shift_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= 4'b0;
            data_out <= 0;
        end else begin
            shift_reg <= {shift_reg[2:0], data_in}; 
            data_out <= shift_reg[3];
        end
    end

endmodule

