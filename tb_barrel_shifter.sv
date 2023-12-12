`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 05:45:22
// Design Name: 
// Module Name: tb_barrel_shifter
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


module tb_barrel_shifter();
logic [3:0] d_in;
logic [1:0] sel_in;
logic shift_dir;
logic operation;
logic [3:0] d_out;

barrel_shifter DUT (.*);

initial 
begin 
d_in = 4'b1101;
sel_in = 'b0;
shift_dir = 'b0;
operation = 'b0;
#200
operation = 'b1;
d_in = 4'b1001;
#400 $finish();
end 

always #20 sel_in = sel_in + 1'b1;
always #100 shift_dir = ~shift_dir; 
endmodule
