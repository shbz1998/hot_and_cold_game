`timescale 1ns / 1ps
`define PERIOD 20

module TOP_MODULE_TB(
    );

reg clk, rst, din, wr;
wire c;
wire [6:0] segment;

wire [7:0] input_value;
wire [7:0] keypad;
reg [7:0] output_value;
reg output_value_valid;

assign input_value = keypad;
assign bidir_signal = (output_value_valid==1'b1)? output_value : 8'hZZ;

TOP_MODULE M0 (.clk(clk), .rst(rst), .keypad(keypad), .c(c), .segment(segment));
 
 
initial
begin
clk <= 0;
forever #(`PERIOD/2) clk = ~clk;
end

initial
begin
rst = 0;
output_value = 5;
end



endmodule
