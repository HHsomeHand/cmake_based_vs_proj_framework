REM === 清空 vsproj_x86 目录 ===
echo Cleaning vsproj_x86 directory...
if exist vsproj_x86 (
    rmdir /s /q vsproj_x86
)
mkdir vsproj_x86

REM === 添加 .gitkeep 文件 ===
type nul > vsproj_x86\.gitkeep