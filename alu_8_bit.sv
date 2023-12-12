`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 13:53:55
// Design Name: 
// Module Name: alu_8_bit
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
                  logic [2:0] control_in;
                  } ip_port;
typedef struct {
                  logic [15:0] result_out;
                 
                  } op_port;




module alu_8_bit(
input ip_port p1,
output op_port p2
    );
  always_comb
  begin
  case(p1.control_in[2])
  1'b0: case(p1.control_in[1:0])
        2'b00: p2.result_out = p1.a_in + p1.b_in;
        2'b01: p2.result_out = p1.a_in - p1.b_in;
        2'b10: p2.result_out = p1.a_in * p1.b_in;
        2'b11: p2.result_out = p1.a_in / p1.b_in;
        endcase 
  1'b1: case(p1.control_in[1:0])
        2'b00: p2.result_out = p1.a_in | p1.b_in;
        2'b01: p2.result_out = p1.a_in ^ p1.b_in;
        2'b10: p2.result_out = p1.a_in & p1.b_in;
        2'b11: p2.result_out = ~p1.a_in ; 
        endcase 
  endcase 
  end 
endmodule
