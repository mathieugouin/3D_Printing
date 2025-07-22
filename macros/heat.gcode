; Pre-print init

; Set various limits
M201 X500 Y500 Z500 E5000 ; Set acceleration limit (in units-per-second per-second)
M203 X500 Y500 Z10 E60 ; Set max speed (in units per second)
M204 P500 R1000 T500 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z0.40 E5.00 ; sets the jerk limits, mm/sec

G90 ; use absolute coordinates
M83 ; extruder relative mode
G28 ; home all axis

G1 Z50 F1000
; M300 S440 P20 ; Beep
G1 X2 Y2 F3000
; M300 S440 P20 ; Beep

M140 S60 ; set bed temp
M104 S220 ; set nozzle temp

; Activate previously saved mesh
; From: https://github.com/mriscoc/Ender3V2S1/wiki/Slicer-G-code-Scripts
G29 L0 ; Load mesh from slot 0 (or use any other previously saved slot)
G29 F10  ; Set Fade Height for correction at 10 mm.
G29 A ; Activate UBL

M190 S60 ; wait for bed temp to stabilize (displays also the printing menu???)
M109 S220 ; wait for nozzle temp to stabilize

G4
M300 S440 P100 ; Beep
M117 heat.gcode
