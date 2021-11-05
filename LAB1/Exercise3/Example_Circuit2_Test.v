module Example_Circuit2_Test;

  reg InA, InB, InC;
  wire OutF;

  Example_Circuit2 CUT1 (InA,InB,InC,OutF);

  initial
   begin
         InA=0; InB=0; InC=0;
   # 10  InA=0; InB=0; InC=1;
   # 10  InA=0; InB=1; InC=0;
   # 10  InA=0; InB=1; InC=1;
   # 10  InA=1; InB=0; InC=0;
   # 10  InA=1; InB=0; InC=1;
   # 10  InA=1; InB=1; InC=0;
   # 10  InA=1; InB=1; InC=1;
   # 10  $stop;
   end

   initial $monitor ($time ,  , "InA=%b, InB=%b, InC=%b, OutF=%b", InA, InB, InC, OutF);
   endmodule
