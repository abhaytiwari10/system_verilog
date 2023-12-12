`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 10:04:31
// Design Name: 
// Module Name: fork_join_any
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


module fork_join_any();
  int x;
  task automatic sum_display(input int a,b,t,output int sum);
  #t
    sum = a+b;  
    $display("\tValue of x = %0d at time: %0t",sum, $time); 
  endtask

  initial 
  begin
  $display("%0t, the fork_join_any started", $time);
   fork
      fork  
       
    sum_display(10,5,30,x);
    
    sum_display(70,60,20,x);
    
    sum_display(20,40,40,x);
     join_none
    sum_display(30,25,10,x);
 $display("%0t, the fork join none finished", $time);
 join_none
   $display("%0t, the fork join none finished", $time);
 end
endmodule

