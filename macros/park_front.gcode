; Move head to front left corner to access the filament output

G1 Z100 F1000
G1 X40 Y40 F8000

G4
M300 S440 P100 ; Beep
M117 park_front.gcode
