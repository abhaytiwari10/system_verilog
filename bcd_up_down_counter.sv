`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 02:26:37
// Design Name: 
// Module Name: bcd_up_down_counter
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


module bcd_up_down_counter(

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
  else if(load)
  d_out <= d_in;
  else if(up_down)
  begin 
     if( d_out == 4'b1001)
  d_out <= 4'b0000;
  else 
  d_out <= d_in + 1'b1;
  end 
  else 
  begin
     if(d_out == 4'b0000)
     d_out <= 4'b1001;
     else 
     d_out <= d_out - 1'b1;
     end 
 
 end : ASYNC_RST  
endmodule : bcd_up_down_counter 

