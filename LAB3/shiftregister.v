module shiftreg_sipo#(parameter n = 8)(
	input in,clk,
	output [n-1:0] Q
	);
	wire [n-1:0] qbar;
dfflop D1(Q[0],qbar[0],in,clk);
genvar i;
for (i=0;i<n;i=i+1)begin
dfflop DN(Q[i+1],qbar[i+1],qbar[i],clk);
end
endmodule
module dfflop(q,qbar,d,clk);
input d,clk; 
output q, qbar; 
not NOT1(dbar,d); 
nand NAND1(x,clk,d); 
nand NAND2(y,clk,dbar); 
nand NAND3(q,qbar,y); 
nand NAND4(qbar,q,x); 
endmodule

