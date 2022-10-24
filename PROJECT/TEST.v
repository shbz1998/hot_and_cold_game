`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 


module TEST(
input  a,
input  b,
output  c,
input clk
    );
    
    
reg decode1, prev_user_input1;
reg curr_user_input1 = 0;
reg clk;

initial
begin
clk <= 0;
forever #(`PERIOD/2) clk = ~clk;
end

always@(posedge clk)
begin
    prev_user_input1 <= curr_user_input1; //0
    curr_user_input1 <= 1'b1; //1
end   
    
    
 
endmodule


