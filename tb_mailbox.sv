`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 10:03:04
// Design Name: 
// Module Name: tb_mailbox
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



class transaction;
rand bit [15:0] data_packet;
function display_p();
 $display("data packet at time %0t is %0h",$time,data_packet);
 endfunction
 endclass 
 
 class generator;
 mailbox mbx;
  function new (mailbox mbx);
  this.mbx = mbx;
  endfunction
  
  //put packet
  
  task gen_data();
  transaction t = new();
  t.randomize();
  t.display_p();
  $display("%0t,waiting for generator to put data packet", $time);
  mbx.put(t);
  $display("%0t,generator has put data packet", $time);
  endtask
 endclass
 
  class driver;

  mailbox mbx;
  function new (mailbox mbx);
  this.mbx = mbx;
  endfunction
  
  //get packet
  
  task drv_data();
  transaction t1 = new();
  $display("%0t,waiting for driver to get data packet", $time);
  mbx.get(t1);
  $display("%0t,driver has get data packet", $time);
  endtask
 endclass

module tb_mailbox();
mailbox mbx;
driver drv;
generator gen;

initial begin
mbx = new();
gen = new(mbx);
drv = new(mbx);
fork
#20 gen.gen_data();
drv.drv_data();
join_none
end
endmodule
