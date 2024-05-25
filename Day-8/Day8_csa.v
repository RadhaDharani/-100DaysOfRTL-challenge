`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.05.2024 08:18:40
// Design Name: 
// Module Name: Day8_csa
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

module csa(a,b,cin,s,cout);
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire [3:0]l,m;
wire [1:0]c;
rca_4_fa u0(.a(a[3:0]),.b(b[3:0]),.cin(1'b0),.s(l[3:0]),.cout(c[0]));
rca_4_fa u1(.a(a[3:0]),.b(b[3:0]),.cin(1'b1),.s(m[3:0]),.cout(c[1]));
mux2_1 u2(l[0],m[0],cin,s[0]);
mux2_1 u3(l[1],m[1],cin,s[1]);
mux2_1 u4(l[2],m[2],cin,s[2]);
mux2_1 u5(l[3],m[3],cin,s[3]);
mux2_1 u6(c[0],c[1],cin,cout);
endmodule
