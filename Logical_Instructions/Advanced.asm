; Advanced Logical Instructions

        MVI A, 96H        ; Load A = 96H
        CMA               ; Complement A (bitwise NOT)

        STC               ; Set Carry flag
        CMC               ; Complement Carry flag (toggle)

        MVI B, 0FH        ; B = 0FH
        ANI 0F0H          ; A = A AND 0F0H (mask lower bits)

        HLT