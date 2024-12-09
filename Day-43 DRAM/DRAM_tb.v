`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2024 18:34:08
// Design Name: 
// Module Name: DRAM_tb
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

module DRAM_tb;

    // Parameters for DRAM dimensions
    parameter ROW_SIZE = 16;
    parameter COL_SIZE = 16;
    parameter DATA_WIDTH = 8;

    reg clk;
    reg reset;
    reg [3:0] row_addr;        
    reg [3:0] col_addr;        
    reg write_enable;          
    reg read_enable;           
    reg [DATA_WIDTH-1:0] data_in; 
    wire [DATA_WIDTH-1:0] data_out; 

    DRAM #(
        .ROW_SIZE(ROW_SIZE),
        .COL_SIZE(COL_SIZE),
        .DATA_WIDTH(DATA_WIDTH)
    ) uut (
        .clk(clk),
        .reset(reset),
        .row_addr(row_addr),
        .col_addr(col_addr),
        .write_enable(write_enable),
        .read_enable(read_enable),
        .data_in(data_in),
        .data_out(data_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        
        reset = 1;
        write_enable = 0;
        read_enable = 0;
        row_addr = 0;
        col_addr = 0;
        data_in = 0;

        #10 reset = 0;
        $display("Starting DRAM Testbench");

        #10;
        row_addr = 4; col_addr = 2; data_in = 8'hAA; write_enable = 1;
        #10 write_enable = 0;
        $display("Written 0x%h to row: %d, col: %d", data_in, row_addr, col_addr);

        #10;
        read_enable = 1;
        #10;
        if (data_out == 8'hAA) begin
            $display("Read successful: 0x%h from row: %d, col: %d", data_out, row_addr, col_addr);
        end else begin
            $display("Read failed! Expected 0x%h, got 0x%h", 8'hAA, data_out);
        end
        read_enable = 0;

        #10;
        row_addr = 5; col_addr = 3; data_in = 8'h55; write_enable = 1;
        #10 write_enable = 0;
        $display("Written 0x%h to row: %d, col: %d", data_in, row_addr, col_addr);

        #10;
        read_enable = 1;
        #10;
        if (data_out == 8'h55) begin
            $display("Read successful: 0x%h from row: %d, col: %d", data_out, row_addr, col_addr);
        end else begin
            $display("Read failed! Expected 0x%h, got 0x%h", 8'h55, data_out);
        end
        read_enable = 0;

        $display("Simulating refresh logic...");
        #100; 

        #10;
        $display("DRAM Testbench Completed");
        $stop;
    end

endmodule

