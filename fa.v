module fa(a, b, c_in, s, c_out); //1-Bit Full Adder

    input a, b, c_in;
    output s, c_out;
    
    //Implemented using Propagate and Generate Signals
    xor xor1(p,a,b); //Propagate
    and and1(g,a,b); //Generate
    and and2(g1,p,c_in);

    or or1(c_out,g,g1); //Carry
    xor xor2(s,p,c_in); //Sum

endmodule