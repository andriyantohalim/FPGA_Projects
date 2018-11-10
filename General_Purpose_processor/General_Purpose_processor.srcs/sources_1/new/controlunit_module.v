`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.11.2018 14:49:17
// Design Name: 
// Module Name: controlunit_module
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
    input Clock, Reset, Enter,
    output reg IRload, JMPmux, PCload, Meminst, MemWr,
    output reg [1:0] Asel,
    output reg Aload, Sub,
    input [2:0] IR75,
    input Apos, Aeq0,
    output reg Halt,
    output [3:0] debug
    );
    
reg [3:0] state;
assign debug = state;

// Next Logic state
always @ (posedge Clock, posedge Reset) begin
    if (Reset) begin
        state <= 4'b0000;
        end
    else
        case (state)
            4'b0000: begin state <= 4'b0001; end
            4'b0001: begin state <= 4'b0010; end
            4'b0010: begin 
                case (IR75)
                    3'b000: state <= 4'b1000; // Load
                    3'b001: state <= 4'b1001; // Store
                    3'b010: state <= 4'b1010; // Add
                    3'b011: state <= 4'b1011; // Sub
                    3'b100: state <= 4'b1100; // Input
                    3'b101: state <= 4'b1101; // Jz
                    3'b110: state <= 4'b1110; // Jpos  
                    3'b111: state <= 4'b1111; // Halt
                    default: state <= 4'b0000; // Start
                    endcase
                end
            4'b1000: begin state <= 4'b0000; end    // Load
            4'b1001: begin state <= 4'b0000; end    // Store
            4'b1010: begin state <= 4'b0000; end    // Add
            4'b1011: begin state <= 4'b0000; end    // Sub
            4'b1100: begin     // Input
                if (Enter ) begin state <= 4'b0000; end
                else begin state <= 4'b1100; end
                end
            4'b1101: begin state <= 4'b0000; end // Jz
            4'b1110: begin state <= 4'b0000; end // Jpos
            4'b1111: begin state <= 4'b1111; end // Halt
            default: begin state <= 4'b0000; end      
        endcase  
    end      

// Output Logic
always @ (state) begin
    case (state)
        4'b0001: begin // Fetch
            IRload <= 1;
            JMPmux <= 0;
            PCload <= 1;
            Meminst <= 0;
            MemWr <= 0;
            Asel <= 2'b00;
            Aload <= 0;
            Sub <= 0;
            Halt <= 0;
            end
        4'b0010: begin // Decode 
            IRload <= 0;
            JMPmux <= 0;
            PCload <= 0;
            Meminst <= 1;
            MemWr <= 0;
            Asel <= 2'b00;
            Aload <= 0;
            Sub <= 0;
            Halt <= 0;
            end
        4'b1000: begin // Load
            IRload <= 0;
            JMPmux <= 0;
            PCload <= 0;
            Meminst <= 1;
            MemWr <= 0;
            Asel <= 2'b10;
            Aload <= 1;
            Sub <= 0;
            Halt <= 0;
            end
        4'b1001: begin  // Store
            IRload <= 0;
            JMPmux <= 0;
            PCload <= 0;
            Meminst <= 1;
            MemWr <= 1;
            Asel <= 2'b00;
            Aload <= 0;
            Sub <= 0;
            Halt <= 0;
            end
        4'b1010: begin  // Add
            IRload <= 0;
            JMPmux <= 0;
            PCload <= 0;
            Meminst <= 1;
            MemWr <= 0;
            Asel <= 2'b00;
            Aload <= 1;
            Sub <= 0;
            Halt <= 0;
            end
        4'b1011: begin // Sub
            IRload <= 0;
            JMPmux <= 0;
            PCload <= 0;
            Meminst <= 1;
            MemWr <= 0;
            Asel <= 2'b00;
            Aload <= 1;
            Sub <= 1;
            Halt <= 0;
            end
        4'b1100: begin // Input
            IRload <= 0;
            JMPmux <= 0;
            PCload <= 0;
            Meminst <= 0;
            MemWr <= 0;
            Asel <= 2'b01;
            Aload <= 1;
            Sub <= 0;
            Halt <= 0;
            end
        4'b1101: begin  // Jz
            IRload <= 0;
            JMPmux <= 1;
            PCload <= Aeq0; // Load PC if condition is true
            Meminst <= 0;
            MemWr <= 0;
            Asel <= 2'b00;
            Aload <= 0;
            Sub <= 0;
            Halt <= 0;
            end
        4'b1110: begin  // Jpos
            IRload <= 0;
            JMPmux <= 1;
            PCload <= Apos; // Load PC if condition is true
            Meminst <= 0;
            MemWr <= 0;
            Asel <= 2'b00;
            Aload <= 0;
            Sub <= 0;
            Halt <= 0;
            end
            
        4'b1111: begin  // Halt
            IRload <= 0;
            JMPmux <= 0;
            PCload <= 0;
            Meminst <= 0;
            MemWr <= 0;
            Asel <= 2'b00;
            Aload <= 0;
            Sub <= 0;
            Halt <= 1;
            end
            
        default: begin  
            IRload <= 0;
            JMPmux <= 0;
            PCload <= 0;
            Meminst <= 0;
            MemWr <= 0;
            Asel <= 2'b00;
            Aload <= 0;
            Sub <= 0;
            Halt <= 0;
            end
      endcase 
      
      
end                    
                    
                                

endmodule
