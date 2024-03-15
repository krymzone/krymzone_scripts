#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

~$LButton::
    While GetKeyState("LButton", "P"){
        Send {LButton down}
        Sleep 1  ;  milliseconds
        Send {LButton up}
	Sleep 1
    }
return

~$RButton::
    While GetKeyState("RButton", "P"){
        Send {RButton down}
        Sleep 1  ;  milliseconds
        Send {RButton up}
	Sleep 1
    }
return

\::Suspend