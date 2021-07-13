module up_down_counter( clk, clear, dir_up, count);

input clk, clear, dir_up;
output reg [2:0] count;

always@(posedge clk or posedge clear)
begin
     if (clear)
        begin 
           count <= 3'b000;
        end
else begin 
if (dir_up)
        begin 
           count <= count + 1;
        end 
else 
        begin 
           count <= count - 1;
        end 
end

end

endmodule

