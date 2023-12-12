`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 02:33:38
// Design Name: 
// Module Name: tb_associative_array
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


module tb_associative_array();
   
   int array_1[int];
   int array_2[string];
   
   //initilize this and print the value 
   
   initial
   begin 
   array_1 = '{10:25 , 64:30};
   array_2 = '{"CDAC":50, "VLSI":60};
   $display("the the of array_1 is= %p",array_1);
   $display("the the array_2 is = %p",array_2);
   #500 $finish();
   end 
endmodule
