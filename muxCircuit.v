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

module muxCircuit(a,b,c,d,e,f,g,h,i,in1,in2,in3,in4,in5,in6,in7,in8,t,n,r,k,m);

    input a,b,c,d,e,f,g,h,i,in1,in2,in3,in4,in5,in6,in7,in8;
    output t,k,m,n,r;

    wire j,k2,l,m2,n2,o,p,q,r2,s;

    not(j,a);
    nand(k,c,d);
    mux(k2,k,in3,in7);
    xnor(l,e,f);
    xor(m,g,h,i);
    mux(m2,m,in4,in8);
    and(n,j,b);
    mux(n2,n,in1,in5);
    or(o,b,m2);
    nand(p,l,m2);
    and(q,n2,o,p);
    and(r,k2,o,p);
    mux(r2,r,in2,in6);
    xor(s,q,r2);
    or(t,n2,s,r2);

endmodule