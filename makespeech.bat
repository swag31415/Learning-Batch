@echo off
set /p rvar=
set num=%random%
echo. > "temp%num%.vbs"
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp%num%.vbs"
echo speech.speak "%rvar%" >> "temp%num%.vbs"
exit