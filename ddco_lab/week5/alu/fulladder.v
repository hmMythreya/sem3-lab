module fulladder(A,B,Ci,S,Co);
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

