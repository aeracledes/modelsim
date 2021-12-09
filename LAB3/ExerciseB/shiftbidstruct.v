module shiftbidstruct#(parameter n = 8)(
	input clk,in,clr,lr_bar,
	input [n-1:0] q
	);
	wire [n-1:0] qbar;
	wire dir;
dff_behavioral D0 (in,clk,clr,q[0],qbar[0]);
genvar i;
for (i=0;i<n;i=i+1)begin
m21 M21(in,q[i],lr_bar,dir);
dff_behavioral DN(dir,clk,clr,q[i+1],qbar[i+1]);
	end
	endmodule
module dff_behavioral(d,clk,clear,q,qbar); 
input d, clk, clear; 
output reg q, qbar; 
always@(posedge clk or posedge clear) 
begin
if(clear== 1)begin
q <= 0;
qbar <= 1;
end
else 
q <= d; 
qbar = !d; 
end 
endmodule
module m21(D0, D1, S, Y);

output Y;
input D0, D1, S;

assign Y=(S)?D1:D0;

endmodule
