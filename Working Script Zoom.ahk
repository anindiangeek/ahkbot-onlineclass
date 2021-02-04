#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#Persistent
#SingleInstance, force
SetTimer, yoga, 500
return

yoga:
    FormatTime, Timetopost, ,HHmmss
        if (Timetopost=63000)
        {
            SoundBeep , , 1000
            Sleep, 8000
            Run, chrome.exe --profile-directory="Default" "https://us02web.zoom.us/j/82417864233?pwd=cSs1ZmUzUS9CbzZxMzdoRTJTSExKQT09"
             Sleep, 8000
            Send, !h
            Send, {text}Signed in 20051261.
            Send, {enter}
            Sleep, 2400000 ;Sleeps for 40 minutes
            WinKill, ahk_exe Zoom.exe
            Sleep, 500
            Send, {enter}
            return
        }
