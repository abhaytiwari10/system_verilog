`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 11:42:14
// Design Name: 
// Module Name: tb_queue
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


module tb_queue();
string pipeline_Q[$]={ "FETCH", "DECODE", "EXECUTE", "STORE"};
logic clk;

initial
begin 
//pipeline_Q[$] = { "FETCH", "DECODE", "EXECUTE", "STORE"};
clk = 'b0;
 for (int i = 0; i<pipeline_Q.size(); i++)   $display("%s", pipeline_Q[i]);
// $display("DISPLAYING THE 2nd and 3rd ELEMENT %s & %s", pipeline_Q[2], pipeline_Q[3]);
// pipeline_Q.delete();
 //$display("%s", pipeline_Q[3]);
 foreach(pipeline_Q[i])
@(posedge clk)
begin
$display("Operation is %s at time %0d", pipeline_Q[i],$time);
end
 #200
 $finish();
end
 

always #10 clk = ~clk;
endmodule
