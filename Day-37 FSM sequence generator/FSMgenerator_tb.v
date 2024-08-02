`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 18:29:16
// Design Name: 
// Module Name: FSMgenerator_tb
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


module FSMgenerator_tb;
reg clk;
reg reset;
reg in;
wire out;
fsm_sequence_generator uut(.clk(clk),.reset(reset),.in(in),.out(out));
always #5 clk=~clk;

initial begin 
clk=0;
reset=1;
in=0;

#10 reset=0;
//for input sequence=101
#10 in=1;
#10 in=0;
#10 in=1;

#10 $display("Output after sequence 101: %b", out);

#10 in=0;
#10 in=0;
#10 in=1;

#10 $display("Output after sequence 101: %b", out);

#10 $finish;
end
endmodule
