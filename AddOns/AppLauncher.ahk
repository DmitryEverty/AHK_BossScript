;Tilda + Key
    ` & v::
        Run, SndVol.exe
        return
    ` & u::
        Run, "C:\Program Files (x86)\uTorrent\uTorrent.exe"
        return
    ` & m::
        Run, "C:\Program Files (x86)\Download Master\dmaster.exe" -addurl
        return
    ` & b::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe" D:\b_MY_SPACE\a_CODING\c_AUTO_HOTKEY\AHK_BossScript
        return
    ` & r::
        ; Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe" D:\a_WORK_SPACE\b_DailyReport
        return
    ` & c::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
        return
    ` & Insert::
        Run, "C:\Program Files\Git\git-bash.exe" --cd-to-home
        return
    ` & /::
        Run, perfmon.exe /res
        return
    ` & F7::
        switchDesktopByNumber(5)
        if WinExist("ahk_exe PotPlayerMini64.exe") {
            return
        }else{
            Run, "C:\Program Files\DAUM\PotPlayer\PotPlayerMini64.exe"
            return
        }
        return
    Shift & `::
        WinActivate, ahk_class Shell_TrayWnd        
        return
	

;Tilda + Fkeys
    ` & F1:: 
        Run, "%A_ScriptDir%\AddOns\MiniGUI\VideoCreatorLaunchPad.ahk"
        return
	
