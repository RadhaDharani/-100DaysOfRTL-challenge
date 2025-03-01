`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 19:02:31
// Design Name: 
// Module Name: Register_file
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


module RegisterFile (
    input wire clk,             
    input wire we,              
    input wire [1:0] wr_addr,   
    input wire [1:0] rd_addr,   
    input wire [7:0] wr_data,   
    output reg [7:0] rd_data    
);

    reg [7:0] registers [3:0]; 
    always @(posedge clk) begin
        if (we)
            registers[wr_addr] <= wr_data;
    end

    always @(*) begin
        rd_data = registers[rd_addr];
    end

endmodule


