module ADD(input [7:0] op1, input [7:0] op2,input c0, output [7:0] res); //8-bit adder

    wire [8:0] carry;
    assign carry[0]=c0;
    //Implemented as a Ripple Carry Adder
    fa fai[7:0] (op1[7:0], op2[7:0], carry[7:0], res[7:0], carry[8:1]);

endmodule
