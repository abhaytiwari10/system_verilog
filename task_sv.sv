`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 11:59:35
// Design Name: 
// Module Name: task_sv
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


module task_sv;

initial begin
print();
iprint();
end
initial begin
print();
iprint();
end
initial begin
print();
iprint();
end
task static print();
int count = 0;
count = count +1;
$display("the value of count is %0d", count);
endtask 



task automatic iprint();
int icount = 0;
icount = icount +1;
$display("the value of icount is %0d", icount);
endtask 
endmodule
