`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 09:26:38
// Design Name: 
// Module Name: pwmgenerator
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


module pwm_generator (
    input wire clk,         // Clock input
    input wire reset,       // Reset input
    input wire [7:0] duty,  // 8-bit duty cycle input (0-255)
    output reg pwm_out      // PWM output
);

reg [7:0] counter;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        counter <= 8'b0;
        pwm_out <= 1'b0;
    end else begin
        counter <= counter + 1'b1;
        if (counter < duty)
            pwm_out <= 1'b1;
        else
            pwm_out <= 1'b0;
    end
end

endmodule

