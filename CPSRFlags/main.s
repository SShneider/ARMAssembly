        .global main

main:
        MOV     R2, #4
        MOV     R3, #2
        MOV     R4, #4

        SUBS    R5, R2, R3 @R5 = r2-r3
        SUBS    R5, R2, R4

        MOV R7, #1
        SVC 0

        .end


