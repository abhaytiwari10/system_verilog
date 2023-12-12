`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.11.2023 04:46:38
// Design Name: 
// Module Name: tb_associative_dynamic
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


module tb_associative_dynamic();

int array_d[] [string];
string key_data[12] = {"a","b","c","d","e","f","g","h","i","j","k","l"};
int val_data[12] = {1,2,3,4,5,6,7,8,9,10,11,12};
initial
begin
    array_d = new[6];
//    array_d[0] = '{"a":1,"b":2,"c":1,"d":2,"e":1,"f":2,"g":1,"h":2,"i":1,"j":2,"k":1,"l":2};
//    array_d[1] = '{"c":3,"d":4};
//    array_d[2] = '{"e":5,"f":6};
//    array_d[3] = '{"g":7,"h":8};
//    array_d[4] = '{"i":9,"j":10};
//    array_d[5] = '{"k":11,"l":12};

    foreach(array_d[i])
    begin
        for (int j = 0; j<2 ; j++)
        begin
        array_d[i][key_data[i+j]] = val_data[i+j];
        

        end  
    end

    foreach(array_d[J])
       begin
       $display("%0p",array_d[J]);
       end
end
endmodule     
