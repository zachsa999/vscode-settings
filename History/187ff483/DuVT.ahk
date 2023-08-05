#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

timeout = 2
confirmed = {space}(confirmed)
invoiced = {space}(invoiced)
winName = 4F DISPATCH - Vivaldi
; #F4F DISPATCH - Vivaldi
messText = (confirmed)

; #IfWinActive 4F DISPATCH - Vivaldi
; #IfWinActive 4F{space}DISPATCH{space}-{space}Vivaldi
If WinExist(winName)
    WinActivate
Send, !{Enter}
Send, {ENTER}
Send, {UP}
return

^!n::
    Run, %A_MyDocuments%\projects\AutoHotKey-Scripts\(invoiced).au3
return
^!m::

    ; Run, %A_MyDocuments%\projects\AutoHotKey-Scripts\(confirmed).au3