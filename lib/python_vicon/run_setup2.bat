@echo off

:: Setup MSVC 2022 environment
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

:: Set Python path (Python 3.7.7 from WinPython)
set PYTHON_PATH=C:\Users\LAB_PC\Desktop\WPy64-3771\python-3.7.7.amd64\python.exe

:: Build extension
%PYTHON_PATH% setup.py build

:: Copy resulting .pyd file to current directory
for /r %%i in (build\lib.*\pyvicon.pyd) do copy "%%i" .\

pause
