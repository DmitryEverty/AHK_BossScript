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
        
        return
        
    ` & p::
        Run, "D:\r_EVERYTHING\r_INSTALATIONS\ADOBE\Adobe Photoshop CC 2019\Photoshop.exe"
        return
    ` & c::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
        return
    ` & a::
        Run, "D:\r_EVERYTHING\r_MICRO\AIMP\AIMP.exe"
        return
    ` & Insert::
        Run, C:\Windows\System32\cmd.exe /K "cd /D d:"
        return
    ` & /::
        Run, perfmon.exe /res
        return

    Shift & `::
        WinActivate, ahk_class Shell_TrayWnd        
        return
	

;Tilda + Fkeys
    ` & F1:: 
        Run, "%A_ScriptDir%\AddOns\MiniGUI\VideoCreatorLaunchPad.ahk"
        return
	
; When Windows taskbar in focus

    #IfWinActive, ahk_class Shell_TrayWnd
    ; Launch Kill Bitrix
        b::
            Process, Exist, Bitrix24.exe
            IF !errorlevel=0{
                Process, Close, Bitrix24.exe
                CreateLabel("Closing Bitrix")
            }else{
                run, "C:\Program Files (x86)\Bitrix24\Bitrix24.exe"
                CreateLabel("Launching Bitrix")
            }
            return

    #IfWinActive