@0
D=M      // D = RAM[0]
@1
D=D-M     // D = D - RAM[1]
@2
M=D
(END)
@END       // RAM[2]= D
0;JMP
