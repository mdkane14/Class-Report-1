`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/05/2023 08:34:38 PM
// Design Name: 
// Module Name: top_led_t
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


module top_led_t();
    parameter N=8;
    logic [3:0] an;
    logic [6:0] sseg;
    //logic clk;
    logic rst;
    logic en;
    logic cw;
    //output logic tic,
    
    top_sseg DUT(
    .an(an),
    .sseg(sseg),
    .clk(sys_clk_pin),
    .rst(rst),
    .en(en)
    );
    
    initial begin
        rst = 0;
        #5
        cw=1;
        #5
        en=1;
        #10
    $finish;
    end
    
    
    

endmodule
