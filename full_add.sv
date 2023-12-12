`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 00:33:07
// Design Name: 
// Module Name: full_add
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


module full_add(
input a_in,
input b_in,
input c_in,
output logic sum_out,
output logic carry_out
    );
    wire s0,c0,c_out;
half_adder H1(a_in,b_in,s0,c0);
half_adder H2(s0,c_in,sum_out,c_out);
assign carry_out = c_out | c0; 

endmodule
