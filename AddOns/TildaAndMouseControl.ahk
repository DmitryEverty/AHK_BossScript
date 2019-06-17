;Close active window with tilda + mmb
    ` & MButton::
    WinGet, winid ,, A
    WinClose, ahk_id %winid%
    return
;Maximize active window with tilda + WheelUp
    ` & WheelUp::
    WinGet, winid ,, A
    WinMaximize, ahk_id %winid%
    return
;Restore active window with tilda + WheelDown
    ` & WheelDown::
    WinGet, winid ,, A
    WinRestore, ahk_id %winid%
    return