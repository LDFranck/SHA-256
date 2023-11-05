/*!
* @file lsigma1.v
* @brief Lowercase Sigma 1 Module
* @author LDFranck
* @date February 2023
* @version v1
*
* @details
*  Lowercase Sigma 1 module implementation in Verilog.
*  The module returns the result of 'sigma1' function applied 
*  to the input signal 'in'.
*/

module lsigma1(out, in);

	input  [31:0] in;
	output [31:0] out;

	wire [31:0] net [2:0];	//!< 3x 32-bits words

	shr #(10) u0(net[0], in);
	ror #(17) u1(net[1], in);
	ror #(19) u2(net[2], in);

	assign out = net[0] ^ net[1] ^ net[2];

endmodule
