//computes Ram[1] = 10+11+12+Ram[0]
    @R0
    D=M 
    @n
    M=D       // n = R0
    
    @10
    D=A
    @i
    M=D      
   
    @sum
    M=0        

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @STOP
    D;JGT      
    @sum
    D=M 
    @i
    D=D+M
    @sum
    M=D
    @i          
    M=M+1     
    @LOOP
    0; JMP

(STOP)
    @sum 
    D=M
    @R1
    M=D          

(END)
    @END
    0; JMP
