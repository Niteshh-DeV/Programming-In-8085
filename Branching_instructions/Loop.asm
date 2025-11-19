; Loop Example Using JNZ

        MVI C, 05H        ; C = 5 (loop count)

LOOP:   DCR C             ; C = C - 1
        JNZ LOOP          ; Repeat loop until C = 0

        HLT