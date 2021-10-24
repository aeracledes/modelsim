module Example_Circuit_Test;

  reg InA,InB,InC,InD;
  wire OutF, OutG;

  Example_Circuit CUT1 (.F(OutF),.G(OutG),.A(InA),.B(InB),.C(InC),.D(InD));

  initial
   begin

        InA=0; InB=0; InC=0; InD=0;
#10     InA=0; InB=0; InC=0; InD=1;
#10     InA=0; InB=0; InC=1; InD=0;
#10     InA=0; InB=0; InC=1; InD=1;
#10     InA=0; InB=1; InC=0; InD=0;
#10     InA=0; InB=1; InC=0; InD=1;
#10     InA=0; InB=1; InC=1; InD=0;
#10     InA=0; InB=1; InC=1; InD=1;
#10     InA=1; InB=0; InC=0; InD=0;
#10     InA=1; InB=0; InC=0; InD=1;
#10     InA=1; InB=0; InC=1; InD=0;
#10     InA=1; InB=0; InC=1; InD=1;
#10     InA=1; InB=1; InC=0; InD=0;
#10     InA=1; InB=1; InC=0; InD=1;
#10     InA=1; InB=1; InC=1; InD=0;
#10     InA=1; InB=1; InC=1; InD=1;
#10     $stop;
end

initial $monitor ($time,  ,"InA=%b, InB=%b, InC=%b,InD=%b,OutF=%b OutG=%b ", InA, InB, InC, InD, OutF, OutG);
endmodule

