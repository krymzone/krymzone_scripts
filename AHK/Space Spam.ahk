#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

*SPACE::
Loop
{
if !GetKeyState("Space", "P")
break
Send, {space down}
Sleep 1
Send, {space up}
Sleep 1
}
return

\::suspend