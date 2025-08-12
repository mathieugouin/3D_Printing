; Initialization script

; Set various limits
M201 X500 Y500 Z500 E5000 ; Set acceleration limit (in units-per-second per-second)
M203 X500 Y500 Z10 E60 ; Set max speed (in units per second)
M204 P500 R1000 T500 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z0.40 E5.00 ; sets the jerk limits, mm/sec

G28 ; Home all
G90 ; Set all axes to absolute position
M83 ; Sets the extruder to relative movement
G21 ; Set units to millimeters

G4 ; Wait for motion to complete
M300 S440 P100 ; Beep
M117 init.gcode ; Print on the display
