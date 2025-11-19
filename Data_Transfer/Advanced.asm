; Advanced Data Transfer Instructions

        LXI H, 9000H      ; HL = 9000H
        MVI A, 44H        ; Load 44H into A
        MOV M, A          ; Store A at memory 9000H

        INX H             ; HL = 9001H
        MVI B, 55H        ; Load 55H into B
        MOV M, B          ; Store B at memory 9001H

        LDA 9000H         ; Load A from memory 9000H
        STA 8500H         ; Store A to memory 8500H

        HLT               ; Terminate the program