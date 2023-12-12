`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 12:20:49
// Design Name: 
// Module Name: tb_string
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


module tb_string();
string name = ("CDAC_is_GOOD_ISNTITUTE");
initial 
begin
$display (" string_name_is = %s",name);
$display ("the_lenght_is = %0d",name.len());
foreach(name[i])
begin
$display("%s",name[i]);
end 
#1000 $finish();
end 
endmodule


