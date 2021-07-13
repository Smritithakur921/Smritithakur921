module counter_tb;
reg clk,rst,en;
wire [1:0] c;
integer a;
// counter_async dutt(.clk(clk), .rst(rst), .en(en), .c(c));
down_counter dutt(.clk(clk), .rst(rst), .en(en), .c(c));
initial 
begin 
$display("CLK RST EN | count");
$monitor("%b %b %b | %b",clk,rst,en,c);

rst = 1; #2;
en = 1; rst = 0; #16;
en = 0; rst = 0; #2;
en = 1; rst = 0; #10;
en = 1; rst = 1; #2;

$finish;
end

initial begin 
clk = 0;
for(a = 0; a<32; a=a+1) begin  // systemverilog
clk = ~clk;
#2;
end 
end

endmodule 