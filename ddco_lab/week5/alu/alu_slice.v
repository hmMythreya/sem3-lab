module alu_slice(input wire[1:0] op,input wire i0,i1,cin,output wire cout,o);
wire t_addsub,t_andor;
addsub a1(op[0],i0,i1,cin,t_addsub,cout);
mux2 andor(i0&i1,i0|i1,op[0],t_andor);
mux2 out(t_andor,t_andsub,op[1],o);
endmodule
