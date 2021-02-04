;--------------------------------------------------------------------------------
; Next 4 lines are already by AHK and do NOT mess with them, they ensure proper functing of the code 
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;----------------------------------------------------------------------------------

;CODE starts here 

#SingleInstance, force ; helps in testing of script and automatically replaces previous script when a new is opened without any warnings or annoying boxes
#Persistent ; keeps the script running in the background until timer ends
SetTimer, myyogaclass, 500
return
    ; FormatTime, Timetopost, ,HHmmss ; Setting the time format 


myyogaclass:
        FormatTime, Timetopost, ,HHmmss
        if (Timetopost=130500)

        {
            SoundBeep , , 1000
            
           
            Sleep, 4000
            Run, chrome.exe --profile-directory="Default" "http://meet.google.com/huh-gvig-nbf" 
            Sleep, 2000

            DetectHiddenWindows, Off
                       
            #WinActivateForce

            WinActivate, ahk_exe chrome.exe
            
            Sleep, 5000
                    
                                        
            Send, #{NumpadUp} 
       
            Sleep, 1000
            Sleep, 8000
                    
                     
            Click, 1270, 604 
                    
            Sleep, 200
            Click, 1270, 604 ; Activates the meeting browser tab, these are same coordinates as of "Join Now" button.

                                              
                        

            Click, 1270, 604 ; Enters in full-Screen mode
            Sleep, 100
            Send, ^d ; Turns off the microphone (shortcut).
            Send, ^e ; Turns off the Camera (shortcut)
            Sleep, 2000
            Send, ^!c ; presses Ctrl+ALT+C, Shortcut for opening chatbox.
            Sleep, 5000
            DetectHiddenText, On
            Send, {text} Hey this thing
                     
                        
            Sleep, 1000
            Send, {enter} ;Slams Enter key, and your message is sent in chat. 
            Sleep, 6000 ;Class duration in miliseconds do give an additinal buffer time for exit
            WinKill, ahk_exe chrome.exe        
            return ; Recemmonded to use for proper code function.

        }  