testmux81{I,S,Y}
mux81 CUT1(I,S,Y);
initial
begin
S=3'b000;I=8'b00000000;

 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
 #15 S=$random ;I=$random;
end
endmodule




