`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 05:32:23
// Design Name: 
// Module Name: clock_generator
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

module clock_generator (
    input wire clk_in,   
    input wire reset,    
    output reg clk_out1, 
    output reg clk_out2, 
    output reg clk_out3
);

reg [2:0] counter;

always @(posedge clk_in or posedge reset) begin
    if (reset) begin
        counter <= 3'b0;
        clk_out1 <= 1'b0;
        clk_out2 <= 1'b0;
        clk_out3 <= 1'b0;
    end else begin

        counter <= counter + 1'b1;
        if (counter[0] == 1'b1) begin
            clk_out1 <= ~clk_out1;
        end
        if (counter[1:0] == 2'b11) begin
            clk_out2 <= ~clk_out2;
        end
        if (counter[2:0] == 3'b111) begin
            clk_out3 <= ~clk_out3;
        end
    end
end

endmodule

