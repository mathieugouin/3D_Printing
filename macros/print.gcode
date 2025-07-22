; print

G1 X2 Y2 F5000
G1 Z0.28 F500
G92 E0 ; Set E pos to 0 (reset)
M83 ; use relative distances for extrusion

G1 Y140 E10 F1500 ; print line

G1 X2.3 F5000 ; shift to right

G1 Y10 E10 F1200 ; prime the nozzle

G1 X3 F5000
G1 Y140 E10 F1500 ; print line

G1 E-5 F3600 ; retract
G1 Z50 F500


; G1 E5 F2400 ; put back
