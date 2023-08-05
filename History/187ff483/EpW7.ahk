#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

winName = 4F DISPATCH - Vivaldi

IfWinExist, winName
{
    ^!m::
        WinActivate, winName
        Send, !{Enter}
        Send, {space}(confirmed)
        Send, {ENTER}
        Send, {UP}

    return

    ^!n:: 
        WinActivate, winName
        Send, !{Enter}
        Send, {space}(invoiced)
        Send, {ENTER}
        Send, {UP}
    return
}