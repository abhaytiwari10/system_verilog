`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 00:50:50
// Design Name: 
// Module Name: d_ff
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


module d_ff(
input clk, 
input rst_n,
input d_in,
output logic d_out
    );
    always_ff @(posedge clk, negedge rst_n)
    begin : ASYNC_RST
    if(!rst_n)
    d_out <= 'b0;
    else 
    d_out <= d_in;
    end : ASYNC_RST
endmodule : d_ff
