//= is blocking statement. In an always block, the 
//line of code will be executed only after it's previous 
//line has executed. Hence, they happens one after the other,
// just like combinatoral logics in loop.
//
//<= is non-blocking in nature. This means that in an always block, 
//every line will be executed in parallel.
// Hence leading to implementation of sequential elements.

module octal_binary(
input [7:0]D,
output reg [2:0]OUT
);



always @(D,OUT) 
begin 
case ({D})
  
	8'b10000000:  OUT = 3'b000; 
    8'b01000000:  OUT = 3'b001; 
	8'b00100000:  OUT = 3'b010; 
	8'b00010000:  OUT = 3'b011; 
	8'b00001000:  OUT = 3'b100;
	8'b00000100:  OUT = 3'b101; 
	8'b00000010:  OUT = 3'b110; 
	8'b00000001:  OUT = 3'b111; 
        default: OUT = 3'b000;
	
	
endcase
end
endmodule 