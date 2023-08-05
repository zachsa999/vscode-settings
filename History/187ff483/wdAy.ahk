#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

winName = 4F DISPATCH - Vivaldi

IfWinExist, winName
    WinActivate
^!m::
    Send, !{Enter}
    Send, {space}(confirmed)
    Send, {ENTER}
    Send, {UP}
return

^!n:: 
    Send, !{Enter}
    Send, {space}(invoiced)
    Send, {ENTER}
    Send, {UP}
return
