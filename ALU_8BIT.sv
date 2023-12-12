`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.12.2023 09:55:07
// Design Name: 
// Module Name: ALU_8BIT
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

interface ALU_inf;
    logic [7:0] a_in;
    logic [7:0] b_in;
    logic [3:0] op;
    logic [8:0] result;
    
    
    modport DUT (input a_in,b_in,op,output result);
                
endinterface
module ALU_8BIT(
ALU_inf  A
    );
always_comb  
begin : ARITHMETIC
   case(A.op)
        4'b0000:  A.result =  {1'b0, A.a_in};
        4'b0001:  A.result =  A.a_in + A.b_in;
        4'b0010:  A.result =  A.a_in - A.b_in;
        4'b0011:  A.result =  A.a_in + 1;
        4'b0100:  A.result =  A.a_in - 1;
        4'b0101:  A.result =  A.b_in + 1;
        4'b0110:  A.result =  A.b_in -1;
        4'b0111:  A.result =  {1'b0, A.b_in};
        4'b1000:  A.result =   {1'b0, A.a_in | A.b_in};
        4'b1001:  A.result =  {1'b0, A.a_in ^ A.b_in};
        4'b1010:  A.result =  {1'b0, A.a_in & A.b_in};
        4'b1011:  A.result =   {1'b0,  ~A.a_in};
        default: A.result  =   'b0;
   endcase
end: ARITHMETIC
endmodule : ALU_8BIT
