`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2018 16:46:56
// Design Name: 
// Module Name: arithmetics_op_tb
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


module arithmetic_op_tb;

reg [11:0] in1;
reg [11:0] in2;

wire[11:0] out1;
wire[11:0] out2;
wire[11:0] out3;
wire[23:0] out4;
wire[11:0] out5;
wire[11:0] out6;

arithmetic_op UUT (
    .num1(in1), 
    .num2(in2),
    .res1(out1), 
    .res2(out2),
    .res3(out3), 
    .res4(out4),
    .res5(out5), 
    .res6(out6)
    );

initial begin
in1 = 12'b000011100010;
in2 = 12'b001001110110;
#500;

in1 = 12'b001011100010;
in2 = 12'b001001110110;
#500;

in1 = 12'b000011101010;
in2 = 12'b001111110110;
#500;

end

endmodule
