module Circuit1_Test;

  reg InA,InB,InC,InD;
  wire OutF;

  Circuit1 CUT1 (.F(OutF),.A(InA),.B(InB),.C(InC),.D(InD));

  initial
   begin

  	InA=0; InB=0; InC=0 InD=0;
#10	InA=0; InB=0; InC=0 InD=1;
#10	InA=0; InB=0; InC=1 InD=0; 
#10	InA=0; InB=0; InC=1 InD=1;
#10	InA=0; InB=0; InC=;
#10	InA=0; InB=0; InC=0;
#10	InA=0; InB=0; InC=0;
#10	InA=0; InB=0; InC=0;
#10	$stop;
end

initial $monitor ($time,  ,"InA=%b, InB=%b, InC=%b,InD=%b,OutF=%b", InA, InB, InC, InD, OutF); 
endmodule

