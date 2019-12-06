// Code for a 2 virtual channel MNoC router. This can be extended to 3 VCs if required, by uncommenting portions of controller and FIFO instantiations

// This code includes VC arbitration for generalization, although this could
// slightly overestimate the MNoC router overhead. The VC arbitration stage can be
// commented out if required

`define FLIT_WIDTH 12 //you should change this parameter
`define NO_OF_PORTS 5
`define VC_WIDTH 1 // 2 bits for 3 VCs
`define NO_OF_VCS 2 
`define TW_VCS 4
`define THR_VCS 6
`define FO_VCS 8
`define INJ_BUFF_SIZE 8// Size of buffer at the injection port, typically same as the input buffer size
`define INJ_BUFF_WIDTH 3
`define IN_BUFF_SIZE 8
`define IN_BUFF_WIDTH 3
`define MESH_SIZE 3 
`define NO_OF_REQS 15 // no.of ports * no.of.VCs . 10 would suffice for 2 VCs. 15 are used to accommodate 3 VCs
`define VALUE 45  //This is 3*15 . 15= no of reqs

/* FLIT TEMPLATE

bit0,bit1 - header/body/tail
destination address, depends on mesh size - y dimension : flit[mesh_size-1+2 : 2] = [4:2] x dimension : [mesh_size-1+2+meshsize : 2+mesh_size] = [7:5]
*/

module top_router(router_address_x,router_address_y,i_out0,i_out1,n_in,n_out0,n_out1,n_vc_in,s_in,s_out0,s_out1,s_vc_in,i_in,i_vc_in,e_in,e_out0,e_out1,e_vc_in,w_in,w_out0,w_out1,w_vc_in,Clk,Rst);


/************************************************************************************************************/  
//**********************************************INPUTS , OUTPUTS ***********************************************/
/************************************************************************************************************/  

input Clk;
input Rst;
input [`MESH_SIZE-1 :0]router_address_x;
input [`MESH_SIZE-1 :0]router_address_y;
input [`FLIT_WIDTH-1:0]n_in;  // Receive data flit by flit-  bit 0 indicates if its a head flit or not. Bit0,bit1 = head => head flit, 01- body, 11 - tail
input [`FLIT_WIDTH-1:0]s_in;
input [`FLIT_WIDTH-1:0]e_in;
input [`FLIT_WIDTH-1:0]w_in;
input [`FLIT_WIDTH-1:0]i_in;
input [`VC_WIDTH-1:0] n_vc_in; 
input [`VC_WIDTH-1:0] s_vc_in;
input [`VC_WIDTH-1:0] e_vc_in;
input [`VC_WIDTH-1:0] w_vc_in;
input [`VC_WIDTH-1:0] i_vc_in;
integer j;
integer k;

output [`FLIT_WIDTH-1:0]n_out0; // Indicates coming out of VC0 of north port. 
output [`FLIT_WIDTH-1:0]n_out1;
output [`FLIT_WIDTH-1:0]s_out0;
output [`FLIT_WIDTH-1:0]s_out1;
output [`FLIT_WIDTH-1:0]e_out0;
output [`FLIT_WIDTH-1:0]e_out1;
output [`FLIT_WIDTH-1:0]w_out0;
output [`FLIT_WIDTH-1:0]w_out1;
output [`FLIT_WIDTH-1:0]i_out0;
output [`FLIT_WIDTH-1:0]i_out1;

/************************************************************************************************************/  
/*******************************  temporary registers and wires *********************************************/
/************************************************************************************************************/ 

wire[`NO_OF_PORTS-1 :0] dec_N_vc0;
wire[`NO_OF_PORTS-1 :0] dec_S_vc0;
wire[`NO_OF_PORTS-1 :0] dec_E_vc0;
wire[`NO_OF_PORTS-1 :0] dec_W_vc0;
wire[`NO_OF_PORTS-1 :0] dec_N_vc1;
wire[`NO_OF_PORTS-1 :0] dec_S_vc1;
wire[`NO_OF_PORTS-1 :0] dec_E_vc1;
wire[`NO_OF_PORTS-1 :0] dec_W_vc1;


reg[`IN_BUFF_SIZE-1 :0]N_port_counter[`NO_OF_VCS-1 :0]; // Counter keeps count of occupied buffers at next IP
reg[`IN_BUFF_SIZE-1 :0]S_port_counter[`NO_OF_VCS-1 :0];
reg[`IN_BUFF_SIZE-1 :0]E_port_counter[`NO_OF_VCS-1 :0];
reg[`IN_BUFF_SIZE-1 :0]W_port_counter[`NO_OF_VCS-1 :0];

reg[`NO_OF_PORTS:0]N_port_usage_vc0;  // usage - used/free for each of the VCs on each of the ports. Usage =1 implies used =0 implies not used
reg[`NO_OF_PORTS:0]S_port_usage_vc0;  // 5 for each of the ports + 1 for the vcarb. Hence `NO_OF_PORTS
reg[`NO_OF_PORTS:0]E_port_usage_vc0;  // 5 for each of the ports + 1 for the vcarb. Hence `NO_OF_PORTS
reg[`NO_OF_PORTS:0]W_port_usage_vc0;  // 5 for each of the ports + 1 for the vcarb. Hence `NO_OF_PORTS
reg[`NO_OF_PORTS:0]N_port_usage_vc1;  // 5 for each of the ports + 1 for the vcarb. Hence `NO_OF_PORTS
reg[`NO_OF_PORTS:0]S_port_usage_vc1;  // 5 for each of the ports + 1 for the vcarb. Hence `NO_OF_PORTS
reg[`NO_OF_PORTS:0]E_port_usage_vc1;  // 5 for each of the ports + 1 for the vcarb. Hence `NO_OF_PORTS
reg[`NO_OF_PORTS:0]W_port_usage_vc1;  // 5 for each of the ports + 1 for the vcarb. Hence `NO_OF_PORTS


wire I_rd_en[`NO_OF_VCS-1:0];   // Variables port mapped to input buffer FIFO
reg I_wr_en[`NO_OF_VCS-1:0];
wire I_full[`NO_OF_VCS-1:0];
wire I_empty[`NO_OF_VCS-1:0];
reg [`FLIT_WIDTH-1:0]I_data_in[`NO_OF_VCS-1 :0];
wire [`FLIT_WIDTH-1:0]I_data_out[`NO_OF_VCS-1 :0];

wire N_rd_en[`NO_OF_VCS-1:0];
reg N_wr_en[`NO_OF_VCS-1:0];
wire N_full[`NO_OF_VCS-1:0];
wire N_empty[`NO_OF_VCS-1:0];
reg [`FLIT_WIDTH-1:0]N_data_in[`NO_OF_VCS-1 :0];
wire [`FLIT_WIDTH-1:0]N_data_out[`NO_OF_VCS-1 :0];


wire S_rd_en[`NO_OF_VCS-1:0];
reg S_wr_en[`NO_OF_VCS-1:0];
wire S_full[`NO_OF_VCS-1:0];
wire S_empty[`NO_OF_VCS-1:0];
reg [`FLIT_WIDTH-1:0]S_data_in[`NO_OF_VCS-1 :0];
wire [`FLIT_WIDTH-1:0]S_data_out[`NO_OF_VCS-1 :0];


wire E_rd_en[`NO_OF_VCS-1:0];
reg E_wr_en[`NO_OF_VCS-1:0];
wire E_full[`NO_OF_VCS-1:0];
wire E_empty[`NO_OF_VCS-1:0];
reg [`FLIT_WIDTH-1:0]E_data_in[`NO_OF_VCS-1 :0];
wire [`FLIT_WIDTH-1:0]E_data_out[`NO_OF_VCS-1 :0];


wire W_rd_en[`NO_OF_VCS-1:0];
reg W_wr_en[`NO_OF_VCS-1:0];
wire W_full[`NO_OF_VCS-1:0];
wire W_empty[`NO_OF_VCS-1:0];
reg [`FLIT_WIDTH-1:0]W_data_in[`NO_OF_VCS-1 :0];
wire [`FLIT_WIDTH-1:0]W_data_out[`NO_OF_VCS-1 :0];

// VC arbitration requests
wire [`NO_OF_REQS-1 :0]N_vc0_arb_req;
wire [`NO_OF_REQS-1 :0]N_vc1_arb_req;
//reg [`NO_OF_REQS-1 :0]N_vc2_arb_req;
wire [`NO_OF_REQS-1 :0]S_vc0_arb_req;
wire [`NO_OF_REQS-1 :0]S_vc1_arb_req;
//reg [`NO_OF_REQS-1 :0]S_vc2_arb_req;
wire [`NO_OF_REQS-1 :0]E_vc0_arb_req;
wire [`NO_OF_REQS-1 :0]E_vc1_arb_req;
//reg [`NO_OF_REQS-1 :0]E_vc2_arb_req;
wire [`NO_OF_REQS-1 :0]W_vc0_arb_req;
wire [`NO_OF_REQS-1 :0]W_vc1_arb_req;
//reg [`NO_OF_REQS-1 :0]W_vc2_arb_req;

wire [`NO_OF_REQS-1 :0]N_vc0_arb_grant;
wire [`NO_OF_REQS-1 :0]N_vc1_arb_grant;
////wire [`NO_OF_REQS-1 :0]N_vc2_arb_grant; 
wire [`NO_OF_REQS-1 :0]S_vc0_arb_grant;
wire [`NO_OF_REQS-1 :0]S_vc1_arb_grant;
//wire [`NO_OF_REQS-1 :0]S_vc2_arb_grant;
wire [`NO_OF_REQS-1 :0]E_vc0_arb_grant;
wire [`NO_OF_REQS-1 :0]E_vc1_arb_grant;
//wire [`NO_OF_REQS-1 :0]E_vc2_arb_grant;
wire [`NO_OF_REQS-1 :0]W_vc0_arb_grant;
wire [`NO_OF_REQS-1 :0]W_vc1_arb_grant;
//wire [`NO_OF_REQS-1 :0]W_vc2_arb_grant;

// Switch arbitration requests

wire [`NO_OF_REQS-1 :0]N_sw_arb_req;  //N_sw1_arb_req[0] Implies Inj port ,VC0 is requesting Switch for North port VC0
wire [`NO_OF_REQS-1 :0]S_sw_arb_req;
wire [`NO_OF_REQS-1 :0]E_sw_arb_req;
wire [`NO_OF_REQS-1 :0]W_sw_arb_req;

wire [`NO_OF_REQS-1 :0]N_sw_arb_grant;
wire [`NO_OF_REQS-1 :0]S_sw_arb_grant;
wire [`NO_OF_REQS-1 :0]E_sw_arb_grant;
wire [`NO_OF_REQS-1 :0]W_sw_arb_grant;

reg N_usage; // Indicates that the North output port is reserved by some header flit
reg S_usage;
reg E_usage;
reg W_usage;


integer i;

router_swarb switch(Clk,Rst,N_sw_arb_req,N_sw_arb_grant,S_sw_arb_req,S_sw_arb_grant,E_sw_arb_req,E_sw_arb_grant,W_sw_arb_req,W_sw_arb_grant);



/************************************************************************************************************/  
/********************************** Writing data into the FIFO  * *******************************************/
/************************************************************************************************************/

always @(posedge Clk or negedge Rst) // north input goes to the appropriate VC
begin
	if(Rst==0)
	begin
		for(i=0;i<`NO_OF_VCS;i=i+1)
		begin
	
			I_wr_en[i]  	 <=1'b0;
			I_data_in[i]     <=10'b0000000000;
			N_wr_en[i]       <=1'b0;
			N_data_in[i]     <=10'b0000000000;
			S_wr_en[i]       <=1'b0;
			S_data_in[i]     <=10'b0000000000;
			E_wr_en[i]       <=1'b0;
			E_data_in[i]     <=10'b0000000000;
			W_wr_en[i]       <=1'b0;
			W_data_in[i]     <=10'b0000000000;
		end
	end	
	
	else
	begin
		i=0;
		case(i_vc_in) /************** Hardcoded for number of VCs********************/
			2'b00: if(!I_full[0])
			       	begin
					  I_wr_en[0] <=1'b1;
					  I_data_in[0]<=i_in;
				end

			2'b01: if(!I_full[1])
				begin
					 I_wr_en[1] <=1'b1;
					 I_data_in[1]<=i_in;
					
			  	end
				  
		 	default:begin
					for(i=0;i<(`NO_OF_VCS);i=i+1)
					begin
						I_wr_en[i] <=1'b0;
						I_data_in[i]<=10'b0000000000;
					end
	        	        end
	    	endcase  

		case(n_vc_in) /************** Hardcoded for number of VCs********************/
			2'b00: if(!N_full[0])
				begin
					  N_wr_en[0] <=1'b1;
					  N_data_in[0]<=n_in;
			  	end
				  
			2'b01: if(!N_full[1])
				begin
					 N_wr_en[1] <=1'b1;
					 N_data_in[1]<=n_in;
			  	end

		 	default: begin
					 for(i=0;i<`NO_OF_VCS;i=i+1)
					 begin
						 N_wr_en[i] <=1'b0;
						 N_data_in[i]<=10'b0000000000;
					 end
			         end
	      	endcase 

		case(s_vc_in) /************** Hardcoded for number of VCs********************/
			2'b00:  if(!S_full[0])
				begin
					S_wr_en[0] <=1'b1;
					S_data_in[0]<=s_in;
			     	  	 
			  	end
				  

			2'b01:  if(!S_full[1])
				begin
					 S_wr_en[1] <=1'b1;
					 S_data_in[1]<=s_in;
			     	  
			  	end
				  
		 	default:begin
					for(i=0;i<`NO_OF_VCS;i=i+1)
					begin
					S_wr_en[i]<=1'b0;
					S_data_in[i]<=10'b0000000000;
					end
		                 end
	   	endcase

		case(e_vc_in) /************** Hardcoded for number of VCs********************/
			2'b00: if(!E_full[0])
				  begin
					  E_wr_en[0] <=1'b1;
					  E_data_in[0]<=e_in;
			     	  	
			  	  end

			2'b01: if(!E_full[1])
				begin
					 E_wr_en[1] <=1'b1;
					 E_data_in[1]<=e_in;
			     	  
			  	end
				  
		/*	2'b10:  if(!E_full[2])
			   	 begin
				 	 E_wr_en[2] <=1'b1;
					 E_data_in[2]<=e_in;
			     	
				 end*/

		 	default:begin
					for(i=0;i<`NO_OF_VCS;i=i+1)
					begin
						E_wr_en[i] <=1'b0;
						E_data_in[i]<=10'b0000000000;
					end
		           	 end
	    	endcase

		case(w_vc_in) /************** Hardcoded for number of VCs********************/
			2'b00: if(!W_full[0])
				  begin
					  W_wr_en[0] <=1'b1;
					  W_data_in[0]<=w_in;
			     	  
			  	  end
				  
			2'b01:if(!W_full[1])
				begin
					 W_wr_en[1] <=1'b1;
					 W_data_in[1]<=w_in;
			     	  
			  	end
		/*	2'b10: 
			  	if(!W_full[2])
			  	begin
					W_wr_en[2] <=1'b1;
					W_data_in[2]<=w_in;
			     	  
				end*/

		 	default: begin
						for(i=0;i<`NO_OF_VCS;i=i+1)
						begin
							W_wr_en[i] <=1'b0;
							W_data_in[i]<=10'b0000000000;
						end
		              end
	    	endcase
	end
end


always @(posedge Clk or negedge Rst) // north input goes to the appropriate VC
begin
	if(Rst==0)
	begin
		for(i=0;i<`NO_OF_VCS;i=i+1)
		begin
	
			N_port_counter[i] <= `IN_BUFF_SIZE;
			S_port_counter[i] <= `IN_BUFF_SIZE;
			E_port_counter[i] <= `IN_BUFF_SIZE;
			W_port_counter[i] <= `IN_BUFF_SIZE;
		
		end
	end	
	
	else
	begin
		i<=0;
 		if(!dec_N_vc0[0] || !dec_N_vc0[1] || !dec_N_vc0[2] || !dec_N_vc0[3])
			N_port_counter[0] <= (N_port_counter[0] - 8'b00000001);

		else 
			N_port_counter[0] <= N_port_counter[0];

		if(!dec_N_vc1[0] || !dec_N_vc1[1] || !dec_N_vc1[2] || !dec_N_vc1[3])
			N_port_counter[1] <= (N_port_counter[1] -8'b00000001);

		else 
			N_port_counter[1] <= N_port_counter[1]; 



		if(!dec_S_vc0[0] || !dec_S_vc0[1] || !dec_S_vc0[2] || !dec_S_vc0[3])
			S_port_counter[0] <= (S_port_counter[0] -8'b00000001);

		else 
			S_port_counter[0] <= S_port_counter[0];

		if(!dec_S_vc1[0] || !dec_S_vc1[1] || !dec_S_vc1[2] || !dec_S_vc1[3])
			S_port_counter[1] <= (S_port_counter[1] -8'b00000001);

		else 
			S_port_counter[1] <= S_port_counter[1];	


		if(!dec_E_vc0[0] || !dec_E_vc0[1] || !dec_E_vc0[2] || !dec_E_vc0[3])
			E_port_counter[0] <= (E_port_counter[0] -8'b00000001);

		else 
			E_port_counter[0] <= E_port_counter[0];

		if(!dec_E_vc1[0] || !dec_E_vc1[1] || !dec_E_vc1[2] || !dec_E_vc1[3])
			E_port_counter[1] <= (E_port_counter[1] -8'b00000001);

		else 
			E_port_counter[1] <= E_port_counter[1];

		
		if(!dec_W_vc0[0] || !dec_W_vc0[1] || !dec_W_vc0[2] || !dec_W_vc0[3])
			W_port_counter[0] <= (W_port_counter[0] -8'b00000001);

		else 
			W_port_counter[0] <= W_port_counter[0];

		if(!dec_W_vc1[0] || !dec_W_vc1[1] || !dec_W_vc1[2] || !dec_W_vc1[3])
			W_port_counter[1] <= (W_port_counter[1] -8'b00000001);

		else 
			W_port_counter[1] <= W_port_counter[1];

	end
end


 always @(N_port_usage_vc0 or N_port_usage_vc1 or Rst)
begin
	if(!Rst)
		N_usage = 1'b0;
	else if(N_port_usage_vc0[0] || N_port_usage_vc1[0])
		N_usage = 1'b1;
	else if(N_port_usage_vc0[1] || N_port_usage_vc0[2] || N_port_usage_vc0[3] || N_port_usage_vc0[4] || N_port_usage_vc0[5] ||N_port_usage_vc1[1] || N_port_usage_vc1[2] || N_port_usage_vc1[3] || N_port_usage_vc1[4] || N_port_usage_vc1[5] )
		N_usage =1'b0;
	else N_usage = 1'b0;
end 

always @(S_port_usage_vc0 or S_port_usage_vc1 or Rst)
begin
	if(!Rst)
		S_usage = 1'b0;
	else if(S_port_usage_vc0[0] || S_port_usage_vc1[0])
		S_usage = 1'b1;
	else if(S_port_usage_vc0[1] || S_port_usage_vc0[2] || S_port_usage_vc0[3] || S_port_usage_vc0[4] || S_port_usage_vc0[5] ||S_port_usage_vc1[1] || S_port_usage_vc1[2] || S_port_usage_vc1[3] || S_port_usage_vc1[4] || S_port_usage_vc1[5] )
		S_usage =1'b0;
	else S_usage = 1'b0;
end

always @(E_port_usage_vc0 or E_port_usage_vc1 or Rst)
begin
	if(!Rst)
		E_usage = 1'b0;
	else if(E_port_usage_vc0[0] || E_port_usage_vc1[0])
		E_usage = 1'b1;
	else if(E_port_usage_vc0[1] || E_port_usage_vc0[2] || E_port_usage_vc0[3] || E_port_usage_vc0[4] || E_port_usage_vc0[5] ||E_port_usage_vc1[1] || E_port_usage_vc1[2] || E_port_usage_vc1[3] || E_port_usage_vc1[4] || E_port_usage_vc1[5] )
		E_usage =1'b0;
	else E_usage = 1'b0;
end 

always @(W_port_usage_vc0 or W_port_usage_vc1 or Rst)
begin
	if(!Rst)
		W_usage = 1'b0;
	else if(W_port_usage_vc0[0] || W_port_usage_vc1[0])
		W_usage = 1'b1;
	else if(W_port_usage_vc0[1] || W_port_usage_vc0[2] || W_port_usage_vc0[3] || W_port_usage_vc0[4] || W_port_usage_vc0[5] ||W_port_usage_vc1[1] || W_port_usage_vc1[2] || W_port_usage_vc1[3] || W_port_usage_vc1[4] || W_port_usage_vc1[5] )
		W_usage =1'b0;
	else W_usage = 1'b0;
end


/*************************************************************************************************/  
/**************************** FIFO INSTANTIATIONS FOR INPUT BUFFERS, ALL PORTS, ALL VCS **********/
/*************************************************************************************************/  


syn_fifo #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE))  I_Input_Buffer_vc0(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(I_rd_en[0]),.wr_en(I_wr_en[0]),.full(I_full[0]),.empty(I_empty[0]),.data_in(I_data_in[0]),.data_out(I_data_out[0])); // The first element in the fifo is continuously monitored


syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) I_Input_Buffer_vc1(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(I_rd_en[1]),.wr_en(I_wr_en[1]),.full(I_full[1]),.empty(I_empty[1]),.data_in(I_data_in[1]),.data_out(I_data_out[1])); // The first element in the fifo is continuously monitored



 syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) N_Input_Buffer_vc0(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(N_rd_en[0]),.wr_en(N_wr_en[0]),.full(N_full[0]),.empty(N_empty[0]),.data_in(N_data_in[0]),.data_out(N_data_out[0])); // The first element in the fifo is continuously monitored


 syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) N_Input_Buffer_vc1(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(N_rd_en[1]),.wr_en(N_wr_en[1]),.full(N_full[1]),.empty(N_empty[1]),.data_in(N_data_in[1]),.data_out(N_data_out[1])); // The first element in the fifo is continuously monitored



syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) S_Input_Buffer_vc0(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(S_rd_en[0]),.wr_en(S_wr_en[0]),.full(S_full[0]),.empty(S_empty[0]),.data_in(S_data_in[0]),.data_out(S_data_out[0])); // The first element in the fifo is continuously monitored


syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) S_Input_Buffer_vc1(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(S_rd_en[1]),.wr_en(S_wr_en[1]),.full(S_full[1]),.empty(S_empty[1]),.data_in(S_data_in[1]),.data_out(S_data_out[1])); // The first element in the fifo is continuously monitored




syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) E_Input_Buffer_vc0(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(E_rd_en[0]),.wr_en(E_wr_en[0]),.full(E_full[0]),.empty(E_empty[0]),.data_in(E_data_in[0]),.data_out(E_data_out[0])); // The first element in the fifo is continuously monitored


syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) E_Input_Buffer_vc1(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(E_rd_en[1]),.wr_en(E_wr_en[1]),.full(E_full[1]),.empty(E_empty[1]),.data_in(E_data_in[1]),.data_out(E_data_out[1])); // The first element in the fifo is continuously monitored



syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) W_Input_Buffer_vc1(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(W_rd_en[1]),.wr_en(W_wr_en[1]),.full(W_full[1]),.empty(W_empty[1]),.data_in(W_data_in[1]),.data_out(W_data_out[1])); // The first element in the fifo is continuously monitored




syn_fifo  #(.DATA_WIDTH(`FLIT_WIDTH), .ADDR_WIDTH(`INJ_BUFF_WIDTH), .RAM_DEPTH(`INJ_BUFF_SIZE)) W_Input_Buffer_vc0(.clk(Clk),.rst(Rst),.wr_cs(1'b1),.rd_cs(1'b1),.rd_en(W_rd_en[0]),.wr_en(W_wr_en[0]),.full(W_full[0]),.empty(W_empty[0]),.data_in(W_data_in[0]),.data_out(W_data_out[0])); // The first element in the fifo is continuously monitored



/*************************************************************************************************/  
/***********INSTANTIATING VC arbiters for each output  port     **********************************/
/*************************************************************************************************/  

 router_vcarb north_arbiter(.Rst(Rst),.Port_vc0_arb_req(N_vc0_arb_req),.Port_vc1_arb_req(N_vc1_arb_req),.Port_vc0_arb_grant(N_vc0_arb_grant),.Port_vc1_arb_grant(N_vc1_arb_grant),.Port_vc0_usage(N_port_usage_vc0[0]),.Port_vc1_usage(N_port_usage_vc1[0]));


router_vcarb south_arbiter(.Rst(Rst),.Port_vc0_arb_req(S_vc0_arb_req),.Port_vc1_arb_req(S_vc1_arb_req),.Port_vc0_arb_grant(S_vc0_arb_grant),.Port_vc1_arb_grant(S_vc1_arb_grant),.Port_vc0_usage(S_port_usage_vc0[0]),.Port_vc1_usage(S_port_usage_vc1[0]));
			

 router_vcarb east_arbiter(.Rst(Rst),.Port_vc0_arb_req(E_vc0_arb_req),.Port_vc1_arb_req(E_vc1_arb_req),.Port_vc0_arb_grant(E_vc0_arb_grant),.Port_vc1_arb_grant(E_vc1_arb_grant),.Port_vc0_usage(E_port_usage_vc0[0]),.Port_vc1_usage(E_port_usage_vc1[0]));


router_vcarb west_arbiter(.Rst(Rst),.Port_vc0_arb_req(W_vc0_arb_req),.Port_vc1_arb_req(W_vc1_arb_req),.Port_vc0_arb_grant(W_vc0_arb_grant),.Port_vc1_arb_grant(W_vc1_arb_grant),.Port_vc0_usage(W_port_usage_vc0[0]),.Port_vc1_usage(W_port_usage_vc1[0]));


/*************************************************************************************************/  
/***********INSTANTIATING CONTROLLERS FOR EACH VC AND EACH PORT **********************************/
/************  HARDCODED FOR 2 VCS , EXTENSIBLE TO 3 VCS EASILY **********************************/
/*************************************************************************************************/ 

node_controller I_vc0_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc0[1]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc0[1]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc0[1]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc0[1]),.flit_data(I_data_out[0]),.fifo_full(I_full[0]),.fifo_empty(I_empty[0]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(I_rd_en[0]),.N_vc_arb_req(N_vc0_arb_req[0]),.S_vc_arb_req(S_vc0_arb_req[0]),.E_vc_arb_req(E_vc0_arb_req[0]),.W_vc_arb_req(W_vc0_arb_req[0]),.N_vc_arb_gnt(N_vc0_arb_grant[0]),.S_vc_arb_gnt(S_vc0_arb_grant[0]),.E_vc_arb_gnt(E_vc0_arb_grant[0]),.W_vc_arb_gnt(W_vc0_arb_grant[0]),.dec_N_buff_count(dec_N_vc0[0]),.dec_S_buff_count(dec_S_vc0[0]),.dec_E_buff_count(dec_E_vc0[0]),.dec_W_buff_count(dec_W_vc0[0]),.N_buff_count(N_port_counter[0]),.S_buff_count(S_port_counter[0]),.E_buff_count(E_port_counter[0]),.W_buff_count(W_port_counter[0]),.N_sw_arb_req(N_sw_arb_req[0]),.S_sw_arb_req(S_sw_arb_req[0]),.E_sw_arb_req(E_sw_arb_req[0]),.W_sw_arb_req(W_sw_arb_req[0]),.N_sw_arb_gnt(N_sw_arb_grant[0]),.S_sw_arb_gnt(S_sw_arb_grant[0]),.E_sw_arb_gnt(E_sw_arb_grant[0]),.W_sw_arb_gnt(W_sw_arb_grant[0]),.flit_out(i_out0));

node_controller I_vc1_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc1[1]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc1[1]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc1[1]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc1[1]),.flit_data(I_data_out[1]),.fifo_full(I_full[1]),.fifo_empty(I_empty[1]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(I_rd_en[1]),.N_vc_arb_req(N_vc1_arb_req[1]),.S_vc_arb_req(S_vc1_arb_req[1]),.E_vc_arb_req(E_vc1_arb_req[1]),.W_vc_arb_req(W_vc1_arb_req[1]),.N_vc_arb_gnt(N_vc1_arb_grant[1]),.S_vc_arb_gnt(S_vc1_arb_grant[1]),.E_vc_arb_gnt(E_vc1_arb_grant[1]),.W_vc_arb_gnt(W_vc1_arb_grant[1]),.dec_N_buff_count(dec_N_vc1[0]),.dec_S_buff_count(dec_S_vc1[0]),.dec_E_buff_count(dec_E_vc1[0]),.dec_W_buff_count(dec_W_vc1[0]),.N_buff_count(N_port_counter[1]),.S_buff_count(S_port_counter[1]),.E_buff_count(E_port_counter[1]),.W_buff_count(W_port_counter[1]),.N_sw_arb_req(N_sw_arb_req[1]),.S_sw_arb_req(S_sw_arb_req[1]),.E_sw_arb_req(E_sw_arb_req[1]),.W_sw_arb_req(W_sw_arb_req[1]),.N_sw_arb_gnt(N_sw_arb_grant[1]),.S_sw_arb_gnt(S_sw_arb_grant[1]),.E_sw_arb_gnt(E_sw_arb_grant[1]),.W_sw_arb_gnt(W_sw_arb_grant[1]),.flit_out(i_out1));

 node_controller N_vc0_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc0[2]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc0[2]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc0[2]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc0[2]),.flit_data(N_data_out[0]),.fifo_full(N_full[0]),.fifo_empty(N_empty[0]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(N_rd_en[0]),.N_vc_arb_req(N_vc0_arb_req[3]),.S_vc_arb_req(S_vc0_arb_req[3]),.E_vc_arb_req(E_vc0_arb_req[3]),.W_vc_arb_req(W_vc0_arb_req[3]),.N_vc_arb_gnt(N_vc0_arb_grant[3]),.S_vc_arb_gnt(S_vc0_arb_grant[3]),.E_vc_arb_gnt(E_vc0_arb_grant[3]),.W_vc_arb_gnt(W_vc0_arb_grant[3]),.dec_N_buff_count(dec_N_vc0[1]),.dec_S_buff_count(dec_S_vc0[1]),.dec_E_buff_count(dec_E_vc0[1]),.dec_W_buff_count(dec_W_vc0[1]),.N_buff_count(N_port_counter[0]),.S_buff_count(S_port_counter[0]),.E_buff_count(E_port_counter[0]),.W_buff_count(W_port_counter[0]),.N_sw_arb_req(N_sw_arb_req[3]),.S_sw_arb_req(S_sw_arb_req[3]),.E_sw_arb_req(E_sw_arb_req[3]),.W_sw_arb_req(W_sw_arb_req[3]),.N_sw_arb_gnt(N_sw_arb_grant[3]),.S_sw_arb_gnt(S_sw_arb_grant[3]),.E_sw_arb_gnt(E_sw_arb_grant[3]),.W_sw_arb_gnt(W_sw_arb_grant[3]),.flit_out(n_out0));

 node_controller N_vc1_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc1[2]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc1[2]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc1[2]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc1[2]),.flit_data(N_data_out[1]),.fifo_full(N_full[1]),.fifo_empty(N_empty[1]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(N_rd_en[1]),.N_vc_arb_req(N_vc1_arb_req[4]),.S_vc_arb_req(S_vc1_arb_req[4]),.E_vc_arb_req(E_vc1_arb_req[4]),.W_vc_arb_req(W_vc1_arb_req[4]),.N_vc_arb_gnt(N_vc1_arb_grant[4]),.S_vc_arb_gnt(S_vc1_arb_grant[4]),.E_vc_arb_gnt(E_vc1_arb_grant[4]),.W_vc_arb_gnt(W_vc1_arb_grant[4]),.dec_N_buff_count(dec_N_vc1[1]),.dec_S_buff_count(dec_S_vc1[1]),.dec_E_buff_count(dec_E_vc1[1]),.dec_W_buff_count(dec_W_vc1[1]),.N_buff_count(N_port_counter[1]),.S_buff_count(S_port_counter[1]),.E_buff_count(E_port_counter[1]),.W_buff_count(W_port_counter[1]),.N_sw_arb_req(N_sw_arb_req[4]),.S_sw_arb_req(S_sw_arb_req[4]),.E_sw_arb_req(E_sw_arb_req[4]),.W_sw_arb_req(W_sw_arb_req[4]),.N_sw_arb_gnt(N_sw_arb_grant[4]),.S_sw_arb_gnt(S_sw_arb_grant[4]),.E_sw_arb_gnt(E_sw_arb_grant[4]),.W_sw_arb_gnt(W_sw_arb_grant[4]),.flit_out(n_out1));

node_controller S_vc0_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc0[3]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc0[3]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc0[3]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc0[3]),.flit_data(S_data_out[0]),.fifo_full(S_full[0]),.fifo_empty(S_empty[0]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(S_rd_en[0]),.N_vc_arb_req(N_vc0_arb_req[6]),.S_vc_arb_req(S_vc0_arb_req[6]),.E_vc_arb_req(E_vc0_arb_req[6]),.W_vc_arb_req(W_vc0_arb_req[6]),.N_vc_arb_gnt(N_vc0_arb_grant[6]),.S_vc_arb_gnt(S_vc0_arb_grant[6]),.E_vc_arb_gnt(E_vc0_arb_grant[6]),.W_vc_arb_gnt(W_vc0_arb_grant[6]),.dec_N_buff_count(dec_N_vc0[2]),.dec_S_buff_count(dec_S_vc0[2]),.dec_E_buff_count(dec_E_vc0[2]),.dec_W_buff_count(dec_W_vc0[2]),.N_buff_count(N_port_counter[0]),.S_buff_count(S_port_counter[0]),.E_buff_count(E_port_counter[0]),.W_buff_count(W_port_counter[0]),.N_sw_arb_req(N_sw_arb_req[6]),.S_sw_arb_req(S_sw_arb_req[6]),.E_sw_arb_req(E_sw_arb_req[6]),.W_sw_arb_req(W_sw_arb_req[6]),.N_sw_arb_gnt(N_sw_arb_grant[6]),.S_sw_arb_gnt(S_sw_arb_grant[6]),.E_sw_arb_gnt(E_sw_arb_grant[6]),.W_sw_arb_gnt(W_sw_arb_grant[6]),.flit_out(s_out0));


node_controller S_vc1_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc1[3]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc1[3]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc1[3]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc1[3]),.flit_data(S_data_out[1]),.fifo_full(S_full[1]),.fifo_empty(S_empty[1]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(S_rd_en[1]),.N_vc_arb_req(N_vc1_arb_req[7]),.S_vc_arb_req(S_vc1_arb_req[7]),.E_vc_arb_req(E_vc1_arb_req[7]),.W_vc_arb_req(W_vc1_arb_req[7]),.N_vc_arb_gnt(N_vc1_arb_grant[7]),.S_vc_arb_gnt(S_vc1_arb_grant[7]),.E_vc_arb_gnt(E_vc1_arb_grant[7]),.W_vc_arb_gnt(W_vc1_arb_grant[7]),.dec_N_buff_count(dec_N_vc1[2]),.dec_S_buff_count(dec_S_vc1[2]),.dec_E_buff_count(dec_E_vc1[2]),.dec_W_buff_count(dec_W_vc1[2]),.N_buff_count(N_port_counter[1]),.S_buff_count(S_port_counter[1]),.E_buff_count(E_port_counter[1]),.W_buff_count(W_port_counter[1]),.N_sw_arb_req(N_sw_arb_req[7]),.S_sw_arb_req(S_sw_arb_req[7]),.E_sw_arb_req(E_sw_arb_req[7]),.W_sw_arb_req(W_sw_arb_req[7]),.N_sw_arb_gnt(N_sw_arb_grant[7]),.S_sw_arb_gnt(S_sw_arb_grant[7]),.E_sw_arb_gnt(E_sw_arb_grant[7]),.W_sw_arb_gnt(W_sw_arb_grant[7]),.flit_out(s_out1));


 node_controller E_vc0_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc0[4]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc0[4]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc0[4]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc0[4]),.flit_data(E_data_out[0]),.fifo_full(E_full[0]),.fifo_empty(E_empty[0]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(E_rd_en[0]),.N_vc_arb_req(N_vc0_arb_req[9]),.S_vc_arb_req(S_vc0_arb_req[9]),.E_vc_arb_req(E_vc0_arb_req[9]),.W_vc_arb_req(W_vc0_arb_req[9]),.N_vc_arb_gnt(N_vc0_arb_grant[9]),.S_vc_arb_gnt(S_vc0_arb_grant[9]),.E_vc_arb_gnt(E_vc0_arb_grant[9]),.W_vc_arb_gnt(W_vc0_arb_grant[9]),.dec_N_buff_count(dec_N_vc0[3]),.dec_S_buff_count(dec_S_vc0[3]),.dec_E_buff_count(dec_E_vc0[3]),.dec_W_buff_count(dec_W_vc0[3]),.N_buff_count(N_port_counter[0]),.S_buff_count(S_port_counter[0]),.E_buff_count(E_port_counter[0]),.W_buff_count(W_port_counter[0]),.N_sw_arb_req(N_sw_arb_req[9]),.S_sw_arb_req(S_sw_arb_req[9]),.E_sw_arb_req(E_sw_arb_req[9]),.W_sw_arb_req(W_sw_arb_req[9]),.N_sw_arb_gnt(N_sw_arb_grant[9]),.S_sw_arb_gnt(S_sw_arb_grant[9]),.E_sw_arb_gnt(E_sw_arb_grant[9]),.W_sw_arb_gnt(W_sw_arb_grant[9]),.flit_out(e_out0));


node_controller E_vc1_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc1[4]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc1[4]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc1[4]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc1[4]),.flit_data(E_data_out[1]),.fifo_full(E_full[1]),.fifo_empty(E_empty[1]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(E_rd_en[1]),.N_vc_arb_req(N_vc1_arb_req[10]),.S_vc_arb_req(S_vc1_arb_req[10]),.E_vc_arb_req(E_vc1_arb_req[10]),.W_vc_arb_req(W_vc1_arb_req[10]),.N_vc_arb_gnt(N_vc1_arb_grant[10]),.S_vc_arb_gnt(S_vc1_arb_grant[10]),.E_vc_arb_gnt(E_vc1_arb_grant[10]),.W_vc_arb_gnt(W_vc1_arb_grant[10]),.dec_N_buff_count(dec_N_vc1[3]),.dec_S_buff_count(dec_S_vc1[3]),.dec_E_buff_count(dec_E_vc1[3]),.dec_W_buff_count(dec_W_vc1[3]),.N_buff_count(N_port_counter[1]),.S_buff_count(S_port_counter[1]),.E_buff_count(E_port_counter[1]),.W_buff_count(W_port_counter[1]),.N_sw_arb_req(N_sw_arb_req[10]),.S_sw_arb_req(S_sw_arb_req[10]),.E_sw_arb_req(E_sw_arb_req[10]),.W_sw_arb_req(W_sw_arb_req[10]),.N_sw_arb_gnt(N_sw_arb_grant[10]),.S_sw_arb_gnt(S_sw_arb_grant[10]),.E_sw_arb_gnt(E_sw_arb_grant[10]),.W_sw_arb_gnt(W_sw_arb_grant[10]),.flit_out(e_out1));


node_controller W_vc0_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc0[5]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc0[5]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc0[5]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc0[5]),.flit_data(W_data_out[0]),.fifo_full(W_full[0]),.fifo_empty(W_empty[0]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(W_rd_en[0]),.N_vc_arb_req(N_vc0_arb_req[12]),.S_vc_arb_req(S_vc0_arb_req[12]),.E_vc_arb_req(E_vc0_arb_req[12]),.W_vc_arb_req(W_vc0_arb_req[12]),.N_vc_arb_gnt(N_vc0_arb_grant[12]),.S_vc_arb_gnt(S_vc0_arb_grant[12]),.E_vc_arb_gnt(E_vc0_arb_grant[12]),.W_vc_arb_gnt(W_vc0_arb_grant[12]),.dec_N_buff_count(dec_N_vc0[4]),.dec_S_buff_count(dec_S_vc0[4]),.dec_E_buff_count(dec_E_vc0[4]),.dec_W_buff_count(dec_W_vc0[4]),.N_buff_count(N_port_counter[0]),.S_buff_count(S_port_counter[0]),.E_buff_count(E_port_counter[0]),.W_buff_count(W_port_counter[0]),.N_sw_arb_req(N_sw_arb_req[12]),.S_sw_arb_req(S_sw_arb_req[12]),.E_sw_arb_req(E_sw_arb_req[12]),.W_sw_arb_req(W_sw_arb_req[12]),.N_sw_arb_gnt(N_sw_arb_grant[12]),.S_sw_arb_gnt(S_sw_arb_grant[12]),.E_sw_arb_gnt(E_sw_arb_grant[12]),.W_sw_arb_gnt(W_sw_arb_grant[12]),.flit_out(w_out0));


node_controller W_vc1_controller(.Clk(Clk),.Rst(Rst),.N_usage(N_usage),.rst_N_usage(N_port_usage_vc1[5]),.S_usage(S_usage),.rst_S_usage(S_port_usage_vc1[5]),.E_usage(E_usage),.rst_E_usage(E_port_usage_vc1[5]),.W_usage(W_usage),.rst_W_usage(W_port_usage_vc1[5]),.flit_data(W_data_out[1]),.fifo_full(W_full[1]),.fifo_empty(W_empty[1]),.router_address_x(router_address_x),.router_address_y(router_address_y),.rd_en(W_rd_en[1]),.N_vc_arb_req(N_vc1_arb_req[13]),.S_vc_arb_req(S_vc1_arb_req[13]),.E_vc_arb_req(E_vc1_arb_req[13]),.W_vc_arb_req(W_vc1_arb_req[13]),.N_vc_arb_gnt(N_vc1_arb_grant[13]),.S_vc_arb_gnt(S_vc1_arb_grant[13]),.E_vc_arb_gnt(E_vc1_arb_grant[13]),.W_vc_arb_gnt(W_vc1_arb_grant[13]),.dec_N_buff_count(dec_N_vc1[4]),.dec_S_buff_count(dec_S_vc1[4]),.dec_E_buff_count(dec_E_vc1[4]),.dec_W_buff_count(dec_W_vc1[4]),.N_buff_count(N_port_counter[1]),.S_buff_count(S_port_counter[1]),.E_buff_count(E_port_counter[1]),.W_buff_count(W_port_counter[1]),.N_sw_arb_req(N_sw_arb_req[13]),.S_sw_arb_req(S_sw_arb_req[13]),.E_sw_arb_req(E_sw_arb_req[13]),.W_sw_arb_req(W_sw_arb_req[13]),.N_sw_arb_gnt(N_sw_arb_grant[13]),.S_sw_arb_gnt(S_sw_arb_grant[13]),.E_sw_arb_gnt(E_sw_arb_grant[13]),.W_sw_arb_gnt(W_sw_arb_grant[13]),.flit_out(w_out1));



endmodule
