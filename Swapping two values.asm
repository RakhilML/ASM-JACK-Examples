@R1
D=M  //pushing the value R1 into D register 
@temp
M=D  //putting D value into M //temp=R1

@R0
D=M  //pushing the value R0 into D register 
@R1
M=D  //R0 is put inside R1 //R1=R0

@temp //R1 is in R0, so it is accessed
D=M
@R0
M=D   //R0 = temp

(END)
@END
0;JMP


