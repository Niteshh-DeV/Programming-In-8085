; ========================================
; FACTORIAL CALCULATION PROGRAM
; ========================================
; This program calculates N! (N factorial)
; Input: N stored at memory location 2000H
; Output: N! stored at memory location 2001H
; 
; Algorithm:
;   factorial = 1
;   while (N > 0):
;       factorial = factorial * N
;       N = N - 1
; 
; Example: If N = 5, Result = 5! = 120
; Note: Maximum input N = 5 (120 fits in 8 bits)
; ========================================

; Initialize
LXI H, 2000H     ; HL → memory location of N (input)
MOV B, M         ; B = N (load N into register B)
MVI A, 01H       ; A = 1 (initialize factorial result to 1)

; Main factorial loop
FACT:
DCR B            ; B = B - 1 (decrement N)
JZ STORE         ; If B = 0, factorial calculation complete, jump to STORE
MOV C, A         ; C = current factorial result (save for multiplication)
MVI A, 00H       ; A = 0 (clear accumulator for multiplication)

; Multiplication subroutine (A = C * B)
; Implements multiplication using repeated addition
MULT:
ADD C            ; A = A + C (add multiplicand)
DCR B            ; B = B - 1 (decrement multiplier)
JNZ MULT         ; If B ≠ 0, continue multiplication loop

; Prepare for next iteration
MOV B, C         ; B = C (restore counter value)
JMP FACT         ; Jump back to FACT for next iteration

; Store result and halt
STORE:
LXI H, 2001H     ; HL → output memory location
MOV M, A         ; Store factorial result at [2001H]
HLT              ; Halt the processor

; ========================================
; MEMORY MAP:
; 2000H - Input (N)
; 2001H - Output (N!)
; ========================================