module Circuit2_Test;

  reg InA,InB,InC,InD,InE;
  wire OutF,OutG;

  Circuit2_Test CUT1 (InA, InB, InC,InD,InE,OutF,OutG); 

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

initial $monitor ($time,  ,"InA=%b, InB=%b, InC=%b,InD=%b,InE=%b,OutF=%b,OutG=%b", InA, InB, InC, InD,InE,OutF,OutG); 
endmodule
