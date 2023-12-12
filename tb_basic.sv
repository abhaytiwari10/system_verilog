`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 10:06:04
// Design Name: 
// Module Name: tb_basic
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

class operand;
rand bit [2:0] opcode;
rand bit [3:0] addr;
constraint c_opcode { opcode < 5;}
constraint c_addr { addr > 4; addr <9;}
function display_operand();

$display("THE VALUE OF OPCODE & ADDR IS = %0h", opcode, addr);
endfunction
endclass

module tb_basic();

operand op;
initial 
begin 
op = new();
for (int i = 0; i < 10; i++)
begin 
assert (op.randomize());
op.display_operand();
end 
end 
endmodule
