;Control + Numpad0
<^Numpad0::
    ChromeHandler()

ChromeHandler(){
    if WinExist ("ahk_exe Chrome.exe") {
        Winget, ChromeState, MinMax, ahk_exe Chrome.exe    
        
        If (ChromeState = -1)
        WinActivate ahk_exe Chrome.exe

        If (ChromeState = 0)
        WinMinimize ahk_exe Chrome.exe
        
            
        If (ChromeState = 1)
        WinMinimize ahk_exe Chrome.exe
        
        If (ChromeState ="")
        Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
        
        return
    }else{
        Run, "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
        return
    }
}