`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 11:33:53
// Design Name: 
// Module Name: tb_TOP_MODULE
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


module tb_TOP_MODULE();

   logic [7:0] data_in_0;
   logic [7:0] data_in_1;
   logic [3:0] addr_in;
   logic cs;
   logic reset_n;
   logic clk;
   logic [15:0] data_out;
   
   module_top UT (.*);
   
   always #10 clk = ~clk;
   //always #100 addr_in = addr_in + 1'b1; 
   initial begin
   
   data_in_0 = 8'b00010011;
   data_in_1 = 8'b00000011;
   reset_n = 'b0;
   clk = 'b0;
   addr_in = 4'b0000;
   cs = 'b0;
   #10
   cs = 'b1;
   reset_n = 'b1;
   #400
   $finish();
   end
  
endmodule
