`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 10:33:23
// Design Name: 
// Module Name: RAM16x16
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


module RAM16x16(

   input [15:0] data_in,
   input [3:0] addr_in,
   input cs,
   input w_en,
   input op_en,
   input reset_n,
   input clk,
   output reg [15:0] data_out
    );
    logic [15:0] memory [15:0];
    logic [15:0] temp;
    always_ff@(posedge clk, negedge reset_n)
    begin : ASYNC_WRITE 
    if(!reset_n)
    memory[addr_in] <= 'b0;
    else
    begin  
    if(w_en & !op_en & cs)
    memory[addr_in] <= data_in;
    end 
    end :ASYNC_WRITE
    
    always_ff@(posedge clk, negedge reset_n)
    begin : ASYNC_READ 
    if(!reset_n | !cs)
    data_out <= 'b0;
    else
    begin  
    if(!w_en & op_en & cs)
     data_out <= memory[addr_in];
 
    end 
    end :ASYNC_READ
    
 
endmodule
