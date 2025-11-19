; Unconditional Jump Example

        MVI A, 10H        ; A = 10H
        JMP SKIP          ; Jump to label SKIP

        MVI A, 99H        ; This line will be skipped

SKIP:   INR A             ; A = A + 1 = 11H
        HLT