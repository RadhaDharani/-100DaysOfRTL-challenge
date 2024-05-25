`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2024 19:15:21
// Design Name: 
// Module Name: day1
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


module ALU(A,B,Op,R); 
    input [7:0] A,B;
    input [2:0] Op;
    output [7:0] R;
    wire [7:0] Reg1,Reg2;
    reg [7:0] Reg3;
    assign Reg1 = A;
    assign Reg2 = B;
    assign R = Reg3;
    always @(Op or Reg1 or Reg2)
    begin
        case (Op)
            0 : Reg3 = Reg1 & Reg2;  
         1 : Reg3 = ~(Reg1 & Reg2); 
         2 : Reg3 = Reg1 | Reg2 ;  
         3 : Reg3 = ~(Reg1 | Reg2); 
         4 : Reg3 = Reg1 ^ Reg2;                
         5 : Reg3 = ~(Reg1 ^ Reg2);  
         6 : Reg3 = Reg1 + Reg2;     
         7 : Reg3 = Reg1 - Reg2;   
        endcase 
    end    
endmodule
