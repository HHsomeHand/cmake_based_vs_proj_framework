REM === 清空 vsproj_x64 目录 ===
echo Cleaning vsproj_x64 directory...
if exist vsproj_x64 (
    rmdir /s /q vsproj_x64
)
mkdir vsproj_x64

REM === 添加 .gitkeep 文件 ===
type nul > vsproj_x64\.gitkeep