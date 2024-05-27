`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.05.2024 20:29:01
// Design Name: 
// Module Name: BinaryToGrayConverter_tb
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


module tb_binary_to_gray;
    reg [3:0] b;
    wire [3:0] g;

    // Instantiate the binary to gray code converter
    binary_to_gray uut (
        .b(b),
        .g(g)
    );

    initial begin
        // Test case 1
        b = 4'b0000;
        #10;
        $display("b=%b, g=%b", b, g);
        
        b = 4'b1011;
        #10;
        $display("b=%b, g=%b ", b, g);
        
        b = 4'b0111;
        #10;
        $display("b=%b, g=%b ", b, g);

        $stop;
    end
endmodule

