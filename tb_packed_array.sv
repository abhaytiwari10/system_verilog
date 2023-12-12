`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 11:10:33
// Design Name: 
// Module Name: tb_packed_array
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


module tb_packed_array();

reg [0:15] array_1;

logic [7:0] [7:0] array_2;

bit [7:0] [0:15] array_3;

logic [3:0][7:0] array_4;
bit [1:0] [3:0] [7:0] array_5;

//dynamic array

int array_d[];

logic array_d_1[];

real array_d_2[];

bit array_d_3[];

byte array_d_4[];

initial 
begin 
array_d = new[4];
for (integer i=0;i<4;i=i+1)
begin 
   array_d[i] = i;  
$display("the value of array_d is = %0b", array_d[i]);
end
array_d_1 = new[8];
for (integer i=0;i<8;i=i+1)
begin 
   array_d_1[i] = $urandom();  
$display("the value of array_d_1 is = %0d", array_d_1[i]);
end

array_d_2 = new[8];
for (integer i=0;i<8;i=i+1)
begin 
   array_d_2[i] = i;  
$display("the value of array_d_2 is = %0d", array_d_2[i]);
end

end  
endmodule
