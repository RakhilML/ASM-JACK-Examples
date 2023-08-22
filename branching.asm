@5
D=M // D=RAM[5]
@8
D;JGT // jump to 8 if RAM[5]>0
@6
M=0 // RAM[6]=0 if RAM[5] is not greater than 0
@10
0;JMP
@6
M=1 // RAM[6]=1 if RAM[5]>0
@10
0;JMP