#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

timeout = 2
confirmed = (confirmed)
invoiced = (invoiced)
winName = 4F DISPATCH - Vivaldi
; #F4F DISPATCH - Vivaldi
messText = (confirmed)

; #IfWinActive 4F DISPATCH - Vivaldi
; #IfWinActive 4F{space}DISPATCH{space}-{space}Vivaldi
If WinExist(winName)
    ^!m::
    Run, %A_MyDocuments%\projects\AutoHotKey-Scripts\(confirmed).au3
return

^!n::
    Run, %A_MyDocuments%\projects\AutoHotKey-Scripts\(invoiced).au3
return