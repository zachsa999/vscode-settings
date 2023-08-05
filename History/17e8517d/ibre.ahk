#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

^!h::
    Send accounting@naturalproteins.ca
    Sleep 5
    Send {Enter}
    Sleep 5
    Send reception@rockypond.ca
    Sleep 5
    Send {Enter}
    Sleep 5
    Send keith@rockypond.ca
    Sleep 5
    Send {Enter}
    Sleep 50
    Send ^{Enter}
return

^!k::
    ; Ties into a macro in Google sheets
    Send ^+!0
return

^!j::
    ; Ties into a macro in Google sheets
    Send ^+!9
return

; bind wasd keys to arrow keys software macro
#InstallKeybdHook

CapsLock::Return

^CapsLock::
    CapsLock
return