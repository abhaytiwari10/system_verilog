`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.11.2023 14:10:44
// Design Name: 
// Module Name: tb_mux_2x1
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


module tb_mux_2x1();
logic [1:0] d_in;
logic sel_in;
logic d_out;

mux_2x1 DUT(.*);

initial 
begin
d_in = 'b0;
sel_in = 'b0;
#500 $finish();
end 

always #50 d_in = ~d_in;
always #40 sel_in = ~sel_in;
 
    
endmodule
