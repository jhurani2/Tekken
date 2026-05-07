module hit_effects_rom (
	input logic clock,
	input logic [10:0] address,
	output logic [3:0] q
);

logic [3:0] memory [0:1455] /* synthesis ram_init_file = "./hit_effects/hit_effects.COE" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
