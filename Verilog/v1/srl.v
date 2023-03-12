/*!
* @file srl.v
* @brief SRL 32-bits Module
* @author LDFranck
* @date February 2023
* @version v1
*
* @details
*  32-bit Shift Right Logical (SRL) module implementation in Verilog.
*  The module shifts 'in' signal by 'N' positions to the right, with 'N'
*  a parameter that must be override during instantiation.
*/

module srl(out, in);

	parameter N = 1;
	
	input  [31:0] in;
	output [31:0] out;

	assign out = (in >> N);

endmodule