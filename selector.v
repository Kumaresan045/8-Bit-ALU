module selector(input [7:0] cand1 ,input [7:0] cand2 ,input [7:0] cand3,input [7:0] cand4, 
                input [3:0]select, output [7:0]otpt); //Selector module for selecting 1 bus from 4 8-bit input bus by taking a 4-bit 1-hot encoded select input

    wire [7:0] and1,and2,and3,and4;

    AND_2 gate1 (cand1,select[0],and1);
    AND_2 gate2 (cand2,select[1],and2);
    AND_2 gate3 (cand3,select[2],and3);
    AND_2 gate4 (cand4,select[3],and4);

    or ori[7:0] (otpt[7:0],and1[7:0],and2[7:0],and3[7:0],and4[7:0]);

endmodule