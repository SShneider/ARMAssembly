
        .global main

main:
        LDR R0, =0xF62562FA
        LDR R1, =0xF412963B

        MOV R2, #0x35
        MOV R3, #0X21

        ADDS    R5, R0, R1
        ADC     R6, R0, R1 @R6 = R0+R1+C ADC = ADD CARRY

        MOV     R7, #1
        SVC 0

       .end
