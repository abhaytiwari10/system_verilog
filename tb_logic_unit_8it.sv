`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 07:48:34
// Design Name: 
// Module Name: tb_logic_unit_8it
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


module tb_logic_unit_8it();
logic [3:0] a_in;
logic [3:0] b_in;
logic [1:0] opcode_in;
logic [3:0] result_out;

logic_unit_8it DUT (.*);

initial 
begin : LOGIC_UNIT 
a_in = 'b0;
b_in = 'b0;
opcode_in = 'b0;

#500 $finish();
end : LOGIC_UNIT

always #10 a_in = $urandom();
always #20 b_in = $urandom();
always #40 opcode_in = opcode_in + 1'b1;

endmodule : tb_logic_unit_8it
