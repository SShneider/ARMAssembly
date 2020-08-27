.global main
//like export

main:
    LDR R0,=A
    //R0 points to allocated A
    MOV R1, #5
    //Move 5 to R1 reg
    STR R1, [R0]
    //store value from R1 in reg R0 which points to allocated mem A

    LDR R0,=C
    MOV R1, #4
    STR R1, [R0]

    LDR R0,=D
    MOV R1, #200
    STR R1, [R0]

    MOV R7, #1
    //SIGNIFIES TERMINATION OF THE PROGRAM
    SVC 0
    // HANDS OFF CONTROL TO OS
.data
A: .space  4
//allocates 4 bytes of space to memory
//B is reserved
C: .space 4
D: .space 4
    .align
    .end
