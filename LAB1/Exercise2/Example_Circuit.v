module Example_Circuit(A,B,C,D,F,G);

input A,B,C,D;
output F,G;
wire w1,w2,w3;

nand G1(w1,A,B);
nor G2 (w2,C,D);
xor G3 (w3,A,C);
and G4 (F,w1,w2);
or  G5 (G,w2,w3);

endmodule
