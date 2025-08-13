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

| Binary Input (`binary_in`) | Gray Output (`gray_out`) | Gray Input (`gray_in`) | Binary Output (`binary_out`) |
| -------------------------- | ------------------------ | ---------------------- | ---------------------------- |
| 0000                       | 0000                     | 0000                   | 0000                         |
| 0001                       | 0001                     | 0001                   | 0001                         |
| 0010                       | 0011                     | 0011                   | 0010                         |
| 0100                       | 0110                     | 0110                   | 0100                         |
| 1111                       | 1000                     | 1000                   | 1111                         |

---

## 👨‍💻 Author
- Divyansh Srivastava
- 📧 divyanshsri108@gmail.com
- 🌐 www.linkedin.com/in/divyansh-srivastava-00b74632a
git clone https://github.com/your-username/verilog-binary-gray-converters.git
cd verilog-binary-gray-converters
