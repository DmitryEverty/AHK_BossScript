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
        ` & 1::switchDesktopByNumber(1)
        ` & 2::switchDesktopByNumber(2)
        ` & 3::switchDesktopByNumber(3)
        ; ` & Numpad4::switchDesktopByNumber(4)
        ; ` & Numpad5::switchDesktopByNumber(5)
        ; AppsKey::
        ;     SearchOnAmazon()
        ;     ; SearchOnGoogle()
        ;     return

            ; Send, ^{f}
            
            ; Send, ^a
            ; Send, ^v
        ;     if CurrentDesktop >= 2
        ;     {
        ;         ;Send, ^#{Right}
        ;         switchDesktopByNumber(1)
        ;         ;Desktop = 2
        ;         return
        ;     }
        ;     else if CurrentDesktop <= 1
        ;     {
        ;         ;Send, ^#{Left}
        ;         switchDesktopByNumber(2)
        ;         ;Desktop = 1
        ;         return
        ;     }

; Create rotation function for this key
; tilda + shift + appsKey

; Esc::
;     search_on_amazon_v2()
;     return


search_on_amazon_v2(){

    ; Get clipboard
    cb = %clipboard%

    ; Split phrase
    phrase := StrSplit(cb, A_Space)

    ; Foolproof. Dont try very long phrases.
    if (phrase.MaxIndex() > 20){
        return
    }

    queryString := ""

    ; Create query string.
    for word in phrase
        queryString := queryString . phrase[word]"+"
    
    ; Remove trailing plus sign
    queryString := SubStr(queryString,1,StrLen(queryString)-1)

    ; Declare base url
    base_url = https://www.amazon.com/s?k=

    ; Combine two parts.
    final_url := base_url . queryString

    ; Place into clipboard.
    Clipboard := final_url

    ; Activate adress bar.
    Send, !d
    Sleep, 50
    
    ; Paste text.
    SendInput ^v
    Sleep, 50

    ; Go
    Send, {Enter}

    ; Set original clipboard content.
    Clipboard := cb

    return
}

SearchOnGoogle(){
    Send, !d
    Sleep, 100
    Send, %clipboard%
    Send, {Enter}
    return
}