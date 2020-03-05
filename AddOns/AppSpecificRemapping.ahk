;///////////////////////////////////////////////////////////////////////
;/////////////////////// IF WIN ACTIVE /////////////////////////////////
;///////////////////////////////////////////////////////////////////////

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

        ; View Change
        ^Numpad1::
            send, ^+{1}
            return
        ^Numpad2::
            send, ^+{2}
            return
        ^Numpad3::
            send, ^+{3}
            return

    #IfWinActive



;VsCode
    #IfWinActive ahk_exe Code.exe
        ;Close Current Folder
            ` & Esc:: 
                Send, ^{k}
                Send, {f}
                return

        ; Comment Uncomment
            vkE2::
                Send, ^/
                return
                
    #IfWinActive