module fsm_sq(
	input		clk,
	input		rst,
	input		w,
	output 	z
);

wire D2, D1; //next state
wire y2, y1; // state

//state register
dflip_flop DFF1(clk, rst, D1, y1);
dflip_flop DFF2(clk, rst, D2, y2);

//next state logic circuit
assign D2 = w & (y1 | y2);
assign D1 = w & (~y1) & (~y2);

//output logic
assign z = y2;


endmodule
