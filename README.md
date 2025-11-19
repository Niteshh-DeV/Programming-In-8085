# Programming-In-8085

A comprehensive collection of 8085 microprocessor assembly language programs for educational purposes. This repository contains simple code examples from class notes, organized by instruction types to help students learn 8085 assembly programming.

## 📖 About

This repository serves as a practical guide for learning 8085 assembly language programming. It includes well-commented code examples demonstrating various instruction types and programming concepts used in the Intel 8085 microprocessor.

The **8085 microprocessor** is an 8-bit microprocessor introduced by Intel in 1976. It's widely used in embedded systems and is a fundamental part of computer architecture education.

## 📁 Repository Structure

The repository is organized into the following categories based on instruction types:

### 1. **Arithmetic Instructions** (`Arithmetic_Instructions/`)
Programs demonstrating arithmetic operations:
- `Add.asm` - Basic addition and subtraction operations
- `Incr.asm` - Increment operations

### 2. **Data Transfer Instructions** (`Data_Transfer/`)
Programs demonstrating data movement operations:
- `Simple.asm` - Basic data transfer between registers
- `Advanced.asm` - Advanced data transfer operations

### 3. **Logical Instructions** (`Logical_Instructions/`)
Programs demonstrating logical operations:
- `gates.asm` - Basic logical operations (AND, OR, XOR)
- `Cmp.asm` - Compare operations
- `Advanced.asm` - Advanced logical operations

### 4. **Branching Instructions** (`Branching_instructions/`)
Programs demonstrating program flow control:
- `Jumping.asm` - Unconditional jump operations
- `Conditional_Jump.asm` - Conditional jump operations
- `Loop.asm` - Loop implementation using jumps

### 5. **Machine Control Instructions** (`Machine_Control_Instructions/`)
Programs demonstrating machine control operations:
- `NOP.asm` - No operation and halt demonstration
- `DI.asm` - Disable interrupt operations

### 6. **Root Level Programs**
- `Add.asm` - A complete example of addition with carry handling and I/O operations

## 🚀 How to Use

1. **Clone the repository:**
   ```bash
   git clone https://github.com/Niteshh-DeV/Programming-In-8085.git
   cd Programming-In-8085
   ```

2. **View the programs:**
   - Browse through the categorized folders
   - Each `.asm` file contains well-commented assembly code
   - Read the comments to understand what each instruction does

3. **Run the programs:**
   - Use an 8085 simulator/emulator like:
     - **GNUSim8085** - Open source 8085 simulator
     - **Jubin's 8085 Simulator**
     - **Online 8085 Simulators**
   - Load the `.asm` file into your chosen simulator
   - Assemble and execute the program
   - Observe the register values and memory contents

## 📚 Instruction Categories

### Arithmetic Instructions
Operations that perform mathematical calculations:
- `ADD`, `SUB`, `INR`, `DCR`, `ADI`, `SUI`

### Data Transfer Instructions
Operations that move data between registers and memory:
- `MOV`, `MVI`, `LDA`, `STA`, `LXI`, `LDAX`, `STAX`

### Logical Instructions
Operations that perform bitwise logic:
- `ANA`, `ORA`, `XRA`, `ANI`, `ORI`, `XRI`, `CMP`

### Branching Instructions
Operations that control program flow:
- `JMP`, `JC`, `JNC`, `JZ`, `JNZ`, `CALL`, `RET`

### Machine Control Instructions
Operations that control the processor:
- `HLT`, `NOP`, `DI`, `EI`, `RIM`, `SIM`

## 📖 Additional Resources

### Learning Materials
- **Lab Report** - Included as `Lab_Report1.pdf` for reference

### Recommended Reading
- Intel 8085 Datasheet
- Microprocessor Architecture, Programming, and Applications with the 8085 by Ramesh Gaonkar
- 8085 Microprocessor Programming and Interfacing by N.K. Srinath

### Online Resources
- [GNUSim8085 Simulator](https://github.com/GNUSim8085/GNUSim8085)
- [8085 Instruction Set Reference](https://www.tutorialspoint.com/microprocessor/microprocessor_8085_instruction_sets.htm)

## 🎓 Educational Purpose

These programs are designed for:
- Computer Science and Engineering students
- Electronics and Communication Engineering students
- Anyone learning microprocessor programming
- Educational institutions teaching 8085 architecture

## 📝 Notes

- All programs are written in 8085 assembly language
- Programs include detailed comments explaining each instruction
- Code examples are based on class notes and practical lab exercises
- Programs can be executed using any standard 8085 simulator

## 🤝 Contributing

Feel free to contribute by:
- Adding more example programs
- Improving documentation
- Fixing bugs or errors
- Suggesting improvements

## 📄 License

This repository is intended for educational purposes.

---

**Happy Learning! 🎉**
