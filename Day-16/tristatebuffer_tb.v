`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.05.2024 21:38:06
// Design Name: 
// Module Name: tristatebuffer_tb
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


module tristate_buffer_tb;

reg data_in;
reg enable;
wire data_out;

// Instantiate the tri-state buffer
tristate_buffer uut (
    .data_in(data_in),
    .enable(enable),
    .data_out(data_out)
);

initial begin
    // Test cases
    enable=0;data_in=0;
    
    #10 enable=1'b0;data_in=1'b1;
     #10 enable=1'b0;data_in=1'b1;
      #10 enable=1'b1;data_in=1'b1;
       #10 enable=1'b1;data_in=1'b0;

end
initial begin
$monitor("time:%g enable=%b data_in=%b,data_out=%b",$time,enable,data_in,data_out);
#50 $finish;
end
endmodule
