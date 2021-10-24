module Circuit1_Test;

  reg InA,InB,InC,InD;
  wire OutF;

  Circuit1_Test CUT1 (InA, InB, InC,InD,OutF); 

  initial
   begin

  	InA=0; InB=0; InC=0;
#10	InA=0; InB=0; InC=1;
#10	InA=0; InB=1; InC=0;
#10	InA=0; InB=1; InC=1;
#10	InA=1; InB=0; InC=0;
#10	InA=1; InB=0; InC=1;
#10	InA=1; InB=1; InC=0;
#10	InA=1; InB=1; InC=1;
#10	$stop;
end

initial $monitor ($time,  ,"InA=%b, InB=%b, InC=%b,InD=%b,OutF=%b", InA, InB, InC, InD, OutF); 
endmodule

