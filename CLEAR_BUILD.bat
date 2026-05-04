REM === 清空 build 目录 ===
echo Cleaning build directory...
if exist build (
    rmdir /s /q build
)
mkdir build

REM === 添加 .gitkeep 文件 ===
type nul > build\.gitkeep