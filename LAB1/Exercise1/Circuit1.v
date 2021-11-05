module Circuit1 (A,B,C,D,F);
//input output
	input A,B,C,D ;
	output F;
	wire w1,w2,w3,w4,w5;
//gates
	and G1 (w1,A,B);
	xnor G2 (w2,C,D);
	or G3 (w3,~A,C);
	xnor G4 (w4,w1,w2,w3);
	nand G5 (w5,w1,w2);
	nor G6 (F,w4,w5);
endmodule
