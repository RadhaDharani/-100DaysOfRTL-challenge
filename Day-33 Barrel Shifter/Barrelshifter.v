`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 22:22:05
// Design Name: 
// Module Name: Barrelshifter
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


module barrel_shifter (
    input [3:0] data_in,
    input [1:0] shift_amt,
    input direction,   
    output reg [3:0] data_out
);

always @(*) begin
    if (direction == 1'b0) begin
        case (shift_amt)
            2'b00: data_out = data_in;
            2'b01: data_out = {data_in[2:0], 1'b0};
            2'b10: data_out = {data_in[1:0], 2'b00};
            2'b11: data_out = {data_in[0], 3'b000};
            default: data_out = data_in;
        endcase
    end else begin
        // Right shift
        case (shift_amt)
            2'b00: data_out = data_in;
            2'b01: data_out = {1'b0, data_in[3:1]};
            2'b10: data_out = {2'b00, data_in[3:2]};
            2'b11: data_out = {3'b000, data_in[3]};
            default: data_out = data_in;
        endcase
    end
end

endmodule

