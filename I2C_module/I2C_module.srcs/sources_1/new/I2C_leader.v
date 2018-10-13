`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2018 16:14:01
// Design Name: 
// Module Name: I2C_leader
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


module I2C_leader(clk, reset_n, ena, addr, rw, data_wr, busy, data_rd, ack_error, eop, sda, scl);

input clk;
input reset_n;
input ena;
input [6:0] addr;
input rw;
input [7:0] data_wr;

endmodule
