REM === 关闭 Visual Studio 相关进程 ===
echo Closing Visual Studio processes...
taskkill /f /im devenv.exe >nul 2>&1
taskkill /f /im msbuild.exe >nul 2>&1

REM === 清空 vsproj_x64 目录 ===
echo Cleaning vsproj_x64 directory...
if exist vsproj_x64 (
    rmdir /s /q vsproj_x64
)
mkdir vsproj_x64

REM === 添加 .gitkeep 文件 ===
type nul > vsproj_x64\.gitkeep