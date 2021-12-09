module shiftregister #(parameter n = 8)(
   input clk,in,clr,
   output [n-1:0] Q
   );
   wire [n-1:0] qbar;
   dff_behavioral D1(in,clk,clr,Q[0],qbar[0]);
   genvar i;
   for(i=0;i<n;i=i+1)begin
	dff_behavioral DN(Q[i],clk,clr,Q[i+1],qbar[i+1]);
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
