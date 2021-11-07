module mux81(input A0, A1, A2, A3, A4, A5, A6, A7, S0, S1, S2, output out);
wire T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11;
not(T1, S0);
not(T2, S1);
not(T3, S2);
and(T4, A0, T1, T2, T3), (T5, A1, S0, T2, T3);
and(T6, A2, T1, S1, T3), (T7, A3, S0, S1, T3);
and(T8, A4, T1, T2, S2), (T9, A5, S0, T2, S2);
and(T10, A6, T1, S1, S2), (T11, A7, S0, S1, S2);
or(out, T4, T5, T6, T7, T8, T9, T10, T11);
endmodule
