Dim autoHotkeyLocation

Dim keyPressed

'This is a comment by the way. The line starts with a single quotation mark (').

'AutoHotkey Location (put the location of the AutoHotkey.ahk file below, in-between the quotes)
autoHotkeyLocation = "C:\Users\nicnacnic\Documents\WitcherSplit Recompile\AutoHotkey.ahk"

'AutoHotkey Keybind (put your preferred AutoHotkey keybind below, in-between the quotes)
'A list of AutoHotkey keybinds can be found here: https://www.autohotkey.com/docs/KeyList.htm
keyPressed = "F12"

'Do not change anything below this line.
set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run autoHotkeyLocation, 9
WScript.Sleep 250
WshShell.SendKeys keyPressed
WScript.Sleep 250 
WshShell.SendKeys "{ENTER}"