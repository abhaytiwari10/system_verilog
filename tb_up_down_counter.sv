`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 01:27:47
// Design Name: 
// Module Name: tb_up_down_counter
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

module tb_up_down_counter();
timeunit 1ns;
timeprecision 1ps;
logic clk;
logic load;
logic up_down;
logic rst_n;
logic [3:0] d_in;
logic [3:0] d_out;

up_down_counter DUT (.*);

initial 
begin : STIMULUS_GEN
clk = 'b0;
rst_n = 'b0;
d_in = 'b0;
load = 'b0;
up_down = 'b0;

#500ns $finish();
end : STIMULUS_GEN
 
 always #10ns clk = ~clk;
 always #50ns rst_n = ~rst_n;
 always #60ns load = load + 1'b1;
 always #100ns up_down = ~up_down;
 always #80ns d_in = $urandom();

endmodule : tb_up_down_counter  
