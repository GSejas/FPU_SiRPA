`timescale 1ns / 1ps
`include "LUT_sincos_32.txt"

module LUT_ROM_32bits #(parameter W=32,N=3)
(
//Input Signals
input wire [N-1:0] address,
//Output Signals
output reg [W-1:0] data_out
);
localparam ROM_FILE="LUT_sincos_32.txt";

reg [W-1:0] rom_test [2**N-1:0];
 initial
begin
    $readmemh(ROM_FILE, rom_test, 0, 2**N-1);
end
always @*
begin
    data_out = rom_test[address];
end
endmodule
