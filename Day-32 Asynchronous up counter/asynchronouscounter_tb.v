`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.07.2024 13:31:44
// Design Name: 
// Module Name: asynchronouscounter_tb
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


module async_up_counter_tb;

    reg clk;
    reg reset;
    wire [3:0] q;
    async_up_counter uut (
        .clk(clk),
        .reset(reset),
        .q(q)
    );
    always #5 clk = ~clk;
    initial begin
        clk = 0;
        reset = 1;
        #10 reset = 0;
        #100 reset = 1;
        #10 reset = 0;
        #200 $finish;
    end

    initial begin
        $monitor("At time %t, q = %b", $time, q);
    end

endmodule
