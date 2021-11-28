module testselect_add_32;
wire [7:0] S;
wire Cout;
reg [7:0] A,B;
reg Cin;

select_add_n CUT1(S,Cout,A,B,Cin);

initial
begin
	A=0; B=0; Cin=0;
	#10
	A=32'hBADFECA8; B=32'hA39;
end
endmodule
