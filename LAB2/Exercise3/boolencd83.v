module boolencd83(D0,D1,D2,D3,D4,D5,D6,D7,Y2,Y1,Y0);

input D0,D1,D2,D3,D4,D5,D6,D7;
output Y2,Y1,Y0;

assign Y2 = D7|D6|D5|D4;
assign Y1 = D7|D6|D3|D2;
assign Y0 = D7|D5|D3|D1;
endmodule
