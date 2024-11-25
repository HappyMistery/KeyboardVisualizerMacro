@echo off
set "EXE_PATH=C:\Program Files\Audio Visualizer 3.06\KeyboardVisualizer.exe"
set "EXE_NAME=KeyboardVisualizer.exe"

:: Check if the program is already running
tasklist /FI "IMAGENAME eq %EXE_NAME%" | find /I "%EXE_NAME%" >nul
if not errorlevel 1 (
    taskkill /F /T /IM "%EXE_NAME%"
    exit
)

:: If the program is not running, start it minimized
start /min "" "%EXE_PATH%"
exit
