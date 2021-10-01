module fa (input wire i0, i1, cin, output wire sum, cout);
   wire t0, t1, t2;
   xor3 _i0 (               );
   and2 _i1 (               );
   and2 _i2 (               );
   and2 _i3 (               );
   or3 _i4 (            );
endmodule



module addsub (input wire addsub, i0, i1, cin, output wire sumdiff, cout);
  wire t;
  fa _i0 (                  );
  xor2 _i1 (                );
endmodule



module alu_slice (input wire [1:0] op, input wire i0, i1, cin, output wire o, cout);
   wire t_sumdiff, t_and, t_or, t_andor;
   addsub _i0 (                          );
 



  and2 _i1 (            );
   or2 _i2 (             );
   mux2 _i3 (            );
   mux2 _i4 (            );
endmodule

module alu (input wire [1:0] op, input wire [15:0] i0, i1,
    output wire [15:0] o, output wire cout);
   wire	[14:0] c;
   alu_slice _i0 (op, i0[0], i1[0], op[0] , o[0], c[0]);
   alu_slice _i1 (                                 );
   alu_slice _i2 (                                  );
   alu_slice _i3 (                                   );
   alu_slice _i4 (                                   );
   alu_slice _i5 (                                    );
   alu_slice _i6 (                                    );
   alu_slice _i7 (                                    );
   alu_slice _i8 (                                    );
   alu_slice _i9 (                                    );
   alu_slice _i10 (                                   );
   alu_slice _i11 (                                   );
   alu_slice _i12 (                                   );
   alu_slice _i13 (                                   );
   alu_slice _i14 (                                   );
   alu_slice _i15 (                                    );
endmodule
