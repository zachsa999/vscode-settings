#SingleInstance, Force
#InstallKeybdHook

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

; bind wasd keys to arrow keys software macro

CapsLock::
    Send {Delete}
Return

!CapsLock::
    Send {CapsLock}
return

CapsLock & a::
Send {Left}
return

CapsLock & w::
Send {Up}
return

CapsLock & d::
Send {Right}
return

CapsLock & s::
Send {Down}
return

LWin::
    Send !{Space}
Return

!{Space}::
    Send {LWin}
Return