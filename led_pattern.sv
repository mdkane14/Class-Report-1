`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 02:05:17 PM
// Design Name: 
// Module Name: led_pattern
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


module led_pattern(
   input logic en,
    input logic cw,
    input logic clk,
    input logic rst,
    output logic [27:0] ssegValues
    );
    
    logic [29:0] count1;
    
    count_n# (.N(30)) DUT1(
    .clk(clk),          
    .rst(rst),          
    .cw(cw),           
    .en(en),            
    .count(count1)
    );

//Decoder for count1
    ssegValuesDecoder SVD(
    .ThreeIn(count1[30-1:30-3]),    
    .ssegValues(ssegValues)
    );

endmodule
