`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 09:40:52
// Design Name: 
// Module Name: Tb_thread
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


module Tb_thread();
initial
fork 

$display("%0t, the fetch cycle", $time);
fork
#10 $display(" the decode cycle is: %0t", $time);

 join
 #10 $display(" the execute cycle is: %0t", $time);
 begin
 #10 $display(" the store cycle is: %0t", $time);
 #10 $display(" the store cycle is finished: %0t", $time); 
  end 
 #100
 $finish();

join
endmodule 