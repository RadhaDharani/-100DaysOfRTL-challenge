`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 20:43:52
// Design Name: 
// Module Name: Day16_Buffer
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


module tristate_buffer (
    input wire data_in,
    input wire enable,
    output wire data_out
);

assign data_out = enable ? data_in : 1'bz;

endmodule

