module ALU_Control(
	input [3:0] ALUOp,
	input [5:0] funct,
	output reg jr,
	output reg[3:0] ALUfunc);

	always @ (ALUOp, funct, ALUfunc)
		begin
			jr = 0;
			case(ALUOp)
				4'b0010: //R-type instructions
					begin 
						case (funct)
							6'b100001: ALUfunc = 4'b0010;
							6'b100001: ALUfunc = 4'b0110;
							6'b100001: ALUfunc = 4'b0000;
							6'b100001: ALUfunc = 4'b0001;
							6'b100001: ALUfunc = 4'b1001;
							6'b100001: ALUfunc = 4'b1010;
							6'b100001: ALUfunc = 4'b1011;
							6'b100001: ALUfunc = 4'b1100;
							6'b100001: ALUfunc = 4'b0111;
							6'b100001: ALUfunc = 4'b1110;
							6'b100001: begin ALUfunc = 4'b0010; jr = 1; end
						endcase
					end
				4'b0011: ALUfunc = 4'b1101;
				4'b0000: ALUfunc = 4'b0010;
				4'b0101: ALUfunc = 4'b0000;
				4'b0110: ALUfunc = 4'b0001;
				4'b0111: ALUfunc = 4'b1001;
				4'b0100: ALUfunc = 4'b0111;
				4'b0001: ALUfunc = 4'b0110;
				4'b1001: ALUfunc = 4'b1110;
			endcase
		end
endmodule

