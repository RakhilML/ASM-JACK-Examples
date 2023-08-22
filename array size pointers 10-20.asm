//make an array of size 10 with values 20 
//designing a loop that'll run ten times

@20    //arr=20
D=A
@arr
M=D    //value of arr is stored at R16

@10    //n=10
D=A
@n
M=D    // value of n is stored in R17
 
@i     //i=0
M=0    // value of i is stored in R18

(LOOP) 
@i   
D=M   //this will start out as 0 and then iterate
@n    // number of times to run: eg 10
D=D-M 
@END
D;JEQ //loop terminates

@arr //variable name (stored in 18 register)  
D=M 
@i
A=D+M //RAM[arr+i]
M=D 

@i   //i++
M=M+1

@LOOP
0;JMP //loop runs infinitely until the END condition is true

(END) //if the END condition is true, 
@END   //it goes here and runs infinite loop to end
0;JMP

