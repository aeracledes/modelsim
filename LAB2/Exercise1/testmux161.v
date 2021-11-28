module testmux161;
reg [15:0] I;
reg [3:0] S;
wire Y;
mux161 CUT1(I,S,Y);
initial
begin
I = 8'b10110110;
	S = 4'b0000;
#2	S = 3'b0001;
#2	S = 3'b0010;
#2	S = 3'b0011;
#2	S = 3'b0100;
#2	S = 3'b0101;
#2	S = 3'b0110;
#2	S = 3'b0111;
#2	S = 3'b1000;
#2	S = 3'b1001;
#2	S = 3'b1010;
#2	S = 3'b1011;
#2	S = 3'b1100;
#2	S = 3'b1101;
#2	S = 3'b1110;
#2	S = 3'b1111;
end
initial $monitor("time=%g, Y=%b , S=%b , I=%b",$time,Y,S,I);
endmodule
