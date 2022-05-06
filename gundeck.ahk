; A script to simulate left mouse key clicks at a specified interval, for dealing with those pesky GMTs
; Author: Me
; Version: 1.0
; Date: 23MAR2020

I_Icon = C:\Users\tomd5\Dropbox\ahk\SEPfield.ico
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%
;return

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

inputBox, timer, click time, enter mouseclick delay in seconds (ctrl pageup to kill script)
if ErrorLevel
	ExitApp
else
	timer := timer*1000

gundeck()
^pgup:: exitapp

gundeck()
{
	label2:
	Click
	global timer
	sleep %timer%
	gosub, label2
}

