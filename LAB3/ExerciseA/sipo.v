module nand_gate(c,a,b); 
input a,b; 
output c; 
assign c = ~(a&b); 
endmodule

module not_gate(f,e); 
input e; 
output f; 
assign f= ~e; 
endmodule

module dfflop(q,qbar,d,clk);
input d,clk; 
output q, qbar; 
not_gate not1(dbar,d); 
nand_gate nand1(x,clk,d); 
nand_gate nand2(y,clk,dbar); 
nand_gate nand3(q,qbar,y); 
nand_gate nand4(qbar,q,x); 
endmodule

module sipo#(parameter n = 8)
	(
	input d,clk,
	output [n-1:0] q;
	);

dfflop D0(q[n],~q[n],d,clk);
genvar i;
for(i=1;i<(n+1);i=i+1;
dfflop DN(q[n-i],~q[n-i],q[n],clk);
dfflop DN2(q[n-2i],~q[n-2i],q[n-i],clk);
