SetCapsLockState, AlwaysOff
fallback_prevention := 0
caps := 0
*Capslock::caps := 1
*Capslock Up::caps := 0

#if fallback_prevention = 1
    Left::
    Right::
    Up::
    Down::
    PgUp::
    PgDn::
    Home::
    End::
    Del::
        MsgBox, Use Caps+hjkl for navigation!
    return

#if caps = 1        
    ; fallback prevention mode
        $*F1::fallback_prevention := !fallback_prevention
    
    ; toggle Capslock
        $*F2::
            if GetKeyState("Capslock", "T") = 0
                SetCapsLockState, On
            else
                SetCapsLockState, AlwaysOff
        return

    $*h::Send, {Blind}{Left}
    $*j::Send, {Blind}{Down}
    $*k::Send, {Blind}{Up}
    $*l::Send, {Blind}{Right}
