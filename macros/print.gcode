; print

G1 X2 Y2 F5000
G1 Z0.28 F500
G92 E0 ; Set E pos to 0 (reset)
M83 ; use relative distances for extrusion

G1 Y140 E15 F1500 ; print prime line to back

G1 X2.4 F5000 ; shift to right

G1 Y2 E15 F1200 ; print prime line to front

G1 E-6 F3600 ; retract
G1 Z50 F500

;G1 E6 F2400 ; un-retract

G4 ; wait all motion
M300 S440 P100 ; Beep
M117 print.gcode
