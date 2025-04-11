module file_1_1_tb  ; 

parameter N  = 8 ; 
  wire  [N-1:0]  sel   ; 
  reg  [N-1:0]  ready_urgent   ; 
  reg  [N-1:0]  ready   ; 
  wire    sel_valid_urgent   ; 
  wire    sel_valid   ; 
  file_1_1    #( N  )
   DUT  ( 
       .sel (sel ) ,
      .ready_urgent (ready_urgent ) ,
      .ready (ready ) ,
      .sel_valid_urgent (sel_valid_urgent ) ,
      .sel_valid (sel_valid ) ); 
      
      
      initial begin
    ready = 8'b00000000;
    ready_urgent = 8'b00000000;
    #20
   ready = 8'b00000001;
    ready_urgent = 8'b00000001;
    #20
    ready = 8'b00000010;
    ready_urgent = 8'b00000010;
    #20
   ready = 8'b00000100;
    ready_urgent = 8'b00000100;
    #20
   ready = 8'b00111000;
    ready_urgent = 8'b00001000;
    #20
   ready = 8'b00111000;
    ready_urgent = 8'b00000000;
    #20
   ready = 8'b00111000;
    ready_urgent = 8'b00001000;
 end   

endmodule

