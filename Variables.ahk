;Main
    count = 1
    Desktop = 1
    Previous = 0
;CapsLockNavigator
    SetCapsLockState, AlwaysOff
    fallback_prevention := 0
    caps := 0
    *Capslock::caps := 1
    *Capslock Up::caps := 0