`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2023 09:48:41
// Design Name: 
// Module Name: event_multithreading
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


module event_multithreading();
event int_ack;

initial
begin 
#20 -> int_ack;
$display("THE TIME AT WHICH THE EVENT IS TRIGGERED: %0t", $time);
end 

initial 
begin
 
$display("THREAD1: WAIT FOR TIME EVENT TO BE TRIGGERED: %0t", $time);

#10 @int_ack
$display("THREAD1: THE EVENT HAS BEEN TRIGGERED: %0t", $time);
end 

initial 
begin 
int c;
wait(int_ack.triggered);
for(int i = 0; i<3; i++)begin 
c = i+1;
$display("THE VALUE OF I IS: %0d", c);
end 
end 

initial 
begin
$display("THREAD2: WAIT FOR TIME EVENT TO BE TRIGGERED: %0t", $time);
#10 @int_ack
$display("THREAD2: THE EVENT HAS BEEN TRIGGERED: %0t", $time);
end 
endmodule
