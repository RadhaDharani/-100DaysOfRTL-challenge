`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2024 22:35:11
// Design Name: 
// Module Name: PISO_shift_Register
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


module piso_shift_register (
    input wire clk,
    input wire reset,
    input wire load,
    input wire [3:0] parallel_in,
    output reg serial_out
);
    reg [3:0] shift_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= 4'b0000;
            serial_out <= 0;
        end else if (load) begin
            shift_reg <= parallel_in;
        end else begin
            serial_out <= shift_reg[3];  
            shift_reg <= shift_reg << 1; 
        end
    end
endmodule
