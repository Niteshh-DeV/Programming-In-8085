# Contributing to 8085 Assembly Programs

Thank you for your interest in contributing to this educational repository! 🎓

## 🤝 How to Contribute

### Adding New Programs

1. **Choose the right category** for your program:
   - Arithmetic Instructions
   - Data Transfer
   - Logical Instructions
   - Branching Instructions
   - Machine Control Instructions

2. **Follow the naming convention**:
   - Use descriptive names (e.g., `MultiplyTwoNumbers.asm`)
   - Use PascalCase or snake_case consistently

3. **Include comprehensive comments**:
   ```asm
   ; Program title and description
   ; Input requirements
   ; Output location
   ; Algorithm explanation
   
   ; Your code with inline comments
   LDA 2050H    ; Load first number from memory
   ```

### Code Style Guidelines

#### ✅ Good Example
```asm
; ========================================
; ADDITION OF TWO 8-BIT NUMBERS
; ========================================
; Input: Two numbers at 2050H and 2051H
; Output: Sum at 2052H, Carry at 2053H
; ========================================

LDA 2050H        ; Load first number into accumulator
MOV B, A         ; Store first number in register B
LDA 2051H        ; Load second number into accumulator
ADD B            ; Add B to accumulator (A = A + B)
STA 2052H        ; Store sum at 2052H
JNC DONE         ; Jump if no carry
MVI A, 01H       ; Set carry flag indicator
STA 2053H        ; Store carry at 2053H
DONE: HLT        ; Halt execution
```

#### ❌ Avoid
```asm
LDA 2050H
MOV B,A
LDA 2051H
ADD B
STA 2052H
HLT
```

### Documentation Requirements

- **Add header comments** explaining the program's purpose
- **Document memory locations** used
- **Explain the algorithm** if it's not trivial
- **Include example inputs/outputs**
- **Note any limitations** (e.g., "works only for numbers < 10")

### Testing Your Code

Before submitting, please:
1. ✅ Test your program in an 8085 simulator (GNUSim8085 recommended)
2. ✅ Verify all register and memory values
3. ✅ Test edge cases (zero, maximum values, etc.)
4. ✅ Ensure comments are accurate

### Submitting Your Contribution

1. Fork the repository
2. Create a new branch (`git checkout -b feature/your-program-name`)
3. Add your program to the appropriate folder
4. Update README.md if adding a new category
5. Commit your changes (`git commit -m "Add program for XYZ operation"`)
6. Push to your branch (`git push origin feature/your-program-name`)
7. Open a Pull Request

### Pull Request Guidelines

Your PR description should include:
- **What** the program does
- **Why** it's useful for learning
- **How** to test it
- Any **special considerations** or limitations

## 🐛 Reporting Issues

Found a bug or error? Please open an issue with:
- File name and line number
- Expected behavior
- Actual behavior
- Screenshots from simulator if applicable

## 💡 Suggestions

Have ideas for improving the repository? We welcome:
- New program ideas
- Better algorithms for existing programs
- Documentation improvements
- Additional learning resources

## 📜 Code of Conduct

- Be respectful and constructive
- Focus on educational value
- Help beginners understand complex concepts
- Give credit where credit is due

## ❓ Questions?

Feel free to open an issue for questions about:
- 8085 programming concepts
- How to use simulators
- Understanding existing programs
- Contribution process

---

**Thank you for helping make this a valuable learning resource! 🚀**
