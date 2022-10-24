`timescale 1ns / 1ps

`define PERIOD 20

module tb(
    );
    

reg clk;
reg rst;
reg [3:0] row;
wire [3:0] col;
wire  c;
wire [6:0] segment;
reg stop;
reg show;
wire correct;
wire closer;
wire farther;
reg select;

TOP_MODULE_PART_5 D0 (.clk(clk), .rst(rst), .row(row), .col(col) , .c(c), .segment(segment) ,.stop(stop) ,.show(show), .correct(correct),
.closer(closer), .farther(farther), .select(select));

initial
begin
clk <= 0;
forever #(`PERIOD/2) clk = ~clk;
end    
  

initial
begin

#(`PERIOD);
rst = 1;

#(`PERIOD);
rst = 0;

#(`PERIOD);
select = 0;

#(`PERIOD);
#(`PERIOD);
#(`PERIOD);
#(`PERIOD);

stop = 1;

#(`PERIOD);
#(`PERIOD);





end

endmodule
