`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.12.2023 04:49:49
// Design Name: 
// Module Name: tb_drive_module
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


module tb_drive_module();
logic clk;
logic reset_n;
logic cs;
logic [3:0] control_out;
DRIVE_MODULE DUT (.*);

always #10 clk = ~clk;

initial begin
clk = 'b0;
reset_n = 'b0;
cs = 'b0;
#20
reset_n = 'b1;
cs = 'b1;
#180
reset_n = 'b0;
cs = 'b0;
#20
$finish();
end
endmodule
