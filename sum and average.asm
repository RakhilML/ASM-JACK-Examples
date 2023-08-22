             // arr = 0
@0
D=A
@arr
M=D
            // n=10
@10
D=A
@n
M=D
           // i=0
@i
M=0
@sum
M=0
(LOOPA)
          // if (i==n) goto END
@i 
D=M
@n
D=D-M
@AVERAGE
D; JEQ 
@arr
D=M
@i
A=D+M
M=A+1
D=M
@sum 
M=M+D
@i 
M=M+1
@LOOPA
0; JMP

(AVERAGE)
@R10
M=0
@R11
@sum
D=M
@END
D; JEQ
@store
M=D
(LOOPB)
@n
D=D-M
@REMAINDER

D;JLT
@R10
M=M+1
@EVENLY
D; JEQ        
@LOOPB
0; JMP
(REMAINDER)
@n
D=D+M
@R11
M=D
(EVENLY)
@store
D=M
@sum
M=D
(END)
@END
0;JMP
