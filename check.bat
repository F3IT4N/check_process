@echo off
Set "MyApplication=C:\.exe"
Set "MyProcess=.exe"
Color 9B
Title Check Process "%MyProcess%" by F3IT4N
mode con cols=75 lines=2
:start 
cls
tasklist /nh /fi "imagename eq %MyProcess%" 2>nul |find /i "%MyProcess%" >nul
If not errorlevel 1 (Echo "%MyProcess%" Running) else (start "" "%MyApplication%")
timeout /t 420 >nul 
goto start
