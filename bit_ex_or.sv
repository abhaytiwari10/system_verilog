`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 02:17:14
// Design Name: 
// Module Name: bit_ex_or
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


module bit_ex_or(
input bit a_in, b_in,
output logic y_out
    );
 always_comb
 begin : xor_gate
 
 y_out = a_in ^ b_in;

end : xor_gate
endmodule
