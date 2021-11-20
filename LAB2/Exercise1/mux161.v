module mux161(A,S3,S2,S1,S0,Y);
input [15:0] A;
input S3,S2,S1,S0;
output reg Y;

	always @ (*)
		case ({S3,S2,S2,S1,S0}) 
			4'b0000: Y = A[0];
			4'b0001: Y = A[1];
			4'b0010: Y = A[2];
			4'b0011: Y = A[3];
			4'b0100: Y = A[4];
			4'b0101: Y = A[5];
			4'b0110: Y = A[6];
			4'b0111: Y = A[7];
			4'b1000: Y = A[8];
			4'b1001: Y = A[9];
			4'b1010: Y = A[10];
			4'b1011: Y = A[11];
			4'b1100: Y = A[12];
			4'b1101: Y = A[13];
			4'b1110: Y = A[14];
			4'b1111: Y = A[15];
		endcase
endmodule
