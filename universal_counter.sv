`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 11:38:20
// Design Name: 
// Module Name: universal_counter
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
interface uni_count(
input clk,
input reset_n
    );
    logic [3:0] data_in;
    logic load_en;
    logic count_en;
    logic up_down;
    logic [3:0]  q_out;
    
    
    modport DUT (input clk, reset_n,data_in,load_en, count_en,up_down,output q_out);
                 
  //  modport tb (input clk, reset_n, q_out, output count_en);
endinterface

module universal_counter(
uni_count u
    );
 always_ff @ (posedge u.clk, negedge u.reset_n)
  begin:async_reset
   if(!u.reset_n)
    u.q_out <= 'b0;
   else
    begin:LOAD
     if(u.load_en )
      u.q_out <= u.data_in;
     else if( u.count_en)
      begin:counter
      if(u.up_down)
      u.q_out <= u.q_out + 1'b1;
      else
      u.q_out <= u.q_out - 1'b1;
      end:counter
     else
      u.q_out <= u.q_out;
     end:LOAD
  end:async_reset
endmodule
