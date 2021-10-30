module Circuit2B_Test;

  reg InA,InB,InC,InD,InE;
  wire OutF,OutG;

  Circuit2B CUT1 (InA, InB, InC,InD,InE,OutF,OutG); 

  initial
   begin

  	InA=0; InB=0; InC=0; InD=0; InE=0;
#10	InA=0; InB=0; InC=0; InD=0; InE=1;
#10	InA=0; InB=0; InC=0; InD=1; InE=0;
#10	InA=0; InB=0; InC=0; InD=1; InE=1; 
#10	InA=0; InB=0; InC=1; InD=0; InE=0;
#10	InA=0; InB=0; InC=1; InD=0; InE=1;
#10	InA=0; InB=1; InC=1; InD=1; InE=0;
#10	InA=0; InB=1; InC=1; InD=1; InE=1;
#10	InA=0; InB=1; InC=0; InD=0; InE=0;
#10	InA=0; InB=1; InC=0; InD=0; InE=1;
#10	InA=0; InB=1; InC=0; InD=1; InE=0;
#10	InA=0; InB=1; InC=0; InD=1;InE=1;
#10	InA=0; InB=1; InC=1; InD=0; InE=0;
#10	InA=0; InB=1; InC=1; InD=0; InE=1;
#10	InA=0; InB=1; InC=1; InD=1; InE=0;
#10	InA=0; InB=1; InC=1; InD=1; InE=1;
#10	InA=1; InB=0; InC=0; InD=0; InE=0;
#10	InA=1; InB=0; InC=0; InD=0; InE=1;
#10	InA=1; InB=0; InC=0; InD=1; InE=0;
#10	InA=1; InB=0; InC=0; InD=1; InE=1;
#10	InA=1; InB=0; InC=1; InD=0; InE=0;
#10	InA=1; InB=0; InC=1; InD=0; InE=1;
#10	InA=1; InB=0; InC=1; InD=1; InE=0;
#10	InA=1; InB=0; InC=1; InD=1; InE=1;
#10	InA=1; InB=1; InC=0; InD=0; InE=0;
#10	InA=1; InB=1; InC=0; InD=0; InE=1;
#10	InA=1; InB=1; InC=0; InD=1; InE=0;
#10	InA=1; InB=1; InC=0; InD=1; InE=1;
#10	InA=1; InB=1; InC=1; InD=0; InE=0;
#10	InA=1; InB=1; InC=1; InD=0; InE=1;
#10	InA=1; InB=1; InC=1; InD=1; InE=0;
#10	InA=1; InB=1; InC=1; InD=1; InE=1;
end

initial $monitor ($time,  ,"InA=%b, InB=%b, InC=%b,InD=%b,InE=%b,OutF=%b,OutG=%b", InA, InB, InC, InD,InE,OutF,OutG); 
endmodule
