`default_nettype none
`timescale 1ns/1ps

module tb (
	input [3:0] din0,
	input [7:4] din1,
	output [7:0] dout
	);

	initial begin
		$dumpfile ("tb.vcd");
		$dumpvars (0, tb);
		#1;
	end

	wire [7:0] inputs = {din1, din0};
	wire [7:0] outputs;
	assign dout = outputs[7:0];

	tt2_tholin_multiplier tt2_tholin_multiplier (
		`ifdef GL_TEST
			.vccd1( 1'b1),
			.vssd1( 1'b0),
		`endif
		.io_in (inputs),
		.io_out (outputs)
	);

endmodule
