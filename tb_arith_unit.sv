`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 12:39:54
// Design Name: 
// Module Name: tb_arith_unit
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


module tb_arith_unit();
 au_ip ip1;
 au_o op1;
   
   
arith_unit DUT (.*);

always #10 ip1.a_in = $urandom();
always #10 ip1.b_in = $urandom();

initial 
begin 
ip1.a_in = 'b0;
ip1.b_in = 'b0;
#10
ip1.op_typ = UNSIGNED;
ip1.op_code = Add;
#10
ip1.op_code = Sub;
#10
ip1.op_code = Mul;
#10
ip1.op_code = Div;
#10
ip1.op_typ = SIGNED;
ip1.op_code = Add;
#10
ip1.op_code = Sub;
#10
ip1.op_code = Mul;
#10
ip1.op_code = Div;
#10
ip1.op_typ = UNSIGNED;
ip1.op_code = Add;
#10
ip1.op_code = Sub;
#10
ip1.op_code = Mul;
#10
ip1.op_code = Div;
#10
ip1.op_typ = SIGNED;
ip1.op_code = Add;
#10
ip1.op_code = Sub;
#10
ip1.op_code = Mul;
#10
ip1.op_code = Div;
#10
$finish();
end   
endmodule
