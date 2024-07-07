`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 12:55:48
// Design Name: 
// Module Name: Asynchronous_counter
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

module async_up_counter (
    input wire clk,
    input wire reset,
    output reg [3:0] q
);

    initial begin
        q = 4'b0000;
    end

    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000; // Reset the counter to 0
        else begin
            q[0] <= ~q[0]; //Toggle the first bit
            q[1] <= q[0] ? ~q[1] : q[1]; // Toggle the second bit if the first bit is 1
            q[2] <= q[1] ? ~q[2] : q[2]; // Toggle the third bit if the second bit is 1
            q[3] <= q[2] ? ~q[3] : q[3]; // Toggle the fourth bit if the third bit is 1
        end
    end

endmodule


