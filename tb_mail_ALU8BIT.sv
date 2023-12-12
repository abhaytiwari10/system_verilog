`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.12.2023 12:00:53
// Design Name: 
// Module Name: tb_mail_ALU8BIT
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
class transacton;
rand bit [7:0] a_in;
rand bit [7:0] b_in;
rand bit [3:0] op;
constraint c_op {op<12;};

function display_p();
 $display("input at time %0t is %0h, %0h, %0d",$time,a_in,b_in,op);
 endfunction
 endclass 
 
 class genrator;
 mailbox mbx;
  function new (mailbox mbx);
  this.mbx = mbx;
  endfunction
  
  //put packet
  
  task gen_data();
 //repeat(5) begin
  transacton t = new();
  t.randomize();
  t.display_p();
  $display("%0t,waiting for generator to put data packet", $time);
  mbx.put(t);
  $display("%0t,generator has put data packet", $time);
  //end
  endtask
 endclass
 
  class drivr;

  mailbox mbx;
  function new (mailbox mbx);
  this.mbx = mbx;
  endfunction
  
  //get packet
  
  task drv_data();
  //repeat(5) begin
  transacton t = new();
  $display("%0t,waiting for driver to get data packet", $time);
  mbx.get(t);
  $display("%0t,driver has get data packet", $time);
  t.display_p();
  //end
  endtask
 endclass

module tb_mail_ALU8BIT;
mailbox mbx;
drivr drv;
genrator gen;

initial begin
mbx = new();
gen = new(mbx);
drv = new(mbx);
fork
repeat(5) begin
#20 gen.gen_data();
drv.drv_data();
end
join_none
end
endmodule