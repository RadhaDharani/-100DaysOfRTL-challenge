`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.05.2024 18:35:11
// Design Name: 
// Module Name: Day11_Comparator
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


module Comparator (
    input [1:0] a,
    input [1:0] b,
    output e,
    output g,
    output l
);
    wire eq0, eq1, eq;
    wire gr0, gr1, gt;
    wire ls0, ls1, lt;

    // If all XOR results are zero, indicating that the numbers are equal
    assign eq0 = ~(a[0] ^ b[0]);
    assign eq1 = ~(a[1] ^ b[1]);
    assign eq = eq0 & eq1;
    assign e = eq;

    // Determine if a is greater than b
    assign gr0 = a[1] & ~b[1];
    assign gr1 = (a[0] & ~b[0]) & eq1;
    assign g = gr0 | gr1;

    // Determine if a is less than b
    assign ls0 = ~a[1] & b[1];
    assign ls1 = (~a[0] & b[0]) & eq1;
    assign l = ls0 | ls1;

endmodule
