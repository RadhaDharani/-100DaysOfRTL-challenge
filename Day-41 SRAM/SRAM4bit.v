`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2024 15:23:24
// Design Name: 
// Module Name: SRAM4bit
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


module sram (
    input  [1:0] addr,    
    input  [3:0] data_in, 
    input  we,            
    input  clk,           
    output reg [3:0] data_out 
);
    reg [3:0] memory_array [3:0];

    always @(posedge clk) begin
        if (we) begin
            memory_array[addr] <= data_in;
        end
        else begin
            data_out <= memory_array[addr];
        end
    end
endmodule

