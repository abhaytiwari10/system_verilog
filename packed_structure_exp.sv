`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 12:30:06
// Design Name: 
// Module Name: packed_structure_exp
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
typedef struct packed {
        logic control_in;
        logic [7:0] a_in;
        logic [7:0] b_in;
        } port_v;
 typedef struct packed {
                   logic [7:0] result_out;
                   logic flag_out;
                   } struct_o_port;

module packed_structure_exp(
input reset_n,
input clock,
input port_v port_1,
output struct_o_port port_o
    );
    
 always_ff @(posedge clock, negedge reset_n)
 begin
 if(!reset_n)
 begin
port_o <= '{'b0, 'b0};

 end
 else
 begin
 if(port_1.control_in)
 {port_o.flag_out,port_o.result_out} <=port_1.a_in - port_1.b_in;
 else
{port_o.flag_out,port_o.result_out} <= port_1.a_in + port_1.b_in;
 end
 end
endmodule
