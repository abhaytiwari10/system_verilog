`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 12:19:27
// Design Name: 
// Module Name: tb_check_syntax
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


module tb_check_syntax();
logic clock;
logic reset_n;
o_port port_o;
port port_1;

             
 check_syntax DUT (.*);

always #10 port_1.control_in = $urandom();
always #5 clock = ~clock;
always #15 reset_n = $urandom();
always #10 port_1.a_in = $urandom();
always #10 port_1.b_in = $urandom();

 
initial 
begin
clock = 'b0;
reset_n = 'b0;
port_1.control_in = 'b0;
port_1.a_in = 'b0;
port_1.b_in = 'b0;
#100
$finish();
end
endmodule