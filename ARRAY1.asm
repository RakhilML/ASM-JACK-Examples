//Creating an array of Size 10 with values 20

//Pseudo code:
//for (i=0, i<n; i++)
//Suppose arr=20 and n=10

// Setting value of arr = 20
//This means that our array will start RAM[20]
    @20
    D=A         //Since M can only take values 0 -1  and 1 
    @arr        //we need to store the value 20 in a D Register and then load it in M
    M=D         //Value of arr will get stored at RAM[16]
    
//n=10
//Creating an array of size 10(i.e., the no. of times program will run)
    @10
    D=A
    @n      
    M=D         // Value of n will get stored at RAM[17]

    // i=0
    //Setting value of i = 0
    @i       
    M=0         // Value of i will get stored at RAM[18]
 
(LOOP)
    //if (i==n goto END), This is our Termination Condition
    @i
    D=M
    @n
    D=D-M       //When i becomes 10, D= 10-10 =0
    @END
    D;JEQ      //If D==0, the loop will terminate

    // RAM[arr+i] = 20
    @arr
    D=M
    @i
    A=D+M       //RAM[arr+i]    
    M=D
   
    //Increasing value of i
    // i++
    @i
    M=M+1

    @LOOP
    0;JMP   //Running the Loop infinitely till the END condition becomes True

(END)  //When the End condition = True, the program comes her and JMP is performed
    @END
    0;JMP
