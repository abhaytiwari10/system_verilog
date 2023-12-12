`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.11.2023 06:01:00
// Design Name: 
// Module Name: tb_verify
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


module tb_verify();

union packed signed {
      bit unsigned [7:0] unsigned_data;
    bit  signed     signed_data;
        } data;
  initial 
  begin 
  data.unsigned_data = -7;
  $display("the value of data is =%0d", data.unsigned_data);
  data.signed_data= -7;
  $display("the value of data is =%0d",data.signed_data);
  end 
  endmodule
