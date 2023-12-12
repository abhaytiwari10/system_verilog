`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 07:25:36
// Design Name: 
// Module Name: tb_verify
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
typedef struct packed {
           bit [15:0] data1;
           bit [15:0] data2;
           } data_member;
           
typedef union packed {
                  data_member op1;
                  bit [7:0] [3:0] op_2;
                  } union_s1;
module tb_verify(); 
  union_s1 union_s;
   always #10 union_s.op1.data1 = union_s.op1.data1 + 3'b101;     
   always #10 union_s.op1.data2 = union_s.op1.data2 + 3'b110;        
    initial 
    begin 
    union_s.op1.data1 = 'b0;
    union_s.op1.data2= 'b0;
    $monitor (" value of data1 & value of data2 %0b & %0b ",union_s.op1.data1,union_s.op1.data2);

    for(integer i = 0; i<8; i=i+1)
    begin
    union_s.op_2[i] = i;
    $display("value of op_2 is %0b",  union_s.op_2[i]);
    end
    #200
    $finish();
    end             
endmodule
