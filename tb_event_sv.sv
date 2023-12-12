`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 11:04:29
// Design Name: 
// Module Name: tb_event_sv
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


module tb_event_sv();
event fetch_e,decode_e, execute_e;
initial
begin 
#10 -> fetch_e;
#10 ->> decode_e;
#10 -> execute_e;
end

initial
begin
wait_order(fetch_e,decode_e, execute_e)
$display("%0t, THE TEST EXECUTED CORRECTLY", $time);
else 
$display("%0t, THE TEST NOT EXECUTED CORRECTLY", $time);
end 
endmodule
