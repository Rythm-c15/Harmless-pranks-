@echo off 

color a 
echo Hello, do you love me?(Answer in only yes/no)
set /p input=
if /i %input%==Yes goto love
if /i %input%==No goto hate
if /i not %input%==Yes,No goto 1

:love
echo I Love You Too... Heart...Heart...Heart...
echo See You Later
pause
exit

:hate
echo But I Love You Too... Cry...Cry...Cry... pookie<3 :3
echo Blee you deserve it!
timeout 3
shutdown -s -t 0