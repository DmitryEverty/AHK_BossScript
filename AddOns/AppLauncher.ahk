;Tilda + Key
    ` & v::
        Run, SndVol.exe
        return
    ` & u::
        Run, "C:\Users\%A_UserName%\AppData\Roaming\uTorrent\uTorrent.exe"
        return
    ` & b::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe" C:\Users\User\Documents\a_Code\Projects\Ahk\AHK_BossScript
        return
    ` & c::
        Run, "C:\Users\%A_UserName%\AppData\Local\Programs\Microsoft VS Code\Code.exe"
        return
    ` & Insert::
        Run, "C:\Program Files\Git\git-bash.exe" --cd-to-home
        return
	

;Tilda + Fkeys
    ` & F1:: 
        Run, "%A_ScriptDir%\AddOns\MiniGUI\VideoCreatorLaunchPad.ahk"
        return
	
