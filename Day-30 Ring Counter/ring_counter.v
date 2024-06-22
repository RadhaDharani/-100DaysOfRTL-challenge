`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.06.2024 00:01:03
// Design Name: 
// Module Name: ring_counter
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


module ring_counter (
    input wire clk,   
    input wire reset, 
    output reg [3:0] q 
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        q <= 4'b0001; 
    end else begin
        q <= {q[2:0], q[3]}; 
    end
end

endmodule

