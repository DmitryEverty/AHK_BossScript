#IfWinActive, ahk_class Shell_TrayWnd

    ; Open Desktop Folder
        :*:dt::
            run, "C:\Users\%A_UserName%\Desktop"
            CreateLabel("Folder: Desktop")
        return

    ; Open Desktop Folder
        :*:coding::
            run, "D:\b_MY_SPACE\a_CODING"
            CreateLabel("Folder: Coding")
        return

    ; Open Work Projects
        :*:pj::
            run, "D:\a_WORK\o_PROJECTS"
            CreateLabel("Folder: Projects")
        return

    :*:ex::
        run, "D:\b_MY_SPACE\a_CODING\a_WEB_DEV\CHROME_EXTENSIONS"
        CreateLabel("Folder: Extensions")
        return

    :*:wp::
        run, "D:\m_MEDIA\b_IMAGE\a_WALLPAPER"
        CreateLabel("Folder: Wallpapers")
        return
    
    ^f::
        send, #s
        Sleep, 200
        Send, folder: 
        return

#IfWinActive

