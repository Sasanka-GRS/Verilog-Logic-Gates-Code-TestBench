`timescale 1ps/1ps
module test();

    reg a,b,c,d,e,f,g,h,i;
    wire t;

    basicCircuit uut(.a(a),.b(b),.c(c),.d(d),.e(e),.f(f),.g(g),.h(h),.i(i),.t(t));

    initial begin
		$dumpfile("basicCircuit.vcd");
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
    $display("%b",t);

endmodule