module CU(output [7:0]result, input[18:0] instruction); //Control Unit-> Acts as the complete CPU Module here

    wire [2:0]opcode = instruction[18:16];  //First 3 MSB bits of the instruction
    wire [7:0]operand1 = instruction[15:8]; // Next 8 bits of the instruction 
    wire [7:0]operand2 = instruction[7:0];  // Last 8 bits of the instruction

    wire [7:0]select;
    decoder_3X8 d1(opcode, select); //Generates the 8-bit select signal
    ALU alu1(operand1, operand2, select, result); //Input to the ALU takes 3 8-bit signals and produces the final 8-bit result

endmodule