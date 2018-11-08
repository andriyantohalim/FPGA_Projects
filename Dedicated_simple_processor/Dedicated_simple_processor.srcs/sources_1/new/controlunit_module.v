`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.11.2018 15:35:05
// Design Name: 
// Module Name: datapath_module
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


module controlunit_module(
    input Clock, Reset,
    output reg iMux, sumMux, sumLoad, iLoad, addMux, OE,
    input ine11,
    output [2:0] debug
    );
    
parameter s0 = 0, s1 = 1, s2 = 2, s3 = 3, s4 = 4;

reg [2:0] state;
assign debug = state;

always @ (posedge Clock or posedge Reset) begin
    if (Reset == 1) begin
        state <= s0;
        end
    else begin
        case (state)
            s0: begin
                state <= s1;
                end
            s1: begin
                state <= s2;
                end
            s2: begin
                state <= s3;
                end
            s3: begin
                if(ine11 == 1)
                    state <= s1;
                else
                    state <= s4;
                end
            s4: begin
                    state <= s4;
                end
            default: begin
                state <= s0;
                end
            endcase           
        end
end

always @ (state) begin
    case (state)
        s0 : begin
            iMux = 1;
            sumMux = 1;
            sumLoad = 1;
            iLoad = 1;
            addMux = 0;
            OE = 1;
            end
       s1 : begin
            iMux = 0;
            sumMux = 0;
            sumLoad = 1;
            iLoad = 0;
            addMux = 0;
            OE = 1;
            end
       s2 : begin
            iMux = 0;
            sumMux = 0;
            sumLoad = 1;
            iLoad = 1;
            addMux = 1;
            OE = 1;
            end
        s3 : begin
            iMux = 0;
            sumMux = 0;
            sumLoad = 0;
            iLoad = 0;
            addMux = 0;
            OE = 1;
            end
        s4 : begin
            iMux = 0;
            sumMux = 0;
            sumLoad = 0;
            iLoad = 0;
            addMux = 0;
            OE = 1;
            end
        default : begin
            iMux = 0;
            sumMux = 0;
            sumLoad = 0;
            iLoad = 0;
            addMux = 0;
            OE = 1;
            end
    endcase
end        
endmodule
