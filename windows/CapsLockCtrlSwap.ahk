; Fix right alt key in putty
; this script only applicable for autohotkey-v1

#IfWinActive ahk_class PuTTY
RAlt::LAlt
#IfWinActive

; Map CapsLock to Ctrl
$CapsLock::Ctrl
