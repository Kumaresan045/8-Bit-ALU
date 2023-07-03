# README

## File Details

1.  ADD.v               # Source code for ADD Module.
2.  ALU.v               # Source code for ALU Module.
3.  and_v2.v            # Source code for AND_2 Module.
4.  AND.v               # Source code for AND Module.
5.  cpu_testbench.v     # Test bench for entire CPU design module.
6.  CU.v                # Source code for CU Module.
7.  decoder_3x8.v       # Source code for decoder_3x8 Module.
8.  fa.v                # Source code for fa Module.
9.  NOT.v               # Source code for NOT Module.
10. OR.v                # Source code for OR Module.
11. selector.v          # Source code for selector Module.
12. tb_common.v         # Test bench created to test individual modules.

## Workflow

1. Once the zip file is extracted, change the current directory in the terminal to    the parent directory of this README.md file. Can be ensured by typing the command "ls" and checking if all the .v files are shown.

2. To test the code, run the following command:
"iverilog AND.v and_v2.v fa.v ADD.v OR.v NOT.v selector.v ALU.v decoder_3x8.v  CU.v cpu_testbench.v; vvp a.out; gtkwave cu_v2_tb.vcd" (without quotes ofc!).

3. This output was shown in the user's machine when compilation and running was successfull:

VCD info: dumpfile cu_v2_tb.vcd opened for output.
Test Completed

GTKWave Analyzer v3.3.100 (w)1999-2019 BSI

[0] start time.
[140] end time.

4. After closing the gtkwave window, an extra line "WM Destroy" is added at the terminal and the task is terminated successfully.

