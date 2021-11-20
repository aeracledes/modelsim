module mux21(I0,I1,S0,Y0);
input I0,I1;
input S0;
output Y0;
assign Y0=S0?I1:I0;
endmodule
