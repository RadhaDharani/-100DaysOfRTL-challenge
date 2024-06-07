`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.06.2024 08:56:31
// Design Name: 
// Module Name: Priorityrencoder_tb
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


module tb_priority_encoder;
    reg [3:0] in;
    wire [1:0] out;
    wire valid;

    // Instantiate the priority encoder
    priority_encoder uut (
        .in(in),
        .out(out),
        .valid(valid)
    );

    initial begin
        // Initialize inputs
        in = 4'b0000;

        // Apply test vectors
        #10 in = 4'b0001; // Test lowest priority
        #10 in = 4'b0010; // Test next priority
        #10 in = 4'b0100; // Test higher priority
        #10 in = 4'b1000; // Test highest priority
        #10 in = 4'b0110; // Test multiple active inputs, should output higher priority
        #10 in = 4'b0000; // Test no inputs active
        #10 in = 4'b0011; // Test multiple active inputs, should output higher priority
        #10 in = 4'b1100; // Test multiple active inputs, should output higher priority

        // Finish simulation
        #10 $finish;
    end

    initial begin
        $monitor("time %t, input = %b, output = %b, valid = %b", $time, in, out, valid);
    end
endmodule

