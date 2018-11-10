`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2018 14:49:17
// Design Name: 
// Module Name: ram_module
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


module ram_module #(parameter size = 5, parameter N = 8) (
    input Clock,
    input Reset,
    input WE,
    input [size-1:0] Address,
    input [N-1:0] D,
    output reg [N-1:0] Q    
    );

reg [N-1:0] ram1[2**size-1:0];

always @ (posedge Clock or posedge Reset) begin
    if (Reset) begin
        // COUNT
        ram1[0] = 8'b10000000; // IN A
        ram1[1] = 8'b01111111; // SUB A, 11111
        ram1[2] = 8'b10100100; // JZ 00100
        ram1[3] = 8'b11000001; // JPOS 00001
        ram1[4] = 8'b11111111; // HALT
        ram1[31] = 8'b10000001; // storage for the constant 1
        
        // SUM
        ram1[0] = 8'b00011101; // IN A
        ram1[1] = 8'b01111101; // SUB A, 11111
        ram1[2] = 8'b00111110; // JZ 00100
        
        ram1[3] = 8'b10000000; // JPOS 00001
        ram1[4] = 8'b00111111; // HALT
        
        ram1[5] = 8'b00011111; // IN A
        ram1[6] = 8'b01011110; // SUB A, 11111
        ram1[7] = 8'b00111110; // JZ 00100
        ram1[8] = 8'b00011111; // JPOS 00001
        ram1[9] = 8'b01111101; // HALT
        ram1[10] = 8'b00111111; // JPOS 00001
        ram1[11] = 8'b10101101; // HALT
        ram1[12] = 8'b11000101; // JPOS 00001
        ram1[13] = 8'b00011110; // HALT
        ram1[14] = 8'b11111111; // JPOS 00001
        
        ram1[29] = 8'b00000001; // storage for the constant 1   
        ram1[30] = 8'b00000000; // storage for the variable sum   
        ram1[31] = 8'b00000000; // storage for the variable n 
        
        // GCD - Greater Common Denominator
        ram1[0] = 8'b10000000; // IN A // input x
        ram1[1] = 8'b00111110; // STORE A, X
        ram1[2] = 8'b10000000; // IN A // input y
        ram1[3] = 8'b00111111; // STORE A, X
        
        ram1[4] = 8'b00011110; // loop: LOAD A, X // x=y?
        ram1[5] = 8'b00011111; // SUB A, y
        ram1[6] = 8'b10110000; // JZ UT // x=y
        ram1[7] = 8'b11001100; // JPOS xgty // x>y
        
        ram1[8] = 8'b00011111; // LOAD A,y //y>x
        ram1[9] = 8'b01111110; // SUB A, x //y-x
        ram1[10] = 8'b00111111; // STORE A,y
        ram1[11] = 8'b11000100; // JPOS loop
        
        ram1[12] = 8'b00011110; // xgty: LOAD A, x //x>y
        ram1[13] = 8'b01111111; // SUB A, y //x-y
        ram1[14] = 8'b00111110; // STORE A, x
        ram1[15] = 8'b11000100; // JPOS loop
        
        ram1[16] = 8'b00011110; // out: LOAD A, x
        ram1[17] = 8'b11111111; // HALT
        
        ram1[30] = 8'b00000000; // storage for the variable x
        ram1[31] = 8'b00000000; // storage for the variable y
   
    end 
    else begin
        if (WE) begin
            ram1[Address] = D;
        end
    end
end 

always @ (Address) begin
    Q = ram1[Address];    
end    
endmodule
