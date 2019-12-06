`define FLIT_WIDTH 12
`define IN_BUFF_SIZE 8
`define IN_BUFF_WIDTH 3//1 bit to hold input buff size
`define MESH_SIZE 3  // 7x7 mesh, 3 bits for each dimension`s address
`define INIT 0
`define ROUTING 1
`define VC_ARB 2
`define SW_ARB 3
`define SW_TR 4
`define HOME 5
`define HEAD 0
`define BODY 1
`define TAIL 2
`define INJ 3'b000
`define NORTH 3'b001
`define SOUTH 3'b010
`define WEST 3'b011
`define EAST 3'b100

module node_controller(Clk,Rst,N_usage,S_usage,E_usage,W_usage,rst_N_usage,rst_S_usage,rst_E_usage,rst_W_usage,flit_data,fifo_full,fifo_empty,router_address_x,router_address_y,rd_en,N_vc_arb_req,S_vc_arb_req,E_vc_arb_req,W_vc_arb_req,N_vc_arb_gnt,S_vc_arb_gnt,E_vc_arb_gnt,W_vc_arb_gnt,dec_N_buff_count,dec_S_buff_count,dec_E_buff_count,dec_W_buff_count,N_buff_count,S_buff_count,E_buff_count,W_buff_count,N_sw_arb_req,S_sw_arb_req,E_sw_arb_req,W_sw_arb_req,N_sw_arb_gnt,S_sw_arb_gnt,E_sw_arb_gnt,W_sw_arb_gnt,flit_out);

input Clk;
input Rst;
input [`FLIT_WIDTH-1:0]flit_data;
input  [`MESH_SIZE-1 :0]router_address_x;
input  [`MESH_SIZE-1 :0]router_address_y;
input fifo_full;
input fifo_empty;
input N_vc_arb_gnt;
input S_vc_arb_gnt;
input E_vc_arb_gnt;
input W_vc_arb_gnt;
input N_sw_arb_gnt;
input S_sw_arb_gnt;
input E_sw_arb_gnt;
input W_sw_arb_gnt;
input [`IN_BUFF_SIZE-1:0]N_buff_count;
input [`IN_BUFF_SIZE-1:0]S_buff_count;
input [`IN_BUFF_SIZE-1:0]E_buff_count;
input [`IN_BUFF_SIZE-1:0]W_buff_count;


input N_usage;
input S_usage;
input E_usage;
input W_usage;

output N_vc_arb_req;
output S_vc_arb_req;
output E_vc_arb_req;
output W_vc_arb_req;
output N_sw_arb_req;
output S_sw_arb_req;
output E_sw_arb_req;
output W_sw_arb_req;
output dec_N_buff_count;
output dec_S_buff_count;
output dec_E_buff_count;
output dec_W_buff_count;
output rst_N_usage;
output rst_S_usage;
output rst_E_usage;
output rst_W_usage;
output rd_en;
output[`FLIT_WIDTH-1:0]flit_out;

reg rd_en;
reg dec_N_buff_count;
reg dec_S_buff_count;
reg dec_E_buff_count;
reg dec_W_buff_count;
reg N_vc_arb_req;
reg S_vc_arb_req;
reg E_vc_arb_req;
reg W_vc_arb_req;
reg N_sw_arb_req;
reg S_sw_arb_req;
reg E_sw_arb_req;
reg W_sw_arb_req;

reg N_usage_out;
reg S_usage_out;
reg E_usage_out;
reg W_usage_out;
reg N_usage_out_next;
reg S_usage_out_next;
reg E_usage_out_next;
reg W_usage_out_next;
reg dec_N_buff_count_next;
reg dec_S_buff_count_next;
reg dec_E_buff_count_next;
reg dec_W_buff_count_next;



reg[2:0] state;
reg[2:0] next_state;
reg[2:0]next_hop;
wire[2:0]temp_next_hop;
reg read_request;
reg[2:0]sw_arb_port_next;
reg[2:0] sw_arb_port;
reg[`FLIT_WIDTH-1:0] flit_out_next;
reg[`FLIT_WIDTH-1:0] flit_out;
wire[2:0]next_hop_out;

wire[`MESH_SIZE-1 :0] flit_desn_x;
wire[`MESH_SIZE-1 :0] flit_desn_y;

assign flit_desn_x = flit_data[(2*`MESH_SIZE-1):(2+`MESH_SIZE)];
assign flit_desn_y = flit_data[`MESH_SIZE-1:2];
assign rst_N_usage = N_usage_out;
assign rst_S_usage = S_usage_out;
assign rst_E_usage = E_usage_out;
assign rst_W_usage = W_usage_out;
assign next_hop_out = temp_next_hop;

routing_table router0(.router_address_x(router_address_x),.router_address_y(router_address_y),.flit_desn_x(flit_desn_x),.flit_desn_y(flit_desn_x),.next_hop(temp_next_hop),.read_request(read_request));

always @(posedge Clk or negedge Rst)
begin
	if(!Rst)
	begin
		state <=  `INIT;
		next_hop<= 3'b000;
		sw_arb_port<= 3'b000;
	end
	else
	begin
		state <= next_state;
		next_hop<= next_hop_out;
		sw_arb_port<= sw_arb_port_next;
		flit_out <= flit_out_next;
		dec_N_buff_count <= dec_N_buff_count_next;
		dec_S_buff_count <= dec_S_buff_count_next;
		dec_E_buff_count <= dec_E_buff_count_next;
		dec_W_buff_count <= dec_W_buff_count_next;
		N_usage_out	 <= N_usage_out_next;
		S_usage_out	 <= S_usage_out_next;
		E_usage_out	 <= E_usage_out_next;
		W_usage_out	 <= W_usage_out_next;
	end
end

always @(state or sw_arb_port or N_buff_count or S_buff_count or E_buff_count or W_buff_count or router_address_x or router_address_y or flit_desn_y or flit_desn_x or temp_next_hop or next_hop or N_usage or S_usage or E_usage or W_usage or flit_data or fifo_full or fifo_empty or N_vc_arb_gnt or S_vc_arb_gnt or E_vc_arb_gnt or W_vc_arb_gnt or N_sw_arb_gnt or S_sw_arb_gnt or E_sw_arb_gnt or W_sw_arb_gnt)
begin
	next_state = 3'bx;

	case(state)
		`INIT: 		begin
					read_request = 1'b0;
					rd_en	     = 1'b0;
					N_vc_arb_req = 1'b0;
					S_vc_arb_req = 1'b0;
					E_vc_arb_req = 1'b0;
					W_vc_arb_req = 1'b0;
					N_sw_arb_req = 1'b0;
					S_sw_arb_req = 1'b0;
					E_sw_arb_req = 1'b0;
					W_sw_arb_req = 1'b0;
					N_usage_out_next = 1'b0;
					S_usage_out_next = 1'b0;
					E_usage_out_next = 1'b0;
					W_usage_out_next = 1'b0;
					dec_N_buff_count_next = 1'b0;
					dec_S_buff_count_next = 1'b0;
					dec_E_buff_count_next = 1'b0;
					dec_W_buff_count_next = 1'b0;

					if(fifo_empty)
						next_state = `INIT;
					else // If Fifo is not empty, read the flit and change to routing state
					begin
						rd_en =1'b1;
						next_state = `ROUTING;
					end
				end
						
		`ROUTING :	begin
					rd_en = 1'b0;
					read_request = 1'b0;	
					N_vc_arb_req = 1'b0;
					S_vc_arb_req = 1'b0;
					E_vc_arb_req = 1'b0;
					W_vc_arb_req = 1'b0;
					N_sw_arb_req = 1'b0;
					S_sw_arb_req = 1'b0;
					E_sw_arb_req = 1'b0;
					W_sw_arb_req = 1'b0;
					N_usage_out_next = 1'b0;
					S_usage_out_next = 1'b0;
					E_usage_out_next = 1'b0;
					W_usage_out_next = 1'b0;
					dec_N_buff_count_next = 1'b0;
					dec_S_buff_count_next = 1'b0;
					dec_E_buff_count_next = 1'b0;
					dec_W_buff_count_next = 1'b0;

					if(flit_data[1:0]==`HEAD)
					begin  // If router address is the same as the destination
						if((router_address_y == flit_desn_y) && (router_address_x == flit_desn_x ))
							next_state = `HOME;
						else // Need to determine the next hop in this case
						begin
							next_state = `VC_ARB;
							read_request = 1'b1; // Enable reading of the routing table
						end
					end
					else
					next_state = `ROUTING;
				end
	

		`VC_ARB:	begin
					read_request = 1'b0;	
					rd_en = 1'b0;	
					N_sw_arb_req = 1'b0;
					S_sw_arb_req = 1'b0;
					E_sw_arb_req = 1'b0;
					W_sw_arb_req = 1'b0;
					N_usage_out_next = 1'b0;
					S_usage_out_next = 1'b0;
					E_usage_out_next = 1'b0;
					W_usage_out_next = 1'b0;
					dec_N_buff_count_next = 1'b0;
					dec_S_buff_count_next = 1'b0;
					dec_E_buff_count_next = 1'b0;
					dec_W_buff_count_next = 1'b0;


					if(next_hop==`NORTH && !N_usage)
					begin
						N_vc_arb_req = 1'b1;
						S_vc_arb_req = 1'b0;
						E_vc_arb_req = 1'b0;
						W_vc_arb_req = 1'b0;
					end
					else if (next_hop==`SOUTH && !S_usage)
					begin
						N_vc_arb_req = 1'b0;
						S_vc_arb_req = 1'b1;
						E_vc_arb_req = 1'b0;
						W_vc_arb_req = 1'b0;
					end

					else if (next_hop==`EAST && !E_usage)
					begin
						N_vc_arb_req = 1'b0;
						S_vc_arb_req = 1'b0;
						E_vc_arb_req = 1'b1;
						W_vc_arb_req = 1'b0;
					end

					else if (next_hop==`NORTH && !W_usage)
					begin
						N_vc_arb_req = 1'b0;
						S_vc_arb_req = 1'b0;
						E_vc_arb_req = 1'b0;
						W_vc_arb_req = 1'b1;
					end

					else
					begin
						N_vc_arb_req = 1'b0;
						S_vc_arb_req = 1'b0;
						E_vc_arb_req = 1'b0;
						W_vc_arb_req = 1'b0;
					end

					if(N_vc_arb_gnt)
					begin
						next_state   = `SW_ARB;
						sw_arb_port_next  = `NORTH;
					end

					else if(S_vc_arb_gnt)
					begin
						next_state  =`SW_ARB;
						sw_arb_port_next = `SOUTH;
					end

					else if(E_vc_arb_gnt)
					begin
						next_state  = `SW_ARB;
						sw_arb_port_next = `EAST;
					end

					else if(W_vc_arb_gnt)
					begin
						next_state  = `SW_ARB;
						sw_arb_port_next = `WEST;
					end

					else
					begin
						next_state = `VC_ARB;
					//	sw_arb_port_next = `NORTH; // Some default
					end

				end						
		`SW_ARB:	begin
					read_request = 1'b0;	
					rd_en = 1'b0;	
					N_vc_arb_req = 1'b0;
					S_vc_arb_req = 1'b0;
					E_vc_arb_req = 1'b0;
					W_vc_arb_req = 1'b0;
					N_usage_out_next = 1'b0;
					S_usage_out_next = 1'b0;
					E_usage_out_next = 1'b0;
					W_usage_out_next = 1'b0;
					dec_N_buff_count_next = 1'b0;
					dec_S_buff_count_next = 1'b0;
					dec_E_buff_count_next = 1'b0;
					dec_W_buff_count_next = 1'b0;
					
					if(sw_arb_port == `NORTH && N_buff_count >0)
					begin
						N_sw_arb_req = 1'b1;
						S_sw_arb_req = 1'b0;
						E_sw_arb_req = 1'b0;
						W_sw_arb_req = 1'b0;
					end

					else if(sw_arb_port == `SOUTH && S_buff_count >0)
					begin
						N_sw_arb_req = 1'b0;
						S_sw_arb_req = 1'b1;
						E_sw_arb_req = 1'b0;
						W_sw_arb_req = 1'b0;
					end

					else if(sw_arb_port == `EAST && E_buff_count >0)
					begin
						N_sw_arb_req = 1'b0;
						S_sw_arb_req = 1'b0;
						E_sw_arb_req = 1'b1;
						W_sw_arb_req = 1'b0;
					end

					else if(sw_arb_port == `WEST && W_buff_count >0)
					begin
						N_sw_arb_req = 1'b0;
						S_sw_arb_req = 1'b0;
						E_sw_arb_req = 1'b0;
						W_sw_arb_req = 1'b1;
					end

					else
					begin
						N_sw_arb_req = 1'b0;
						S_sw_arb_req = 1'b0;
						E_sw_arb_req = 1'b0;
						W_sw_arb_req = 1'b0;
					end

					if(N_sw_arb_gnt)
					begin
						next_state   = `SW_TR;
					end

					else if(S_sw_arb_gnt)
					begin
						next_state  =`SW_TR;
					end

					else if(E_sw_arb_gnt)
					begin
						next_state  = `SW_TR;
					end

					else if(W_sw_arb_gnt)
					begin
						next_state  = `SW_TR;
					end

					else
						next_state = `SW_ARB;
					end	

			`SW_TR:		begin
						read_request = 1'b0;	
						rd_en	     = 1'b0;
						N_vc_arb_req = 1'b0;
						S_vc_arb_req = 1'b0;
						E_vc_arb_req = 1'b0;
						W_vc_arb_req = 1'b0;	
						N_sw_arb_req = 1'b0;
						S_sw_arb_req = 1'b0;
						E_sw_arb_req = 1'b0;
						W_sw_arb_req = 1'b0;


						if(sw_arb_port == `NORTH)
						begin
							dec_N_buff_count_next = 1'b1;
							dec_S_buff_count_next = 1'b0;
							dec_E_buff_count_next = 1'b0;
							dec_W_buff_count_next = 1'b0;
							flit_out_next = flit_data;
							N_usage_out_next = 1'b1;
							S_usage_out_next = 1'b0;
							E_usage_out_next = 1'b0;
							W_usage_out_next = 1'b0;

						end
							

						else if(sw_arb_port == `SOUTH)
						begin
							dec_S_buff_count_next = 1'b1;
							dec_N_buff_count_next = 1'b0;
							dec_E_buff_count_next = 1'b0;
							dec_W_buff_count_next = 1'b0;
							flit_out_next = flit_data;
							S_usage_out_next = 1'b1;
							N_usage_out_next = 1'b0;
							E_usage_out_next = 1'b0;
							W_usage_out_next = 1'b0;
						end
						

						else if(sw_arb_port == `EAST)
						begin
							dec_E_buff_count_next = 1'b1;
							dec_N_buff_count_next = 1'b0;
							dec_S_buff_count_next = 1'b0;
							dec_W_buff_count_next = 1'b0;
							flit_out_next = flit_data;
							E_usage_out_next = 1'b1;
							N_usage_out_next = 1'b0;
							S_usage_out_next = 1'b0;
							W_usage_out_next = 1'b0;
						end
						

						else if(sw_arb_port == `WEST)
						begin
							dec_W_buff_count_next = 1'b1;
							dec_N_buff_count_next = 1'b0;
							dec_S_buff_count_next = 1'b0;
							dec_E_buff_count_next = 1'b0;
							flit_out_next = flit_data;
							W_usage_out_next = 1'b1;
							N_usage_out_next = 1'b0;
							S_usage_out_next = 1'b0;
							E_usage_out_next = 1'b0;
						end

						else
						begin
							N_usage_out_next = 1'b0;
							S_usage_out_next = 1'b0;
							E_usage_out_next = 1'b0;
							W_usage_out_next = 1'b0;
							dec_N_buff_count_next = 1'b0;
							dec_S_buff_count_next = 1'b0;
							dec_E_buff_count_next = 1'b0;
							dec_W_buff_count_next = 1'b0;
						end
						
						if(flit_data[1:0] ==`TAIL && !fifo_empty)
							next_state = `ROUTING;

						else if(fifo_empty)
							next_state = `INIT;

						else // Implies that flit is not a tail flit
							next_state = `SW_ARB;

					end

			`HOME:		begin
						read_request = 1'b0;	
						rd_en	     = 1'b0;
						N_vc_arb_req = 1'b0;
						S_vc_arb_req = 1'b0;
						E_vc_arb_req = 1'b0;
						W_vc_arb_req = 1'b0;	
						N_sw_arb_req = 1'b0;
						S_sw_arb_req = 1'b0;
						E_sw_arb_req = 1'b0;
						W_sw_arb_req = 1'b0;
						N_usage_out_next = 1'b0;
						S_usage_out_next = 1'b0;
						E_usage_out_next = 1'b0;
						W_usage_out_next = 1'b0;
						dec_N_buff_count_next = 1'b0;
						dec_S_buff_count_next = 1'b0;
						dec_E_buff_count_next = 1'b0;
						dec_W_buff_count_next = 1'b0;

						if(flit_data[1:0] ==`TAIL && !fifo_empty)
							next_state = `ROUTING;

						else if(flit_data[1:0] ==`TAIL && fifo_empty)
							next_state = `INIT;

						else next_state = `INIT;
						end
			default : 	begin

						read_request = 1'b0;	
						rd_en	     = 1'b0;
						N_vc_arb_req = 1'b0;
						S_vc_arb_req = 1'b0;
						E_vc_arb_req = 1'b0;
						W_vc_arb_req = 1'b0;	
						N_sw_arb_req = 1'b0;
						S_sw_arb_req = 1'b0;
						E_sw_arb_req = 1'b0;
						W_sw_arb_req = 1'b0;
						N_usage_out_next = 1'b0;
						S_usage_out_next = 1'b0;
						E_usage_out_next = 1'b0;
						W_usage_out_next = 1'b0;
						dec_N_buff_count_next = 1'b0;
						dec_S_buff_count_next = 1'b0;
						dec_E_buff_count_next = 1'b0;
						dec_W_buff_count_next = 1'b0;
						next_state   = `INIT;
					end
	
	endcase
end

endmodule

