//for (i=0; i<n; i++)
//arr[i] = 20;
//Suppose arr=10 and n=10

//let arr = 10
@10
D=A
@arr
M=D

//let n = 10
@10
D=A
@n
M=D

//let i = 0
@i
M=0

 (LOOP)
//if (i==n) gotoEND
@i
D=M
@n
D=D-M
@END
D;JEQ

//RAM[arr+i] = 20
@arr
D=M
@i
A=D+M
M=20
//i++
@i
M=M+1
@LOOP
0;JMP

 (END)
@END
0;JMP