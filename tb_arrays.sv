`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 09:52:02
// Design Name: 
// Module Name: tb_arrays
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


module tb_arrays();
reg array_1 [0:15]; //16 location array
reg array_2 [8]; // array of 8 location
logic [7:0] array_3 [0:15]; //array of 16 loaction and each loaction have 8 bit
logic [7:0] array_4 [16]; //same as above
logic array_5 [7:0];
real array_6 [8];
real array_7 [7:0] [3:0];
int array_i [1:0] [3:0] [7:0];



initial 
begin 
for (integer i=0;i<16;i=i+1)
begin 
   array_1[i] = i;  
$display("the value of array1 is = %0b", array_1[i]);
end
for (integer i=0;i<8;i=i+1)
begin 
   array_2[i] = i;  
$display("the value of array2 is = %0d", array_2[i]);
end
for (integer i=0;i<16;i=i+1)
begin 
   array_3[i] = i*i;  
$display("the value of array3 is = %0d", array_3[i]);
end
for (integer i=0;i<4;i=i+1)
begin 
for (integer j=0;j<8;j=j+1)
begin 
   array_7[i][j] = i+j;  
$display("the value of array7 is = %0d", array_7[i][j]);
end      
 end 
 end 
endmodule
