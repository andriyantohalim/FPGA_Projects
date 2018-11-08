`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 20:45:43
// Design Name: 
// Module Name: Limit_module
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


module Limit_module(
    input [15:0] ADC_in, // assume 12-bit ADC is used but 16-bit input is used for placeholder
    input [15:0] upper_limit, // 16-bit signed offset
    input [15:0] lower_limit, // 16-bit signed offset
    input clk,
    
    output [15:0] ADC_out,
    output idle_bit
    );

reg [15:0] adc_val;
assign ADC_out = adc_val;

reg idle;
assign idle_bit = idle;

always @ (posedge clk)
begin
    idle = 0;
    
    if(adc_val >= upper_limit)
    begin
        adc_val = upper_limit;
    end
    else if (adc_val <= lower_limit)
    begin
        adc_val = lower_limit;
    end
    
    idle = 1;
end
endmodule
