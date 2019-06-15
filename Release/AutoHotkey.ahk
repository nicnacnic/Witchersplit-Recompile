#SingleInstance Force

SetTitleMatchMode, 3
SendMode, Input
SetBatchLines, -1

; Prompt user for auto-spam key
vKey := 0
While vKey = 0
{
	InputBox, spamKey, Enter key, Enter your desired auto-spam key:`n(visit autohotkey.com/docs/KeyList.htm for valid keys)
	if ErrorLevel
		Exit
	vKey := GetKeyVK(spamKey)
	if vKey = 0
		MsgBox, "%spamKey%" is not a valid key.
}

; Main loop
Loop
{
	IfWinActive, The Witcher 3
	{
		if GetKeyState(spamKey, "P")
			Sendevent, {RButton down}{RButton up}
		Sleep, 10
	}
	else
	{
		Sleep, 1000
	}
}
