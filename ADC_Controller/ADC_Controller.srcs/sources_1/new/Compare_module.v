`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 20:45:43
// Design Name: 
// Module Name: Compare_Module
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


module Compare_module(
    input [15:0] ADC_in, // assume 12-bit ADC is used but 16-bit input is used for placeholder
    input [15:0] upper_compare_1, // 16-bit signed offset
    input [15:0] upper_compare_2, // 16-bit signed offset
    
    input [15:0] lower_compare_1, // 16-bit signed offset
    input [15:0] lower_compare_2, // 16-bit signed offset
    input clk,
    
    output UC1,
    output UC2,
    output LC1,
    output LC2,
    
    output idle_bit
    );
    
reg uc1, uc2, lc1, lc2;
assign UC1 = uc1;
assign UC2 = uc2;
assign LC1 = lc1;
assign LC2 = lc2;

reg idle;
assign idle_bit = idle;

always @ (posedge clk)
begin
    idle = 0;
    
    uc1 = (ADC_in >= upper_compare_1)? 1 : 0;
    uc2 = (ADC_in >= upper_compare_2)? 1 : 0;
    lc1 = (ADC_in >= lower_compare_1)? 1 : 0;
    lc1 = (ADC_in >= lower_compare_2)? 1 : 0;
    
    idle = 1;
end
endmodule
