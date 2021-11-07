`timescale 1ns/1ps
module testmux81; 
wire out;
reg A0, A1, A2, A3, A4, A5, A6, A7, A8, S0, S1, S2;
mux81 CUT1(.A0(A0), .A1(A1), .A2(A2), .A3(A3), .A4(A4), .A5(A5), .A6(A6), .A7(A7), .S0(S0), .S1(S1), .S2(S2), .out(out)); 
initial 
begin
A0=1'b0; A1=1'b0; A2=1'b0; A3=1'b0; A4=1'b0; A5=1'b0; A6=1'b0; A7=1'b0;S0=1'b0; S1=1'b0; S2=1'b0; 
#500 $finish; 
end 
always #1 A0=~A0;
always #2 A1=~A1;
always #3 A2=~A2;
always #4 A3=~A3;
always #5 A4=~A4;
always #6 A5=~A5;
always #7 A6=~A6;
always #8 A7=~A7;
always #9 S0=~S0;
always #10 S1=~S1;
always #11 S2=~S2;
always@(A0 or A1 or A2 or A3 or A4 or A5 or A6 or A7 or S0 or S1 or S2) 
$monitor("At time = %t, Output = %d", $time, out); 
endmodule;
