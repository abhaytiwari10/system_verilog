`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 02:21:49
// Design Name: 
// Module Name: tb_ex_or
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


module tb_ex_or();
logic a_in;
logic b_in;
logic y_out;

bit_ex_or DUT(.*);

initial  
begin 
 a_in = 'b0;
 b_in = 'b0;
 end 
always #40 a_in = a_in + 1'b1;
always #50 b_in = b_in + 1'b1;

endmodule
