`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 05:46:12
// Design Name: 
// Module Name: AS_inf
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
`include "defines.sv"
interface as_inf( 
input clk,
input reset_n
);
   logic [`data_width-1:0] a_in;
   logic [`data_width-1:0] b_in;
   logic opcode;
   logic [`data_width:0] result;
modport DUT(input clk,reset_n, a_in, b_in, opcode, output result);
endinterface
