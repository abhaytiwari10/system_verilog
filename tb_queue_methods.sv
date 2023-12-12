`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.11.2023 13:22:42
// Design Name: 
// Module Name: tb_queue_methods
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


module tb_queue_methods();

string pipe_Q[$] = {"fetch","decode","execute","store"};

initial 
begin

for (int i = 0; i<pipe_Q.size(); i++) $display ( "%s",pipe_Q[i]);
$display("THE SIZE IS = %0d", pipe_Q.size());
pipe_Q.insert( 3, "run");
$display("AFTER INSTERTING THE NEW MEMBER = %s", pipe_Q[3]);
pipe_Q.push_front("operand");
for (int i = 0; i<pipe_Q.size(); i++) $display ( "AFTER THE PUSH FRONT =%s",pipe_Q[i]);
pipe_Q.push_back("end");
for (int i = 0; i<pipe_Q.size(); i++) $display ( "AFTER USING PUSH BACK %s",pipe_Q[i]);
pipe_Q.pop_front();
for (int i = 0; i<pipe_Q.size(); i++) $display ( "AFTER USING POP FRONT %s",pipe_Q[i]);
pipe_Q.pop_back();
for (int i = 0; i<pipe_Q.size(); i++) $display ( "AFTER USING POP BACK %s",pipe_Q[i]);

end 

endmodule
