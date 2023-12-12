`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 10:57:45
// Design Name: 
// Module Name: TOP_MODULE
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


module TOP_MODULE(
   input [7:0] data_in_0,
   input [7:0] data_in_1,
   input [3:0] addr_in,
   input cs,
   input w_en,
   input op_en,
   input reset_n,
   input clk,
   output [15:0] data_out 
    );
    logic [7:0] data_out_A;
    logic [7:0] data_out_B;
    logic [15:0] data_in_2; 
    
    RAM16x8 R1 (.*, .data_in(data_in_0), .data_out(data_out_A));
    RAM16x8 R2 (.*, .data_in(data_in_1), .data_out(data_out_B));
    RAM16x16 R3 (.*, .data_in(data_in_2), .data_out(data_out));
    assign data_in_2 = data_out_A * data_out_B; 
endmodule
