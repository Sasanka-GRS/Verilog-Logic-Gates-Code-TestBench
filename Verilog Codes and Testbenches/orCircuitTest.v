`timescale 1ps/1ps
module test();

    reg a,b,c,d,e,f,g,h,i,in1,in2,in3,in4;
    wire t,n,k,r,m;

    orCircuit uut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.i(i),.in1(in1),.in2(in2),.in3(in3),.in4(in4),.t(t),.n(n),.r(r),.k(k),.m(m));

    initial begin
		$dumpfile("orCircuit.vcd");
     	$dumpvars(0,test);

		// Initialize Inputs
		a = 1'b0;
		b = 1'b0;
        c = 1'b0;
        d = 1'b0;
        e = 1'b0;
        f = 1'b0;
        g = 1'b0;
        h = 1'b0;
        i = 1'b0;

        //Change these for control pin inputs
        in1 = 1'b0;
        in2 = 1'b0;
        in3 = 1'b0;
        in4 = 1'b0;

		#2565 $finish;//global reset
	end

    //Generating all possible 64 combinations
	always #5 a=~a;
	always #10 b=~b;
    always #20 c=~c;
    always #40 d=~d;
    always #80 e=~e;
    always #160 f=~f;
    always #320 g=~g;
    always #640 h=~h;
    always #1280 i=~i;

    //printing values for each new test vector
	always #5
    $display("t=%b n=%b r=%b k=%b m=%b",t,n,r,k,m);

endmodule