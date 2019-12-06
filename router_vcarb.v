`define NO_OF_REQS 15

module router_vcarb(Rst,Port_vc0_arb_req,Port_vc1_arb_req,Port_vc0_arb_grant,Port_vc1_arb_grant,Port_vc0_usage,Port_vc1_usage);


input Rst;
input [`NO_OF_REQS-1:0]Port_vc0_arb_req;
input [`NO_OF_REQS-1:0]Port_vc1_arb_req;
//input [`NO_OF_REQS-1:0]Port_vc2_arb_req;

output Port_vc0_usage;
output Port_vc1_usage;

output [`NO_OF_REQS-1:0]Port_vc0_arb_grant;
output [`NO_OF_REQS-1:0]Port_vc1_arb_grant;
//output [`NO_OF_REQS-1:0]Port_vc2_arb_grant; 

reg [`NO_OF_REQS-1:0]Port_vc0_arb_grant;
reg [`NO_OF_REQS-1:0]Port_vc1_arb_grant;
//reg [`NO_OF_REQS-1:0]Port_vc2_arb_grant; 

reg Port_vc0_usage_temp;
reg Port_vc1_usage_temp;

integer i;
integer j;
integer k;

assign Port_vc0_usage = Port_vc0_usage_temp;
assign Port_vc1_usage = Port_vc1_usage_temp;

always @(Port_vc0_arb_req or Rst)
begin
	if(Rst==0)
	begin
		Port_vc0_usage_temp = 1'b0;
		Port_vc0_arb_grant = 15'b000000000000000;	
	end

	else 
	begin
		if(Port_vc0_arb_req[0] ==1'b1)
		begin
			Port_vc0_arb_grant = 15'b000000000000001;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[1]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000000000000010;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[2]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000000000000100;
			Port_vc0_usage_temp = 1'b1;
		end
			
		else if(Port_vc0_arb_req[3]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000000000001000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[4]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000000000010000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[5]==1'b1)  // Change this for no of VCs
		//	change include 5-9 also if no of VCs=2
		begin
			Port_vc0_arb_grant= 15'b000000000100000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[6]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000000001000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[7]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000000010000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[8]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000000100000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[9]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000001000000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[10]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000010000000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[11]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b000100000000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[12]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b001000000000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[13]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b010000000000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else if(Port_vc0_arb_req[14]==1'b1)
		begin
			Port_vc0_arb_grant= 15'b100000000000000;
			Port_vc0_usage_temp = 1'b1;
		end
		else 
		begin
			Port_vc0_arb_grant = 15'b000000000000000;
			Port_vc0_usage_temp = 1'b0;
		end
	end
end

always @(Port_vc1_arb_req or Rst)
begin
	if(Rst==0)
	begin
		Port_vc1_usage_temp = 1'b0;
		Port_vc1_arb_grant = 15'b000000000000000;	
	end

	else
	begin
		if(Port_vc1_arb_req[0] ==1'b1)
		begin
			Port_vc1_arb_grant = 15'b000000000000001;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[1]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000000000000010;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[2]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000000000000100;
			Port_vc1_usage_temp = 1'b1;
		end
			
		else if(Port_vc1_arb_req[3]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000000000001000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[4]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000000000010000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[5]==1'b1)  // Change this for no of VCs
		//	change include 5-9 also if no of VCs=2
		begin
			Port_vc1_arb_grant= 15'b000000000100000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[6]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000000001000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[7]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000000010000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[8]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000000100000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[9]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000001000000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[10]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000010000000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[11]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b000100000000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[12]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b001000000000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[13]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b010000000000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else if(Port_vc1_arb_req[14]==1'b1)
		begin
			Port_vc1_arb_grant= 15'b100000000000000;
			Port_vc1_usage_temp = 1'b1;
		end
		else 
		begin
			Port_vc1_arb_grant = 15'b000000000000000;
			Port_vc1_usage_temp = 1'b0;
		end
	end
end

endmodule


