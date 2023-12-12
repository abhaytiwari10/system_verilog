`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 12:00:42
// Design Name: 
// Module Name: structure_lab_1
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
typedef struct {
                  logic [7:0] a_in;
                  logic [7:0] b_in;
                  } struct_port;
            
module structure_lab_1(
input struct_port i_port,
output [7:0] y_out
    );
 assign y_out = (i_port.a_in)^ (i_port.b_in);
    
endmodule
