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


module WrapperLed(
    input logic [15:0] SW,
    input logic CLK100MHZ,
    //input logic BTNC, 
    output logic [6:0] SSEG,
    output logic [7:0] AN
    );


top_sseg DUT(
    .en(SW[0]),
    .cw(SW[2]),
    .clk(CLK100MHZ),
    .rst(SW[1]),
    .sseg(SSEG),
    .an(AN[3:0])
    );
    
endmodule
