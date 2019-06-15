@ECHO OFF
//Please fill the four SET commands with the location of each program.
//EXAMPLE: SET LivesplitLocation=C:\Users\nicnacnic\Desktop\Livesplit\Livesplit.exe
//It's really not that hard!
SET LivesplitLocation=
SET AutoHotkeyLocation=
SET InjectorLocation=
SET RunLocation=
:Start
@ECHO.
@ECHO  The Witcher 3: Wild Hunt Speedrun Launcher, Created By nicnacnic
@ECHO  Original Script Created By Phillipp The Cat
@ECHO.
timeout /t 2 > nul
@ECHO  Please make sure to fill out the SET commands with a text editor with the location of each program before running this file. Thanks!
@ECHO.
timeout /t 3 > nul
@ECHO  Starting AutoHotkey...
@ECHO.
timeout /t 1 > nul
START %AutoHotkeyLocation%
timeout /t 1 > nul
@ECHO  Please enter the key you want to use for the AutoHotkey, press 'Ok', then press any key to continue in this script.
@ECHO.
timeout /t 3 > nul
PAUSE
timeout /t 1 > nul
@ECHO.
@ECHO  Starting Livesplit...
@ECHO.
timeout /t 1 > nul
START %LivesplitLocation%
timeout /t 1 > nul
tasklist /FI "IMAGENAME eq livesplit.exe" 2>NUL | find /I /N "livesplit.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO LSRun
GOTO LSFail
:LSFail
@ECHO  Looks like we have an error... Sad :(
@ECHO.
timeout /t 1 > nul
@ECHO  According to Windows, Livesplit is not open.
@ECHO.
timeout /t 1 > nul
@ECHO  Try this! Make sure the location of Livesplit is correct. [%LivesplitLocation%]
@ECHO.
timeout /t 1 > nul
@ECHO  If the location is wrong, just change it to the correct location by editing this file!
@ECHO.
timeout /t 1 > nul
@ECHO  Best of luck!
@ECHO.
timeout /t 1 > nul
PAUSE
EXIT
:LSRun
timeout /t 3 > nul
@ECHO  Livesplit Started!
@ECHO.
timeout /t 1 > nul
@ECHO  Starting Injector...
@ECHO.
START %InjectorLocation%
tasklist /FI "IMAGENAME eq injector.exe" 2>NUL | find /I /N "injector.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO IRun
GOTO IFail
:IFail
@ECHO.
@ECHO  Looks like we have an error... Sad :(
@ECHO.
timeout /t 1 > nul
@ECHO  According to Windows, the Injector cannot be found.
@ECHO.
timeout /t 1 > nul
@ECHO  Try this! Make sure the location of the Injector is correct. [%InjectorLocation%]
@ECHO.
timeout /t 1 > nul
@ECHO  If the location is wrong, just change it to the correct location by editing this file!
@ECHO.
timeout /t 1 > nul
@ECHO  Best of luck!
@ECHO.
timeout /t 1 > nul
PAUSE
EXIT
:IRun
tasklist /FI "IMAGENAME eq injector.exe" 2>NUL | find /I /N "injector.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO IRan
GOTO IOpen
:IOpen
@ECHO  Injector Start Sucsessful!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Looks like we have an error... Sad :(
@ECHO.
timeout /t 1 > nul
@ECHO  According to Windows, the Injector is still open.
@ECHO.
timeout /t 1 > nul
@ECHO  Try this! Look in [%InjectorLocation%], run the Injector, and see if it closes down without help from this file.
@ECHO.
timeout /t 1 > nul
@ECHO  If it still dosen't close, contact nicnacnic or Phillipp The Cat on Discord!
@ECHO.
timeout /t 1 > nul
@ECHO  Best of luck!
@ECHO.
timeout /t 1 > nul
PAUSE
EXIT
:IRan
@ECHO  Injector Start Sucsessful!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 1/10] Running Script...
@ECHO.
timeout /t 1 > nul
START %RunLocation%
timeout /t 1 > nul
tasklist /FI "IMAGENAME eq injector.exe" 2>NUL | find /I /N "injector.exe">NUL
if "%ERRORLEVEL%"=="0" GOTO SRan
GOTO SFail
:SFail
@ECHO  Looks like we have an error... Sad :(
@ECHO.
timeout /t 1 > nul
@ECHO  According to Windows, the run.bat script cannot be found.
@ECHO.
timeout /t 1 > nul
@ECHO  Try this! Make sure the location of the script is correct. [%RunLocation%]
@ECHO.
timeout /t 1 > nul
@ECHO  If the location is wrong, just change it to the correct location by editing this file!
@ECHO.
timeout /t 1 > nul
@ECHO  Best of luck!
@ECHO.
timeout /t 1 > nul
PAUSE
EXIT
:SRan
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
GOTO Fail
:Sucsess
@ECHO  Sucsess! The Script Worked!
@ECHO.
timeout /t 1 > nul
@ECHO  Please enjoy your game! :)
@ECHO.
timeout /t 1 > nul
@ECHO  Oh, and also, best of luck on your run!
@ECHO.
timeout /t 1 > nul
@ECHO  For your convenience, this window will close in 5 seconds... Catch you later!
@ECHO.
timeout /t 4 > nul
@ECHO  Bye!
@ECHO.
timeout /t 1 > nul
EXIT
:Fail
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 2/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 3/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 4/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 5/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 6/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 7/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 8/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 9/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  Oh no, looks like the script decided to not do it's job!
@ECHO. 
timeout /t 1 > nul
@ECHO  At lease this launcher is here to do all the work!
@ECHO.
timeout /t 1 > nul
@ECHO  Now waiting for it to error out and close...
@ECHO.
timeout /t 2 > nul
@ECHO  Sucsess!
@ECHO.
timeout /t 1 > nul
@ECHO  [Attempt 10/10] Running Script...
@ECHO.
START %RunLocation%
timeout /t 2 > nul
@ECHO  Waiting For Script Verification...
@ECHO.
timeout /t 5 > nul
tasklist /FI "IMAGENAME eq witcher3.exe" 2>NUL | find /I /N "witcher3.exe" >NUL
if "%ERRORLEVEL%"=="0" GOTO Sucsess
@ECHO  That's the last straw!
@ECHO.
timeout /t 1 > nul
@ECHO  Try relaunching this launcher, maybe then i'll work!
@ECHO.
timeout /t 1 > nul
@ECHO  For your convenience, this window will close in 5 seconds... Catch you later!
@ECHO.
timeout /t 4 > nul
@ECHO  Bye!
@ECHO.
timeout /t 1 > nul
EXIT
