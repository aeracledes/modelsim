module Example_Circuit2 (A,B,C,F);
input A,B,C;
wire w1,w2,w3,w4;
output F;

not G1 (w1,A);
not G2 (w2,C);
and G3 (w3,A,B);
not G4 (w4,w3);
or G5 (F,w2,w3,w4);
endmodule
