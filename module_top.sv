`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 04:59:44
// Design Name: 
// Module Name: module_top
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


module module_top(
   input [7:0] data_in_0,
   input [7:0] data_in_1,
   input [3:0] addr_in,
   input cs,
   //input w_en,
   //input op_en,
   input reset_n,
   input clk,
   output [15:0] data_out 
    );
    logic [3:0] addr_1;
    logic [3:0] addr_2;
    logic [7:0] data_out_A;
    logic [7:0] data_out_B;
    logic [15:0] data_in_2;
    logic [3:0] RW; 
    
  
    DRIVE_MODULE D1 (.clk(clk),.reset_n(reset_n),.cs(cs),.control_out(RW));
    RAM16x8 R1 (.clk(clk),.reset_n(reset_n),.w_en(RW[0]),.op_en(RW[1]),.addr_in(addr_in) ,.data_in(data_in_0), .data_out(data_out_A));
    RAM16x8 R2 (.clk(clk),.reset_n(reset_n),.w_en(RW[0]),.op_en(RW[1]),.addr_in(addr_in) ,.data_in(data_in_1), .data_out(data_out_B));
    RAM16x16 R3 (.clk(clk),.reset_n(reset_n),.w_en(RW[2]),.op_en(RW[3]),.addr_in(addr_in) ,.data_in(data_in_2), .data_out(data_out));
    assign data_in_2 = data_out_A * data_out_B; 
endmodule
