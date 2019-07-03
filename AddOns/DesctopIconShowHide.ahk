#IfWinActive ahk_class WorkerW
    ;Show or hide Desctop icons.
    F1::
        ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW

        If DllCall("IsWindowVisible", UInt, HWND)
            WinHide, ahk_id %HWND%
        Else
            WinShow, ahk_id %HWND%
        Return
#IfWinActive