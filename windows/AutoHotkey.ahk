; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

;LWin::LAlt
;LAlt::LCtrl
;LCtrl::LWin
LCtrl up::Send {LCtrl Up}
	
;RAlt::RCtrl
;RWin::RAlt
;AppsKey::RAlt
;RCtrl::AppsKey

CapsLock::LCTRL
*Tab::Send {Blind}{Tab}
