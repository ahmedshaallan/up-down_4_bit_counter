module counter (Clck,S,Q0_wire,Q1_wire,Q2_wire,Q3_wire,reset) ;
output wire Q0_wire ; 
output wire Q1_wire ; 
output wire Q2_wire ; 
output wire Q3_wire ;
wire mux_oW1 ; 
wire mux_oW2 ; 
wire mux_oW3 ; 
input wire Clck ; 
input wire S; 
input wire reset; 

T_FF T0 (
    .Q(Q0_wire),
    .T(1'b1),
    .Clck(Clck),
    .reset(reset)
);

T_FF T1 (
    .Q(Q1_wire),
    .T(mux_oW1),
    .Clck(Clck),
    .reset(reset)
);

T_FF T2 (
    .Q(Q2_wire),
    .T(mux_oW2),
    .Clck(Clck),
    .reset(reset)
);

T_FF T3 (
    .Q(Q3_wire),
    .T(mux_oW3),
    .Clck(Clck),
    .reset(reset)
);

mux2_1 M1 (
    .S(S),
    .A(Q0_wire),
    .B(~Q0_wire),
    .F(mux_oW1)
);

mux2_1 M2 (
    .S(S),
    .A(Q0_wire & Q1_wire),
    .B( ~Q0_wire & ~Q1_wire),
    .F(mux_oW2)
);

mux2_1 M3 (
    .S(S),
    .A(Q0_wire & Q1_wire & Q2_wire),
    .B( ~Q0_wire & ~Q1_wire & ~Q2_wire),
    .F(mux_oW3)
);






endmodule 