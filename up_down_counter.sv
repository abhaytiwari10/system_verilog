`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 01:18:09
// Design Name: 
// Module Name: up_down_counter
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


module up_down_counter(
input [3:0] d_in,
input load,
input up_down,
input clk,
input rst_n,
output logic [3:0] d_out
    );
 always_ff @(posedge clk, negedge rst_n)
 begin : ASYNC_RST
 if(!rst_n)
 d_out <= 'b0;
 else
 begin
 if(load) 
 d_out <= d_in; 
 else 
 if(up_down)
  d_out <= d_out + 1'b1;
  else 
  d_out <= d_out - 1'b1;
  end 
 end : ASYNC_RST  
endmodule : up_down_counter 
