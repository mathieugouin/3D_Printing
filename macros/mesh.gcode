; Activate previously saved mesh
; From: https://github.com/mriscoc/Ender3V2S1/wiki/Slicer-G-code-Scripts
G29 L0 ; Load mesh from slot 0 (or use any other previously saved slot)
G29 F10  ; Set Fade Height for correction at 10 mm.
G29 A ; Activate UBL
