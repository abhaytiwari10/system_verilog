`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.11.2023 12:41:19
// Design Name: 
// Module Name: tb_comparison_string
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


module tb_string_comparison();
string name = "ABHAY";
string surname = "TIWARI";

string disclaimer = "If 1 yes it is else 0 no it is not";
initial begin
$display("%s", disclaimer);
$display(" string is equal  = %0b",(name == surname));
$display(" string is not equal  =%0b",(name != surname));
$display(" string is name is greater than surname =%0b",(name >= surname));
$display(" string is name is less than surname =%0b",(name <= surname));
$display(" concatenated string aapko dikhane jaa rhe hai... %s",{name ," ", surname});
$display(" replicated string ...%s",{6{name,surname}});
$display("%s", name[4]);
$display("%s", name[3]);
#100 $finish();
end 
endmodule