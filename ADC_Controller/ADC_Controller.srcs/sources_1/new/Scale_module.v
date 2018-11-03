`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.11.2018 20:45:43
// Design Name: 
// Module Name: Scale_module
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


module Scale_module(
    input [15:0] ADC_in, // assume 12-bit ADC is used but 16-bit input is used for placeholder
    input [3:0] scaling_factor, // 4-bit (16) times amplification or attenuation
    input scaling_dir,
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
    
    adc_val = (scaling_dir == 1) ? ADC_in << scaling_factor : ADC_in >> scaling_factor;
    
    idle = 1;
end
endmodule
