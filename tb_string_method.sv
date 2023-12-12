`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 14:00:32
// Design Name: 
// Module Name: tb_string_method
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


module tb_string_method();
string string_1 = "CDAC DVLSI";
string string_2 = "KRISH STUDY HERE";

initial 
begin 
$display("the length of string is = %0d",string_1.len());
string_1.putc(3,"a");
$display("the use of put character is = %s",string_1);
$display("the use of get character is =%d",string_1.getc(5));
$display("the use of lower case method is = %s",string_1.tolower());
$display("the use of compare method is = %d",string_1.icompare(string_2));
$display("the use of subtract method is = %s",string_1.substr(2,6));
 
end
endmodule
