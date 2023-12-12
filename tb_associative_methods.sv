`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 03:02:56
// Design Name: 
// Module Name: tb_associative_methods
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


module tb_associative_methods();
int currency_1[string];
string s;

initial
begin 
currency_1 = '{"TEN":10, "TWENTY":20, "FIFTY":50, "HUNDRED":100, "TWO HUNDRED":200, "FIVE HUNDRED":500, "TWO THOUSAND":2000};
$display("The value of currency_1 = %0p", currency_1);
$display("The number of enteries in currency_1 = %d", currency_1.num());
$display("The number of enteries in currency_1 = %d", currency_1.size());
currency_1.delete("FIFTY");
$display("The value of currency_1 = %0p", currency_1);
$display("The number of enteries in currency_1 = %d", currency_1.exists("TEN"));
if ( currency_1.first( s ) )
$display( "First entry is : currency_1[ %s ] = %0d\n", s, currency_1[s] );
$display("The value of currency_1 = %0p", currency_1);
if ( currency_1.last( s ) )
$display( "Last entry is : currency_1[ %s ] = %0d\n", s, currency_1[s] );
$display("The value of currency_1 = %0p", currency_1);
if ( currency_1.first( s ) )
do
$display( "%s : %d\n", s, currency_1[ s ] );
while ( currency_1.next( s ) );
$display("The value of currency_1 = %0p", currency_1);
if ( currency_1.last( s ) )
do
$display( "%s : %d\n", s, currency_1[ s ] );
while ( currency_1.prev( s ) );
$display("The value of currency_1 = %0p", currency_1);
#10
$finish();
end
endmodule
