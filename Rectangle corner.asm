//draw a rectangle at the lower right corner. 
//32 pixel wide and 100 pixel long.
@R0
D=M
@n
M=D
@i
M=0
@21374
D=A
@addr
M=D

 (LOOP1)
@i
D=M
@n
D=D-M
@C2
D;JGT
@addr
A=M
M=-1
@i
M=M+1
@32
D=A
@addr
M=D+M
@LOOP1
0;JMP

 (C2)
@R0
D=M
@n
M=D
@i
M=0
@21375
D=A
@addr
M=D

 (LOOP 2)
@i
D=M
@n
D=D-M
@END
D;JGT
@addr
A=M
M=-1
@i
M=M+1
@32
D=A
@addr
M=D+M
@LOOP2
0;JMP

 (END)
@END
0;JMP