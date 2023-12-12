`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 10:17:34
// Design Name: 
// Module Name: tb_event_seq_logic
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


module tb_event_seq_logic;
event e_done;

logic [1:0] q_out;
logic done;
logic clk;
logic reset_n;

seq_logic DUT (.*);
always #10 clk = ~clk;

always @(posedge done)
begin
->> e_done;
end

initial begin
clk = 'b0;
reset_n = 'b0;
#10  reset_n = 'b1;
$monitor("count = %0d, done = %0d", q_out,done);
#400
reset_n = 'b0;
$finish();
end 

always@(posedge clk)
begin
@e_done
$display("The count reach max value %0d at time: %0t", q_out, $time);
end

endmodule
