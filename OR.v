module OR(input [7:0] op1, input [7:0] op2, output [7:0] res); //8-bit bitwise OR

    or modulei[7:0] (res[7:0], op1[7:0], op2[7:0]);

endmodule
