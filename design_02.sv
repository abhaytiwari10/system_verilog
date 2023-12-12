`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2023 14:04:32
// Design Name: 
// Module Name: design_02
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
bit clk;
bit reset_n;
logic [15:0] a_in;
logic [15:0] b_in;
} data_in;

typedef struct packed {
logic [31:0] result_out;
} data_out;

module design_02(
input data_in dataIn,
output data_out dataOut
    );
logic [15:0] data_0;
logic [15:0] data_1;
logic [31:0] mul_out; 
always_ff @(posedge dataIn.clk, negedge dataIn.reset_n)
begin:INPUT_ASSIGN
if(!dataIn.reset_n)
begin
data_0 <= 'b0;
data_1 <= 'b0;
end
else
begin
data_0 <= dataIn.a_in;
data_1 <= dataIn.b_in;
end 
end:INPUT_ASSIGN 

always_comb
begin:COMBO_LOGIC
mul_out <= data_0 * data_1;
end:COMBO_LOGIC

always_ff @(posedge dataIn.clk, negedge dataIn.reset_n)
begin:OUTPUT_ASSIGN
if(!dataIn.reset_n)
dataOut.result_out <= 'b0;
else
begin
dataOut.result_out <= mul_out;
end 
end:OUTPUT_ASSIGN 

endmodule
