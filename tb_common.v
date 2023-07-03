module fatb();

    reg [7:0] op1,op2,select;
    wire [7:0] res;
    
    ALU m1(op1,op2,select,res);
    
    initial
    begin

        $dumpfile ("fatb.vcd");
        $dumpvars (0, fatb);

        op1 = 8'b10101011; op2 = 8'b11001100; select = 8'b00000010; #20;
        op1 = 8'b10101011; op2 = 8'b11001100; select = 8'b00000100; #20;
        op1 = 8'b10101011; op2 = 8'b11001100; select = 8'b00001000; #20;
        op1 = 8'b10101011; op2 = 8'b11001100; select = 8'b00010000; #20;
        op1 = 8'b10101011; op2 = 8'b11001100; select = 8'b00100000; #20;
        op1 = 8'b10101011; op2 = 8'b11001100; select = 8'b01000000; #20;
        op1 = 8'b10101011; op2 = 8'b11001100; select = 8'b10000000; #20;
        
        $display ("Test Completed");
    
    end
    
endmodule