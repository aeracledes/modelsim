module Example_Circuit2 (A,B,C,F);
input A,B,C;
wire w1,w2;
output F;

not G1 (w1,A);
not G2 (w2,C);
or G3 (F,w1,w2);

endmodule
