`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2025 19:23:46
// Design Name: 
// Module Name: Registerfile_tb
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

`timescale 1ns / 1ps

module RegisterFile_tb;

    reg clk;
    reg we;
    reg [1:0] wr_addr, rd_addr;
    reg [7:0] wr_data;
    wire [7:0] rd_data;

    RegisterFile uut (
        .clk(clk),
        .we(we),
        .wr_addr(wr_addr),
        .rd_addr(rd_addr),
        .wr_data(wr_data),
        .rd_data(rd_data)
    );

    always #5 clk = ~clk; 

    initial begin
        $monitor("Time: %0t | Write Addr: %b | Write Data: %h | Read Addr: %b | Read Data: %h", 
                  $time, wr_addr, wr_data, rd_addr, rd_data);
        
        clk = 0;
        we = 1; 

        wr_addr = 2'b00; wr_data = 8'hA1; #10;
        wr_addr = 2'b01; wr_data = 8'hB2; #10;
        wr_addr = 2'b10; wr_data = 8'hC3; #10;
        wr_addr = 2'b11; wr_data = 8'hD4; #10;

        we = 0; 
        rd_addr = 2'b00; #10;
        rd_addr = 2'b01; #10;
        rd_addr = 2'b10; #10;
        rd_addr = 2'b11; #10;
        
        $stop;
    end

endmodule

