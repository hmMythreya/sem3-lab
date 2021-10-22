module fa(A,B,Ci,S,Co);
   input A,B,Ci;
   output S,Co;
   wire w1,w2,w3,w4,w5;
   xor G1(w1,A,B);
   xor G2(S,Ci,w1);
   and G3(w2,A,B);
   and G4(w3,B,Ci);
   and G5(w4,Ci,A);
   or G6(w5,w2,w3);
   or G7(Co,w5,w4);
endmodule

module addsub (input wire addsub, i0, i1, cin, output wire sumdiff, cout);
  wire t;
  xor2 x1(addsub,i0,t);
  fa f0(i1,t,cin,sumdiff,cout);
endmodule

module alu_slice (input wire [1:0] op, input wire i0, i1, cin, output wire o, cout);
   wire t_addsub,t_andor;
   addsub a1(op[0],i0,i1,cin,t_addsub,cout);
   mux2 andor(i0&i1,i0|i1,op[0],t_andor);
   mux2 out(t_andor,t_andsub,op[1],o);
endmodule

module alu (input wire [1:0] op, input wire [15:0] i0, i1,
output wire [15:0] o, output wire cout);
   wire[14:0] c;
   alu_slice a1(op,i0[0],i1[0],op[0],c[0],o[0]);
   alu_slice a2(op,i0[1],i1[1],op[1],c[1],o[1]);
   alu_slice a3(op,i0[2],i1[2],op[2],c[2],o[2]);
   alu_slice a4(op,i0[3],i1[3],op[3],c[3],o[3]);
   alu_slice a5(op,i0[4],i1[4],op[4],c[4],o[4]);
   alu_slice a6(op,i0[5],i1[5],op[5],c[5],o[5]);
   alu_slice a7(op,i0[6],i1[6],op[6],c[6],o[6]);
   alu_slice a8(op,i0[7],i1[7],op[7],c[7],o[7]);
   alu_slice a9(op,i0[8],i1[8],op[8],c[8],o[8]);
   alu_slice a10(op,i0[9],i1[9],op[9],c[9],o[9]);
   alu_slice a11(op,i0[10],i1[10],op[10],c[10],o[10]);
   alu_slice a12(op,i0[11],i1[11],op[11],c[11],o[11]);
   alu_slice a13(op,i0[12],i1[12],op[12],c[12],o[12]);
   alu_slice a14(op,i0[13],i1[13],op[13],c[13],o[13]);
   alu_slice a15(op,i0[14],i1[14],op[14],c[14],o[14]);
   alu_slice a16(op,i0[15],i1[15],op[15],cout,o[15]);
endmodule