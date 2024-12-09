`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 18:29:55
// Design Name: 
// Module Name: DRAM
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


module DRAM (
    input wire clk,                
    input wire reset,              
    input wire [3:0] row_addr,     
    input wire [3:0] col_addr,     
    input wire write_enable,       
    input wire read_enable,        
    input wire [7:0] data_in,      
    output reg [7:0] data_out      
);
    parameter ROW_SIZE = 16;
    parameter COL_SIZE = 16;
    parameter DATA_WIDTH = 8;

    // Memory array: ROW_SIZE x COL_SIZE
    reg [DATA_WIDTH-1:0] memory [0:ROW_SIZE-1][0:COL_SIZE-1];
    reg [3:0] refresh_counter;
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            data_out <= 0;
            refresh_counter <= 0;
        end else begin
            if (write_enable) begin
                memory[row_addr][col_addr] <= data_in;
            end else if (read_enable) begin
                data_out <= memory[row_addr][col_addr];
            end
            refresh_counter <= refresh_counter + 1;
            if (refresh_counter == ROW_SIZE) begin
                refresh_counter <= 0;
                
            end
        end
    end

endmodule

