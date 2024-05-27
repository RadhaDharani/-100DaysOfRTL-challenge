`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.05.2024 08:26:33
// Design Name: 
// Module Name: Day15_Divider4bit_by_2bit
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


module divider_4bit_by_2bit (
    input [3:0] dividend,
    input [1:0] divisor,
    output reg [3:0] quotient,
    output reg [1:0] remainder
);
    integer i;

    always @(*) begin
        quotient = 4'b0;
        remainder = 2'b0;

        // Shift and subtract method
        for (i = 3; i >= 0; i = i - 1) begin
            remainder = {remainder[0], dividend[i]}; // Shift in the next bit of the dividend
            if (remainder >= divisor) begin
                remainder = remainder - divisor;
                quotient[i] = 1'b1;
            end
        end
    end
endmodule
