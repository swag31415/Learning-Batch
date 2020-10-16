@setlocal enabledelayedexpansion
@echo off
:2
set /a num=%random% %%100 
echo %num%
pause
goto 2