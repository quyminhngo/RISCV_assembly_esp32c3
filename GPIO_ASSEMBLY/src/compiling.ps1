$COMPILER = $env:USERPROFILE + '\.platformio\packages\toolchain-riscv32-esp\bin\riscv32-esp-elf-gcc.exe'
$ACTIVE_ENV = 'esp32-c3-devkitm-1_debug'
# File mã nguôn cần dịch. Ví dụ asm.S
$SourceFile = $args[0]
# Biên dịch ra file object
& $COMPILER -O0 -g -c $SourceFile 