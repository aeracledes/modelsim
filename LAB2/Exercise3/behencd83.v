module behenc83	(D,Y2,Y1,Y0);
input [0:7] D;
output reg Y2,Y1,Y0;
always @(D)
begin
	case(D)
		8'b10000000:{Y0,Y1,Y2} = 3'b000;
		8'b01000000:{Y0,Y1,Y2} = 3'b001;
		8'b00100000:{Y0,Y1,Y2} = 3'b010;
		8'b00010000:{Y0,Y1,Y2} = 3'b011;
		8'b00001000:{Y0,Y1,Y2} = 3'b100;
		8'b00000100:{Y0,Y1,Y2} = 3'b101;
		8'b00000010:{Y0,Y1,Y2} = 3'b110;
		8'b00000001:{Y0,Y1,Y2} = 3'b111;
		default : {Y0,Y1,Y2} = 3'b111;
	endcase
end
endmodule

















