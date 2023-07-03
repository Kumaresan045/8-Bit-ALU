module AND_2(input [7:0] op1, input op2, output [7:0] res); // 8-bit signal ANDed with a single bit

    and modulei[7:0] (res[7:0], op1[7:0], op2); //Used during selecting the output of the ALU

endmodule
