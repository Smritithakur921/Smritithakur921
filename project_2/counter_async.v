// asynchronoud Counter //
// Ripple Counter //
// up-down counter //
module counter_async( clk, rst, en, c);
input clk,rst,en;
output [1:0] c;
reg [1:0] c;

always@(posedge clk)
begin
if (rst == 1)
c = 2'b00;
else if (en==1)
c = c+1;
end
endmodule



