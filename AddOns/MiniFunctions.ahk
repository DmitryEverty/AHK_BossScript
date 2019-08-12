;Hibernate
    ScrollLock::
        DllCall("PowrProf\SetSuspendState", "int", 0, "int", 0, "int", 0)
        return
;Floating Timer
    Pause::
        Run, "%A_ScriptDir%\AddOns\FloatingTimer.ahk"
        return
;Set Active Window On Top
    F12::
        Winset, Alwaysontop, , A	
        return
;Control_Backspace with right control
    ; >control::
    ;     Send, ^{BackSpace}
    ;     return