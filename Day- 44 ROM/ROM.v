`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 10:47:26
// Design Name: 
// Module Name: ROM
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


module ROM (
    input wire [3:0] address,  // 4-bit Address input
    output reg [7:0] data      // 8-bit Data output
);

    always @(*) begin
        case (address)
            4'b0000: data = 8'h12;
            4'b0001: data = 8'h34;
            4'b0010: data = 8'h56;
            4'b0011: data = 8'h78;
            4'b0100: data = 8'h9A;
            4'b0101: data = 8'hBC;
            4'b0110: data = 8'hDE;
            4'b0111: data = 8'hF0;
            default: data = 8'h00; // Default value
        endcase
    end

endmodule

