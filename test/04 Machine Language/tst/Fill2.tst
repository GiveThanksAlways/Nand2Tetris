// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/fill/Fill.tst

load Fill.hack;
echo "Make sure that 'No Animation' is selected. Then, select the keyboard, press any key for some time, and inspect the screen.";

set RAM[24576] 1,    // a keyboard key is pressed
repeat {
  ticktock;
}
