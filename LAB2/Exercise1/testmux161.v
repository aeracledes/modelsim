module testmux161;
wire DataOut;
reg DataArray [15:0],Select [3:0];
var i;
Mux16to1 CUT1(*);


for (i=0;i<=15;i+=1;)
	always #i DataArray[i] = ~DataArray[i];
always @(DataArray or Select)
$monitor(At time = "%t", Output = "%d",$time,DataOut);
endmodule;
