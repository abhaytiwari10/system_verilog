`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 07:42:21
// Design Name: 
// Module Name: logic_unit_8it
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
`define D_S 4
`define D_W 2
`define OR 2'b00
`define XOR 2'b01
`define AND 2'b10 
`define NOT 2'b11
module logic_unit_8it(
input [`D_S-1:0] a_in,
input [`D_S-1:0] b_in,
input [`D_W-1:0] opcode_in,
output logic [`D_S-1:0] result_out
    );
always_comb
begin : LOGIC_UNIT
case(opcode_in)
`OR: result_out = a_in | b_in;
`XOR: result_out = a_in ^ b_in;
`AND: result_out = a_in & b_in;
`NOT: result_out = ~a_in;
default: result_out = 'b0;
endcase 
end  : LOGIC_UNIT
endmodule : logic_unit_8it
