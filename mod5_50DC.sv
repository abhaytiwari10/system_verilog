`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
`define TWO_STATE
`ifdef  TWO_STATE
typedef bit data_type;
`else
typedef logic data_type;
`endif

module mod5_50DC(
input clk,
input reset_L,
output clk_out
    );
   typedef data_type [2:0] data_logic;
   data_logic count = 'b0;
    logic temp = 'b0;
    always_ff @ (posedge clk, negedge reset_L)
    begin: ASYNC_RST
    if(!reset_L)
    count <= 'b0;
    else if(count == 3'b100)
    count <= 'b0;
    else
    count <= count + 1'b1;
    end : ASYNC_RST
 
    
    always @ (negedge clk, negedge reset_L)
    begin :ASYNC_RESET
    if(!reset_L)
    temp <= 'b0;
    else
    temp <= count[1];
    end :ASYNC_RESET
    
    assign clk_out = count[1] | temp;
endmodule : mod5_50DC