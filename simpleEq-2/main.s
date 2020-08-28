
P:      .space      4@Reserve 4 bytes of memory
Q:      .word       2@created 32 bit var and initialized it to 2
R:      .word       4
S:      .word       5

            .global     main


main:
            LDR        R1, Q
            LDR        R2, R
            LDR        R3, S

            ADD        R0, R1, R2
            ADD        R0, R0, R3

            MOV        R7, #1
            SVC        0
            .end
