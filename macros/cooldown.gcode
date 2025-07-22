; Set both temperature to 0
M140 S0 ; set final bed temp
M104 S0 ; set final nozzle temp

M300 S440 P100 ; Beep
M117 cooldown.gcode
