; Turn on heat on bed and hotend

; Move to front left corner to remove filament oozing while heating
:send park_front.gcode

; Start heating both
M140 S60 ; set bed temp (no wait)
M104 S220 ; set nozzle temp (no wait)

G4
:send sound.gcode
M117 heat_no_wait.gcode
