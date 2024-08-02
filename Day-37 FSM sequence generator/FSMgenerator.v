`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 16:54:01
// Design Name: 
// Module Name: FSMgenerator
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

module fsm_sequence_generator (
    input wire clk,
    input wire reset,
    input wire in,
    output reg out
);
localparam S0=2'b00;
localparam S1=2'b01;
localparam S2=2'b10;
localparam S3=2'b00;



reg [1:0] state, next_state;

// State Transition
always @(posedge clk or posedge reset) begin
    if (reset) begin
        state <= 0;
        out <= 0;
    end else begin
        state <= next_state;
    end
end

// Next State Logic
always @(*) begin
    case (state)
        S0: next_state = in ? S1 : S0;
        S1: next_state = in ? S1 : S2;
        S2: next_state = in ? S3 : S0;
        S3: next_state = in ? S1 : S2;
        default: next_state = S0;
    endcase
end

// Output Logic
always @(state) begin
    out = (state == S3) ? 1 : 0;
end

endmodule




