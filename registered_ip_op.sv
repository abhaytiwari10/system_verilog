`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 08:24:12
// Design Name: 
// Module Name: registered_ip_op
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

typedef enum bit [1:0] {or_g, xor_g, and_g, not_g} gate_design;
module registered_ip_op(
input clk,
input reset,
input [`D_S-1:0] input_1,
input [`D_S-1:0] input_2,
input gate_design opcode_in,
output logic [`D_S-1:0] result
    );
    logic [`D_S-1:0] result_out;
    logic [`D_S-1:0] a_in;
    logic [`D_S-1:0] b_in;
    
always_ff @(posedge clk, negedge reset)
begin
if(!reset)
begin
a_in <= 'b0;
b_in <= 'b0;
result <= 'b0;
end
else
begin
a_in <= input_1;
b_in <= input_2;
result <= result_out;
end
end
    
always_comb
begin : LOGIC_UNIT
case(opcode_in)
or_g: result_out = a_in | b_in;
xor_g: result_out = a_in ^ b_in;
and_g: result_out = a_in & b_in;
not_g: result_out = ~a_in;
default: result_out = 'b0;
endcase 
end  : LOGIC_UNIT
endmodule : registered_ip_op
