@echo off
@title Input
mode 21,5

:loop
cls
echo Use the WASD to move
echo p/Pause  c/Close

choice /c:wasdpc /n

if ERRORLEVEL 6 exit

if ERRORLEVEL 5 (
echo pause>>moves.txt
goto loop)

if ERRORLEVEL 4 (
echo d>>moves.txt
goto loop)

if ERRORLEVEL 3 (
echo s>>moves.txt
goto loop)

if ERRORLEVEL 2 (
echo a>>moves.txt
goto loop)

if ERRORLEVEL 1 echo w>>moves.txt
goto loop
