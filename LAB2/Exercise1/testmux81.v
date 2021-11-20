`timescale 1ns/1ps
module testmux81; 
wire Y;
reg [7:0] I;
reg [2:0] S;
genvar i;
mux81 CUT1(I,S,Y);
begin
for (i=0;i<8;i++)
	I[i] = 1'b0;
for (i=0;i<3;i++)
	S[i] = 1'b0;
#500 $finish; 
end 
always #1 for (i=0;i<8;i++)
	I[i] =~ I[i];
always #2 for (i=0;i<3;i++)
	S[i] =~ S[i];
always@(I[0] or I[1] or I[2] or I[3] or I[4] or I[5] or I[6] or I[7] or S[0] or S[1] or S[2]) 
$monitor("At time = %t, Output = %d", $time, out); 
endmodule;
