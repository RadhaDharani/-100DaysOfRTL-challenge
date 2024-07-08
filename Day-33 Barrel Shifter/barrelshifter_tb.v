`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.07.2024 22:23:45
// Design Name: 
// Module Name: barrelshifter_tb
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


module tb_barrel_shifter;

    // Testbench signals
    reg [3:0] data_in;
    reg [1:0] shift_amt;
    reg direction;
    wire [3:0] data_out;
    barrel_shifter uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .direction(direction),
        .data_out(data_out)
    );
    initial begin
        
        $display("Time\tdata_in\tshift_amt\tdirection\tdata_out");
        data_in = 4'b1101; shift_amt = 2'b00; direction = 1'b0; #10;
        $display("%0d\t%b\t%b\t%b\t%b", $time, data_in, shift_amt, direction, data_out);

        data_in = 4'b1101; shift_amt = 2'b01; direction = 1'b0; #10;
        $display("%0d\t%b\t%b\t%b\t%b", $time, data_in, shift_amt, direction, data_out);

        data_in = 4'b1101; shift_amt = 2'b10; direction = 1'b0; #10;
        $display("%0d\t%b\t%b\t%b\t%b", $time, data_in, shift_amt, direction, data_out);

        data_in = 4'b1101; shift_amt = 2'b11; direction = 1'b0; #10;
        $display("%0d\t%b\t%b\t%b\t%b", $time, data_in, shift_amt, direction, data_out);

        data_in = 4'b1101; shift_amt = 2'b00; direction = 1'b1; #10;
        $display("%0d\t%b\t%b\t%b\t%b", $time, data_in, shift_amt, direction, data_out);

        data_in = 4'b1101; shift_amt = 2'b01; direction = 1'b1; #10;
        $display("%0d\t%b\t%b\t%b\t%b", $time, data_in, shift_amt, direction, data_out);

        data_in = 4'b1101; shift_amt = 2'b10; direction = 1'b1; #10;
        $display("%0d\t%b\t%b\t%b\t%b", $time, data_in, shift_amt, direction, data_out);

        data_in = 4'b1101; shift_amt = 2'b11; direction = 1'b1; #10;
        $display("%0d\t%b\t%b\t%b\t%b", $time, data_in, shift_amt, direction, data_out);
        $finish;
    end

endmodule

