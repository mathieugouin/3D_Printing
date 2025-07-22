; Test code to move the printer
; G0 Z100 F1000

G0 F5000 ; Fast feed rate (5000 mm / min)
; G0 F1000 ; Slow feed rate (1000 mm / min)
; G0 X0 ; Only move X to 0 mm
; G0 X110 Y110 Z125 ; Move x, y, z center

G0 X2 Y2
G0 Y200
G0 X200
G0 Y2
G0 X2
G0 X200 Y200
G0 X2
G0 X200 Y2
G0 X2 Y2

G4
M300 S440 P100 ; Beep
M117 move.gcode
