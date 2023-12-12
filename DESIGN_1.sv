`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 12:19:13
// Design Name: 
// Module Name: DESIGN_1
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


module half_adder(
input a_in,
input b_in,
output logic sum_out,
output logic carry_out 
);
always @*
begin
 sum_out = a_in ^ b_in;
 carry_out = a_in & b_in;
end 
endmodule
