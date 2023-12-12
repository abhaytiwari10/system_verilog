`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 14:06:46
// Design Name: 
// Module Name: mux_2x1
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


module mux_2x1(
input [1:0] d_in,
input sel_in,
output logic d_out
    );
 always_comb 
 begin 
 case(sel_in)
 1'b1: d_out = d_in[1];
 1'b0: d_out = d_in[0];
 endcase 
 end 
endmodule
