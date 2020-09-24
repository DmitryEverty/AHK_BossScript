;Open new instance or bring up existing. LeftControl + Numpad0 
    <^Numpad0:: 
        if WinExist ("ahk_exe Chrome.exe") {
            Winget, ChromeState, MinMax, ahk_exe Chrome.exe    
            
            If (ChromeState = -1)
            WinActivate ahk_exe Chrome.exe

            If (ChromeState = 0)
            WinMinimize ahk_exe Chrome.exe
            
                
            If (ChromeState = 1)
            WinMinimize ahk_exe Chrome.exe
            
            If (ChromeState ="")
            Run, %chrome_exe% --profile-directory="Default"
            
            return
        }else{
            Run, %chrome_exe% --profile-directory="Default"
            return
        }
;Open Chrome in incognito. RightControl + Numpad0
    >^Numpad0:: 
        Run, %chrome_exe% -incognito
        return

;Open Chrome Regardles if open or not. Control + Shift + NumpadIns. Strar is like shift.
    *^NumpadIns:: 
        Run, %chrome_exe% --profile-directory="Default"
        return

; Open Chrome Regardles if open or not. Control + Shift + NumpadIns. 
; Bringer Pet
    *^NumpadDown:: 
        Run, %chrome_exe% --profile-directory="Profile 1"
        return

;If Chrome Active
    #IfWinActive ahk_exe Chrome.exe

    ;Prev Tab
    ` & LButton::
        Send, ^+{Tab}
        return
    
    ;Next Tab
    ` & RButton::
        Send, ^{Tab}
        return

    ;Close active tab
    ` & MButton::
        Send, ^{w}
        return

    ; Toggle Inspect
    ` & Insert::
        send, ^+{c}
        return

    ; Esc::
    ;     search_on_amazon_v2()
    ;     ; cb = https://www.amazon.com/gp/product/%clipboard% 
    ;     ; Run, chrome.exe %cb%
    ;     return

    ;Misc funtions

        ;Show Bookmarks Bar
            F9::
                Send, ^+B
                return

            ` & Space::
                Send, ^{w}
                return
        ;New Tab. Tilda + Enter
            ` & Enter::
                Send, ^{t}
                return
        
        ; Caps Mods
        ; Spreadsheets: Add note
        !r::
            send, +{F2}
            return

    ;Web links
        ;Github
            ` & g::
            Run, %chrome_exe% --profile-directory="Default" https://github.com/
            return
    #IfWinActive
