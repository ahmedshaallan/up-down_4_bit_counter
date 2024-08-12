module mux2_1 (S , A , B , F);
input wire S ;
input wire A ;
input wire B ;
output wire F;
assign F =( ~S & A  ) | (S  & B) ;

    
endmodule