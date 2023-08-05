#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

winName = 4F DISPATCH - Vivaldi

IfWinExist, 4F DISPATCH - Vivaldi
{
    ^!m::
        WinActivate, 4F DISPATCH - Vivaldi
        Send, !{Enter}
        Send, {space}(confirmed)
        Send, {ENTER}
        Send, {UP}

    return

    ^!n:: 
        WinActivate, 4F DISPATCH - Vivaldi
        Send, !{Enter}
        Send, {space}(invoiced)
        Send, {ENTER}
        Send, {UP}
    return
}