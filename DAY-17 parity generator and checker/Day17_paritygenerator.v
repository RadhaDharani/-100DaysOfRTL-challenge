`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.05.2024 23:40:12
// Design Name: 
// Module Name: Day17_paritygenerator
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


module parity_generator (
    input  [3:0] data_in,
    output parity_bit
);

assign parity_bit = data_in[3] ^ data_in[2] ^ data_in[1] ^ data_in[0];

endmodule

