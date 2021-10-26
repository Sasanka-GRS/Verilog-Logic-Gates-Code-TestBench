module orCircuit(a,b,c,d,e,f,g,h,i,in1,in2,in3,in4,t,n,r,k,m);

    input a,b,c,d,e,f,g,h,i,in1,in2,in3,in4;
    output t,k,m,n,r;

    wire j,k1,l,m1,n1,o,p,q,r1,s;

    not(j,a);
    nand(k,c,d);
    or(k1,k,in3);
    xnor(l,e,f);
    xor(m,g,h,i);
    or(m1,m,in4);
    and(n,j,b);
    or(n1,n,in1);
    or(o,b,m1);
    nand(p,l,m1);
    and(q,n1,o,p);
    and(r,k1,o,p);
    or(r1,r,in2);
    xor(s,q,r1);
    or(t,n1,s,r1);

endmodule