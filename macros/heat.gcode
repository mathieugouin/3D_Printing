; Turn on heat on bed and hotend

; Move to corner to remove filament oozing while heating
G0 Z50 F1000
G0 X2 Y2 F3000

; Start heating both
M140 S60 ; set bed temp (no wait)
M104 S220 ; set nozzle temp (no wait)

; Wait for both to stabilize
M190 S60 ; wait for bed temp to stabilize (displays also the printing menu???)
M109 S220 ; wait for nozzle temp to stabilize

G4
M300 S440 P100 ; Beep
M117 heat.gcode
