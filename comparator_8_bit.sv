`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 11:35:04
// Design Name: 
// Module Name: comparator_8_bit
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

`define DATA_WIDTH 8
module comparator_8_bit(
input [`DATA_WIDTH-1:0] a_in,
input [`DATA_WIDTH-1:0] b_in,
output a_g_b_out,
output a_e_b_out,
output a_l_b_out
    );

    
 
 assign   a_g_b_out = (a_in > b_in);
 assign   a_e_b_out = (a_in == b_in);
 assign a_l_b_out = (a_in < b_in);
    
    
endmodule
