module rca(input wire[3:0] a,b,input wire cin,output wire[3:0] sum,output wire cout);
output wire[2:0] c;
fulladder u0(a[0],b[0],cin,sum[0],cin);
fulladder u1(a[1],b[1],c[0],sum[1],c[1]);
fulladder u2(a[2],b[2],c[1],sum[2],c[2]);
fulladder u3(a[3],b[3],c[2],sum[3],cout);
endmodule

