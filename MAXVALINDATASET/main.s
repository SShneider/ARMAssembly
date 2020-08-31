COUNT       .req    R0
MAX         .req    R1
POINTER     .req    R2
NEXT        .req    R3

MYDATA:     .word   69, 87, 86, 45, 75


            .global main

main:
            MOV     COUNT, #5
            MOV     MAX, #0
            LDR     POINTER, =MYDATA @POINTS TO FIRST ELEMENT. USE OFFSET OF 4

AGAIN:      LDR     NEXT, [POINTER] @LOADED CONTENT OF THE POINTER INTO NEXT
            CMP     MAX, NEXT
            BHS     CTNU @IF MAX>NEXT BRANCH TO LABEL
            MOV     MAX, NEXT

CTNU:       ADD     POINTER, POINTER, #4 @EXECUTE OFFSET
            SUB     COUNT, COUNT, #1
            BNE     AGAIN @BRANCH IF COUNTER NOT ZERO

            MOV R7, #1
            SVC 0
            .end

