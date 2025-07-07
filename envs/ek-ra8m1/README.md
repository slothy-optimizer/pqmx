# Cortex-M85 Project
### Install
- JLink [v7.96h](https://www.segger.com/downloads/jlink/)
- An extension on VSCode called "Cortex Debug"
### How to run
#### Method 1 (Recommended)
1. In the terminal, set the ARM GCC toolchain path by entering: 
```export ARM_TOOLCHAIN_PATH="/opt/homebrew/opt/arm-none-eabi-gcc/bin"```
2. In the directory `RA8M1-main-2`, enter: 
```
cmake -DCMAKE_TOOLCHAIN_FILE=cmake/gcc.cmake -G Ninja -B build/Debug
```
3. In the directory `RA8M1-main-2`,, execute the following commands:
```
cd build/Debug
ninja
printf "Sleep 2000\nLoadFile bench_ra8m1.elf\ngo\nSleep 3600000" | JLinkExe -if SWD -device R7FA8M1AH -speed auto
```
4. Open a new terminal and run:
```telnet 127.0.0.1 19021```

#### Method 2
1. In the terminal, set the ARM GCC toolchain path by entering: 
```set ARM_GCC_TOOLCHAIN_PATH="/opt/homebrew/opt/arm-none-eabi-gcc/bin"```
2. In VScode, select the [GCC 14.2.1 arm-none-eabi] Kit from the status bar, then click `Build` to generate `bench_ra8m1.elf`
 (**If you modify the code, click `Build` again**)
3. In the terminal, execute the following commands:
```
cd build/Debug
ninja
printf "Sleep 2000\nLoadFile bench_ra8m1.elf\ngo\nSleep 3600000" | JLinkExe -if SWD -device R7FA8M1AH -speed auto
```
4. Open a new terminal and run:
```telnet 127.0.0.1 19021```

### Benchmark
| Function   | Avg cycles in  MVE | Avg cycles in C | Avg cycles in M4 |
|------------|--------------------|-----------------|------------------|
| UOV-Is: gf16mat_prod 2048_96  | 1287021 | 2688904 |          1018395 |
| UOV-Is: gf16mat_prod 48_64    | 21453   |   52976 |            16093 |
| UOV-Is: gf16mat_prod 32_X     | 3741    |    8491 |             2778 |
| UOV-Is: gf16trimat_2trimat_madd 96_48_64_32| 103,977,285 |776,791,141|114,558,066|
| GF16 ov_publicmap | 518,931 | 792,646 | |
| UOV-Ip: gf256mat_prod 1936_68 | 1188551 | 3088048 |          1397865 |
| UOV-Ip: gf256mat_prod 68_44   | 32946   |  145800 |            33619 |
| UOV-Ip: gf256mat_prod 44_X    | 10511   |   31539 |            11261 |
| UOV-Ip: gf256trimat_2trimat_madd 68_68_44_44 | 96,998,349 | 187,126,589 | 104,198,645 |

| UOV-Ip | cycles in C |
|----------|-------------|
| crypto_sign_keypair | 581,317,233 |
| crypto_sign | 10,233,294 |
| crypto_sign_open | 2,872,759 |
| crypto_sign_signature | 10,082,435 |
| crypto_sign_verify | 2,666,743 |

| UOV-Is | cycles in C |
|----------|-------------|
| crypto_sign_keypair |  |
| crypto_sign |  |
| crypto_sign_open |  |

## Unit Test
### GF16 Vector-scalar Multiplication
```
make run-vec-scalar-gf16.elf
```

### GF16 UOV Matrix-vector Multiplication
- UOV-Is: gf16mat_prod 2048_96
- UOV-Is: gf16mat_prod 48_64
- UOV-Is: gf16mat_prod 32_X

```
make run-mat-vec-gf16.elf
```

### UOV-Is: gf16trimat_2trimat_madd 96_48_64_32
```
make run-trimat-2trimat-madd-gf16.elf
```

### UOV publicmap
```
make run-uov-publicmap.elf
```

### UOV-Is (Working-On)
```
make run-uov-Is.elf
```

### GF16 MAYO Matrix Multiplication
```
make run-mayo-mat.elf
```

### GF256 Vector-scalar Multiplication
```
make run-vec-scalar-gf256.elf
```

### GF256 Matrix-vector Multiplication
- UOV-Ip: gf256mat_prod 1936_68
- UOV-Ip: gf256mat_prod 68_44
- UOV-Ip: gf256mat_prod 44_X
```
make run-mat-vec-gf256.elf
```
### UOV-Ip: gf256trimat_2trimat_madd 68_68_44_44
```
make run-trimat-2trimat-madd-gf256.elf
```