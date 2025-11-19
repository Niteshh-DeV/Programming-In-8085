; Advanced Arithmetic Instructions

        MVI A, 20H        ; Load A = 20H
        ADI 10H           ; A = A + 10H = 30H

        INR A             ; A = A + 1 = 31H
        DCR A             ; A = A - 1 = 30H

        MVI B, 00H        ; Load B = 00H
        SUI 10H           ; A = A - 10H = 20H

        INX H             ; Increment HL register pair

        HLT