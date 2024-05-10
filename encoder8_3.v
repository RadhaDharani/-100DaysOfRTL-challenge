`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.05.2024 19:00:24
// Design Name: 
// Module Name: encoder8_3
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


module Day4_encoder8_3(i, A0,A1,A2); 
input [0:7]i; 
output A0,A1,A2;
    assign A0=i[4]|i[5]|i[6]|i[7];
    assign A1=i[2]|i[3]|i[6]|i[7];
    assign A2=i[1]|i[3]|i[6]|i[7];
endmodule
