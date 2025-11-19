; Basic Arithmetic Operations

        MVI A, 15H        ; Load 15H into A
        MVI B, 05H        ; Load 05H into B
        ADD B             ; A = A + B = 15H + 05H = 1AH

        MVI C, 03H        ; Load 03H into C
        SUB C             ; A = A - C = 1AH - 03H = 17H

        HLT               ; Stop execution

