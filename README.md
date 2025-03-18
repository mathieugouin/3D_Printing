# 3D_Printing

Tools, config related to 3D printing.

# Creality Ender-3 V2

* Modified for BL-Touch.
* Firmware:
    * https://github.com/mriscoc/Ender3V2S1/releases/tag/20240122
    * Ender3V2-422-BLTUBL-MPC-20240125.bin

## Terminal

Refer to `test.gcode` for example.

Refer to: https://marlinfw.org/meta/gcode/ for G-Code reference.

```bash
python3 -m serial.tools.miniterm /dev/ttyUSB0 115200 --echo --develop

# --- Miniterm on /dev/ttyUSB0  115200,8,N,1 ---
# --- Quit: Ctrl+] | Menu: Ctrl+T | Help: Ctrl+T followed by Ctrl+H ---
```

G-Code commands can be directly entered in the terminal.

## Specifications

From https://www.creality3dofficial.com/products/ender-3-v2-3d-printer
* Technology: FDM 3D Printer
* Assembly: Assembly kit
* Build Size: 220*220*250mm
* Nozzle Diameters: 0.4mm
* Nozzle Count: 1
* Max. Nozzle Temp: 255℃
* Max. Print Bed Temp: 110℃
* Printing Materials: PLA，TPU，ABS
* Filament Dia : 1.75mm
* XY-axis Precision: 0.012 mm
* Z-axis Precision: 0.004 mm
* Max Print Speed: 120mm/s
* Auto Levelling: NA
* Supported files: STL，OBJ，G-Code
* Connectivity: USB or SD CARD
* Machine size: 475*470*620mm
* Machine weight: 7.8kg
* Board Version: Creality V4.2.2 Board 32 Bit with TMC 2209 Driver

## Menus & Configs

* Media >
    * List of all `*.gcode` files in the micro SD card
* Prepare >
    * Filament Management >
        * Park Head
        * Preheat Hotend >
            * Preheat PLA
            * Preheat ABS
            * Preheat PETG
            * Preheat CUSTOM
            * Cooldown
        * Firmware Retract
        * Change Filament
        * Unload Filament
        * Load Filament
    * Move Axis >
        * Live Move (false)
        * Move X (110.0)
        * Move Y (110.0)
        * Move Z (10.0)
        * Move Extruder (0.0)
        * Move Ext. 100mm
    * Bed Traming >
        * Tramming Wizard
        * Manual Traming (false)
        * Front Left
        * Front Right
        * Back Left
        * Back Right
    * Disable Steppers
    * Homing >
        * Auto Home
        * Home X
        * Home Y
        * Home Z
    * Auto Build Mesh: will heat the bed and probe the NxN grid as specified in 'Mesh Points'.  If the bed is already pre-heated, takes about 3 minutes for 9x9.
    * Z Probe Wizard >
        * Auto Home
        * Move Z to Home
        * Probe Z Offset (-2.93): Use this to make sure only a sheet of paper passes between the hot end and the bed.
    * Preheat PLA
    * Preheat ABS
    * Preheat PETG
    * Preheat CUSTOM
    * Cooldown
* Control >
    * Temperature >
        * Hotend Temp (0)
        * Bed Temp (0)
        * Fan Speed (0)
        * Preheat PLA Conf >
            * Hotend Temp (215)
            * Bed Temp (60)
            * Fan Speed (255)
            * Store Settings
        * Preheat ABS Conf >
            * Hotend Temp (240)
            * Bed Temp (90)
            * Fan Speed (128)
            * Store Settings
        * Preheat PETG Conf >
            * Hotend Temp (230)
            * Bed Temp (80)
            * Fan Speed (128)
            * Store Settings
        * Preheat CUSTOM Conf >
            * Hotend Temp (190)
            * Bed Temp (50)
            * Fan Speed (128)
            * Store Settings
    * Motion >
        * Speed >
            * Max X Speed (500)
            * Max Y Speed (500)
            * Max Z Speed (10)
            * Max E Speed (60)
        * Acceleration >
            * Max X Accel (500)
            * Max Y Accel (500)
            * Max Z Accel (500)
            * Max E Accel (5000)
        * Jerk >
            * Max X Jerk (8)
            * Max Y Jerk (8)
            * Max Z Jerk (0.4)
            * Max E Jerk (5)
        * Step Smoothing (true)
        * Steps/mm >
            * X Steps/mm (80)
            * Y Steps/mm (80)
            * Z Steps/mm (400)
            * E Steps/mm (102.3)
        * Flow (100)
        * Speed (100)
    * Store Settings
    * Load Settings
    * Restore Defaults
    * Reboot Rpinter
    * Info Screen >
        * Machine Name: Ender3V2-422-BLTUBL-MPC
        * Size: 230x230x250
        * Professional Firmware: Version 2.1.3 MRiscoC ; 20240125 - 01:18 ; OFFICIAL BUILD
* Advanced >
    * Store Settings
    * Mesh Leveling >
        * Mesh Points (9x9)
        * Mesh Inset >
            * Mesh X Minimum (10)
            * Mesh X Maximum (204.4)
            * Mesh Y Minimum (10)
            * Mesh Y Maximum (220)
            * Maximize Area
            * Center Area
        * Bed Temp (60)
        * Fade Height (10)
        * Auto Build Mesh: will heat the bed and probe the NxN grid as specified in 'Mesh Points'.  If the bed is already pre-heated, takes about 3 minutes for 9x9.
        * Memory Slot (0)
        * Save Bed Mesh
        * Load Bed Mesh
        * Tilting Grid Size (1)
        * Tilt Mesh
        * Smart Fill-in
        * Mesh reset
        * Edit Mesh >
            * Moving to Probing Pos (false)
            * Index X (0)
            * Index Y (0)
            * Z Value (0.23): varies according to x/y index point selection
            * Probing Z Reference
        * View Mesh >
            * Continue
    * Probe Settings >
        * Probe X Offset (-43.6)
        * Probe Y Offset (-10)
        * Probe Z Offset (-2.86): This value changes according to probe z offset calibration
        * Z Feed Rate (480)
        * Multiple Probing (0)
        * Stow Z-Probe
        * Deploy Z-Probe
        * Reset
        * Enable HS mode (true)
        * M48 Probe Test
    * Filament Settings >
        * Enable Runout (false)
        * Runout Active (LOW)
        * Runout Dist mm (25)
        * Invert Extruder (false)
        * Extruder Min Temp. (180)
        * Load mm (0)
        * Unload mm (100)
        * Firmware Retract >
            * Retract mm (5)
            * Retract Speed (40)
            * Hop mm (0.2)
            * Recover Speed (40)
            * Unretr. Extra (0)
    * MPC Settings >
        * MPC Autotune
        * Heater Power (40)
        * Heat Capacity (14.08)
        * Sensor Resp. (0.2226)
        * Ambient Coeff. (0.1030)
        * Fan coeff. (0.1098)
    * Bed PID Settings >
        * Bed PID
        * Temperature (60)
        * PID Cycles (5)
        * Set Kp: (136.27)
        * Set Ki: (26.61)
        * Set Kd: (465.13)
        * Store Settings
    * Physical settings >
        * X bed size (230)
        * Y bed size (230)
        * X min position (0)
        * Y min position (0)
        * X max position (248)
        * Y max position (231)
        * Z max position (250)
        * Park Head >
            * Park X Position (240)
            * Park Y Position (221)
            * Park Z Raise (20)
    * Toolbar Setup >
        * Auto Home
        * Tramming Wizard
        * Z Probe Wizard
        * Auto build Mesh
        * Disable Steppers
    * End-stops diag. >
        * x_min: open
        * y_min: open
        * z_min: TRIGGERED
        * filament: TRIGGERED
        * Continue
    * Printer Stats >
        * Print Count: 379
        * Completed: 372
        * Print Time: 18d 00:04
        * Longest Job Time: 0d 08:20
        * Extruded Total: 1236.17 m
        * Continue
    * Reset Print Count >
        * Please confirm Reset Print Stats?
        * Confirm
        * Cancel
    * Lock Screen: then, need to slide to the center and press knob to unlock
    * Enable sound (true)
    * Power Outage (false)
    * Media Update (false)
    * 115K baud (true)
    * LCD Brightness (115)
    * Turn Off LCD
    * Select Colors >
        * Restore Defaults
        * Screen Background
        * Cursor
        * Title Background
        * Title Text
        * Text
        * Selected
        * Split Line
        * Highlight
        * Status Background
        * Statuc Text
        * Popup Background
        * Popup Text
        * Alert Background
        * Alert Text
        * Percent Text
        * Bar Fill
        * Indicator value
        * Coordinate value

## Print Steps

* Control, Temperature, Bed temp: 60
* Wait for bed temperature to raise to 60
* Prepare, Bed Tramming, Tramming Wizard
* Prepare, Z Probe Wizard: paper sheet trick
* Prepare, Auto Build Mesh (about 3min), then Save
* TBD

