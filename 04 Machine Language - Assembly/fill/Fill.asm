// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
    @SCREEN
    D=A
    @i 
    M=D   // i=screen start
    @8192
    D=D+A
    @screenend
    M=D  //Screen end
    
(LOOP)
    @i
    D=M
    @screenend
    D=M-D
    @RESET
    D;JEQ // If (i-screenEnd) = 0 goto RESET
    @KBD    
    D=M  // Register D= A which is KBD
    @WHITE
    D;JEQ // If (KBD) = 0 goto WHITE
    @i
    A=M  
    M=-1     //make that pixel black
    @i
    M=M+1   // i++
    @LOOP
    0;JMP   // Goto LOOP
(WHITE)
    @i
    A=M
    M=0     //make that pixel white
    @i
    M=M+1   // i++
    @LOOP
    0;JMP   // Goto LOOP
    
(RESET)
    @SCREEN
    D=A
    @i
    M=D   //reset i to screen start
    @LOOP
    0;JMP   //Go back to loop
