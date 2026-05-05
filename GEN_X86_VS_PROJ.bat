REM === 1. 关闭 Visual Studio 相关进程 ===
echo Closing Visual Studio processes...
taskkill /f /im devenv.exe >nul 2>&1
taskkill /f /im msbuild.exe >nul 2>&1

REM === 2. 清空 vsproj_x64 目录 ===
echo Cleaning vsproj_x86 directory...
if exist vsproj_x86 (
    rmdir /s /q vsproj_x86
)
mkdir vsproj_x86

REM === 3. 进入目录 ===
cd vsproj_x86

REM === 4. 运行 CMake ===
echo Running CMake...
cmake -A Win32 ..

REM === 5. 复制 清理.bat 到当前目录 ===
echo Copying 清理.bat...
copy ..\清理.bat . >nul

REM === 6. 打开解决方案文件 ===
echo Opening solution...
for %%f in (*.sln) do (
    start "" "%%f"
)

REM === 7. 添加 .gitkeep 文件 ===
type nul > vsproj_x86\.gitkeep

echo Done.
pause