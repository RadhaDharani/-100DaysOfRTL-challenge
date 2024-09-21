`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.09.2024 15:31:39
// Design Name: 
// Module Name: sram_tb
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
module tb_sram;

    reg [1:0] addr;
    reg [3:0] data_in;
    reg we;
    reg clk;
    wire [3:0] data_out;

    sram uut (
        .addr(addr),
        .data_in(data_in),
        .we(we),
        .clk(clk),
        .data_out(data_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        
        addr = 2'b00; data_in = 4'b1010; we = 1; #10;
        addr = 2'b01; data_in = 4'b1100; we = 1; #10;
        addr = 2'b10; data_in = 4'b1111; we = 1; #10;
        addr = 2'b11; data_in = 4'b0011; we = 1; #10;

        addr = 2'b00; we = 0; #10;
        addr = 2'b01; we = 0; #10;
        addr = 2'd02; we = 0; #10;
        addr = 2'd03; we = 0; #10;

        $finish;
    end
    initial begin
        $monitor("At time %t | addr = %b | we = %b | data_in = %b | data_out = %b", $time, addr, we, data_in, data_out);
    end

endmodule

