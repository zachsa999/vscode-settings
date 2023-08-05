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
^!m::
    Send, !{Enter}
    Send, {space}(confirmed)
    Send, {ENTER}
    Send, {UP}
return

^!n:: 
    Send, !{Enter}
    Send, {space}(confirmed)
    Send, {ENTER}
    Send, {UP}
return
