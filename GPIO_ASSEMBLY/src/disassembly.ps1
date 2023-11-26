# File mã nguôn cần dịch. Ví dụ asm.S
$SourceFile = $args[0]
# Biên dịch
& .\compiling.ps1 $SourceFile
# Rồi hiện hơp ngữ
& .\objdump.ps1 $SourceFile.replace(".S",".o")