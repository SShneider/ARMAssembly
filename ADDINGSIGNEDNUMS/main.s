                    .global main

main:
                LDR     R0, =SIGNED_DATA
                MOV     R3, #9 @COUNTER
                MOV     R2, #0

L:              LDRSB       R1, [R0] @LOAD SIGNED BYTE
                ADD         R2, R2, R1
                ADD         R0, R0, #1
                SUBS        R3, R3, #1
                BNE         L


                MOV R7, #1
                SVC 0




SIGNED_DATA:                    .byte   +13, -10, +19, +14, -18, -9, +12, -19, +16
