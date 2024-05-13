`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.03.2024 23:55:49
// Design Name: 
// Module Name: clah_4
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

module clah_4(a,b,cin,s,c);
input [3:0]a,b;
input cin;
output reg [3:0]s;
output c;
reg [3:0]c1;
reg [3:0]g,p;

always @(*)

    begin
    g<=a&b;
    p<=a^b;
    c1[0]<=g[0] | cin&p[0];
    c1[1]<=g[1] | g[0]&p[1] | cin&p[0]&p[1];
    c1[2]<=g[2] | g[1]&p[2] | g[0]&p[1]&p[2] | cin&p[0]&p[1]&p[2];
    c1[3]<=g[3] | g[2]&g[3] | g[1]&p[2]&p[3] | g[0]&p[1]&p[2]&p[3] | cin&p[0]&p[1]&p[2]&p[3];
    s[0]<=cin^p[0];
    s[3:1] <= c1[2:0] ^ p[3:1];
    
    
 
    end
    assign c=c1[3];
endmodule