@ECHO OFF

//Please fill the multiple SET commands with the location of each program.

SET RunLocation=C:\Users\nicnacnic\Documents\"WitcherSplit Recompile"\InjectorRun.bat
SET LivesplitLocation=C:\Users\nicnacnic\Documents\"WitcherSplit Recompile"\Livesplit.exe
SET AutoHotkeyLocation=C:\Users\nicnacnic\Documents\"WitcherSplit Recompile"\AutoHotkeyStart.vbs
SET Witcher3Folder=C:\"Program Files (x86)"\Steam\steamapps\common\"The Witcher 3 (1.06)"\bin\x64

SET ConfigFolder=C:\Users\nicnacnic\Documents\"The Witcher 3"

SET CPSettings=C:\Users\nicnacnic\Documents\Speedrunning\"WitcherSplit Recompile"\Settings\"Current Patch"
SET OPSettings=C:\Users\nicnacnic\Documents\Speedrunning\"WitcherSplit Recompile"\Settings\"Old Patch"

//Do not edit anything below this line.

taskkill /f /im autohotkey.exe
taskkill /f /im livesplit.exe
taskkill /f /im witcher3.exe
ECHO Don't mind the errors above, if any. This is normal.
ECHO.
ECHO 1) Current Patch (1.32)
ECHO 2) Old Patch (1.06)
SET /p Game=  Please choose your game version: 
If "%Game%"=="1" goto CurrentPatch
If "%Game%"=="2" goto OldPatch
ECHO.
:CurrentPatch
del %ConfigFolder% /F /Q
xcopy %CPSettings% %ConfigFolder% /S /Q /Y 
START %AutoHotkeyLocation%
timeout /t 2 > nul
START %LivesplitLocation%
ECHO.
ECHO Please load your Livesplit layout and splits, save, then exit Livesplit.
PAUSE
taskkill /f /im livesplit.exe
START %LivesplitLocation%
START %RunLocation%
timeout /t 3 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
GOTO Fail
:Fail
taskkill /f /im injector.exe
taskkill /f /im injectorRun.bat
START %RunLocation%
timeout /t 3 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
GOTO Fail
:OldPatch
ECHO.
del %ConfigFolder% /F /Q
xcopy %OPSettings% %ConfigFolder% /S /Q /Y 
START %AutoHotkeyLocation%
timeout /t 2 > nul
CD %OPWitcher3%
timeout /t 2 > nul
START witcher3.exe
START %LivesplitLocation%
EXIT
:Sucsess
EXIT