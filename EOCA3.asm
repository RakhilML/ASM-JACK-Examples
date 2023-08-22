//  array = { 0,1,2....10}
// To find: Sum and average of the elements of the array.

// intializing the variables
@count
@size

(LOOP)
@count
M=M+1  // counter++
D=M
A=M  //  the values of the array is stored in their  RAM locations 
M=D
@sum  
D=D+M  // summing the values of the array simultaneously 
M=D

@count
D=M
@size
D=M-D  //  size = 10(after the loop ends)

@LOOP
D;JGT

@sum
D=M
(SUB)
@10
D=D-A  // computs the avg by continous subtraction from 10.
@END
D;JLT  // if resulatnt < 0, jump to END
@avg
M=D
@SUB
D;JGT // else if resultant  > 0 ; repeat the process

@END
(END)
0;JMP  // infinite loop.