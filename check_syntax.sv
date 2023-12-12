`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 11:36:57
// Design Name: 
// Module Name: check_syntax
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
        logic control_in;
        logic [7:0] a_in;
        logic [7:0] b_in;
        } port;
 typedef struct {
                   logic [7:0] result_out;
                   logic flag_out;
                   } o_port;
 //structure allocation
// port port_1;
module check_syntax(
input reset_n,
input clock,
input port port_1,
output o_port port_o
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
