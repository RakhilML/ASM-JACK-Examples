@R0
D=M          // D = First no.input
@R1
D=D-M      
@Loop1
D;JGT       // if first no.input is greater
            // -goto LOOP1 
@R1
D=M         // D = SECOND NO.INPUT
@LOOP2
0;JMP      // GOTO LOOP2

(LOOP1)

@R0             
D=M             

(LOOP2)
@R2
M=D       // Greatest is stored in R2

(END)

@END
0;JMP    // infinite loop
