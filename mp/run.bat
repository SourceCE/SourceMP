@echo off
echo Running game...

@start /D "D:\SteamLibrary\steamapps\common\Source SDK Base 2013 Singleplayer" hl2.exe -dev -windowed -h 720 -w 1280 +sv_cheats 1 -console -novid -game "%CD%\game\sdk2013CE" -condebug

if %ERRORLEVEL% NEQ 0 goto error
goto success

:success
exit

:error
echo Error launching game!
pause
exit
