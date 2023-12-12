`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 09:44:05
// Design Name: 
// Module Name: tb_loop
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


module tb_loop();
logic [3:0] opcode;

initial 
begin 
opcode = 'b0;
while(opcode != 0);
begin 
$display ("THE VALUE OF OPCODE IS: %0d", opcode);
opcode = opcode + 1;
end 
end 
endmodule
