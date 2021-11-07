module testboolend83;
reg D0,D1,D2,D3,D4,D5,D6,D7;
wire Y2,Y1,Y0;

boolencd83 CUT1(D0,D1,D2,D3,D4,D5,D6,D7,Y2,Y1,Y0);

initial
begin
D0 = 1;
D1 = 0;
D2 = 0;
D3 = 0;
D4 = 0;
D5 = 0;
D6 = 0;
D7 = 0;
#100;  
#100;D0 = 0;D1 = 1;D2 = 0;D3 = 0;D4 = 0;D5 = 0;D6 = 0;D7 = 0;
#100;D0 = 0;D1 = 0;D2 = 1;D3 = 0;D4 = 0;D5 = 0;D6 = 0;D7 = 0;
#100;D0 = 0;D1 = 0;D2 = 0;D3 = 1;D4 = 0;D5 = 0;D6 = 0;D7 = 0;
#100;D0 = 0;D1 = 0;D2 = 0;D3 = 0;D4 = 1;D5 = 0;D6 = 0;D7 = 0;
#100;D0 = 0;D1 = 0;D2 = 0;D3 = 0;D4 = 0;D5 = 1;D6 = 0;D7 = 0;
#100;D0 = 0;D1 = 0;D2 = 0;D3 = 0;D4 = 0;D5 = 0;D6 = 1;D7 = 0;
#100;D0 = 0;D1 = 0;D2 = 0;D3 = 0;D4 = 0;D5 = 0;D6 = 0;D7 = 1;
#100 $stop;
end
initial $monitor($time ,  , "D0 = %b,D1=%b,D2=%b,D3=%b,D4=%b,D5=%b,D6=%b,D7=%b,Y2=%b,Y1=%b,Y0=%b",D0,D1,D2,D3,D4,D5,D6,D7,Y2,Y1,Y0);

endmodule

