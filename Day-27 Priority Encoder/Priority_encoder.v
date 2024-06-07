`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2024 08:53:39
// Design Name: 
// Module Name: Priority_encoder
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


module priority_encoder (
    input [3:0] in,   // 4-bit input
    output reg [1:0] out, // 2-bit output
    output reg valid  // valid output
);

always @(*) begin
    valid = 1;
    casez (in)
        4'b1000: out = 2'b11; // Highest priority
        4'b0100: out = 2'b10;
        4'b0010: out = 2'b01;
        4'b0001: out = 2'b00; // Lowest priority
        default: begin
            out = 2'b00;
            valid = 0; // No valid input
        end
    endcase
end

endmodule
