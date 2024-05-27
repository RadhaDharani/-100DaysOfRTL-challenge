`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 20:32:30
// Design Name: 
// Module Name: Day18_SRLatch
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


module sr_nor_latch (
    input wire S,
    input wire R,
    output wire Q,
    output wire Qn
);

assign Q = ~(R | Qn);
assign Qn = ~(S | Q);

endmodule

