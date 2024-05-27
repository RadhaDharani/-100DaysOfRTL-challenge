`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.05.2024 11:51:42
// Design Name: 
// Module Name: Day12_Binarymultiplier
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


module binary_multiplier_2bit (
    input [1:0] a,
    input [1:0] b, 
    output [3:0] product 
);
    wire p0, p1, p2, p3;

    // Partial Products
    assign p0 = a[0] & b[0]; 
    assign p1 = a[0] & b[1];
    assign p2 = a[1] & b[0];
    assign p3 = a[1] & b[1]; 

    // Sum the partial products
    assign product[0] = p0;
    assign product[1] = p1 ^ p2;
    assign product[2] = (p1 & p2) ^ p3; 
    assign product[3] = (p1 & p2) & p3; 

endmodule
