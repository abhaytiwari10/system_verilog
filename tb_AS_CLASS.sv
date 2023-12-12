`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2023 05:27:26
// Design Name: 
// Module Name: tb_AS_CLASS
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
`include "C:/Users/RDP/Desktop/SYSTEM_VERILOG_LAB/project_5/project_5.srcs/sources_1/new/defines.sv"
`include "C:/Users/RDP/Desktop/SYSTEM_VERILOG_LAB/project_5/project_5.srcs/sources_1/new/AS_inf.sv"
//class transaction 
class transaction;
rand bit [`data_width-1:0] a_in;
rand bit [`data_width-1:0] b_in;
rand bit opcode;
rand bit [`data_width:0] result;
function display_p();
 $display("input at time %0t is %0h : %0h : %0h",$time,a_in,b_in,opcode);
 endfunction
 endclass 
 
 //class transaction done 
 
 //class generator 
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
  $display("%0t,waiting for generator to put input", $time);
  mbx.put(t);
  $display("%0t,generator has put input", $time);
  endtask
 endclass
 
 //class generator  done 
  
 //class driver 
class driver;
virtual as_inf vif;
mailbox mbx;
function new (mailbox mbx);
this.mbx=mbx;
endfunction

task reset();
wait(!vif.reset_n)
{vif.opcode, vif.a_in, vif.b_in} <= 'b0;
endtask

task automatic drv_data();
forever 
begin 
transaction tr = new();
@(posedge vif.clk);
    mbx.get(tr);
    vif.opcode<=tr.opcode;
    vif.a_in<=tr.a_in;
    vif.b_in<=tr.b_in;
tr.display_p();
end
endtask
endclass

//class driver done 

class monitor;
virtual as_inf vif;
mailbox mbx;
function new (mailbox mbx);
this.mbx=mbx;
endfunction
task mon_data();
forever 
begin 
transaction t3 = new();
@(posedge vif.clk);
t3.opcode = vif.opcode;
t3.a_in = vif.a_in;
t3.b_in = vif.b_in;
t3.result = vif.result;
mbx.put(t3);
end 
endtask 
endclass 


class scoreboard;
  mailbox gen; 
  mailbox mon; 
  transaction tex; 
  transaction tac; 

  
  function new(mailbox gen, mailbox mon);
    this.gen = gen;
    this.mon = mon;
  endfunction


task comparison;
forever begin
   
gen.get(tex);
mon.get(tac);

if (tex.a_in ==   tac.a_in && tex.b_in ==   tac.b_in && tex.opcode == tac.opcode && tex.result == tac.result) 
   $display("Error: Transactions mismatch!");
else 
   $display("Transaction match!");
end
  endtask
endclass

module tb_AS_CLASS;
mailbox mbx;
driver drv;
generator gen;
monitor mon;
scoreboard sb;

initial begin
mbx = new();
gen = new(mbx);
drv = new(mbx);
mon = new(mbx);
sb = new(mbx,mbx);
fork
#20 gen.gen_data();
drv.drv_data();
mon.mon_data();
sb.comparison();
join_none
end
endmodule
