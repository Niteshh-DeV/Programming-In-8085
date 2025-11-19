; Comparing Two Values

        MVI A, 04H        ; A = 04H
        MVI B, 35H        ; B = 35H

        CMP B             ; Compare A with B (sets flags)
                          ; A < B → Carry flag = 1

        HLT