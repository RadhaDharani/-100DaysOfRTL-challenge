`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2024 07:46:03
// Design Name: 
// Module Name: Day9_BCD_Adder
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


module bcd_adder (
    input wire [3:0] A, B,
    input wire Cin,
    output wire [3:0] Sum,
    output wire Cout);
    wire [3:0]w;
    wire c1,c2,c3,c4,c5,c6, cout1,cout2;
    fa_1 m1(A[0], B[0], Cin,w[0], c1);
    fa_1 m2(A[1], B[1], c1, w[1], c2);
    fa_1 m3(A[2], B[2], c2, w[2], c3);
    fa_1 m4(A[3], B[3], c3, w[3], cout1);
    assign Cout = cout1 | (w[3] & (w[2] | w[1]));
    
    wire [3:0] correction = 4'b0110;
    wire [3:0] corrected_sum;
    
    fa_1 n4 (w[0], correction[0], 0, corrected_sum[0], c4);
    fa_1 n5 (w[1], correction[1], c4, corrected_sum[1], c5);
    fa_1 n6 (w[2], correction[2], c5, corrected_sum[2], c6);
    fa_1 n7 (w[3], correction[3], c6, corrected_sum[3], cout2);
    assign Sum = Cout ? corrected_sum : w;
endmodule
