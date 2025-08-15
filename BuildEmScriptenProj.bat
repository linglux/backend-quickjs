@echo off
setlocal

set "BASE_DIR=%~dp0"
set EM_HOME=J:\\SGameMiniTrunk\\UnityEngine\\WindowsEditor\\WebGLSupport\\BuildTools\\Emscripten-win-x64
set EM_CONFIG=%EM_HOME%\\.emscripten
set EMSDK_PYTHON=%EM_HOME%\\python\\python.exe
set PATH=%PATH%;%BASE_DIR%;%EM_HOME%\\emscripten

call %EM_HOME%\\emscripten\\emmake.bat ninja -j 16
if %ErrorLevel% neq 0 (
    echo Error: make failed!
    exit /b %ErrorLevel%
)
