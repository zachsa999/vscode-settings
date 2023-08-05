#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

winName = 4F DISPATCH - Vivaldi

^!m::
    IfWinExist, winName
        WinActivate
    Send, !{Enter}
    Send, {space}(confirmed)
    Send, {ENTER}
    Send, {UP}
return

^!n:: 
    IfWinExist, winName
    {
        WinActivate
        Send, !{Enter}
        Send, {space}(invoiced)
        Send, {ENTER}
        Send, {UP}
    }
return