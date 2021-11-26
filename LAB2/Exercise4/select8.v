module select8(
	output [7:0] S,
	output Cout,
	input [7:0] A,B,
	input Cin
	);
	wire C0,C1,CADD1,CADD2,CADD3;
	wire [3:0] S0,S1,A_1,B_1,A_2,B_2,SL,SH;
	assign C0 = 1'b0;
	assign C1 = 1'b1;
	assign A_1={A[3],A[2],A[1],A[0]};
	assign B_1={B[3],B[2],B[1],B[0]};
	assign A_2={A[7],A[6],A[5],A[4]};
	assign B_2={B[7],B[6],B[5],B[4]};

	cla4 ADD1(SL,CADD1,A_1,B_1,Cin);
	cla4 ADD2(S0,CADD2,A_2,B_2,C0);
	cla4 ADD3(S1,CADD3,A_2,B_2,C1);
	mux21 MUX(S0,S1,CADD1,SH);

	assign S = {SH,SL};
	assign Cout = CADD1?CADD3:CADD2;
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
input[3:0]I0,I1;
input S;
output[3:0]OUT;
assign OUT=S?I1:I0;
endmodule
