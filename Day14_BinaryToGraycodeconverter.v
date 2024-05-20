`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2024 19:59:42
// Design Name: 
// Module Name: Day14_BinaryToGraycodeconverter
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


module binary_to_gray (b,g);
input [3:0] b;  
output [3:0] g;
assign g[3] = b[3]; 
assign g[2] = b[3] ^ b[2]; 
assign g[1] = b[2] ^ b[1]; 
assign g[0] = b[1] ^ b[0]; 
endmodule
