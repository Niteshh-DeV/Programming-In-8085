# 8085 Microprocessor Quick Reference Guide

## 📌 Register Overview

### General Purpose Registers (8-bit)
- **A** - Accumulator (primary register for arithmetic/logical operations)
- **B, C, D, E, H, L** - General purpose registers
- Can be paired: **BC, DE, HL** (16-bit register pairs)

### Special Purpose Registers
- **SP** - Stack Pointer (16-bit)
- **PC** - Program Counter (16-bit)
- **PSW** - Program Status Word (Accumulator + Flags)

### Flags (5 flags in Flag Register)
- **S** - Sign Flag (bit 7)
- **Z** - Zero Flag (bit 6)
- **AC** - Auxiliary Carry Flag (bit 4)
- **P** - Parity Flag (bit 2)
- **CY** - Carry Flag (bit 0)

---

## 🔧 Instruction Set Summary

### 1️⃣ Data Transfer Instructions (Copy/Move)

| Instruction | Operation | Example | Description |
|------------|-----------|---------|-------------|
| `MOV r1, r2` | r1 ← r2 | `MOV A, B` | Copy data from r2 to r1 |
| `MVI r, data` | r ← data | `MVI A, 05H` | Load immediate 8-bit data |
| `LXI rp, data16` | rp ← data16 | `LXI H, 2050H` | Load 16-bit immediate to register pair |
| `LDA addr` | A ← [addr] | `LDA 2050H` | Load accumulator direct |
| `STA addr` | [addr] ← A | `STA 3050H` | Store accumulator direct |
| `LDAX rp` | A ← [rp] | `LDAX B` | Load accumulator indirect (BC/DE) |
| `STAX rp` | [rp] ← A | `STAX D` | Store accumulator indirect |
| `LHLD addr` | L←[addr], H←[addr+1] | `LHLD 2050H` | Load HL direct |
| `SHLD addr` | [addr]←L, [addr+1]←H | `SHLD 3050H` | Store HL direct |
| `XCHG` | HL ↔ DE | `XCHG` | Exchange HL and DE |

---

### 2️⃣ Arithmetic Instructions

| Instruction | Operation | Flags Affected | Example |
|------------|-----------|----------------|---------|
| `ADD r/M` | A ← A + r | All | `ADD B` |
| `ADI data` | A ← A + data | All | `ADI 05H` |
| `ADC r/M` | A ← A + r + CY | All | `ADC C` |
| `ACI data` | A ← A + data + CY | All | `ACI 10H` |
| `SUB r/M` | A ← A - r | All | `SUB D` |
| `SUI data` | A ← A - data | All | `SUI 08H` |
| `SBB r/M` | A ← A - r - CY | All | `SBB E` |
| `SBI data` | A ← A - data - CY | All | `SBI 02H` |
| `INR r/M` | r ← r + 1 | All except CY | `INR A` |
| `DCR r/M` | r ← r - 1 | All except CY | `DCR B` |
| `INX rp` | rp ← rp + 1 | None | `INX H` |
| `DCX rp` | rp ← rp - 1 | None | `DCX D` |
| `DAD rp` | HL ← HL + rp | CY only | `DAD B` |

---

### 3️⃣ Logical Instructions

| Instruction | Operation | Flags Affected | Example |
|------------|-----------|----------------|---------|
| `ANA r/M` | A ← A AND r | All, CY=0 | `ANA B` |
| `ANI data` | A ← A AND data | All, CY=0 | `ANI 0FH` |
| `ORA r/M` | A ← A OR r | All, CY=0 | `ORA C` |
| `ORI data` | A ← A OR data | All, CY=0 | `ORI F0H` |
| `XRA r/M` | A ← A XOR r | All, CY=0 | `XRA D` |
| `XRI data` | A ← A XOR data | All, CY=0 | `XRI FFH` |
| `CMP r/M` | Compare A with r | All | `CMP E` |
| `CPI data` | Compare A with data | All | `CPI 05H` |
| `RLC` | Rotate A left | CY | `RLC` |
| `RRC` | Rotate A right | CY | `RRC` |
| `RAL` | Rotate A left through carry | CY | `RAL` |
| `RAR` | Rotate A right through carry | CY | `RAR` |
| `CMA` | A ← A' (complement) | None | `CMA` |
| `CMC` | CY ← CY' | CY | `CMC` |
| `STC` | CY ← 1 | CY | `STC` |

---

### 4️⃣ Branching Instructions

#### Unconditional Jump
| Instruction | Operation | Example |
|------------|-----------|---------|
| `JMP addr` | PC ← addr | `JMP 2050H` |

#### Conditional Jumps
| Instruction | Condition | Jump When |
|------------|-----------|-----------|
| `JZ addr` | Z = 1 | Result is zero |
| `JNZ addr` | Z = 0 | Result is not zero |
| `JC addr` | CY = 1 | Carry flag is set |
| `JNC addr` | CY = 0 | No carry |
| `JP addr` | S = 0 | Result is positive |
| `JM addr` | S = 1 | Result is minus (negative) |
| `JPE addr` | P = 1 | Parity is even |
| `JPO addr` | P = 0 | Parity is odd |

#### Subroutine Calls
| Instruction | Operation | Example |
|------------|-----------|---------|
| `CALL addr` | Call subroutine | `CALL 3000H` |
| `RET` | Return from subroutine | `RET` |
| `Ccc addr` | Conditional call | `CZ 3000H` |
| `Rcc` | Conditional return | `RZ` |

---

### 5️⃣ Stack Instructions

| Instruction | Operation | Example | Description |
|------------|-----------|---------|-------------|
| `PUSH rp` | [SP-1]←r1, [SP-2]←r2, SP←SP-2 | `PUSH B` | Push register pair |
| `POP rp` | r2←[SP], r1←[SP+1], SP←SP+2 | `POP H` | Pop register pair |
| `XTHL` | HL ↔ [SP] | `XTHL` | Exchange HL with top of stack |
| `SPHL` | SP ← HL | `SPHL` | Move HL to SP |

---

### 6️⃣ Machine Control Instructions

| Instruction | Operation | Description |
|------------|-----------|-------------|
| `HLT` | Stop execution | Halt the processor |
| `NOP` | No operation | Do nothing for 1 clock cycle |
| `DI` | Disable interrupts | Disable interrupt system |
| `EI` | Enable interrupts | Enable interrupt system |
| `RIM` | Read interrupt mask | Read interrupt status |
| `SIM` | Set interrupt mask | Set interrupt configuration |

---

### 7️⃣ Input/Output Instructions

| Instruction | Operation | Example |
|------------|-----------|---------|
| `IN port` | A ← [port] | `IN 08H` |
| `OUT port` | [port] ← A | `OUT 10H` |

---

## 🎯 Common Programming Patterns

### Pattern 1: Addition of Two 8-bit Numbers
```asm
LDA 2050H        ; Load first number
MOV B, A         ; Save in B
LDA 2051H        ; Load second number
ADD B            ; Add both numbers
STA 2052H        ; Store result
HLT
```

### Pattern 2: Largest of Two Numbers
```asm
LDA 2050H        ; Load first number
MOV B, A         ; Save in B
LDA 2051H        ; Load second number
CMP B            ; Compare with B
JNC STORE        ; If A >= B, store A
MOV A, B         ; Else move B to A
STORE: STA 2052H ; Store result
HLT
```

### Pattern 3: Counting Loop
```asm
MVI B, 0AH       ; Counter = 10
LOOP:
    ; Your code here
    DCR B        ; Decrement counter
    JNZ LOOP     ; Repeat if not zero
HLT
```

### Pattern 4: Array Sum
```asm
LXI H, 2050H     ; Point to array start
MVI B, 05H       ; Count = 5
MVI A, 00H       ; Sum = 0
LOOP:
    ADD M        ; Add array element
    INX H        ; Point to next element
    DCR B        ; Decrement count
    JNZ LOOP     ; Repeat
STA 3050H        ; Store sum
HLT
```

---

## 💡 Important Notes

### Memory Addressing
- **8085 uses 16-bit addresses** (0000H to FFFFH)
- **Little Endian format**: LSB stored at lower address

### Timing
- **Clock Frequency**: Typically 3-6 MHz
- **T-states**: Each instruction takes 1-6 machine cycles
- **Machine Cycle**: 3-6 T-states

### Common Mistakes to Avoid
1. ❌ Forgetting to initialize stack pointer (`LXI SP, FFFFH`)
2. ❌ Not using register pairs correctly (BC, DE, HL only)
3. ❌ Using `INX`/`DCX` when you need flag updates (use `INR`/`DCR`)
4. ❌ Incorrect memory initialization before loading
5. ❌ Not handling carry in multi-byte arithmetic

### Best Practices
1. ✅ Always comment your code
2. ✅ Use meaningful labels
3. ✅ Initialize all registers before use
4. ✅ Use subroutines for repeated code
5. ✅ Check flag status after arithmetic operations

---

## 📚 Opcode Table (Hex Values)

### Quick Reference for Common Instructions
| Instruction | Opcode | Bytes | T-states |
|------------|--------|-------|----------|
| `NOP` | 00H | 1 | 4 |
| `LXI B, data` | 01H | 3 | 10 |
| `MOV A, B` | 78H | 1 | 4 |
| `MVI A, data` | 3EH | 2 | 7 |
| `ADD B` | 80H | 1 | 4 |
| `ADI data` | C6H | 2 | 7 |
| `SUB B` | 90H | 1 | 4 |
| `JMP addr` | C3H | 3 | 10 |
| `JZ addr` | CAH | 3 | 10 |
| `CALL addr` | CDH | 3 | 18 |
| `RET` | C9H | 1 | 10 |
| `HLT` | 76H | 1 | 5 |

---

## 🔍 Debugging Tips

1. **Use breakpoints** in your simulator
2. **Check register values** after each instruction
3. **Monitor flags** especially after arithmetic/logical operations
4. **Verify memory contents** before and after execution
5. **Step through code** line by line for complex programs

---

**Created for educational purposes - Happy Coding! 🚀**
