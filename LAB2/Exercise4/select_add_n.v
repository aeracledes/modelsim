module select_add_n(
	output [32:1] S,
	output Cout,
	input [32:1] A,B,
	input Cin
	);
	wire [4:1] S0,S1,SH,SL,S_TMP,A_1,B_1,A_2,B_2;
	wire C0,C1,CADD1,CADD2,CADD3,CNT;
	genvar i;
	for(i=0;i<8;i=i+1)
	reg [3:0] param;
	always @* begin
	    param = instruction[4*i:1*i];
	end
	assign C0 = 1'b0;
	assign C1 = 1'b1;
	assign A_1 = {A[4],A[3],A[2],A[1]};
	assign B_1 = {B[4],B[3],B[2],B[1]};	
	assign A_2 = {A[8],A[7],A[6],A[5]};
	assign B_2 = {B[8],B[7],B[6],B[5]};	
	cla4 ADD1(SL,CADD1,A_1,B_1,Cin);
	for(i=0;i<32;i=i+1)
		cla4 ADD2(S0,CADD2,A_2,B_2,C0);
		cla4 ADD3(S1,CADD3,A_2,B_2,C1);
		mux21 MUX1(CADD2,CADD3,CADD1,Cout);
		mux4bit MUX2(S0,S1,CADD1,S_TMP);
		assign SH = {S_TMP,SH};
	assign S ={SH,SL};
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

