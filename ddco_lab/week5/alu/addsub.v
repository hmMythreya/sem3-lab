module addsub(input wire addsub,i1,i2,cin,output wire o1,cout);
wire t;
xor x1(t,i1,addsub);
fulladder fa(i2,t,cin,o1,cout);
endmodule
