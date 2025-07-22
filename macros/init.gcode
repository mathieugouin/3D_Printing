; Initialization script

G28 ; home all, after in relative position
G90 ; Set all axes to absolute position
M83 ; Sets the extruder to relative movement
G21 ; set units to millimeters

G4
M300 S440 P100 ; Beep
M117 init.gcode
