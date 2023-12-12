`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.12.2023 10:07:34
// Design Name: 
// Module Name: tb_interface
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








module tb_interface();
logic clk;
logic reset_n ;



counter_4bit D0( c_inf.DUT);
counter_inf c_inf(clk,reset_n);

always #10 clk = ~clk;
always #200 reset_n = ~reset_n;
always #160 c_inf.count_en = ~c_inf.count_en;

initial 
begin 
clk = 'b0;
reset_n = 'b0;
c_inf.count_en = 'b0;
$monitor(" %0d", c_inf.q_out);
#1000
 $finish();
 end   
endmodule
