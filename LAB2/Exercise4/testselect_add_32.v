module testselect_add_32;
reg [n:1] A,B;
reg Cin;
wire [n:1] S;
wire Cout;

select_add_n CUT1(A,B,Cin,S,Cout);

initial
begin
	A=0; B=0; Cin=0;
	#10
	A=32'hBADFECA8; B=32'hA39;
end
endmodule

