`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 23:34:02
// Design Name: 
// Module Name: LFSR
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

module lfsr_4bit(
    input wire clk,
    input wire rst,
    output reg [3:0] data_out
);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_out <= 4'b0001;  
        end else begin
            data_out <= {data_out[2:0], data_out[3] ^ data_out[2]};
        end
    end

endmodule

