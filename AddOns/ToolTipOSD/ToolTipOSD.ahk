; F3::
; CreateLabel("DESKTOP 1")
; return

; F4::
; CreateLabel("DESKTOP 2")
; return

CreateLabel(key){
    DestroyLabel()
    GetTextSize(key,35,Verdana,height,width)
    bgTopPadding = 20
    bgWidthPadding = 80
    bgHeight = % height + bgTopPadding
    bgWidth = % width + bgWidthPadding
    padding = 30
    yPlacement = % A_ScreenHeight - bgHeight - padding
    xPlacement = % A_ScreenWidth - bgWidth - padding
    CustomColor = 6FDCB9
    Gui, Color, 6FDCB9
    Gui, Margin, 15, 15
    ;Gui, Add, Picture, x0 y0 w%bgWidth% h%bgHeight%,    D:\Documents\PGrams\AHK\Scrap\LLCGMBG.png
    Gui, +LastFound +AlwaysOnTop -Border -SysMenu +Owner -Caption +ToolWindow
    Gui, Font, s35 cWhite, Verdana
    Gui, Add, Text, xm y10 x15 ,%key%
    Gui, Show, NA x0 y0, OSDOL
    WinSet, Transparent, 190, OSDOL
    SetTimer, RemoveGui, 2000
}

GetTextSize(str, size, font,ByRef height,ByRef width) {
    Gui temp: Font, s%size%, %font%
    Gui temp:Add, Text, , %str%
    GuiControlGet T, temp:Pos, Static1
    Gui temp:Destroy
    height = % TH
    width = % TW
}

DestroyLabel(){
    Gui, Destroy
    return 
}

RemoveGui:
    Gui, Destroy
    return