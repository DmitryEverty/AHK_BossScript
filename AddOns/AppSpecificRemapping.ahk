;///////////////////////////////////////////////////////////////////////
;/////////////////////// IF WIN ACTIVE /////////////////////////////////
;///////////////////////////////////////////////////////////////////////

;Illustrator
    #IfWinActive ahk_exe Illustrator.exe
        MButton::^+a ; Deselect
        return

    #IfWinActive

;Photoshop
    #IfWinActive ahk_exe Photoshop.exe
        vkE2::
            Send, ^{t}
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
        
        1::
            send, +{Up}
            return
        
        2::
            send, +{Down}
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

        Home::
            send, !{Up}
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

;Excel
    #IfWinActive ahk_exe EXCEL.EXE

        F1::
            Send, {Alt}
            Send, 4
            return

        F2::
            Send, {Alt}
            Send, 6
            return

        ; 3::
        ;     send, ^{Up}
        ;     send, !{Down}
        ;     send, {g}

        ;     return


    #IfWinActive

;Ableton
    #IfWinActive ahk_exe Ableton Live 10 Suite.exe

        ; Create new midi clip
        Tab::
            send, ^+{m}
            return

        Home::
            send, {Up}
            return
        
        ^!Tab::
            send, {Down}
            return

        ; NumpadDiv::
        ;     send, ^{e}
        ;     return

        ; Split clip
        vkE2::
            Send, ^{e}
            return

        ; Show-hide plugin window
        F4::
            send, ^!{p}
            return

    #IfWinActive

; Windows taskbar in focus
    #IfWinActive, ahk_class Shell_TrayWnd
    ; Show Todoist with middle mouse button
    MButton::
        Send, ^!{Home}
            return

    #IfWinActive