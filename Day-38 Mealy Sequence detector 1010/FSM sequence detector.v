`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.08.2024 16:37:05
// Design Name: 
// Module Name: FSM sequence detector
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



module fsm_sequence_detector_1010 (
    input wire clk,
    input wire reset,
    input wire in,
    output reg out
);

// State encoding   
localparam S0 = 3'b00; // Initial state
localparam S1 = 3'b01;  // Detected '1'
localparam S2 = 3'b10;  // Detected '10'
localparam S3 = 3'b11;  // Detected '101'



reg [1:0]state, next_state;
    // State transition on clock edge
always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= S0;
            out <= 0;
        end else begin
            state <= next_state;
        end
    end
    
// Next state logic and output logic (Mealy)
always @(*) begin
        // Default assignments
      next_state = state;
      out = 0;
      case (state)
                  S0: begin
                      if (in) 
                          next_state = S1;
                      else 
                          next_state = S0;
                  end
      
                  S1: begin
                      if (!in)
                          next_state = S2;
                      else 
                          next_state = S1;
                  end
      
                  S2: begin
                      if (in)
                          next_state = S3;
                      else 
                          next_state = S0;
                  end
      
                  S3: begin
                      if (!in) begin
                          next_state = S2;
                          out = 1;  // Sequence "1010" detected
                      end else 
                          next_state = S1;
                  end

      
        default: begin
            next_state = S0;
        end
        endcase
end
endmodule
