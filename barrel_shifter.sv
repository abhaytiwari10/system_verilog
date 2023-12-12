`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2023 05:33:42
// Design Name: 
// Module Name: barrel_shifter
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


module barrel_shifter(
input [3:0] d_in,
input logic [1:0] sel_in,
input shift_dir,
input operation,
output logic [3:0] d_out
    );
always_comb
begin
case(operation)
//normal shifter
1'b0:if(shift_dir)
     d_out = d_in >> sel_in;
     else
     d_out = d_in <<sel_in;

//barrel shifter
1'b1:if(shift_dir)
begin
case(sel_in)
2'b00: d_out = d_in;
2'b01: d_out = {d_in[0],d_in[3:1]};
2'b10: d_out = {d_in[1:0],d_in[3:2]};
2'b11: d_out = {d_in[2:0],d_in[3]};
endcase
end
else
begin
case(sel_in)
2'b00: d_out = d_in;
2'b01: d_out = {d_in[2:0],d_in[3]};
2'b10: d_out = {d_in[1:0],d_in[3:2]};
2'b11: d_out = {d_in[0],d_in[3:1]};
endcase
end
endcase
end
endmodule
