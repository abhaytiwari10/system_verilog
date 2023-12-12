`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 00:40:04
// Design Name: 
// Module Name: tb_full_add
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


module tb_full_add();
logic a_in;
logic b_in;
logic c_in;
logic sum_out;
logic carry_out;

full_add DUT (.*);

initial
begin
a_in = 'b0;
b_in = 'b0;
c_in = 'b0;
 
 #300 $finish();
 end
 always #20 a_in = $urandom();
  always #30 b_in = $urandom();
   always #40 c_in = $urandom();
   
endmodule
