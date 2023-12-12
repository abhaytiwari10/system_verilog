`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 00:55:45
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff();
logic clk;
logic rst_n;
logic d_in;
logic d_out;

d_ff DUT (.*);

initial 
begin : STIMULUS_GEN
clk = 'b0;
rst_n = 'b0;
d_in = 'b0;

#500 $finish();
end : STIMULUS_GEN
 
 always #10 clk = ~clk;
 always #50 rst_n = ~rst_n;
 always #80 d_in = $urandom();

endmodule : tb_d_ff
