@echo off
setlocal


echo Start to build

REM 设置 Visual Studio 的路径
set VS_PATH="C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\devenv.exe"

REM 获取当前目录
set SOLUTION_PATH="%~dp0clawPDF.sln"

REM 编译解决方案
%VS_PATH% %SOLUTION_PATH% /build Release

REM 检查编译结果
if %ERRORLEVEL% NEQ 0 (
    echo Build Fail
    exit /b %ERRORLEVEL%
)

echo Build Success
pause
endlocal