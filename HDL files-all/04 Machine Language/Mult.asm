// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    @i 
    M=1    // i=1
    @R2
    M=0    // sum
    
(LOOP)
    @i    
    D=M    // Register D=i
    @R1   
    D=D-M  // Register D= i-R1
    @END
    D;JGT // If (i-R1) > 0 goto END
    @R2
    D=M 
    @R0 
    D=D+M   // R2 += R0 (do this R1 times)
    @R2
    M=D
    @i
    M=M+1   // i++
    @LOOP
    0;JMP   // now go back to LOOP
(END)
    @END
    0;JMP    // Infinite loop