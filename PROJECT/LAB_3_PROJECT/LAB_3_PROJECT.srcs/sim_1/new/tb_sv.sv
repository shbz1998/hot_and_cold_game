`timescale 1ns / 1ps

`define PERIOD 20

module tb(
input[2:0]  a,
output[2:0] decode_out

    );
    
reg clk;
reg[2:0] decode2 = 0;
reg[2:0] decode1 =0;
reg[2:0] prev_user_input;
reg[2:0] curr_user_input = 0;
reg[2:0] a_reg;

assign a = a_reg;

assign decode_out = a;

initial
begin
clk <= 0;
forever #(`PERIOD/2) clk = ~clk;
end    
  
  


always@ (posedge clk)
begin
    prev_user_input = $past(curr_user_input, 1);
    curr_user_input = 5'b1010;
end


initial
begin

#(`PERIOD)
curr_user_input = 5'b1010;

#(`PERIOD)
curr_user_input = 5'b1110;

#(`PERIOD)
curr_user_input = 5'b1110;


 
end

endmodule
