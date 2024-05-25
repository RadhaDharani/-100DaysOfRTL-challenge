`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 10:18:52
// Design Name: 
// Module Name: Day6_Demux
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


module demux1_4(A,s0,s1,y[3:0]);
input A,s0,s1;
output [3:0]y;
assign y[3]=A&s0&s1;
assign y[2]=A&(~s0)&s1;
assign y[1]=A&s0&(~s1);
assign y[0]=A&(~s0)&(~s1);

endmodule


