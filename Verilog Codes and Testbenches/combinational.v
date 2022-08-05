module basicCircuit(a,b,c,d,e,f,g,h,i,t);

    input a,b,c,d,e,f,g,h,i;
    output t;

    wire j,k,l,m,n,o,p,q,r,s;

    not(j,a);
    nand(k,c,d);
    xnor(l,e,f);
    xor(m,g,h,i);
    and(n,j,b);
    or(o,b,m);
    nand(p,l,m);
    and(q,n,o,p);
    and(r,k,o,p);
    xor(s,q,r);
    or(t,n,s,r);

endmodule