$DUMP = $env:USERPROFILE + '\.platformio\packages\toolchain-riscv32-esp\bin\riscv32-esp-elf-objdump.exe'
$ACTIVE_ENV = 'esp32-c3-devkitm-1_debug'

$ObjectFile = $args[0]

# Hiển thị hợp ngữ, mã máy với file object nằm trong thư mục hiện hành, hoặc thư mục tạm
if (Test-Path -Path $ObjectFile) {
    & $DUMP -C -d  $ObjectFile
    Write-Host "$ObjectFile trong thu muc hien hanh"
} elseif (Test-Path -Path ..\.pio\build\$ACTIVE_ENV\src\$ObjectFile) {
    & $DUMP -C -d  ..\.pio\build\$ACTIVE_ENV\src\$ObjectFile 
    Write-Host "$ObjectFile o thu muc tam ..\.pio\build\$ACTIVE_ENV\src\"
} else {
    Write-Host "Khong co!"
}    