`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 12:56:47
// Design Name: 
// Module Name: tb_reg_ip_op
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


module tb_reg_ip_op();
logic clock;
logic reset_n;
logic ip1;
logic ip2;
logic c_in;
o_vport port_o;


             
 reg_ip_op DUT (.*);

always #10 c_in = $urandom();
always #5 clock = ~clock;
always #15 reset_n = $urandom();
always #10 ip1 = $urandom();
always #10 ip2 = $urandom();

 
initial 
begin
clock = 'b0;
reset_n = 'b0;
c_in = 'b0;
ip1 = 'b0;
ip2 = 'b0;
#300
$finish();
end
endmodule