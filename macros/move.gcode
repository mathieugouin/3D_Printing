; Test code to move the printer

G0 F5000 ; Fast speed (feed rate) (5000 mm / min)

G0 X2 Y2
G0 Y200
G0 X200
G0 Y2
G0 X2
G0 X200 Y200
G0 X2
G0 X200 Y2
G0 X2 Y2

G4 ; Wait for motion to complete
M300 S440 P100 ; Beep
M117 move.gcode
