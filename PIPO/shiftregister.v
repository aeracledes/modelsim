module shiftregister #(parameter n = 3)(
	input clk,in,shift,
	input [n-1:0] D,
	output [n-1:0] Q
	);
	wire [n-1:0] t,qbar;
mux21 MUX1(t[0],in,D[0],~shift);
dflipflop DF1(Q[0],qbar[0],t[0],clk);
genvar i;
for (i=0;i<n;i=i+1)begin
      mux21 MUX2 (t[i+1],qbar[i],D[i+1],~shift);
     	dflipflop DFN(Q[i+1],qbar[i+1],t[i+1],clk);
   	  end
endmodule

module nandgate(c,a,b); 
input a,b; 
output c; 
assign c = ~(a&b); 
endmodule

module notgate(f,e); 
input e; 
output f; 
assign f= ~e; 
endmodule

module dflipflop(q,qbar,d,clk);
input d,clk; 
output q, qbar; 
notgate NOT1(dbar,d); 
nandgate NAND1(x,clk,d); 
nandgate NAND2(y,clk,dbar); 
nandgate NAND3(q,qbar,y); 
nandgate NAND4(qbar,q,x); 
endmodule

module mux21(y, d0, d1, s);
output y;
input d0, d1, s;
wire t1, t2, sbar;
and (t1, d1, s), (t2, d0, sbar);
not (sbar, s);
or (y, t1, t2);

endmodule