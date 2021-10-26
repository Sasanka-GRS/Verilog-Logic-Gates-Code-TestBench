primitive mux (y, a, b, sel);
  output y;
  input a, b, sel;
  table
    // a  b  sel  :  y
       0  ?   0   :  0;
       1  ?   0   :  1;
       ?  0   1   :  0;
       ?  1   1   :  1;
  endtable
endprimitive

module allCircuit(a,b,c,d,e,f,g,h,i,in1,in2,in3,in4,in5,in6,t,n,r,k,m);

    input a,b,c,d,e,f,g,h,i,in1,in2,in3,in4,in5,in6;
    output t,k,m,n,r;

    wire j,k3,l,m3,m1,n3,o,p,q,r3,s;

    not(j,a);
    nand(k,c,d);
    mux(k3,k,in1,in2);
    xnor(l,e,f);
    xor(m,g,h,i);
    or(m1,m,in3);
    and(m3,m1,in4);
    and(n,j,b);
    or(n3,n,in5);
    or(o,b,m3);
    nand(p,l,m3);
    and(q,n3,o,p);
    and(r,k3,o,p);
    and(r3,r,in6);
    xor(s,q,r3);
    or(t,n3,s,r3);

endmodule