`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2024 22:40:25
// Design Name: 
// Module Name: Day5_Multiplexer
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



module mux4_1(i0,i1,i2,i3,s0,s1,y

    );
    input i0,i1,i2,i3,s0,s1;
    output y;
    assign y=(i0&(~s0)&(~s1))|(i1&(~s0)&s1)|(i2&s0&(s1))|(i3&s0&s1);
endmodule

