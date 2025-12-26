`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.12.2025 14:16:13
// Design Name: 
// Module Name: tb_alu
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


`timescale 1ns/1ps
module tb_alu_4bit;

reg  [3:0] A;
reg  [3:0] B;
reg  [2:0] SEL;
wire [3:0] RESULT;

alu_4bit uut (
    .A(A),
    .B(B),
    .SEL(SEL),
    .RESULT(RESULT)
);

initial begin
    $monitor("Time=%0t | A=%b | B=%b | SEL=%b | RESULT=%b",
              $time, A, B, SEL, RESULT);

    // ADD
    A = 4'b0101; B = 4'b0011; SEL = 3'b000; #10;

    // SUB
    A = 4'b1001; B = 4'b0001; SEL = 3'b001; #10;

    // AND
    A = 4'b1100; B = 4'b1010; SEL = 3'b010; #10;

    // OR
    A = 4'b1100; B = 4'b1010; SEL = 3'b011; #10;

    // NOT
    A = 4'b0101; B = 4'bxxxx; SEL = 3'b100; #10;

    $finish;
end

endmodule

