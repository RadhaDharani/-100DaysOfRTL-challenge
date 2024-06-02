`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.06.2024 20:14:41
// Design Name: 
// Module Name: Bidirectional_shift_register_tb
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


module tb_bidirectional_shift_register;

reg clk;
reg reset;
reg load;
reg shift;
reg dir;
reg [3:0] parallel_in;
wire [3:0] data_out;

// Instantiate the bidirectional shift register
bidirectional_shift_register uut (
    .clk(clk),
    .reset(reset),
    .load(load),
    .shift(shift),
    .dir(dir),
    .parallel_in(parallel_in),
    .data_out(data_out)
);

// Clock generation
initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    // Initialize inputs
    reset = 0;
    load = 0;
    shift = 0;
    dir = 0;
    parallel_in = 4'b0000;
    
    // Apply reset
    #10 reset = 1;
    #10 reset = 0;
    
    // Load parallel data
    #10 load = 1;
        parallel_in = 4'b1010;
    #10 load = 0;
    
    // Shift right
    #10 shift = 1;
        dir = 0;
    #40 shift = 0;
    
    // Shift left
    #10 shift = 1;
        dir = 1;
    #40 shift = 0;
    
    // End simulation
    #20 $finish;
end

initial begin
    $monitor("Time: %0d, Reset: %b, Load: %b, Shift: %b, Dir: %b, Parallel In: %b, Data Out: %b", $time, reset, load, shift, dir, parallel_in, data_out);
end

endmodule

