module Circuit2B (A,B,C,D,E,F,G);

input A,B,C,D,E;
output F,G;

assign F = ((!(A|B))^~(C|D)^~(E^~C));
assign G = (~(((!(A|B))^~(C|D)^~(E^~C))|(E^~C)));
endmodule
