`define NO_OF_REQS 15

module router_swarb(Clk,Rst,N_sw_arb_req,N_sw_arb_grant,S_sw_arb_req,S_sw_arb_grant,E_sw_arb_req,E_sw_arb_grant,W_sw_arb_req,W_sw_arb_grant);

input Clk;
input Rst;
input [`NO_OF_REQS-1:0]N_sw_arb_req;
input [`NO_OF_REQS-1:0]S_sw_arb_req;
input [`NO_OF_REQS-1:0]E_sw_arb_req;
input [`NO_OF_REQS-1:0]W_sw_arb_req;

output [`NO_OF_REQS-1:0]N_sw_arb_grant;
output [`NO_OF_REQS-1:0]S_sw_arb_grant;
output [`NO_OF_REQS-1:0]E_sw_arb_grant;
output [`NO_OF_REQS-1:0]W_sw_arb_grant;

reg [`NO_OF_REQS-1:0]N_sw_arb_grant;
reg [`NO_OF_REQS-1:0]S_sw_arb_grant;
reg [`NO_OF_REQS-1:0]E_sw_arb_grant;
reg [`NO_OF_REQS-1:0]W_sw_arb_grant;

integer i;
integer j;
integer k;
integer l;

always @(N_sw_arb_req or Rst)
begin
	if(Rst==0)
	begin
		 N_sw_arb_grant = 15'b000000000000000;
	end

	else
	begin
		
		if(N_sw_arb_req[0] ==1'b1)
			N_sw_arb_grant = 15'b000000000000001;
		else if(N_sw_arb_req[1]==1'b1)
			N_sw_arb_grant= 15'b000000000000010;
		else if(N_sw_arb_req[2]==1'b1)
			N_sw_arb_grant= 15'b000000000000100;
		else if(N_sw_arb_req[3]==1'b1)
			N_sw_arb_grant= 15'b000000000001000;
		else if(N_sw_arb_req[4]==1'b1)
			N_sw_arb_grant= 15'b000000000010000;
		else if(N_sw_arb_req[5]==1'b1)  // Change this for no of VCs
		//	change include 5-9 also if no of VCs=2
			N_sw_arb_grant= 15'b000000000100000;
		else if(N_sw_arb_req[6]==1'b1)
			N_sw_arb_grant= 15'b000000001000000;
		else if(N_sw_arb_req[7]==1'b1)
			N_sw_arb_grant= 15'b000000010000000;
		else if(N_sw_arb_req[8]==1'b1)
			N_sw_arb_grant= 15'b000000100000000;
		else if(N_sw_arb_req[9]==1'b1)
			N_sw_arb_grant= 15'b000001000000000;
		else if(N_sw_arb_req[10]==1'b1)
			N_sw_arb_grant= 15'b000010000000000;
		else if(N_sw_arb_req[11]==1'b1)
			N_sw_arb_grant= 15'b000100000000000;
		else if(N_sw_arb_req[12]==1'b1)
			N_sw_arb_grant= 15'b001000000000000;
		else if(N_sw_arb_req[13]==1'b1)
			N_sw_arb_grant= 15'b010000000000000;
		else if(N_sw_arb_req[14]==1'b1)
			N_sw_arb_grant= 15'b100000000000000;
		else  N_sw_arb_grant = 15'b000000000000000;
	end
end // end of always



always @(S_sw_arb_req or Rst)
begin
	if(Rst==0)
	begin
		 S_sw_arb_grant = 15'b000000000000000;
	end

	else
	begin
		if(S_sw_arb_req[0] ==1'b1)
			S_sw_arb_grant = 15'b000000000000001;
		else if(S_sw_arb_req[1]==1'b1)
			S_sw_arb_grant= 15'b000000000000010;
		else if(S_sw_arb_req[2]==1'b1)
			S_sw_arb_grant= 15'b000000000000100;
		else if(S_sw_arb_req[3]==1'b1)
			S_sw_arb_grant= 15'b000000000001000;
		else if(S_sw_arb_req[4]==1'b1)
			S_sw_arb_grant= 15'b000000000010000;
		else if(S_sw_arb_req[5]==1'b1)  // Change this for no of VCs
		//	change include 5-9 also if no of VCs=2
			S_sw_arb_grant= 15'b000000000100000;
		else if(S_sw_arb_req[6]==1'b1)
			S_sw_arb_grant= 15'b000000001000000;
		else if(S_sw_arb_req[7]==1'b1)
			S_sw_arb_grant= 15'b000000010000000;
		else if(S_sw_arb_req[8]==1'b1)
			S_sw_arb_grant= 15'b000000100000000;
		else if(S_sw_arb_req[9]==1'b1)
			S_sw_arb_grant= 15'b000001000000000;
		else if(S_sw_arb_req[10]==1'b1)
			S_sw_arb_grant= 15'b000010000000000;
		else if(S_sw_arb_req[11]==1'b1)
			S_sw_arb_grant= 15'b000100000000000;
		else if(S_sw_arb_req[12]==1'b1)
			S_sw_arb_grant= 15'b001000000000000;
		else if(S_sw_arb_req[13]==1'b1)
			S_sw_arb_grant= 15'b010000000000000;
		else if(S_sw_arb_req[14]==1'b1)
			S_sw_arb_grant= 15'b100000000000000;
		else  S_sw_arb_grant = 15'b000000000000000;

	end
end // end of always



always @( E_sw_arb_req or Rst)
begin
	if(Rst==0)
	begin
		 E_sw_arb_grant = 15'b000000000000000;
	end

	else
	begin
	if(E_sw_arb_req[0] ==1'b1)
			E_sw_arb_grant = 15'b000000000000001;
		else if(E_sw_arb_req[1]==1'b1)
			E_sw_arb_grant= 15'b000000000000010;
		else if(E_sw_arb_req[2]==1'b1)
			E_sw_arb_grant= 15'b000000000000100;
		else if(E_sw_arb_req[3]==1'b1)
			E_sw_arb_grant= 15'b000000000001000;
		else if(E_sw_arb_req[4]==1'b1)
			E_sw_arb_grant= 15'b000000000010000;
		else if(E_sw_arb_req[5]==1'b1)  // Change this for no of VCs
		//	change include 5-9 also if no of VCs=2
			E_sw_arb_grant= 15'b000000000100000;
		else if(E_sw_arb_req[6]==1'b1)
			E_sw_arb_grant= 15'b000000001000000;
		else if(E_sw_arb_req[7]==1'b1)
			E_sw_arb_grant= 15'b000000010000000;
		else if(E_sw_arb_req[8]==1'b1)
			E_sw_arb_grant= 15'b000000100000000;
		else if(E_sw_arb_req[9]==1'b1)
			E_sw_arb_grant= 15'b000001000000000;
		else if(E_sw_arb_req[10]==1'b1)
			E_sw_arb_grant= 15'b000010000000000;
		else if(E_sw_arb_req[11]==1'b1)
			E_sw_arb_grant= 15'b000100000000000;
		else if(E_sw_arb_req[12]==1'b1)
			E_sw_arb_grant= 15'b001000000000000;
		else if(E_sw_arb_req[13]==1'b1)
			E_sw_arb_grant= 15'b010000000000000;
		else if(E_sw_arb_req[14]==1'b1)
			E_sw_arb_grant= 15'b100000000000000;
		else  E_sw_arb_grant = 15'b000000000000000;
	end
end // end of always


always @(W_sw_arb_req or Rst)
begin
	if(Rst==0)
	begin

		 W_sw_arb_grant= 15'b000000000000000;
	end

	else
	begin
	if(W_sw_arb_req[0] ==1'b1)
			W_sw_arb_grant = 15'b000000000000001;
		else if(W_sw_arb_req[1]==1'b1)
			W_sw_arb_grant= 15'b000000000000010;
		else if(W_sw_arb_req[2]==1'b1)
			W_sw_arb_grant= 15'b000000000000100;
		else if(W_sw_arb_req[3]==1'b1)
			W_sw_arb_grant= 15'b000000000001000;
		else if(W_sw_arb_req[4]==1'b1)
			W_sw_arb_grant= 15'b000000000010000;
		else if(W_sw_arb_req[5]==1'b1)  // Change this for no of VCs
		//	change include 5-9 also if no of VCs=2
			W_sw_arb_grant= 15'b000000000100000;
		else if(W_sw_arb_req[6]==1'b1)
			W_sw_arb_grant= 15'b000000001000000;
		else if(W_sw_arb_req[7]==1'b1)
			W_sw_arb_grant= 15'b000000010000000;
		else if(W_sw_arb_req[8]==1'b1)
			W_sw_arb_grant= 15'b000000100000000;
		else if(W_sw_arb_req[9]==1'b1)
			W_sw_arb_grant= 15'b000001000000000;
		else if(W_sw_arb_req[10]==1'b1)
			W_sw_arb_grant= 15'b000010000000000;
		else if(W_sw_arb_req[11]==1'b1)
			W_sw_arb_grant= 15'b000100000000000;
		else if(W_sw_arb_req[12]==1'b1)
			W_sw_arb_grant= 15'b001000000000000;
		else if(W_sw_arb_req[13]==1'b1)
			W_sw_arb_grant= 15'b010000000000000;
		else if(W_sw_arb_req[14]==1'b1)
			W_sw_arb_grant= 15'b100000000000000;
		else  W_sw_arb_grant = 15'b000000000000000;
	
	end
end // end of always


endmodule





		
		
		

