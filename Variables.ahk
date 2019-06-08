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
;VirtualDesktopManager
    ; Globals
        DesktopCount = 2        ; Windows starts with 2 desktops at boot
        CurrentDesktop = 1      ; Desktop count is 1-indexed (Microsoft numbers them this way)
    ;Hotkeys
        ` & Numpad1::switchDesktopByNumber(1)
        ` & Numpad2::switchDesktopByNumber(2)
        ` & Numpad3::switchDesktopByNumber(3)
        ` & Numpad4::switchDesktopByNumber(4)
        ` & Numpad5::switchDesktopByNumber(5)
        AppsKey::
            if CurrentDesktop >= 2
            {
                ;Send, ^#{Right}
                switchDesktopByNumber(1)
                ;Desktop = 2
                return
            }
            else if CurrentDesktop <= 1
            {
                ;Send, ^#{Left}
                switchDesktopByNumber(2)
                ;Desktop = 1
                return
            }