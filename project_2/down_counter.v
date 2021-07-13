module down_counter( c, en, rst, clk);
input en, rst, clk;
output [1:0]c;
reg [1:0]c;

always@(posedge clk)
begin
if (rst == 1)
c = 2'b11;
else if (en==1)
c = c-1;
end
endmodule