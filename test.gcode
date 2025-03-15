; Build Size: 220 x 220 x 250mm
G28 ; home all, after in relative position
G90 ; Set all axes to absolute position

G0 X110 Y110 Z125 ; Move x, y, z center
G0 F5000 ; Fast feed rate
G0 F1000 ; Slow feed rate


M117 Hello World! ; Print on the LCD

; Setup ******************
; Bed temp
M190 S60 ; Warmup bed to 60 C and wait: the waiting brings the printing dialog?
M140 S60 ; Warmup bed to 60 C but don't wait
M140 S0 ; Set be to 0 (no wait)

; Hotend temp
M109 S215 ; Warmup hotend to 215 C and wait: the waiting brings the printing dialog?
M104 S215 ; Warmup hotend to 215 C but don't wait
M104 S0 ; Cooldown hotend to 0 C but don't wait






; Diag ****************

M300 P100 S440 ; Play sound (frequency not taken into account?)

M115 ; Send diag info on serial port

M118 Hello world ; print on the serial port

; echo:DEBUG:ECHO,INFO,ERRORS,COMMUNICATION
M111 S247 ; 255 - 8: Enable everything except dry-run mode



