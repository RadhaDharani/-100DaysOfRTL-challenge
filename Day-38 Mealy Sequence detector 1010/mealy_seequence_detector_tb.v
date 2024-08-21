`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2024 17:45:36
// Design Name: 
// Module Name: mealy_seequence_detector_tb
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

module tb_fsm_sequence_detector_1010();

    reg clk;
    reg reset;
    reg in;
    wire out;

    // Instantiate the FSM sequence detector
    fsm_sequence_detector_1010 uut (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(out)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // 10ns clock period (100 MHz)
    end

    // Stimulus
    initial begin
        // Initialize inputs
        reset = 1;
        in = 0;

        // Apply reset
        #10;
        reset = 0;

        // Apply input sequence
        #10 in = 1;  // Applying '1'
        #10 in = 0;  // Applying '0'
        #10 in = 1;  // Applying '1'
        #10 in = 0;  // Applying '0', should detect "1010" here

        // Add more sequences to test further
        #10 in = 0;  // Applying '0'
        #10 in = 1;  // Applying '1'
        #10 in = 1;  // Applying '1'
        #10 in = 0;  // Applying '0'
        #10 in = 1;  // Applying '1'
        #10 in = 0;  // Applying '0'

        // Apply reset to test reset functionality
        #10 reset = 1;
        #10 reset = 0;

        #10 in = 1;  // Applying '1'
        #10 in = 0;  // Applying '0'
        #10 in = 1;  // Applying '1'
        #10 in = 0;  // Applying '0'

        // Finish the simulation
        #50;
        $finish;
    end

    // Monitor output
    initial begin
        $monitor("Time=%0t | Reset=%b | In=%b | Out=%b | State=%b", $time, reset, in, out, uut.state);
    end

endmodule

