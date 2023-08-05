#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

winName = 4F DISPATCH - Vivaldi

^!b::
    ; Send, f
    ; Sleep 500
    Send, accounting@naturalproteins.ca
    Send, {Enter}
    Send, reception@rockypond.ca
    Send, {Enter}
    Send, keith@rockypond.ca
    Send, {Enter}
    Send, ^{Enter}
return

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