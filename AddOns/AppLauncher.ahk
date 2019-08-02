;Tilda + Key
    ` & v::
        Run, SndVol.exe
        return
    ` & u::
        Run, "C:\Users\%A_UserName%\AppData\Roaming\uTorrent\uTorrent.exe"
        return
    ` & m::
        Run, "C:\Program Files (x86)\Download Master\dmaster.exe" -addurl
        return
    ` & b::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe" C:\Users\User\Documents\a_Code\Projects\Ahk\AHK_BossScript
        return
    ` & r::
        ; Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe" C:\Users\User\Media\a_Work\a_AMAZON\Rep.txt
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
	
