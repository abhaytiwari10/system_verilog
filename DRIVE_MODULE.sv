`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 03:06:58
// Design Name: 
// Module Name: DRIVE_MODULE
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


module DRIVE_MODULE(
input  clk,
input  reset_n,
input cs,
output logic [3:0] control_out
    );
   logic [3:0] control = 'b0;   
 always_ff @ (posedge clk, negedge reset_n)
 begin
 if(!reset_n)
 control <= 'b0;
 else
 case(control)
 4'b0000: control <= 4'b0001;
 4'b0001: control <= 4'b0010;
 4'b0010: control <= 4'b0101;
 4'b0101: control <= 4'b1010;
 4'b1010: control <= 4'b0101;
 default: control <= 'b0;
 endcase
 end
 
assign control_out = (cs) ? control : 'b0;
endmodule:DRIVE_MODULE
