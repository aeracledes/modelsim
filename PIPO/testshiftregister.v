module testshiftregister #(parameter n =3);
	reg clk,in,shift;
	reg [n-1:0] D;
	wire [n-1:0] Q;
	shiftregister CUT1(clk,in,shift,D,Q);
	initial begin : clk_initialize
		clk = 0;
	end
	always begin : clk_generate
		#10 clk = ~clk;
		end

initial
begin 
	D =3'b0; in = 1'b0;  shift = 1'b0;
#10 D=3'b1;  in = 1'b1;  shift = 1'b0;
#10 D=3'b11; in = 1'b1; shift = 1'b1;
#10 D=3'b111; in = 1'b0; shift = 1'b0;
#10 D=3'b101; in = 1'b0; shift = 1'b1;
#10 $stop;
end
endmodule