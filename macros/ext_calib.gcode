; To calibrate extruder

; :send init.gcode
; :send heat.gcode
:send park_front.gcode

M83 ; E relative
G1 E100 F60 ; Extrude 100mm at 1mm/s (60mm/min)
G1 F5000 ; Set speed back to normal

G4 ; Wait for motion to complete
M300 S440 P100 ; Beep

M117 ext_calib.gcode
