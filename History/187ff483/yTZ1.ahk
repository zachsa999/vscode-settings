#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

timeout = 2
confirmed = (confirmed)
invoiced = (invoiced)
winName = 4F DISPATCH - Vivaldi
; #F4F DISPATCH - Vivaldi
messText = (confirmed)

#IfWinActive winName
    ^!m::
        Run, %A_MyDocuments%\projects\AutoHotKey-Scripts\(confirmed).au3
    return

    ^!n::
        Run, %A_MyDocuments%\projects\AutoHotKey-Scripts\(invoiced).au3
    return