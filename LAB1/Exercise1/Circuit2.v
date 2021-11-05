module Circuit2 (A,B,C,D,E,F,G);
//input output
	input A,B,C,D,E ;
	output F,G;
	wire w1,w2,w3;
//gates
	nor G1 (w1,A,B);
	or G2 (w2,C,D);
	xor G3 (w3,E,C);
	xnor G4 (F,w1,w2,w3);
	nor G5 (G,F,w3);
endmodule
