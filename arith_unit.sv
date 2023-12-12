`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 11:46:40
// Design Name: 
// Module Name: arith_unit
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
`define D_S 8
`define O_S 16
typedef enum bit { UNSIGNED , SIGNED } op_type;
typedef enum logic [1:0] {Add, Sub, Mul, Div}operation;

typedef union packed {
logic unsigned [`O_S-1:0] us_out;
logic signed [`O_S-1:0] s_out;
} au_o;

typedef struct packed  {
au_o  a_in;
au_o  b_in;
 operation op_code;
 op_type op_typ;
} au_ip;



module arith_unit(
input au_ip ip1,
output au_o op1
);

always_comb
begin:ALWAYS_BLOCK 
if(ip1.op_typ == UNSIGNED)
begin:UNSIGNED_OP
op1.s_out = 'b0; 
case(ip1.op_code)
Add: op1.us_out = ip1.a_in.us_out + ip1.b_in.us_out;
Sub: op1.us_out = ip1.a_in.us_out - ip1.b_in.us_out;
Mul: op1.us_out = ip1.a_in.us_out * ip1.b_in.us_out;
Div: op1.us_out = ip1.a_in.us_out / ip1.b_in.us_out;
default: op1.us_out = 'b0;
endcase 
end:UNSIGNED_OP 
else 
begin:SIGNED_OP 
op1.us_out = 'b0;
case(ip1.op_code)
Add: op1.s_out = ip1.a_in.s_out + ip1.b_in.s_out;
Sub: op1.s_out = ip1.a_in.s_out - ip1.b_in.s_out;
Mul: op1.s_out = ip1.a_in.s_out * ip1.b_in.s_out;
Div: op1.s_out = ip1.a_in.s_out / ip1.b_in.s_out;
default: op1.s_out = 'b0;
endcase
end:SIGNED_OP 
end: ALWAYS_BLOCK 
endmodule:arith_unit
