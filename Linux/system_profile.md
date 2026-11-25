cat << 'EOF' > Linux/system_profile.md
# Workstation System Profile

| Component | Specification |
| :--- | :--- |
| **CPU Model & Cores** | 13th Gen Intel(R) Core(TM) i5-13420H — 5 Cores (WSL2) |
| **Memory (Total / Available)** | 2.8 GiB Total / 2.4 GiB Available |
| **Primary Storage** | 1 TB (sdd — Virtual Disk / SSD) |
| **OS & Kernel Version** | Ubuntu (WSL2) — Linux 6.18.58.1-microsoft-standard-WSL2 x86_64 |

---

## Binary Number Representation

### 1. Decimal `75` to Binary (Repeated Division by 2)
* $75 \div 2 = 37$ remainder **1**
* $37 \div 2 = 18$ remainder **1**
* $18 \div 2 = 9$ remainder **0**
* $9 \div 2 = 4$ remainder **1**
* $4 \div 2 = 2$ remainder **0**
* $2 \div 2 = 1$ remainder **0**
* $1 \div 2 = 0$ remainder **1**

Reading remainders bottom-to-top: **$75_{10} = 1001011_2$**

### 2. Binary `110101` to Decimal (Positional Weight Method)
$$(1 \times 2^5) + (1 \times 2^4) + (0 \times 2^3) + (1 \times 2^2) + (0 \times 2^1) + (1 \times 2^0)$$
$$= 32 + 16 + 0 + 4 + 0 + 1 = \mathbf{53_{10}}$$

### 3. Why Computers Use Binary
Computers use binary internally because digital circuits rely on two reliable, noise-resistant voltage states—ON (`1`) and OFF (`0`)—controlled by transistors.
EOF
