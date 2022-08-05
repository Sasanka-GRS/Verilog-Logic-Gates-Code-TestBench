module andOrCircuit(a,b,c,d,e,f,g,h,i,in1,in2,in3,in4,in5,in6,in7,in8,t,n,r,k,m);

    input a,b,c,d,e,f,g,h,i,in1,in2,in3,in4,in5,in6,in7,in8;
    output t,k,m,n,r;

    wire j,k1,k2,l,m1,m2,n1,n2,o,p,q,r1,r2,s;

    not(j,a);
    nand(k,c,d);
    or(k1,k,in7);
    and(k2,k1,in3);
    xnor(l,e,f);
    xor(m,g,h,i);
    or(m1,m,in8);
    and(m2,m1,in4);
    and(n,j,b);
    or(n1,n,in5);
    and(n2,n1,in1);
    or(o,b,m2);
    nand(p,l,m2);
    and(q,n2,o,p);
    and(r,k2,o,p);
    or(r1,r,in6);
    and(r2,r1,in2);
    xor(s,q,r2);
    or(t,n2,s,r2);

endmodule