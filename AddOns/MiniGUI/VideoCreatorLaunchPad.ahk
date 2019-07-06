#SingleInstance, force
#NoTrayIcon

;>Variables
    WindowWidth = 300
    WindowHeight = 300

;>Buttons
    ;Close
        Gui, Add, Button, x275 y5 w20 h20 gCloseButton, x

    ;Premiere
        Gui, Add, Button, x35 y45 w100 h100 gLaunchPremierePro, PremierePro
    ;Bandicam
        Gui, Add, Button, x165 y45 w100 h100 gLaunchBandicam, Bandicam
    ;Projects
        Gui, Add, Button, x35 y180 w100 h100 gLaunchProjectsFolder, ProjectsFolder
    ;ScreenRecordingsFolder
        Gui, Add, Button, x165 y180 w100 h100 gLaunchScreenRecordingsFolder, ScreenRecordingsFolder



;>Gui Settings



        Gui, +AlwaysOnTop
        Gui, Color, b642f5
        ;TransparentWindow
            Gui, +LastFound  ; Make the GUI window the last found window for use by the line below.
            WinSet, TransColor, b642f5,

        Gui, +ToolWindow -Caption

        CoordMode, mouse, Screen
        MouseGetPos, CurrentMousePositionX, CurrentMousePositionY
            CurrentMousePositionX := CurrentMousePositionX-(WindowWidth*0.67)
            CurrentMousePositionY := CurrentMousePositionY-(WindowHeight*0.7)
        Gui, Show, x%CurrentMousePositionX% y%CurrentMousePositionY% w%WindowWidth% h%WindowHeight%, `t
    return

;>ButtonFunctions
    CloseButton:
        ;Gui, Destroy
        CloseApp()
        return

    LaunchPremierePro:
        Run, "C:\Program Files\Adobe\Adobe Premiere Pro CC 2019\Adobe Premiere Pro.exe"
        CloseApp()
        return

    LaunchBandicam:
        Run, "C:\Users\User\Documents\b_VideoEdit\Bandicam v4.4.0.1535 Portable by CheshireCat Ml_Rus\Bandicam v4.4.0.1535 Portable by CheshireCat\Bandicam_Portable.exe"
        CloseApp()
        return

    LaunchProjectsFolder:
        Run, "C:\Users\User\Documents\a_YouTube\a_Projects"
        CloseApp()
        return

    LaunchScreenRecordingsFolder:
        Run, "C:\Users\User\Documents\a_YouTube\Bandicam_Futage"
        CloseApp()
        return


;>Functions

    CloseApp(){
        ExitApp
        return
    }

    #IfWinActive ahk_class AutoHotkeyGUI
        Esc::
            CloseApp()
    #IfWinActive


GuiClose:
ExitApp
return