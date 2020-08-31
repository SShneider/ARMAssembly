@(A+8B+7C-27)/4

            .global main

main:
            MOV     R0, #25 @A
            MOV     R1, #19 @B
            ADD     R0, R0, R1, LSL#3 @ADD 8 B TO A PUT THE RESULT IN R0. LSL3 = 2^3*B
            MOV     R1, #99 @C
            MOV     R2, #7
            MLA     R0, R1, R2, R0  @ADD 7C TO R0 AND PUT THE RESULT IN R0; MLA MULTIPLIES 2ND VALUE BY 3RD VALUE THEN ADDS 4TH VALUE
            SUB     R0, R0, #27
            MOV     R0, R0, ASR #2 @ARITHMETIC SHIFT RIGHT. ASR2 = X/2^2


            MOV R7, #1
            SVC 0
            .end
