Dim autoHotkeyLocation
Dim keyPressed

'Please enter your variables between the quotation marks.

'AutoHotkey Location
'If using the default install location, replace <username> with your username.
autoHotkeyLocation = "C:\Users\<username>\Documents\Witchersplit\AutoHotkey.ahk"

'AutoHotkey Keybind
'A list of hotkeys can be found here: https://www.autohotkey.com/docs/KeyList.htm
keyPressed = "<hotkey>"

'Make sure to SAVE this file before closing!
'Do not edit anything below this line.

set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run autoHotkeyLocation, 9
WScript.Sleep 250
WshShell.SendKeys keyPressed
WScript.Sleep 250 
WshShell.SendKeys "{ENTER}"