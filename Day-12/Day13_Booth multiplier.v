`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.05.2024 15:13:32
// Design Name: 
// Module Name: Day13_Booth multiplier
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


module booth_multiplier8(
    input signed [7:0] multiplicand,
    input signed [7:0] multiplier,
    output reg signed [15:0] product
);
    reg signed [15:0] A, Q, M;
    reg Q_1;
    integer i;

    always @(*) begin
        A = 16'b0;
        M = multiplicand;
        Q = multiplier;
        Q_1 = 1'b0;

        for (i = 0; i < 8; i = i + 1) begin
            case ({Q[0], Q_1})
                2'b01: A = A + M;
                2'b10: A = A - M;
            endcase
            // Arithmetic shift right
            {A, Q, Q_1} = {A[15], A, Q};
        end
        product = {A, Q[7:0]};
    end
endmodule





