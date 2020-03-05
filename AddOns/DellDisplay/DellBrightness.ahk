#SingleInstance, force

#IfWinActive, ahk_class Shell_TrayWnd

NumpadAdd::
brightnessRegulator("add", 5)
Return

NumpadSub::
brightnessRegulator("sub", 5)
Return

#IfWinActive


brightnessRegulator(action, quantity){
    IniRead, currentBrightness, %A_ScriptDir%\AddOns\DellDisplay\Settings.ini, Variables, BrightnessLevel ,

    if (action == "add"){
        state := currentBrightness + quantity
        if (state <= 100){
            run, "D:\r_EVERYTHING\r_MICRO\Dell Display ManagerNX\ddm.exe" /SetBrightnessLevel %state%
            tTip := "Brightness: " + state
            CreateLabel(tTip)
            IniWrite, %state%, %A_ScriptDir%\AddOns\DellDisplay\Settings.ini, Variables, BrightnessLevel
            Return
        }else{
            CreateLabel("Brightness: Max")
            Return
        }
    }else if(action == "sub"){
        state := currentBrightness - quantity
        if (state >= 0){
            run, "D:\r_EVERYTHING\r_MICRO\Dell Display ManagerNX\ddm.exe" /SetBrightnessLevel %state%
            tTip := "Brightness: " + state
            CreateLabel(tTip)
            IniWrite, %state%, %A_ScriptDir%\AddOns\DellDisplay\Settings.ini, Variables, BrightnessLevel
            Return
        }else{
            CreateLabel("Brightness: Min")
            Return
        }
    }
}