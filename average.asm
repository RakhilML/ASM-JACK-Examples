
// Computes Ram[1] = 1 + 2 + ...+n
// Usage: put a number (n) in RAM[0]
//find the sum of 'n' number.
//then continous subtractionof sum from n, to get avg .

// Defining the variables 'n' , 'i' , 'sum' 'j' 'avg'


@R0
D=M
@n
M=D  // RAM[1] = n

@i
M=D 
M=1   // i = 1

@sum
M=0  // sum = 0

(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JGT  // if i > n goto STOP
@sum
D=M
@i
D=D+M
@sum
M=D   // sum = sum + i
@i
M=M+1 // i = i + 1
@LOOP
0;JMP

(STOP)
@sum
D=M
@R1
M=D          // sum=RAM[1]

@j
M=0           //j=0

@R1
D=M
(SUB) 
@R0
D=D-M           // computing avg. by continous subtraction from N.

@END
D;JLT            // if resulatnt value is less than 0, jump to END
@j
M=M+1             //j+1(loop)
@avg
M=D
@SUB
D;JGT             // else if resultant value > 0 ; repeat the process

(END)
@END
0;JMP  // Infinite loop