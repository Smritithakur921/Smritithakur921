`timescale 1ns/ 1ps
module up_down_tb;

reg clk,dir_up,clear;
wire [2:0] count;

// counter_async dutt(.clk(clk), .rst(rst), .en(en), .c(c));
up_down_counter dutt(.clk(clk), .dir_up(dir_up), 
                     .count(count), .clear(clear));

initial begin 
$display("CLK clear count dir_up");
$monitor("%b %b    %b| %b",clk,clear,count,dir_up);

     clear = 1;clk = 0; dir_up = 0;
#100 clear = 0; dir_up = 1;  
#200 dir_up = 0;
#200;

$finish;
end
always #10 clk = ~clk;
endmodule 