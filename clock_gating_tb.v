`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.09.2024 20:54:49
// Design Name: 
// Module Name: clock_gating_tb
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


module tb_clock_gating;
    reg clk;
    reg enable;
    wire gated_clk;
    clock_gating uut (
        .clk(clk),
        .enable(enable),
        .gated_clk(gated_clk)
    );
    initial clk = 0;
    always #5 clk = ~clk;  
    initial begin
        enable = 1;  
        #30 enable = 0;  
        #50 enable = 1;  
        #50 $finish;  
    end
    initial begin
        $monitor("At time %t: enable = %b, gated_clk = %b", $time, enable, gated_clk);
    end

endmodule

