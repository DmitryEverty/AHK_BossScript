#IfWinActive, ahk_class Windows.UI.Core.CoreWindow
    ; Open CodeCamp folder
        ::codecamp::
            Send, {Esc}
            Run, "D:\b_AREAS\b_CODING\a_WEB_DEV\y_TUTORIALS\Single Projects"
            CreateLabel("Code Camp Folder")
            return

    ; Open SuperDrop
        ::superd::
            Send, {Esc}
            Run, %vscode_exe% D:\b_AREAS\b_CODING\a_PYTHON_PROJECTS\SuperDropBot
            CreateLabel("SuperDropBot")
            return

    ; Launch Telegram
        ::tg::
            Send, {Esc}
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

    ; Open Writing Folder
        ::writing::
            Send, {Esc}
            Run, "D:\b_AREAS\d_WRITING"
            return

#IfWinActive