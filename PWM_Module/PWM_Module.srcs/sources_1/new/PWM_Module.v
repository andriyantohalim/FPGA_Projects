`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.10.2018 14:50:15
// Design Name: 
// Module Name: PWM_Module
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


module PWM_Module(
    input clk,
    input [3:0] PWM_in,
    
    output wire PWM_out,
    output wire [3:0] count
);

reg [3:0] cnt;
reg pwm;

assign count = cnt;
assign PWM_out = pwm;

initial 
cnt = 4'b0000;

always @(posedge clk) 
begin 
cnt <= (cnt >= 4'b1111)? 4'b0000 : (cnt + 1'b1);
pwm <= (cnt >= PWM_in)? 1'b1 : 1'b0;

end



endmodule
