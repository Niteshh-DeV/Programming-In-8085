; Conditional Jump Example (JZ)

        MVI A, 05H        ; Load A = 5
        SUI 05H           ; A = A - 5 → A becomes 00H (Zero flag = 1)

        JZ ZERO_LABEL     ; Jump if A is zero

        MVI B, 55H        ; This line is skipped if zero

ZERO_LABEL:
        MVI B, 99H        ; Executes only if Zero flag is set
        HLT