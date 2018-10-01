#Persistent
Menu, Tray, Click, 1
Menu, Tray, Icon , note.ico
Menu, tray, NoStandard
Menu, Tray, Add, Single Click, 	SingleClick
Menu, Tray, Add, Double Click, DoubleClick
Menu, Tray, Default, Double Click
Menu, Tray, Add, Exit
Return

DoubleClick:
	MouseGetPos, , , WhichWindow, WhichControl
	WinGetClass, WhichClass, ahk_id %WhichWindow%
	If WhichClass = Shell_TrayWnd
		{
			IfInString, WhichControl, ToolbarWindow32
				{
					If Clicks =
						{
							SetTimer, SingleClick, 500
							Clicks = 1
							Return
						}
				}
		}
	SetTimer, SingleClick, Off
	Sleep, 500

	Clicks =
	Return

SingleClick:
	SetTimer, SingleClick, Off
	Run, C:\Users\math0\Dropbox\emacs\new-note.bat
	Clicks =
	Return

!F1::Run, C:\Users\math0\Dropbox\emacs\new-note.bat

!F2::Run, C:\Users\math0\Dropbox\emacs\new-note-clip.bat

!F3::Send !{PrintScreen}

!F4::Run, C:\Users\math0\Dropbox\emacs\org-display-inbox.bat

!F5::Run, C:\Users\math0\Dropbox\emacs\org-display-org-dir.bat

Exit:
	ExitApp
