module mux81(I,S,Y);
input[7:0]I;
input[2:0]S;
output Y;
wire[5:0]mux_Y0;
mux21 CUT1(.I0(I[0]),.I1(I[1]),.S0(S[0]),.Y0(mux_Y0[0]));
mux21 CUT2(.I0(I[2]),.I1(I[3]),.S0(S[0]),.Y0(mux_Y0[1]));
mux21 CUT3(.I0(I[4]),.I1(I[5]),.S0(S[0]),.Y0(mux_Y0[2]));
mux21 CUT4(.I0(I[6]),.I1(I[7]),.S0(S[0]),.Y0(mux_Y0[3]));
mux21 CUT5(.I0(mux_Y0[0]),.I1(mux_Y0[1]),.S0(S[1]),.Y0(mux_Y0[4]));
mux21 CUT6(.I0(mux_Y0[2]),.I1(mux_Y0[3]),.S0(S[1]),.Y0(mux_Y0[5]));
mux21 CUT7(.I0(mux_Y0[4]),.I1(mux_Y0[5]),.S0(S[2]),.Y0(Y));
endmodule
