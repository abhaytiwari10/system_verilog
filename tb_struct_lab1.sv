`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2023 12:15:00
// Design Name: 
// Module Name: tb_struct_lab1
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


module tb_struct_lab1();
logic [7:0] y_out;
struct_port i_port;

             
structure_lab_1 DUT (.*);

always #10 i_port.a_in = $urandom();
always #10 i_port.b_in = $urandom();
initial begin
i_port.a_in = 'h0;
i_port.b_in = 'h0;
#100
$finish();
end
endmodule
