`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 12:39:22
// Design Name: 
// Module Name: combo_logic
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
                  logic control_in;
                  } input_port;
typedef struct {
                  logic [7:0] result_out;
                  logic flag_out;
                  } output_port;

module combo_logic(
input input_port p1,
output output_port p2
    );

logic [7:0] y;
always_comb
begin
case(p1.control_in)
1'b0: y = p1.b_in;
1'b1: y = ~p1.b_in;
endcase
end

assign {p2.flag_out,p2.result_out} = p1.a_in + y + p1.control_in;
endmodule
