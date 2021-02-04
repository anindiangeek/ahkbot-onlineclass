;chill & relax this file has 20 % code (30 lines only) and rest is filled with comments
;this is a single line comment ";" <-- AHK(AUTO HOT KEY) uses this for single line comments

; PLEASE MAKE A NEW CODE FILE AND REMOVE ALL THE COMMENTS FROM IT.
; As I have used a lot of comments this has some error
;   scripts works by its of own even if the time is not yet started
; MAKE A NEW FILE AND COPY THE CODE AND REMOVE THE COMMNENTS TO MAKE THIS WORK.
; I have also uploaded a script which works this is just for explanations use that file to edit and ruun your script


/* this is a 
    multi line 
    comment 
    where ever these are used 
    they are for you READ properly.
    >>DON'T SKIP ANY COMMENTS!<<
*/ 

    /*  This code is for Google Meet.
        Replace the class link with your link. 
        I have been recieving the same link for all of my classes.
        Used Chrome browser here, you can change it by replacing "chrome.exe". 
        I advise NOT to do so it if you're NOT good at coding.
    */

    
        /*                                       <---METHOD 1--->
                                                USING MOUSE CLICKS
            >>>>DO NOT COPY MY POSTIONS OF CLICKS THEY CAN(will)VARY FOR YOUR SCREEN for every button you want to press.
            -use window spy to locate the mouse postion on your screen.
            -Window Spy can be found using search or here C:\Program Files\AutoHotkey\WindowSpy.ahk
            -and copy the coordinates you need (which ever button you want to press):
            -Window Spy will have this section (watch my youtube video for full toturial)
                     _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ 
                    | Screen:	1699, 418 (less often used)      | <--- these coordinates are needed co-ordiantes relative to Desktop
                    | Window:	1707, 426 (default)              | <--- co-ordinate with refrence to the appliction window (recemmonded if don't want to use Winmaximise)
                    | Client:	1699, 418 (recommended)          |
                    | Color:	F0F0F0 (Red=F0 Green=F0 Blue=F0) |       
                    ----------------------------------------------
            You can check the video toturial here :-> https://youtu.be/Aout9-1dIZc
            -Method 2 is explained below. where it is supposed to be used.
        */


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
SetTimer, yourclassname, 500
return

    Sleep, 4000
            /*
                Sleep Delays the script by the given time in miliseconds 
                further action will not be taken untill 4 sec are eslpased
                Increase this time as per your requirment.
            */

yourclassname:
        FormatTime, Timetopost, ,HHmmss ; Setting the time format 
    if (Timetopost=63000 && A_WDay=3 || A_WDay=5)
    {
        {
            /*
                my yoga class is on Tuesday and Thusday only so I want this code to run on those days only and automatically
                you can change it refer AHK documentation for more info sure search feautre
                just remove && "A_WDay=3 || A_WDay=5" 
                enter your class joining time:-> Example if its 5:30AM --> 53000
                MAKE SURE YOU'RE NOT THE FIRST ONE TO ENTER THE CLASS so keep proper time margins
            */
        Sleep, 4000
        
        SoundBeep , , 1000
            /*
                this sends a sound beep of 1 second before starting the script, 
                you can change frequency of the sound by entering a value in the empty spaces between the commas
                and also fiddle with the timing of the sound beep as per your liking
            */
        Sleep, 4000
            Run, chrome.exe --profile-directory="Default" "http://meet.google.com/huh-gvig-nbf" 
            #WinActivateForce
            WinActivate, ahk_exe chrome.exe
            

                    /*  
                        This is my class link and I have used default user on chrome browser, 
                        you can choose any browser. just write its process name (Not recemmonded)
                        IF YOU REPLACE BROWSER:
                        -Remove "--profile-directory=""Default" from the Run command.
                        -MAKE SURE YOU ARE ALREADY LOGED IN WITH YOUR ACCOUNT AND SIGNED OUT OTHER ACCOUNTS 
                        -AND HAVE GIVEN PERMISSION TO BROWSER FOR MIC & WEBCAM.
                        -DO VISIT THE WEBSITE BEFORE TESTING OUT THE SCRIPT.
                    */

            Sleep, 2000
                    /*
                        Sleep Delays the script by the given time in miliseconds 
                        further action will not be taken untill 2 sec are eslpased
                        -THIS is MANDATORY as the browser might take time to open if you have a slow computer.
                        Increse this time as per your requirment.
                    */
            Send, #{NumpadUp} 
                    /* 
                         Presses Windows key(#) + up arrow key to maximise the window 
                        -Refer to "HotKeys" section of Documention.
                        -We will keep window Maximised to keep things uniformed during the whole script.
                    */
            Sleep, 1000
            Sleep, 7000
                    /*
                        Keep this atleast 7 seconds for safety
                        -We are wating for webpage to load and "join now" button to appear.
                        -This depends on your network speed. 
                        -if you are on mobile data I highly recemmond you to make it a minute long in working hours to be safe(not in testing hour)
                    */ 
            Click, 1270, 604 
                    /*
                        these were my coordinates of "join now" button
                        It will be diffrent for you.
                        you have to enter the right coordinates
                        you can get it by window spy watch my toturial
                        or use method 2
                    */
            Sleep, 200
            Click, 1270, 604 ; Activates the meeting browser tab, these are same coordinates as of "Join Now" button.

                    /*
                        Instead of giving the co-ordinates for the join button you can also use the image search option
                        to click on the 'Join Now' button, as the co-ordinates to the join now button change for different 
                        resolution of screens and depend on a lot of other factors, image search as a option can also be used to click on the button
                        
                                                        <------ METHOD 2 ----->
                        Below is the code for the image search where it loops again and again searching for the image that we provide it with, 
                        until it finds the 'Join Now' button
                        -Take a screenshot of the join now button and paste it in a folder
                        - create a new folder and paste the script and paste your pictures folder in it.
                        - the three is here.
                              FOLDER---> Picutes--> Join.png
                                        \
                                        \--> yourscript.ahk                                  
                        DO NOT DELETE THE PICTURES FOLDER OR CHANGE IT'S DIRECTORY
                        and replace the click code with this 
                        Loop
                        ImageSearch, FoundX, FoundY, 0, 0, A_Screenwidth, A_Screenheight
                            , Pictures\Join.png
                        Until !ErrorLevel
                            MouseClick,, %FoundX%, %FoundY%
                    */

            Click, 1270, 604 ; Enters in full-Screen mode
            Sleep, 100
            Send, ^d ; Turns off the microphone (shortcut).
            Send, ^e ; Turns off the Camera (shortcut)
            Sleep, 2000
            Send, ^!c ; presses Ctrl+ALT+C, Shortcut for opening chatbox.
            Sleep, 3000
            DetectHiddenText, On
            Send, {text}Paste your message here
                     /*
                        Replace whatever you want to write in the chat.
                        -DO NOT REMOVE "{text}"
                        -Write whatever you have to write AFTER it.
                    */
            Sleep, 1000
            Send, {enter} ;Slams Enter key, and your message is sent in chat.
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
            Sleep, 6000 ;--> Class duration in miliseconds do give an additinal buffer time for exit
            WinKill, ahk_exe chrome.exe ;--> you can use your browser process name  
            return
               ; Recemmonded to use for proper code function.
        }    
    }  