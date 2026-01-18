; Set both temperature to 0
M140 S0 ; set final bed temp (no wait)
M104 S0 ; set final nozzle temp (no wait)

:send sound.gcode
M117 cooldown.gcode
