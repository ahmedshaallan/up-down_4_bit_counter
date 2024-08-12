module T_FF (T,Q,Clck,reset);
input wire T ;
input wire reset ;
input wire Clck ;
output reg Q ;
always @(negedge Clck or posedge reset ) begin
    if(reset)
    begin
        Q <= 0 ;
    end
    else
    begin
    if(T) begin
        Q <= ~ Q ;
    end
    else begin
        Q <= Q ;
    end
    end
end
    

    
endmodule