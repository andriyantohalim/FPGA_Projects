`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.11.2018 17:54:38
// Design Name: 
// Module Name: deadtime_timer_module
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


module deadtime_timer_Module(
    input pwm_in,       // Input pwm
    input [7:0] CR,     // Compare Value
    
    output wire pwm_out
    );
    
localparam [7:0] PR=8'hFF;

reg [7:0] timerval;
reg st;

assign pwm_out = ~st;

initial
timerval = 8'h00;

always @ (posedge pwm_in)
begin 
    timerval <= (timerval >= PR)? 8'h00 : (timerval + 1'b1);
    st <= (timerval >= CR)? 1'b1 : 1'b0;
end
endmodule
