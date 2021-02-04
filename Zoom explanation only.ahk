;chill & relax this file has 20 % code (10 lines only) and rest is filled with comments

;this is a single line comment ";" <-- AHK(AUTO HOT KEY) uses this for single line comments

/* this is a 
    multi line 
    comment 
    where ever these are used 
    they are for you READ properly.
    >>DON'T SKIP ANY COMMENTS!<<
*/ 

    /*  This code is for Zoom Meetings.
        Replace the class link with your link. 
        I have been recieving the same link for all of my classes.
        Used Chrome browser here, you can change it by replacing "chrome.exe". 
        I advise NOT to do so it if you're NOT good at coding.
    */

/*
    PLEASE FOLLOW THESE STEPS FOR WORKING OF THIS SCRIPT BEFOREHAND
        Install Zoom meetings on your pc and login with any ID
        goto settings in zoom app and select "Turn off my video when joining meeting" in the video sub-menu
        along with "Automatically join audio by computer when joining a meeting" and "Mute my microphone when joining a meeting" from the Audio sub-menu
        Now we are pretty much ready to scart our scripting except for one small setting which we will be discussing about in line 69 ;)
*/

;--------------------------------------------------------------------------------
; Next 4 lines are already by AHK and do NOT mess with them, they ensure proper functing of the code 
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
;----------------------------------------------------------------------------------

;CODE starts here 

#Persistent ; keeps the script running in the background until timer ends
#SingleInstance, force ; helps in testing of script and automatically replaces previous script when a new is opened without any warnings or annoying boxes
SetTimer, yoga, 500
return

SoundBeep , , 1000
            /*
                this sends a sound beep of 1 second before starting the script, 
                you can change frequency of the sound by entering a value in the empty spaces between the commas
                and also fiddle with the timing of the sound beep as per your liking
            */
Sleep, 4000
            /*
                Sleep Delays the script by the given time in miliseconds 
                further action will not be taken untill 4 sec are eslpased
                Increase this time as per your requirment.
            */

yoga:
    FormatTime, Timetopost, ,HHmmss ; Setting the time format 
        if (Timetopost=63000 && A_WDay=3 || A_WDay=5)
        {
            /*
                my yoga class is on Tuesday and Thusday only so I want this code to run on those days only and automatically
                you can change it refer AHK documentation for more info sure search feautre
                just remove && "A_WDay=3 || A_WDay=5" 
                enter your class joining time:-> Example if its 5:30AM --> 53000
            */
        
            Run, chrome.exe --profile-directory="Default" "https://us02web.zoom.us/j/82417864233?pwd=cSs1ZmUzUS9CbzZxMzdoRTJTSExKQT09"

            /*  
                        This is my class link and I have used default user on chrome browser, 
                        you can choose any browser. just write its process name (Not recemmonded)
                        and before you test the script make sure you connect to the zoom call manually and make sure to
                        "Allow zoom.us to open links of this type to open in the assosiated app"
                        IF YOU REPLACE BROWSER:
                        -Remove "--profile-directory=""Default" from the Run command.
                        -MAKE SURE YOU ALLOW ZOOM THE PERMISSION REQUIRED  
                        -DO VISIT THE WEBSITE BEFORE TESTING OUT THE SCRIPT.
            */

            Sleep, 5000
            Send, !h ; presses ALT+H, Shortcut for opening chatbox.
            Send, {text}Signed in 20051261.
                    /*
                        Replace whatever you want to write in the chat.
                        -DO NOT REMOVE "{text}"
                        -Write whatever you have to write AFTER it.
                    */
            Send, {enter} ;Slams Enter key, and your message is sent in chat.
                /*
                    If your institution uses free version of Zoom and the meeting ends in 40 mins and you want to rejoin the meeting again then you can very easily
                    set a sleep here for 40 mins after joining and repeat the loop of the code by copy pasting the code from above
                */
            /* 
                        You can also set up a timer to exit from class.
                        You can use Sleep and input the duration of your class in miliseconds
                        or Create timer, but it is more diffcult so use Sleep
                        To exit from class you can either press red button or close the browser
                        I recemmond you to close your browser as it's easy.
                        Either Send !{f4} or use WinKill command. I recemmond WinKill.
                        I am typing the code below you can copy it and paste out of comment to make it work.
                        "
                            Sleep, 5000 ;--> Class duration in miliseconds do give an additinal buffer time for exit
                            WinKill, ahk_exe chrome.exe ;--> you can use your browser process name        
                        "
                    */
            Sleep, 2400000 ;Sleeps for 40 minutes
            WinKill, ahk_exe Zoom.exe ;--> you can use your browser process name  
            Sleep, 500
            Send, {enter} ; this takes care of the leave meeting conformation dialog that pops up
            Return
                ; Recemmonded to use for proper code function.
        }
