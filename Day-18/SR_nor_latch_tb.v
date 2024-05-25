`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 20:36:44
// Design Name: 
// Module Name: SR_nor_latch_tb
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


module SR_nor_latch_tb;
reg S,R;
wire Q,Qn;
sr_nor_latch UUT(.S(S),.R(R),.Q(Q),.Qn(Qn));
initial begin
S=0;R=0;
#10 S=1'b0;R=1'b0;
#10 S=1'b0;R=1'b1;
#10 S=1'b1;R=1'b0;
#10 S=1'b1;R=1'b1;
end 
initial begin
$monitor("time:%g S=%b, R=%b",$time,S,R);
#50 $finish;
end
endmodule
