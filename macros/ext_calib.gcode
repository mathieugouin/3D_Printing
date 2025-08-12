; To calibrate extruder

; :send init.gcode
; :send heat.gcode

G0 X40 Y40 Z80 F5000 ; Position in corner
M83 ; E relative
G1 E100 F60 ; Extrude 100mm at 1mm/s (60mm/min)
G1 F5000 ; Set speed back to normal

G4 ; Wait for motion to complete
M300 S440 P100 ; Beep

M117 ext_calib.gcode
