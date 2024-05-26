`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 19:45:09
// Design Name: 
// Module Name: Day19_SRflipflop
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


module sr_flip_flop (
    input wire S,
    input wire R,
    input wire CLK,
    output reg Q,
    output wire Qn
);

assign Qn = ~Q;

always @(posedge CLK) begin
    if (S && !R)
        Q <= 1;
    else if (!S && R)
        Q <= 0;
end

endmodule

