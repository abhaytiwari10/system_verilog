`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 11:29:11
// Design Name: 
// Module Name: decoder_2x4
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


module decoder_2x4(
input [1:0] d_in,
input en,
output logic [3:0] y_out
    );
/*always @*
begin 
if(en)
  y_out = 'b1;
  else 
  case(d_in)
  2'b00: y_out= 4'b1110;
  2'b01: y_out = 4'b1100;
  2'b10: y_out = 4'b1000;
  2'b11: y_out = 4'b0000;
  default: y_out = 'b1;
  endcase
  end 
*/
assign y_out = ~((!en)?(1<<d_in):'b0);
endmodule
