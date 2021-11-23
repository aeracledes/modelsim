testmux81(I,S,Y);

mux81 CUT1(I,S,Y);
initial
begin
S=3'b000;I=8'b00000000;
	#15 S = 3'b000;
	#15 S = 3'b001;
	#15 S = 3'b010;
	#15 S = 3'b011;
	#15 S = 3'b100;
	#15 S = 3'b101;
	#15 S = 3'b110;
	#15 S = 3'b111;

end
endmodule




