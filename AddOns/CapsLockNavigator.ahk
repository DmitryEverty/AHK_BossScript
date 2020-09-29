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

    $*u::Send, {Blind}{Home}
    $*i::Send, {Blind}{End}

    $*b::Send, {Blind}{BackSpace}
    $*!b::Send, ^{BackSpace}

    $*n::Send, {Blind}{Delete}
    $*!n::Send, ^{Delete}
    ; $*Space::Send, {Blind}{Right}

    ; Scrolling
    $*!j::
        Send, {WheelDown}
        return
    $*!k::
        Send, {WheelUp}
        return 

;VsCode
    ;Identation with mouse buttons
        $*LButton::Send, ^{[}    
        $*RButton::Send, ^{]}

    ;Comment Uncomment
        $*=::
            Send, ^{k}
            Send, ^{c}
            return    
        $*-::
            Send, ^{k}
            Send, ^{u}
            return

    ;Select Between
        $*9::
            Send, ^{k}  
            Send, {(}
            return  

        $*'::
            Send, ^{k}  
            Send, {'}
            return

        $*;::
            Send, ^{k}  
            Send, {"}
            return

        $*[::
            Send, ^{k}  
            Send, {[}
            return 
            
        $*]::
            Send, ^{k}  
            Send, {{}
            return
    ;Paste with enter key
        $*Enter::
            send, ^{v}
            return
        $*NumpadEnter::
            send, ^{v}
            return

        $*0::
            send, {End}
            return

        $*6::
            send, {Home}
            return

    ; Extra Functions
        $*t::
            Send, %A_MMM%_%A_DD%_%A_YYYY%
            Return 

        $*p::
            SendInput, '//div[@id="header"]'
            Return

        $*Space::
        send, {enter}
        return

    ; Swich Desktops
        ; Next
        $*.::
        Send ^#{Right}
        return

        ; Previous
        $*,::
        Send ^#{Left}
        return
return

