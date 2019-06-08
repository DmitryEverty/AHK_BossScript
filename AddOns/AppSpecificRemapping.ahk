;///////////////////////////////////////////////////////////////////////
;/////////////////////// IF WIN ACTIVE /////////////////////////////////
;///////////////////////////////////////////////////////////////////////

;Chrome
    #IfWinActive ahk_exe Chrome.exe	
        Esc::
            Send, {F11}
            return

        F9::
            Send, ^+B
            return

    #IfWinActive
;Illustrator
    #IfWinActive ahk_exe Illustrator.exe
        MButton::^+a ; Deselect
        return

    #IfWinActive

;Premiere Pro
    #IfWinActive ahk_exe Adobe Premiere Pro.exe
        Tab::
            Send, ^{k}
            return

        MButton::
            Send, +{Delete}
            return

        CapsLock::
            Send, {Space}
            return
        
    #IfWinActive
;Explorer
    #IfWinActive ahk_class CabinetWClass	
        Esc::
            Send, {F11}
            return
        F1::
            WinMove, ahk_class CabinetWClass, , 287, 69, 870, 657
            return
    #IfWinActive
;VsCode
    #IfWinActive ahk_exe Code.exe
        
    #IfWinActive