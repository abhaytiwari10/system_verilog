`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 12:22:44
// Design Name: 
// Module Name: tb_half_adder
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


module tb_half_adder();
logic a_in;
logic b_in;
logic s_out;
logic carry_out;

half_adder DUT(.*,.sum_out(sum_out));

initial
begin 
a_in = 'b0;
b_in = 'b0;

#500 $finish();
end 

always #50 a_in = $urandom();
always #40 b_in = $urandom();

endmodule
