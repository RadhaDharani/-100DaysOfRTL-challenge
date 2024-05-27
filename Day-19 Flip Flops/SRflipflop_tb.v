`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.05.2024 21:51:08
// Design Name: 
// Module Name: SRflipflop_tb
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

module sr_flip_flop_tb;
    reg S;
    reg R;
    reg CLK;
    wire Q;
    wire Qn;

    sr_flip_flop uut (.S(S),.R(R),.CLK(CLK),.Q(Q),.Qn(Qn));
    initial begin
        S = 0;
        R = 0;
        CLK = 0;
        #10 S = 1; R = 0; 
        #10 S = 0; R = 0; 
        #10 S = 0; R = 1; 
        #10 S = 0; R = 0; 
        #10 S = 1; R = 0; 
        #10 S = 1; R = 1; 
        #10 S = 0; R = 0; 
        #50 $finish;
    end
    always begin
        #5 CLK = ~CLK; 
    end

    initial begin
        $monitor("Time=%0d: CLK=%b S=%b R=%b Q=%b Qn=%b", $time, CLK, S, R, Q, Qn);
    end

endmodule
