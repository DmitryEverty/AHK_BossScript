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
            Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="Default"
            
            return
        }else{
            Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="Default"
            return
        }
;Open Chrome in incognito. RightControl + Numpad0
    >^Numpad0:: 
        Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -incognito
        return

;Open Chrome Regardles if open or not. Control + Shift + NumpadIns. Strar is like shift.
    *^NumpadIns:: 
        Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="Default"
        return

;If Chrome Active
    #IfWinActive ahk_exe Chrome.exe

    ;Misc funtions
        ;Go fullscreen
            Esc::
                Send, {F11}
                return
        ;Show Bookmarks Bar
            F9::
                Send, ^+B
                return

    ;Tilda As Modifier
        ;Next Tab. Tilda + 2
            ` & 2::
                Send, ^{Tab}
                return
        ;Next Tab. Tilda + 2
            ` & 1::
                Send, ^+{Tab}
                return
        ;Close Tab. Tilda + SpaceBar
            ` & Space::
                Send, ^{w}
                return
        ;New Tab. Tilda + Enter
            ` & Enter::
                Send, ^{t}
                return
    ;Web links
        ;Github
            ` & g::
            Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" --profile-directory="Default" https://github.com/
            return
    #IfWinActive
