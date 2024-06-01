`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.06.2024 23:04:55
// Design Name: 
// Module Name: USR_tb
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


module universal_shift_register_tb;
    reg [3:0] data_in;
    reg [1:0] mode;
    reg clk;
    reg reset;
    wire [3:0] data_out;

    // Instantiate the Universal Shift Register
    universal_shift_register uut (
        .data_in(data_in),
        .mode(mode),
        .clk(clk),
        .reset(reset),
        .data_out(data_out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle clock every 5 time units
    end

    // Test sequence
    initial begin
        // Initialize inputs
        reset = 1; data_in = 4'b0000; mode = 2'b00;
        #10 reset = 0; mode = 2'b11; data_in = 4'b1010; // Parallel load
        #10 mode = 2'b00;  // Hold
        #10 mode = 2'b01;  // Shift left
        #10 mode = 2'b10;  // Shift right
        #10 mode = 2'b00;  // Hold
        #10 $finish;       // End simulation
    end

    // Monitor outputs
    initial begin
        $monitor("Time: %g, mode = %b, data_in = %b, data_out = %b", $time, mode, data_in, data_out);
    end
endmodule

