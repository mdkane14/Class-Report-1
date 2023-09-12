`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/07/2023 01:33:57 PM
// Design Name: 
// Module Name: top_sseg
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


module top_sseg(
    input logic en,
    input logic cw,
    input logic clk,
    input logic rst,
    output logic [6:0] sseg,
    output logic [3:0] an
    );

logic [27:0] ssegValues;
logic [19:0] count2;

led_pattern DUT1(
    .clk(clk),          
    .rst(rst),          
    .cw(cw),           
    .en(en),            
    .ssegValues(ssegValues)
);


mux_sseg# (.N(7)) DUT(
    .in0(ssegValues[27:21]), 
    .in1(ssegValues[20:14]), 
    .in2(ssegValues[13:7]), 
    .in3(ssegValues[6:0]), 
    .sel(count2[20-1:20-2]),   
    .sseg(sseg)
);

count_n# (.N(20)) DUT2(
    .clk(clk),          
    .rst(rst),          
    .cw(cw),           
    .en(en),          
    .count(count2)
);

//Decoder
TwotoFourDecoder deco(
    .TwoIn(count2[20-1:20-2]),
    .FourOut(an)
    );


endmodule
