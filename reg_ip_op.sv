`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 12:48:07
// Design Name: 
// Module Name: reg_ip_op
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
        } vport;
 
 typedef struct packed {
                   logic [7:0] result_out;
                   logic flag_out;
                   } o_vport;
 module reg_ip_op(
 input reset_n,
input clock,
input [7:0] ip1,
input [7:0] ip2,
input c_in,
output o_vport port_o
    );
vport port_1;
always_ff @(posedge clock, negedge reset_n)
 begin
 if(!reset_n)
 begin
port_1.a_in <= 'b0;
port_1.b_in <= 'b0;
port_1.control_in <= 'b0;
end
 else
port_1.a_in <= ip1;
port_1.b_in <= ip2;
port_1.control_in <= c_in;
 end
    
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