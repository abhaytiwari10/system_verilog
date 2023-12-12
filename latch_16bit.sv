`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 13:26:10
// Design Name: 
// Module Name: latch_16bit
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


module latch_16bit(
inout logic [15:0] data_io,
input [15:0] data_in,
input l_en,
output logic [15:0] data_out
);
assign data_io = data_in;

 always_latch 
 begin
 if(!l_en)
 begin 
 data_out <= data_io;
end
end
endmodule
