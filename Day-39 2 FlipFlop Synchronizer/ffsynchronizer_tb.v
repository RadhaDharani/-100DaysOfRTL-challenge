`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 20:48:14
// Design Name: 
// Module Name: ffsynchronizer_tb
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


module tb_two_ff_synchronizer;
    reg clk;
    reg async_in;
    wire sync_out;
    two_ff_synchronizer uut (
        .clk(clk),
        .async_in(async_in),
        .sync_out(sync_out)
    );
    initial clk = 0;
    always #5 clk = ~clk; 
    initial begin
        async_in = 0;
        #12 async_in = 1; 
        #20 async_in = 0;
        #50 $finish; 
    end
    initial begin
        $monitor("At time %t: async_in = %b, sync_out = %b", $time, async_in, sync_out);
    end

endmodule

