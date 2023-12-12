`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 10:29:12
// Design Name: 
// Module Name: tb_basic_2
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
class operand1;
rand bit [2:0] opcode;
endclass

module tb_basic_2();

operand1 op;
initial 
begin 
op = new();
for (int i = 0; i < 10; i++)
begin 
op.randomize();
$display("THE VALUE OF OPCODE IS = %0d", op.opcode);
end 
end    
endmodule
