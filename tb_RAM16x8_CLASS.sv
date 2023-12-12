`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 10:36:04
// Design Name: 
// Module Name: tb_RAM16x8_CLASS
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
class ram;
   rand bit  [7:0] data_in;
   rand bit [3:0] addr_in;
   rand bit cs;
   rand bit w_en;
   rand bit op_en;
   rand bit reset_n;
   rand bit clk;
   rand bit [7:0] data_out;
   constraint c_data_in_invert { !(data_in inside {[2:14]});}
   constraint c_addr_in { addr_in inside {[9:16]};}
   constraint c_cs { cs == 1;}
   constraint c_w_en{ w_en == 1;}
   constraint c_op_en { op_en == 1;}
   function display_ram();
   endfunction
   endclass
module tb_RAM16x8_CLASS();

ram m;
initial 
begin 
m = new();
 for (int i = 0; i < 15 ; i++)
 begin 
 assert (m.randomize());
 //$display ("THE VALUE OF DATA_IN IS = %0d", m.data_in);
// $display ("THE VALUE OF ADDR_IN is = %0d", m.addr_in);
 $display("THE VALUE OF data_in, addr_in,data_out, cs, w_en, op_en IS = %0d %0d %0d %0d %0d %0d", m.data_in, m.addr_in, m.data_out, m.cs, m.w_en, m.op_en);
m.display_ram();
end 
end 
endmodule
