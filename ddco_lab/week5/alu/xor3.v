module xor3(a,b,c,y);
input a,b,c;
output y;
wire w1;
xor x1(w1,a,b);
xor x2(y,w1,c);
endmodule
