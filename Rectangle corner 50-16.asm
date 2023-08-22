@R0
D=M
@n
M=D    
@i
M=0
@22975
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
@22975
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
A=M    // writing to memory using a pointer
M=-1   // RAM[address] = -1 (16 pixels)
@i
M=M+1  // i = i + 1  
@32
D=A
@addr  // address = address + 32
M=D+M
@LOOP2
0;JMP

 (END)
@END
0;JMP