module select_add_n(A,B,Cin,S,Cout);
	parameter n = 32;
	parameter cnt = 8;
	input [n:1] A,B;
	input Cin;
	output [n:1] S;
	output Cout;
	wire [4:1]S0,S1,SL,ST,A_0,B_0,A_n,B_n;
	wire [n:5] SH;
	wire C0,C1,CADD1,CADD2,CADD3;
	assign C0 = 1'b0;
	assign C1 = 1'b1;
	assign A_0 = {A[4],A[3],A[2],A[1]};
	assign B_0 = {B[4],B[3],B[2],B[1]};
	cla4 ADD1(SL,CADD1,A_0,B_0,Cin);
	genvar i;
	generate for(i=1;i<(n/4);i=i+1)begin :sum_loop
	assign A_n = {A[cnt],A[cnt-1],A[cnt-2],A[cnt-3]};
	assign B_n = {B[cnt],B[cnt-1],B[cnt-2],B[cnt-3]};
	cla4 ADD2(S0,CADD2,A_n,B_n,C0);
	cla4 ADD3(S1,CADD3,A_n,B_n,C1);
	mux21 MUX1(CADD2,CADD3,CADD1,Cout);
	mux4bit MUX2(S0,S1,CADD1,ST);
	cnt = cnt+4;
	assign SH = {ST,SH};
	end
	endgenerate
	assign S = {SH,SL};
endmodule
module cla4(
    output [3:0] S,
    output Cout,
    input [3:0] A,B,
    input Cin
    );
    wire [3:0] G,P,C;
    assign G = A & B; 
    assign P = A ^ B; 
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) |             (P[2] & P[1] & P[0] & C[0]);
    assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) |(P[3] & P[2] & P[1] & P[0] & C[0]);
    assign S = P ^ C;
endmodule

module mux21(I0,I1,S,OUT);
input I0,I1;
input S;
output OUT;
assign OUT=S?I1:I0;
endmodule

module mux4bit(I0,I1,S,OUT);
input [3:0] I0,I1;
input S;
output [3:0] OUT;
assign OUT=S?I1:I0;
endmodule

