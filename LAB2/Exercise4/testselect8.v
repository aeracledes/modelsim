module testselect8;
reg Cin;
reg [7:0] A,B;
wire [8:0] S;

select8 CUT1(S,Cout,A,B,Cin);
initial
begin
	A=0; B=0; Cin=0;
	#10
	A=8'b1; B=11; Cin=1'b0;
	#10
	A=8'b11; B=8'b101; Cin=1'b1;
	#10
	A=8'b11110000; B=8'b10000001; Cin=1'b0;
	#10
	A=8'hAB; B=8'h03; Cin=1'b0;
end
endmodule
