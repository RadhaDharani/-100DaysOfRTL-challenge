`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2025 12:38:00
// Design Name: 
// Module Name: ROM_tb
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

module ROM_tb;

    reg [3:0] address;
    wire [7:0] data;

    ROM uut (
        .address(address),
        .data(data)
    );

    initial begin
        $monitor("Address: %b | Data: %h", address, data);
        
        address = 4'b0000; #10;
        address = 4'b0001; #10;
        address = 4'b0010; #10;
        address = 4'b0011; #10;
        address = 4'b0100; #10;
        address = 4'b0101; #10;
        address = 4'b0110; #10;
        address = 4'b0111; #10;
        
        $stop;
    end

endmodule

