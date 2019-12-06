// Require one such table for each router
// Need to fill out the case statements to create the loookup table
`define MESH_SIZE 3  // 7x7 mesh, 3 bits for each dimension`s address
`define NORTH 3'b001
`define SOUTH 3'b010
`define WEST 3'b011
`define EAST 3'b100

module routing_table(router_address_x,router_address_y,flit_desn_x,flit_desn_y,next_hop,read_request);

input  [`MESH_SIZE-1 :0]router_address_x;
input  [`MESH_SIZE-1 :0]router_address_y;
input  [`MESH_SIZE-1 :0]flit_desn_x;
input  [`MESH_SIZE-1 :0]flit_desn_y;
input read_request;
output[2:0] next_hop;

reg [2:0] temp_next_hop;
assign next_hop =(read_request)? temp_next_hop:next_hop ;

/*** THE ROUTING TABLE NEEDS TO BE POPULATED IN THE CASE STATEMENT BELOW, A DEFAULT XY ROUTING ALGORITHM IS IMPLEMENTED HERE */

always @(router_address_x or router_address_y or flit_desn_x or flit_desn_y)
begin

	if((flit_desn_y == router_address_y ))
	begin
		if((flit_desn_x > router_address_x))
			temp_next_hop = `SOUTH; 
		else
			temp_next_hop = `NORTH;
	end

	else
	begin
		if((flit_desn_y > router_address_y ))
			temp_next_hop = `EAST;
		else
			temp_next_hop = `WEST;
	end
end
/* case ({flit_desn_x,flit_desn_y})
	6'b000_001: temp_next_hop = `NORTH;
	default :  temp_next_hop = `SOUTH;
endcase*/
endmodule
