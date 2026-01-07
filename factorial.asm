LXI H, 2000H     ; HL → memory location of N
MOV B, M        ; B = N
MVI A, 01H      ; A = 1 (factorial result)

FACT:
DCR B           ; B = B - 1
JZ STORE        ; If B = 0, factorial done
MOV C, A        ; C = current result
MVI A, 00H      ; Clear A

MULT:
ADD C           ; A = A + C
DCR B           ; Decrease multiplier
JNZ MULT        ; Repeat multiplication

MOV B, C        ; Restore B
JMP FACT        ; Continue factorial loop

STORE:
LXI H, 2001H    ; Store result
MOV M, A
HLT