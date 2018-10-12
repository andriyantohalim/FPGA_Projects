`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Halim
// 
// Create Date: 12.10.2018 15:26:17
// Design Name: 
// Module Name: UART_Tx_ctrl
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


module UART_Tx_ctrl(ready, uart_tx, send, data, clk);

input send, clk;
input [7:0] data;
output ready, uart_tx;

parameter baud = 9600;
parameter bit_index_max = 10;

localparam [31:0] baud_timer = 100000000/baud;
localparam RDY = 2'b00, LOAD_BIT = 2'b01, SEND_BIT = 2'b10;

reg [1:0] state = RDY;
reg [31:0] timer = 0;
reg [9:0] txData;
reg [3:0] bitIndex;
reg txBit = 1'b1;

always @ (posedge clk)
    case (state)
        RDY:
            begin
                if(send)
                    begin
                        txData <= {1'b1, data, 1'b0};
                        state <= LOAD_BIT;
                    end
                timer <= 14'b0;
                bitIndex <= 0;
                txBit <= 1'b1;
            end
        LOAD_BIT:
            begin
                state <= SEND_BIT;
                bitIndex <= bitIndex + 1'b1;
                txBit <= txData[bitIndex];
            end
        SEND_BIT:
            if(timer == baud_timer)
                begin
                    timer <= 14'b0;
                    if(bitIndex == bit_index_max)
                        state <= RDY;
                    else 
                        state <= LOAD_BIT;
                end
            else 
                timer <= timer + 1'b1;
        default:
            state <= RDY;
    endcase

assign uart_tx = txBit;
assign ready = (state == RDY);

endmodule
