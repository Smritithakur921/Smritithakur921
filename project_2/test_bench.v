module test_bench( num1,num2,out_Max,out_Min );
reg [2:0] num1,num2;
wire [2:0] out_Max,out_Min;

// counter_async dutt(.clk(clk), .rst(rst), .en(en), .c(c));
down_counter dutt(.clk(clk), .rst(rst), .en(en), .c(c));

initial begin 
num1 = 4'b0100; num2 = 4b'0010;
#10; num1 = 4'b0000; num2 = 4b'0010;
#10;

end
endmodule