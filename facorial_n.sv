`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.11.2023 14:05:56
// Design Name: 
// Module Name: facorial_n
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

typedef struct packed {
logic [2:0] num; 
}fact_i;

typedef struct packed {
logic [12:0] res_out; 
}fact_o;
module facorial_n(
input fact_i n1,
output fact_o res
    );
   logic[12:0] temp = 1; 
function fact(fact_i n);
begin
integer i;
for(i=1; i<=n.num; i=i+1)
begin
temp = temp*i;
end 
end 
endfunction

always_comb
begin
if(n1.num == 'b0)
res.res_out = 0;
else 
fact(n1.num);
res.res_out = temp;
end
endmodule
