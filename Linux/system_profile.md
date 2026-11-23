# System Profile

| Component | Specification |
|---|---|
| CPU Model | AMD Ryzen 7 170 with Radeon Graphics |
| CPU Cores | 16 logical processors |
| Total RAM | 7.4 GiB |
| Available RAM | 6.8 GiB |
| Storage | 512 GB SSD |
| Operating System | Ubuntu 22.04.5 LTS (WSL2) |
| Kernel Version | 6.18.58.1-microsoft-standard-WSL2 |

> Note: This system runs Ubuntu under WSL2, so `lsblk` shows virtual disks. The physical drive type was confirmed from Windows Task Manager.

## Binary Number Representation

### Decimal 75 to Binary (repeated division by 2)

| Division | Quotient | Remainder |
|---|---|---|
| 75 ÷ 2 | 37 | 1 |
| 37 ÷ 2 | 18 | 1 |
| 18 ÷ 2 | 9 | 0 |
| 9 ÷ 2 | 4 | 1 |
| 4 ÷ 2 | 2 | 0 |
| 2 ÷ 2 | 1 | 0 |
| 1 ÷ 2 | 0 | 1 |

Reading the remainders from bottom to top: **75 = 1001011₂**

### Binary 110101 to Decimal (positional weights)

| Bit | 1 | 1 | 0 | 1 | 0 | 1 |
|---|---|---|---|---|---|---|
| Weight | 2⁵ = 32 | 2⁴ = 16 | 2³ = 8 | 2² = 4 | 2¹ = 2 | 2⁰ = 1 |

(1×32) + (1×16) + (0×8) + (1×4) + (0×2) + (1×1) = 32 + 16 + 0 + 4 + 0 + 1 = **53**

### Why do computers use binary?

Computers use binary because their circuits are built from transistors with two reliable states (on and off), which makes binary simple and dependable to implement in hardware.
