; Turn on heat on bed and hotend

; Move to front left corner to remove filament oozing while heating
:send park_front.gcode

; Start heating both
M140 S60 ; set bed temp (no wait)
M104 S220 ; set nozzle temp (no wait)

; Wait for both to stabilize
M190 S60 ; wait for bed temp to stabilize (displays also the printing menu???)
M109 S220 ; wait for nozzle temp to stabilize

G4
:send sound.gcode
M117 heat.gcode
