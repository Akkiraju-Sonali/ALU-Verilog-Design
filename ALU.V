`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2025 14:08:50
// Design Name: 
// Module Name: alu_4bit
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


module alu_4bit(
    input [3:0] A,
    input [3:0] B,
    input [2:0] SEL,
    output reg [3:0] RESULT
    );
    always @(*) begin
    case (SEL)
        3'b000: RESULT = A + B;      // ADD
        3'b001: RESULT = A - B;      // SUB
        3'b010: RESULT = A & B;      // AND
        3'b011: RESULT = A | B;      // OR
        3'b100: RESULT = ~A;         // NOT (A only)
        default: RESULT = 4'b0000;
    endcase
end
endmodule
