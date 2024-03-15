#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

*x::
Loop
{
if !GetKeyState("x", "P")
break
Send, {x down}
Sleep 1
Send, {x up}
Sleep 1
}
return

*z::
Loop
{
if !GetKeyState("z", "P")
break
Send, {z down}
Sleep 1
Send, {z up}
Sleep 1
}
return

\::suspend