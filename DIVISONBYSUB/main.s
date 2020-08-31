
                .global main


main:

                LDR     R0, =2010
                MOV     R1, #10
                MOV     R2, #0

L:              CMP     R0, R1
                BLO     STOP
                SUBS    R0,R0,R1
                ADD     R2, R2, #1
                B       L
STOP:           B   STOP


