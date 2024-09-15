// Calculates R1 + R2 - R3 and stores the result in R0.
// (R0, R1, R2, R3 refer to RAM[0], RAM[1], RAM[2], and RAM[3], respectively.)



// Step 1: Add a and b
@R1      // Load the value of a (R1) into the A-register
D=M      // D = a
@R2      // Load the value of b (R2) into the A-register
D=D+M    // D = a + b

// Step 2: Subtract c
@R3      // Load the value of c (R3) into the A-register
D=D-M    // D = (a + b) - c

// Step 3: Store the result in R0
@R0      // Load the address of R0 into the A-register
M=D      // Store the result (a + b - c) in R0

(END)
@END
0;JMP


// Put your code here.