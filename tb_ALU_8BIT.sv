`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 10:08:49
// Design Name: 
// Module Name: tb_ALU_8BIT
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
`define DATA_SIZE 8
`define CODE_WIDTH 4
`define OUT_SIZE 8

module tb_ALU_8BIT;
logic [`DATA_SIZE-1:0] a_in;
logic [`DATA_SIZE-1:0] b_in;
logic [`CODE_WIDTH-1:0] op;
logic [`OUT_SIZE:0] result;

ALU_8BIT DUT (.*);

logic [`OUT_SIZE:0] out ;
initial begin
a_in = 'b0;
b_in = 'b0;
op = 'b0;
end

initial begin
while(op<9)
begin
op = op +1;
a_in = a_in +1 ;
b_in = b_in +1;
if(op == 0)
out = a_in;
else if(op == 1)
out = a_in + b_in;
else if(op == 2)
out = a_in - b_in;
else if(op == 3)
out = a_in + 1;
else if(op == 4)
out = a_in - 1;
else if(op == 5)
out = a_in | b_in;
else if(op == 6)
out = a_in ^ b_in;
else if(op == 7)
out = a_in & b_in;
else if(op == 8)
out = {1'b0,  ~a_in};
else
out = 'b0;

#10
if(out == result)
begin
$display("testcase is passed\n");
end
else
begin
$display("testcase is failed\n");
end
$display("a_in = %0d\n b_in = %0d\n op = %0d\n result = %0d\n out = %0d", a_in, b_in,op,result,out);
end
$finish();
end 
endmodule
