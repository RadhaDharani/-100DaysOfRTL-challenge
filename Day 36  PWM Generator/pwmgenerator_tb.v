`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.07.2024 09:28:48
// Design Name: 
// Module Name: pwmgenerator_tb
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


module tb_pwm_generator();

reg clk;
reg reset;
reg [7:0] duty;
wire pwm_out;

pwm_generator uut (
    .clk(clk),
    .reset(reset),
    .duty(duty),
    .pwm_out(pwm_out)
);

initial begin
    clk = 0;
    reset = 0;
    duty = 8'd128; 
    reset = 1;
    #10;
    reset = 0;
    #100 duty = 8'd64;  
    #100 duty=8'd0;
    #200 duty = 8'd192;
    #100 duty = 8'd255; 
    #100 duty = 8'd0;  

    #100 $finish;
end

// Clock generation
always #5 clk = ~clk;

endmodule
