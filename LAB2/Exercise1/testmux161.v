module testmux161; 
wire Y;
reg [15:0]A;
reg S3,S2,S1,S0;
mux161 CUT1(A,S3,S2,S1,S0,Y);
initial 
begin
A=16'b0; S3=1'b0; S2=1'b0; S1=1'b0; S0=1'b0;
#500 $finish; 
end 
always #1 A=~A;
always #9 S0=~S0;
always #10 S1=~S1;
always #11 S2=~S2;
always #11 S3=~S3;
always@(A or S0 or S1 or S2 or S3) 
$monitor("At time = %t, Output = %d", $time, Y); 
endmodule;
