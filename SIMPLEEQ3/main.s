
                .global main
main:
            ADRL    R4, Vals
            LDR     R1, [R4, #4] @OFFSET OF 4, VALS1 === SPACE == 4, SO     VALS2==WORD === VALS1+4
            LDR     R2, [R4, #Q]
            LDR     R3, [R4, #12]

            ADD     R0, R1, R2
            ADD     R0, R0, R3

            MOV     R7, #1
            SVC     0


            .equ        Q, 8

Vals:       .space      4 @not initilized, filled with 0s
            .word       2
            .word       4
            .word       5
            .align
            .end
