; Feed new filament from start of gears to the end of tube, close to hotend

:send park_front.gcode
:send heat.gcode

M83 ; E relative
G92 E0 ; Reset extruder position

G1 E400 F400 ; Extrude 400 mm

G4 ; Wait for motion to complete
:send sound.gcode

M117 feed_filament.gcode
