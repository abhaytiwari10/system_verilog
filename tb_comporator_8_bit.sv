`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 11:43:41
// Design Name: 
// Module Name: tb_comporator_8_bit
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


module tb_comporator_8_bit();
logic [`DATA_WIDTH-1:0] a_in;
logic [`DATA_WIDTH-1:0] b_in;
logic a_g_b_out;
logic a_e_b_out;
logic a_l_b_out;

comparator_8_bit DUR(.*);

string test_bench=("THE TB OF COMPORATOR");

initial
begin

$display("NAME OF TB IS = %s",test_bench);

a_in = 8'hAA;
b_in = 8'hBB;
#40 
a_in = 8'hCC;
b_in = 8'hCC;
#60 
a_in = 8'hDD;
b_in = 8'hFF;
#80 
a_in = 8'hFF;
b_in = 8'hCC;
#100 
a_in = 8'hBB;
b_in = 8'hEE;
#500
$finish();
end 
 
endmodule
