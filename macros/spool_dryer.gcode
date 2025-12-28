;----------------------------------------------------------------------------- 
; --- Filament Drying Script (Homing & Safe Corner) ---

; The "Bed and Box" Method (Best DIY Hack)
; This is safer than a kitchen oven and uses the hardware you already own.
; Preparation: Poke a few small vent holes in the top of the cardboard box your filament came in.
; Setup: Place your spool flat on the center of the print bed.
; Cover: Place the cardboard box over the spool so it traps the heat against the bed.
; Temperature: Set your bed temperature to 45°C–50°C.
; Note: Do not exceed 55°C, or the Silk PLA might soften and fuse the strands together on the spool.
; Time: Let it sit for 4 to 6 hours. For a full spool that's been out a while, 6 hours is better.

G28           ; Home all axes (X, Y, Z)
G1 Z200 F3000 ; Move nozzle up to 200mm height
G1 X220 Y220  ; Move head to the back-right corner

M140 S45      ; Set bed temperature to 45°C
M104 S0       ; Ensure nozzle is OFF
M190 S45      ; Wait for bed to reach 45°C

M117 Drying: 6 Hours
G4 S10800     ; Wait 3 hours (10,800 seconds)
M117 Drying: 3h Left
G4 S10800     ; Wait another 3 hours

M140 S0       ; Turn off bed heat
M300 S440 P200; Beep to signal completion (if speaker is enabled)
M117 Drying Complete
;----------------------------------------------------------------------------- 

