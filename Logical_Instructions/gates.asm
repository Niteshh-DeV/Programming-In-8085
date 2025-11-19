; Basic Logical Instructions

        MVI A, 55H        ; A = 55H (01010101)
        MVI B, 0FH        ; B = 0FH (00001111)

        ANA B             ; A = A AND B = 05H

        MVI C, 33H        ; C = 33H
        ORA C             ; A = A OR C

        XRI 0AH           ; A = A XOR 0AH

        HLT