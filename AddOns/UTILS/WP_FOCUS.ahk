` & =::
    SetWallpaper("D:\b_MY_SPACE\a_CODING\c_AUTO_HOTKEY\AHK_BossScript\AddOns\UTILS\FOCUS.jpg")
    Return

` & -::
    SetWallpaper("D:\b_MY_SPACE\a_CODING\c_AUTO_HOTKEY\AHK_BossScript\AddOns\UTILS\NOFUCUS.jpg")
    Return


SetWallpaper(BMPpath)
    {
        SPI_SETDESKWALLPAPER := 20
        SPIF_SENDWININICHANGE := 2  
        Return DllCall("SystemParametersInfo", UINT, SPI_SETDESKWALLPAPER, UINT, uiParam, STR, BMPpath, UINT, SPIF_SENDWININICHANGE)
    }