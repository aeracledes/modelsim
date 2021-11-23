module behenc83(D7,D6,D5,D4,D3,D2,D1,D0,Y2,Y1,Y0);

input D7,D6,D5,D4,D3,D2,D1,D0;
output reg Y2,Y1,Y0;

always @(*)
	if((D7|D6|D5|D4) = 1'b1)
		Y2 = 1'b1;
	else
		Y2 = 1'b0;
	if((D7|D6|D3|D2) = 1'b1)
		Y1 = 1'b1;
	else 
		Y1 = 1'b0;
	if((D7|D5|D3|D1) = 1'b1)
		Y0 = 1'b1;
	else 
		Y0 = 1'b0;
endmodule
