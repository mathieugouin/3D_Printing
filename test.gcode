; Build Size: 220 x 220 x 250mm


; #############################################################################
; # Motion
; #############################################################################
G28 ; home all, after in relative position
G90 ; Set all axes to absolute position
M83 ; Sets the extruder to relative movement

G0 X110 Y110 Z125 ; Move x, y, z center
G0 F5000 ; Fast feed rate
G0 F1000 ; Slow feed rate

; #############################################################################
; # Temperature
; #############################################################################

; Bed temp
M190 S60 ; Warmup bed to 60 C and wait: the waiting brings the printing dialog?
M140 S60 ; Warmup bed to 60 C but don't wait
M140 S0 ; Set be to 0 (no wait)

; Hotend temp
M109 S215 ; Warmup hotend to 215 C and wait: the waiting brings the printing dialog?
M104 S215 ; Warmup hotend to 215 C but don't wait
M104 S0 ; Cooldown hotend to 0 C but don't wait

; #############################################################################
; # Bed Leveling
; #############################################################################

; From: https://github.com/mriscoc/Ender3V2S1/wiki/Slicer-G-code-Scripts
G29 L0 ; Load mesh from slot 0 (or use any other previously saved slot)
G29 F10.0 ; Set Fade Height for correction at 10.0 mm.
G29 A ; Activate UBL
G29 T0 ; Print mesh map
G29 T1 ; Print mesh map (TSV)

; #############################################################################
; # Diag
; #############################################################################

M0 ; Wait for user input

M117 Hello World! ; Print on the LCD

M300 S440 P2000 ; Play sound 440 Hz, 2000 ms (frequency not taken into account because only a simple buzzer)

M115 ; Send diag info on serial port

M118 Hello world ; print on the serial port

; echo:DEBUG:ECHO,INFO,ERRORS,COMMUNICATION
M111 S247 ; 255 - 8: Enable everything except dry-run mode

M504 ; Dump eeprom content

; #############################################################################
; # Extruder calibration
; #############################################################################

M117 Calibrating extruder
M83 ; Sets the extruder to relative movement
M18 S60 ; Keeps the steppers alive for an additional minute after extrusion
M109 T0 R215 ; Sets the active extruder and hot end temperature and waits for it to be achieved
G1 E100 F100 ; Extrudes 100 mm of filament at a rate of 100 mm per minute
G4 S90 ; Waits 90 seconds for the filament to finish extruding (otherwise extrusion stops when the hot end cools)
M104 S0 ; Sets hot end temperature to 0, but doesn't wait for it to be achieved
