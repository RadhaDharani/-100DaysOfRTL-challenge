`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.07.2024 23:38:23
// Design Name: 
// Module Name: LFSR_tb
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



module tb_lfsr_4bit;
    reg clk;
    reg rst;
    wire [3:0] data_out;
    lfsr_4bit uut (
        .clk(clk),
        .rst(rst),
        .data_out(data_out)
    );

    always #5 clk = ~clk;  
    initial begin
        clk = 0;
        rst = 1;  
        #10;
        rst = 0;  
        #100;    
        $finish; 
    end
    always @(posedge clk) begin
        $display("Time %0t: lfsr_out = %b", $time, data_out);
    end
endmodule

