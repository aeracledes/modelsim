module testpcoder;
  reg InD3,InD2,InD1,InD0;
  wire OutY1,OutY0,OutZ;

  pcoder CUT1(InD3,InD2,InD1,InD0,OutY1,OutY0,OutZ);

  initial
  begin
	 {InD3,InD2,InD1,InD0}  = 4'b0000;
#10	 {InD3,InD2,InD1,InD0}  = 4'b0001;
#10	 {InD3,InD2,InD1,InD0}  = 4'b0010;
#10	 {InD3,InD2,InD1,InD0}  = 4'b0011;
#10	 {InD3,InD2,InD1,InD0}  = 4'b0100;
#10	 {InD3,InD2,InD1,InD0}  = 4'b0101;
#10	 {InD3,InD2,InD1,InD0}  = 4'b0110;
#10	 {InD3,InD2,InD1,InD0}  = 4'b0111;
#10	 {InD3,InD2,InD1,InD0}  = 4'b1000;
#10	 {InD3,InD2,InD1,InD0}  = 4'b1001;
#10	 {InD3,InD2,InD1,InD0}  = 4'b1010;
#10	 {InD3,InD2,InD1,InD0}  = 4'b1011;
#10	 {InD3,InD2,InD1,InD0}  = 4'b1100;
#10	 {InD3,InD2,InD1,InD0}  = 4'b1101;
#10	 {InD3,InD2,InD1,InD0}  = 4'b1110;
#10	 {InD3,InD2,InD1,InD0}  = 4'b1111;
#10	  $stop;
end

initial $monitor($time ,  , "InD3 = %b, InD2=%b,InD1=%b,InD0=%b,
	OutY1=%b,OutY0=%b,OutZ=%b",InD3,InD2,InD1,InD0,OutY1,OutY0,OutZ);
endmodule
