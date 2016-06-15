#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode SendInput  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


^#v::ListVars
^#h::ListHotkeys
!#h::KeyHistory
~^s::
	IfWinActive, %A_ScriptFullPath%
	{
		SplashTextOn,,,Updated script,
		Sleep, 400
		SplashTextOff
		Reload
	}
	Return
