; Program demonstrating NOP and HLT

        MVI A, 25H        ; Load A = 25H
        NOP               ; Do nothing (wastes 1 machine cycle)
        INR A             ; A = A + 1 = 26H

        HLT               ; Stop processor