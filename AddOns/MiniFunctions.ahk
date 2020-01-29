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
        WinGet, ExStyle, ExStyle, A
        StringRight, styleKey, ExStyle, 1
        
        if (styleKey == "8"){
            CreateLabel("Window is On Top")
            return
        }else{
            CreateLabel("Window is Regular")
            return
        }


;Control_Backspace with right control
    ; >control::
    ;     Send, ^{BackSpace}
    ;     return