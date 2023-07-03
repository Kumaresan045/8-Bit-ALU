module cu_v2_tb;

    reg [18:0] instruction;
    wire [7:0] result;
    CU uut (result, instruction) ;

    initial 
    begin

        $dumpfile ("cu_v2_tb.vcd");
        $dumpvars (0, cu_v2_tb);

        instruction = 19'b0010010001100010100; #20; //Addition                                            
        instruction = 19'b0100010001100010100; #20; //Subtraction
        instruction = 19'b0110010001100010100; #20; //Increment
        instruction = 19'b1000010001100010100; #20; //Decrement
        instruction = 19'b1010010001100010100; #20; //Bitwise And
        instruction = 19'b1100010001100010100; #20; //Bitwise Or
        instruction = 19'b1110010001100010100; #20; //Bitwise Not       
        $display ("Test Completed");
    end

endmodule

// Command to compile the code:
// iverilog fa.v ADD.v AND.v and_v2.v  OR.v NOT.v decoder_3x8.v  ALU.v CU.v cpu_testbench.v; 
// vvp a.out; gtkwave cu_v2_tb.vcd