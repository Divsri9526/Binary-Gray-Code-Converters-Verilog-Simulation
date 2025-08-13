# 🔢 Binary ↔ Gray Code Converters in Verilog

## 📌 Project Overview
This project implements **three Verilog modules** to perform conversions between Binary and Gray codes:

1. **Binary to Gray Converter** – Converts standard binary numbers to Gray code.
2. **Gray to Binary Converter** – Converts Gray code back to binary numbers.
3. **Combined Binary ↔ Gray Converter** – Performs both conversions in a single module.

These converters are widely used in **digital communication systems, positional encoders, and error detection** because Gray code ensures that only **one bit changes** between consecutive values, reducing errors.

---

## 🛠 Features
- **Parameterizable bit-width** (default: 4-bit)
- **Separate modules** for modular design
- **Combined module** for dual conversion
- **Fully tested** with Verilog testbenches
- **Beginner-friendly** with clear comments

---

## 📜 Binary → Gray Conversion Logic
For an N-bit number:
- MSB is unchanged: `Gray[N-1] = Binary[N-1]`
- Remaining bits: `Gray[i] = Binary[i+1] ^ Binary[i]`

---

## 📜 Gray → Binary Conversion Logic
For an N-bit number:
- MSB is unchanged: `Binary[N-1] = Gray[N-1]`
- Remaining bits: `Binary[i] = Binary[i+1] ^ Gray[i]`

---

## 📌 Example Simulation Output

Binary_in = 0000 | Gray_out = 0000 |-| Gray_in = 0000 | Binary_out = 0000
Binary_in = 0001 | Gray_out = 0001 |-| Gray_in = 0001 | Binary_out = 0001
Binary_in = 0010 | Gray_out = 0011 |-| Gray_in = 0011 | Binary_out = 0010
Binary_in = 0100 | Gray_out = 0110 |-| Gray_in = 0110 | Binary_out = 0100
Binary_in = 1111 | Gray_out = 1000 |-| Gray_in = 1000 | Binary_out = 1111

---

## 👨‍💻 Author
-> Divyansh Srivastava
📧 divyanshsri108@gmail.com
🌐 www.linkedin.com/in/divyansh-srivastava-00b74632a

git clone https://github.com/your-username/verilog-binary-gray-converters.git
cd verilog-binary-gray-converters
