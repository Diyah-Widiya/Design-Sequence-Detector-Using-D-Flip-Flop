module dflip_flop(
    input           clk,
    input           rst,
    input           d,
    output reg      q
);

// TODO: Implementasi logika D 
//flip-flop di sini
 always @(posedge clk) begin
	if (rst) begin
		q <= 0;
	end else begin
		q <= d;
		end
 end
endmodule