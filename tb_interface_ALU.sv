`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 12:35:32
// Design Name: 
// Module Name: tb_interface_ALU
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


module tb_interface_ALU;
ALU_8BIT D0( A.DUT);
ALU_inf A();

always #10 A.op = A.op + 1'b1;
always #160 A.a_in = $urandom();
always #160 A.b_in = $urandom();



initial 
begin 
A.a_in = $urandom();
A.b_in = $urandom();
A.op   = 'b0;

 end
endmodule
