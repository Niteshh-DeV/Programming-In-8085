; Basic Data Transfer Instructions

        MVI A, 25H        ; Load 25H into A
        MVI B, 10H        ; Load 10H into B
        MOV C, A          ; Copy A → C
        MOV D, B          ; Copy B → D
        MOV E, C          ; Copy C → E (additional example)

        HLT               ; Stop execution