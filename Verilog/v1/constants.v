/*!
* @file constants.v
* @brief SHA256 Constants K ROM Module
* @author LDFranck
* @date February 2023
* @version v1
*
* @details
*  SHA256 constants K ROM module implementation in Verilog.
*  The module works as a ROM to store all compression constants K.
*  The output value 'out' is defined by 6-bits addressing 'addr'.
*/

module constants(out, addr);

	input  [5:0]  addr;
	output [31:0] out;

	reg [31:0] var;

	always @* begin
		case(addr)
			00 : var = 32'h 428a2f98;
			01 : var = 32'h 71374491;
			02 : var = 32'h b5c0fbcf;
			03 : var = 32'h e9b5dba5;
			04 : var = 32'h 3956c25b;
			05 : var = 32'h 59f111f1;
			06 : var = 32'h 923f82a4;
			07 : var = 32'h ab1c5ed5;
			08 : var = 32'h d807aa98;
			09 : var = 32'h 12835b01;
			10 : var = 32'h 243185be;
			11 : var = 32'h 550c7dc3;
			12 : var = 32'h 72be5d74;
			13 : var = 32'h 80deb1fe;
			14 : var = 32'h 9bdc06a7;
			15 : var = 32'h c19bf174;
			16 : var = 32'h e49b69c1;
			17 : var = 32'h efbe4786;
			18 : var = 32'h 0fc19dc6;
			19 : var = 32'h 240ca1cc;
			20 : var = 32'h 2de92c6f;
			21 : var = 32'h 4a7484aa;
			22 : var = 32'h 5cb0a9dc;
			23 : var = 32'h 76f988da;
			24 : var = 32'h 983e5152;
			25 : var = 32'h a831c66d;
			26 : var = 32'h b00327c8;
			27 : var = 32'h bf597fc7;
			28 : var = 32'h c6e00bf3;
			29 : var = 32'h d5a79147;
			30 : var = 32'h 06ca6351;
			31 : var = 32'h 14292967;
			32 : var = 32'h 27b70a85;
			33 : var = 32'h 2e1b2138;
			34 : var = 32'h 4d2c6dfc;
			35 : var = 32'h 53380d13;
			36 : var = 32'h 650a7354;
			37 : var = 32'h 766a0abb;
			38 : var = 32'h 81c2c92e;
			39 : var = 32'h 92722c85;
			40 : var = 32'h a2bfe8a1;
			41 : var = 32'h a81a664b;
			42 : var = 32'h c24b8b70;
			43 : var = 32'h c76c51a3;
			44 : var = 32'h d192e819;
			45 : var = 32'h d6990624;
			46 : var = 32'h f40e3585;
			47 : var = 32'h 106aa070;
			48 : var = 32'h 19a4c116;
			49 : var = 32'h 1e376c08;
			50 : var = 32'h 2748774c;
			51 : var = 32'h 34b0bcb5;
			52 : var = 32'h 391c0cb3;
			53 : var = 32'h 4ed8aa4a;
			54 : var = 32'h 5b9cca4f;
			55 : var = 32'h 682e6ff3;
			56 : var = 32'h 748f82ee;
			57 : var = 32'h 78a5636f;
			58 : var = 32'h 84c87814;
			59 : var = 32'h 8cc70208;
			60 : var = 32'h 90befffa;
			61 : var = 32'h a4506ceb;
			62 : var = 32'h bef9a3f7;
			63 : var = 32'h c67178f2;
		endcase
	end

	assign out = var;
	
endmodule