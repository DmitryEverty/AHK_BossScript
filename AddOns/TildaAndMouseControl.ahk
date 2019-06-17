;Close active window with tilda + rmb
    ` & MButton::
    WinGet, winid ,, A
    WinClose, ahk_id %winid%
    ; MsgBox, winid=%winid%
    return