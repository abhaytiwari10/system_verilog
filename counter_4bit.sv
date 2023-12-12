`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 09:45:18
// Design Name: 
// Module Name: counter_4bit
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
interface counter_inf(
input clk,
input reset_n
    );
    logic count_en;
    logic [3:0]  q_out;
    
    
    modport DUT (input clk, reset_n, count_en,
                 output q_out);
                 
  //  modport tb (input clk, reset_n, q_out, output count_en);
endinterface

module counter_4bit(
counter_inf c_inf
    );
    
    always_ff @ (posedge c_inf.clk, negedge c_inf.reset_n)
    begin:counter
    if(!c_inf.reset_n)
    c_inf.q_out <= 'b0;
    else
    begin:count
    if(c_inf.count_en)
    c_inf.q_out <= c_inf.q_out + 1'b1;
    else
    c_inf.q_out <= c_inf.q_out;
    end:count
    end:counter
endmodule
