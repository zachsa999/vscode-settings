#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

winName = 4F DISPATCH *

^!b::
    Sleep 50
    Send f
    Sleep 750
    Send accounting@naturalproteins.ca
    Send {Enter}
    Sleep 5
    Send reception@rockypond.ca
    Send {Enter}
    Sleep 5
    Send keith@rockypond.ca
    Send {Enter}
    Sleep 50
    Send ^{Enter}
return

^!l::
    InsertText("(confirmed)")
return

^!k::
    InsertText("(invoiced)")
Return

InsertText(Text) {

    WinGetTitle, Title, A
    If (Title == "F4F Dispatch 2022 - Google Sheets - Google Chrome") {
        ;Google Sheets routine
        Send {Enter}
        Send {space}%Text%
        Send {Enter}
    } Else If (Title == "F4F DISPATCH - Google Chrome") {
        ; Icloud routine
        Send !{Enter}
        Send {space}%Text%
        Send {ENTER}

    } Else {
        Return
    }

}
