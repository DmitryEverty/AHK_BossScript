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

    ` & n::
        Run, notepad.exe
        return

    ` & b::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe" D:\b_AREAS\b_CODING\c_AUTO_HOTKEY\AHK_BossScript
        return

    ` & r::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe" C:\Users\Admin\Dropbox\AmazonWork\REPORTS
        return

    ` & s::
        Run, "C:\Program Files\Sublime Text 3\sublime_text.exe"
        return

    ` & x::
        Run, "C:\Program Files (x86)\XYplorer\XYplorer.exe"
        return

    ` & g::
        CreateLabel("Lanuching: Gammy")
        Run, "D:\r_EVERYTHING\r_MICRO\gammy v0.9.55\gammy.exe"
        return
        
    ` & p::
        Run, "D:\r_EVERYTHING\r_INSTALATIONS\ADOBE\Adobe Photoshop 2020\Photoshop.exe"
        return

    ` & c::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
        return

    ` & a::
        Run, "D:\r_EVERYTHING\r_MICRO\AIMP\AIMP.exe" /RESTORE 
        return

    ` & Insert::
        Run, C:\Windows\System32\cmd.exe /K "cd /D d:"
        return

    ` & /::
        Run, perfmon.exe /res
        return

    ; Open todoist for windows
    ` & Home::
        Send, ^!{Home}
        return

;Tilda + Fkeys
    ` & F1:: 
        Run, "%A_ScriptDir%\AddOns\MiniGUI\VideoCreatorLaunchPad.ahk"
        return


; When Windows taskbar in focus

    #IfWinActive, ahk_class Shell_TrayWnd
    ; Launch Kill Bitrix
        ::btx::
            Process, Exist, Bitrix24.exe
            IF !errorlevel=0{
                CreateLabel("Closing Bitrix")
                Process, Close, Bitrix24.exe
            }else{
                CreateLabel("Launching Bitrix")
                run, %bitrix_exe%
            }
            return

    ; Launch Telegram
        ::tg::
            Process, Exist, Telegram.exe
            IF !errorlevel=0{
                ; Process, Close, Telegram.exe
                run, %tg_exe%
                CreateLabel("Showing Telegram")
            }else{
                run, %tg_exe%
                CreateLabel("Launching Telegram")
            }
            return
            
    ; Open SuperDrop
        ::superd::
            Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe" D:\b_MY_SPACE\a_CODING\b_PYTHON\a_PYTHON_PROJECTS\SuperDropBot
            CreateLabel("SuperDropBot")
            return

    ;Show or hide Desctop icons.
    F1::
        ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW

        If DllCall("IsWindowVisible", UInt, HWND)
            WinHide, ahk_id %HWND%
        Else
            WinShow, ahk_id %HWND%
        Return


    #IfWinActive