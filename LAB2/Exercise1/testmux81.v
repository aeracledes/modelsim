module testmux81;
reg [7:0] I;
reg [2:0] S;
wire Y;
mux81 CUT1(Y,I,S);
initial
begin
I = 8'b10110110;
	S = 3'b000;
#2	S = 3'b001;
#2	S = 3'b010;
#2	S = 3'b011;
#2	S = 3'b100;
#2	S = 3'b101;
#2	S = 3'b110;
#2	S = 3'b111;
#2	I = 8'b11001011;
#2	S = 3'b000;
#2	S = 3'b001;
#2	S = 3'b010;
#2	S = 3'b011;
#2	S = 3'b100;
#2	S = 3'b101;
#2	S = 3'b110;
#2	S = 3'b111;
end
initial $monitor("time=%g, Y=%b , S=%b , I=%b",$time,Y,S,I);
endmodule
