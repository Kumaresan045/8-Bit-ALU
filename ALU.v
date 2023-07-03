module ALU(input [7:0] op1, input [7:0] op2, input [7:0] select, output [7:0] result); //Arithmetic Logic Unit

    wire [7:0] res0,res1,res2,res3; //Array of 4 8-bit bus to store the results of the combined adder and 3 other operations

    //Selecting operand2 and carrybit for the adder for implementing adding,subtracting,incrementing
    // And decrementing by using a single Adder module instance (single gate)
    wire [7:0] op2_final,op2_sub,op2_inc,op2_dec;
    NOT noti (op2,op2_sub);
    assign op2_inc = 8'b00000001;
    assign op2_dec = 8'b11111111;

    selector sel0 (op2,op2_sub,op2_inc,op2_dec,select[4:1],op2_final);
    and andi (carry_final,select[2],1'b1);

    //Computing the result of the combined Adder and the other 3 functions 
    ADD fun1 (op1, op2_final, carry_final, res0); //Combined Adder module for performing add,sub,inc,dec
    AND fun2 (op1, op2, res1);
    OR  fun3 (op1, op2, res2);
    NOT fun4 (op1, res3);

    //Selecting the final result from the 4 results
    wire [3:0] select2;
    assign select2[3:1]=select[7:5];
    or gateor (select2[0],select[1],select[2],select[3],select[4]);

    selector sel1 (res0,res1,res2,res3,select2,result);

endmodule