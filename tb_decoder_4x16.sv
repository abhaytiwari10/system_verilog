`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 12:41:15
// Design Name: 
// Module Name: tb_decoder_4x16
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


module tb_decoder_4x16();
logic [3:0] d_in;
logic en;
logic [15:0] y_out;

decoder_4x16 DUT (.*);

initial 
begin 
en = 'b0;
d_in = 'b0;
 
#2000 $finish();
end 

always #50 en = ~en;
always #100 d_in = $urandom();

endmodule
