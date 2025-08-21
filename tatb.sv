`protect
/*
 * P1 testbench
 * Ford Seidel (fseidel)
 * 2018-08-30
 */

module tatb
  (input  logic       ck, done, reset_l, Button0,
   output logic [7:0] valueToinA,
                      tbSum,
   output logic       go_l,
                      L0,
   input  logic [7:0] outResult);

  logic [1:0] Button0_sync;
  
  //LFSR must be larger than output size since we need to generate 0 value
  logic [8:0] LFSR;
  assign valueToinA = LFSR[7:0];
  
  enum logic [1:0] {WAIT, RUN, DONE} state, nextState;

  assign L0  = (state == DONE && tbSum == outResult);
  assign go_l = ~(state == WAIT && nextState == RUN);
  
  always_ff @(posedge ck, negedge reset_l) begin
    if(~reset_l) begin
      tbSum 	   <= 8'h00;
      state 	   <= WAIT;
      LFSR 	   <= 9'h001;
      Button0_sync <= 2'b11;
    end
    else begin
      state 	      <= nextState;
      Button0_sync[0] <= Button0;
      Button0_sync[1] <= Button0_sync[0];
      //polynomial courtesy of Wikipedia (which cited Phil Koopman)
      LFSR 	      <= {LFSR[7:0], LFSR[8]^LFSR[4]};
      if(nextState == RUN)
        tbSum <= tbSum + valueToinA;
      else if(state == WAIT)
        tbSum <= 8'h00;
    end
  end

  always_comb begin
    nextState = WAIT;
    casex(state)
      WAIT:
        nextState = (Button0_sync[1]) ? WAIT : RUN;
      RUN:
        nextState = (done) ? DONE : RUN;
      DONE:
        nextState = (Button0_sync[1]) ? WAIT : DONE; 
    endcase
  end
endmodule: tatb
`endprotect
