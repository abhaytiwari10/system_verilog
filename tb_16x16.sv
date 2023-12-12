`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.11.2023 12:00:26
// Design Name: 
// Module Name: tb_16x16
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


module tb_16x16();
   logic   [15:0] data_in;
   logic [3:0] addr_in;
   logic cs;
   logic w_en;
   logic op_en;
   logic reset_n;
   logic clk;
   logic [15:0] data_out;
   
   RAM16x16 DUT(.*);
   
   initial 
   begin : TESTING 
   data_in = 'b0;
   addr_in = 'b0;
   cs = 'b0;
   w_en = 'b0;
   op_en = 'b0;
   reset_n = 'b0;
   clk = 'b0;
   #20
   reset_n = 'b1;
   cs = 'b1;
   w_en = 'b1;
   addr_in = 4'b0011;
   #45
     w_en = 'b0;
  #10
  op_en = 'b1;
   addr_in = 4'b0011;
   
   #1000
   $finish();
   end :TESTING
    always #10 clk = ~clk;
   always #40 data_in = $urandom();
endmodule
