`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.04.2024 16:00:41
// Design Name: 
// Module Name: fs4
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


module fs4(

input [3:0]a,
input [3:0]b,
input bin,
output [3:0]d,
output bout
);
wire [3:0]bo;
fs u1(.a(a[0]),.b(b[0]),.c(bin),.d(d[0]),.bo(bo[0]));
fs u2(.a(a[1]),.b(b[1]),.c(bo[0]),.d(d[1]),.bo(bo[1]));
fs u3(.a(a[2]),.b(b[2]),.c(bo[1]),.d(d[2]),.bo(bo[2]));
fs u4(.a(a[3]),.b(b[3]),.c(bo[2]),.d(d[3]),.bo(bo[3]));
assign bout=bo[3];
endmodule
