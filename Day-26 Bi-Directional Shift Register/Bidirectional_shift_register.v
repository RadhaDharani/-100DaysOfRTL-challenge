`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 20:13:42
// Design Name: 
// Module Name: Bidirectional_shift_register
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

module bidirectional_shift_register (
    input wire clk,
    input wire reset,
    input wire load,
    input wire shift,
    input wire dir, // Direction: 0 for right, 1 for left
    input wire [3:0] parallel_in,
    output reg [3:0] data_out
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        data_out <= 4'b0000; // Reset the register
    end else if (load) begin
        data_out <= parallel_in; // Load the parallel input
    end else if (shift) begin
        if (dir) begin
            // Shift left
            data_out <= {data_out[2:0], 1'b0};
        end else begin
            // Shift right
            data_out <= {1'b0, data_out[3:1]};
        end
    end
end

endmodule
