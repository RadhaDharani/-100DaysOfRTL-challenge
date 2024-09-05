`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 20:42:31
// Design Name: 
// Module Name: flipflopsynchronizer
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


module two_ff_synchronizer (
    input  wire clk,        
    input  wire async_in,   
    output wire sync_out    
);
    reg ff1, ff2;           
    always @(posedge clk) begin
        ff1 <= async_in;  
        ff2 <= ff1;       
    end

    assign sync_out = ff2; 
endmodule

