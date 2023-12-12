`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.11.2023 11:37:15
// Design Name: 
// Module Name: decoder_4x16
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


module decoder_4x16(
input [3:0] d_in,
input en,
output logic [15:0] y_out
    );
    wire[3:0] enable;
    decoder_2x4 D1 (d_in[3:2],en,enable);
    decoder_2x4 D2 (d_in[1:0],enable[0],y_out[3:0]);
    decoder_2x4 D3 (d_in[1:0],enable[1],y_out[7:4]);
    decoder_2x4 D4 (d_in[1:0],enable[2],y_out[11:8]);
    decoder_2x4 D5 (d_in[1:0],enable[3],y_out[15:12]);
    
endmodule
