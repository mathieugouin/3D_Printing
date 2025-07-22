; Turn on heat

; Move to corner remove filament oozing while heating
G1 Z50 F1000
G1 X2 Y2 F3000

; M140 S60 ; set bed temp
; M104 S220 ; set nozzle temp

M190 S60 ; wait for bed temp to stabilize (displays also the printing menu???)
M109 S220 ; wait for nozzle temp to stabilize

G4
M300 S440 P100 ; Beep
M117 heat.gcode
