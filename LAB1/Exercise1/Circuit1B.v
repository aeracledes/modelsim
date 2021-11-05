module Circuit1B (A,B,C,D,F);

input A,B,C,D;
output F;

assign F = (~(((A&B)^~(C^~D)^~(~A|C))|(~((A&B)&(C^~D)))));

endmodule
