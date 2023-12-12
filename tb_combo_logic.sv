`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 12:51:09
// Design Name: 
// Module Name: tb_combo_logic
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


module tb_combo_logic();

input_port p1;
output_port p2;

combo_logic DUT (.*);

always #10 p1.a_in = $urandom();
always #10 p1.b_in = $urandom();
always #10 p1.control_in = $urandom();

initial begin
p1.a_in = 'h0;
p1.b_in = 'h0;
p1.control_in = 'h0;
#150
$finish();
end

endmodule
