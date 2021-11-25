module testbehenc83;
reg [0:7] D;
wire Y0,Y1,Y2;

behenc83 CUT1(D,Y2,Y1,Y0);

initial
begin
	D = 8'b10000000;
#10	D = 8'b01000000;
#10	D = 8'b00100000;
#10	D = 8'b00010000;
#10	D = 8'b00001000;
#10	D = 8'b00000100;
#10	D = 8'b00000010;
#10	D = 8'b00000001;
end
endmodule
