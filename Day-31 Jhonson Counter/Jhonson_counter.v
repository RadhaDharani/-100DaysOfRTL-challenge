`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.07.2024 21:44:57
// Design Name: 
// Module Name: Jhonson_counter
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


module johnson_counter (
    input wire clk,   
    input wire reset,  
    output reg [3:0] q 
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        q <= 4'b0000; 
    end else begin
        q <= {q[2:0], ~q[3]}; 
    end
end

endmodule

