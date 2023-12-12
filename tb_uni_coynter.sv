`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 11:52:56
// Design Name: 
// Module Name: tb_uni_coynter
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


module tb_uni_coynter;
logic clk;
logic reset_n ;



universal_counter D0( u.DUT);
uni_count u(clk,reset_n);

always #10 clk = ~clk;
always #200 reset_n = ~reset_n;
always #160 u.count_en = ~u.count_en;
always #180 u.load_en = ~u.load_en;
always #80 u.up_down = ~u.up_down;


initial 
begin 
clk = 'b0;
reset_n = 'b0;
u.count_en = 'b0;
u.load_en = 'b1;
u.up_down = 'b1;
u.data_in = 4'b0010;
$monitor(" %0d", u.q_out);
#1000
 $finish();
 end   
endmodule
