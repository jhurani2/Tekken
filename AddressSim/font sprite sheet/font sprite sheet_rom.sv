module font sprite sheet_rom (
	input logic clock,
	input logic [15:0] address,
	output logic [1:0] q
);

logic [1:0] memory [0:35327] /* synthesis ram_init_file = "./font sprite sheet/font sprite sheet.COE" */;

always_ff @ (posedge clock) begin
	q <= memory[address];
end

endmodule
