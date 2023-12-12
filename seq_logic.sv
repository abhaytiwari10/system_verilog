`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 10:12:46
// Design Name: 
// Module Name: seq_logic
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


module seq_logic(

input clk,
input reset_n,
output logic [1:0] q_out,
output logic done
    );
    always_ff @(posedge clk, negedge reset_n)
    begin:async_event
    if(!reset_n)
    q_out <= 2'b0;
    else
    q_out <= q_out + 1'b1;
    end:async_event
    
    assign done = q_out[0] & q_out[1];
endmodule
