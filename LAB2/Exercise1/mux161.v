module mux161(
	input [15:0] I,
	input [3:0] S,
	output Y
	);
wire [1:0] T;
mux81 MUXA(T[0],I[7:0],S[2:0]);
mux81 MUXB(T[1],I[15:8],S[2:0]);
mux_case MUXC(Y,T[1:0],S[3]);
endmodule
module mux81(Y,I,S);
output Y;
input [7:0] I;
input [2:0] S;
wire [6:1] K ;
mux_case MUX1(K[1],I[1:0],S[0]);
mux_case MUX2(K[2],I[3:2],S[0]);
mux_case MUX3(K[3],I[5:4],S[0]);
mux_case MUX4(K[4],I[7:6],S[0]);
mux_case MUX5(K[5],K[2:1],S[1]);
mux_case MUX6(K[6],K[4:3],S[1]);
mux_case MUX7(Y,K[6:5],S[2]);
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
             
