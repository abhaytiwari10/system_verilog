`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 04:50:55
// Design Name: 
// Module Name: ADD_SUB
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
//`include "AS_inf.sv"

module ADD_SUB(
 as_inf AS
   );
   logic op_reg;
logic [`data_width-1:0] a_reg;
logic [`data_width-1:0] b_reg;
logic [`data_width-1:0] b_com;


 always_ff @(posedge AS.clk, negedge AS.reset_n)
 begin: ASYNC_INPUT
 if(!AS.reset_n)
 begin
 op_reg <= 'b0;
  a_reg <= 'b0;
 b_reg <= 'b0;
 end 
 else 
 begin 
 op_reg <= AS.opcode;
 a_reg <= AS.a_in;
 b_reg <= AS.b_in;
 end 
 end : ASYNC_INPUT

always_comb
begin 
if(op_reg)
b_com = ~b_reg;
else 
b_com = b_reg;
end 

 
 always_ff @(posedge AS.clk, negedge AS.reset_n)
 begin: ASYNC_OUTPUT
 if(!AS.reset_n)
 AS.result <= 'b0;
 else 
 AS.result <= a_reg + b_com + op_reg;
 end : ASYNC_OUTPUT
endmodule:ADD_SUB
