module mux81(Y,I,S);
output Y;
input [7:0] I;
input [2:0] S;
wire [6:1] K ;
mux_case vas1(K[1],I[1:0],S[0]);
mux_case vas2(K[2],I[3:2],S[0]);
mux_case vas3(K[3],I[5:4],S[0]);
mux_case vas4(K[4],I[7:6],S[0]);
mux_case vas5(K[5],K[2:1],S[1]);
mux_case vas6(K[6],K[4:3],S[1]);
mux_case vas7(Y,K[6:5],S[2]);
endmodule

module mux_case(Y,I,S);
output reg Y;
input [1:0] I;
input S;
always @ (*)
	casex(S)
		1'b0: Y=I[0];
		1'b1: Y=I[1];
		default : Y = 1'bx;
	endcase
endmodule
