`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 23:04:14
// Design Name: 
// Module Name: USR
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


module universal_shift_register (
    input wire [3:0] data_in,  // Parallel data input
    input wire [1:0] mode,     // Mode select input
    input wire clk,            // Clock input
    input wire reset,          // Reset input
    output reg [3:0] data_out  // Data output
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        data_out <= 4'b0000;  // Clear the register
    end else begin
        case (mode)
            2'b00: data_out <= data_out;             // Hold
            2'b01: data_out <= {data_out[2:0], 1'b0}; // Shift left
            2'b10: data_out <= {1'b0, data_out[3:1]}; // Shift right
            2'b11: data_out <= data_in;              // Parallel load
            default: data_out <= data_out;           // Default case (hold)
        endcase
    end
end

endmodule

