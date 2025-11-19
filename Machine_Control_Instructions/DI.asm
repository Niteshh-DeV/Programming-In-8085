; Program using EI, DI, and RST

        DI                ; Disable all interrupts
        MVI A, 10H        ; Load A = 10H

        EI                ; Enable interrupts
        RST 5             ; Software restart at address 0028H

        HLT