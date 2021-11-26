module testcla4;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] S;
    wire Cout;
    cla4 uut (
    .S(S), 
    .Cout(Cout), 
    .A(A), 
    .B(B), 
    .Cin(Cin)
    );
    initial begin
    A = 0;  B = 0;  Cin = 0;
    #10;  
    A=4'b0001;B=4'b0000;Cin=1'b0;
    #10 A=4'b100;B=4'b0011;Cin=1'b0;
    #10 A=4'b1101;B=4'b1010;Cin=1'b1;
    #10 A=4'b1110;B=4'b1001;Cin=1'b0;
    #10 A=4'b1111;B=4'b1010;Cin=1'b0;
    end 
 
    initial begin
 $monitor("time=",$time,, "A=%b B=%b Cin=%b : Sum=%b Cout=%b",A,B,Cin,S,Cout);
    end      
endmodule
