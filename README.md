# 3D_Printing

Tools, config related to 3D printing.

Webpage: https://mathieugouin.github.io/3D_Printing/

# Creality Ender-3 V2

* Modified for BL-Touch.
* Firmware:
    * Linear Advance: https://github.com/mriscoc/Special_Configurations/releases/tag/LinearAdvance
        * Official tags: https://github.com/mriscoc/Ender3V2S1/releases/tag/20240122
    * Ender3V2-422-BLTUBL-LA-MPC-20240127.bin

## Terminal

### Basic Terminal

Refer to `test.gcode` for example.

Refer to: https://marlinfw.org/meta/gcode/ for G-Code reference.

```bash
python -m serial.tools.miniterm /dev/ttyUSB0 115200 --echo --develop

# --- Miniterm on /dev/ttyUSB0  115200,8,N,1 ---
# --- Quit: Ctrl+] | Menu: Ctrl+T | Help: Ctrl+T followed by Ctrl+H ---
```

G-Code commands can be directly entered in the terminal.

### Advanced Terminal

```bash
# Defaults to: /dev/ttyUSB0 115200
python printerface.py

# Some commands:

:send macros/init.gcode
:send macros/mesh.gcode
:send macros/heat.gcode
:send macros/print.gcode
:send macros/cooldown.gcode

:send macros/move.gcode
```

## Specifications

From https://www.creality3dofficial.com/products/ender-3-v2-3d-printer
* Technology: FDM 3D Printer
* Assembly: Assembly kit
* Build Size: 220x220x250mm
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
* Supported files: STL, OBJ, G-Code
* Connectivity: USB or SD CARD
* Machine size: 475x470x620mm
* Machine weight: 7.8kg
* Board Version: Creality V4.2.2 Board 32 Bit with TMC 2209 Driver

## Menus & Configs

* Media >
    * List of all `*.gcode` files in the micro SD card, select the one to print and print it.
* Prepare >
    * Filament Management >
        * Park Head
        * Preheat Hotend >
            * Preheat PLA
            * Preheat ABS
            * Preheat PETG
            * Preheat CUSTOM
            * Cooldown: _Will set the hotend temperature to 0 C._
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
    * Disable Steppers: _Allow to freely move by hand the x/y/z axis._
    * Homing >
        * Auto Home
        * Home X
        * Home Y
        * Home Z
    * Auto Build Mesh: _Will heat the bed and probe the NxN grid as specified in 'Mesh Points'.  If the bed is already pre-heated, takes about 3 minutes for 9x9._
    * Z Probe Wizard >
        * Auto Home
        * Move Z to Home
        * Probe Z Offset (-2.00): _Use this to make sure only a sheet of paper passes between the hot end and the bed._
    * Preheat PLA
    * Preheat ABS
    * Preheat PETG
    * Preheat CUSTOM
    * Cooldown: _Will set the temperature to 0 C for both the hotend and the bed._
* Control >
    * Temperature >
        * Hotend Temp (0)
        * Bed Temp (0)
        * Fan Speed (0)
        * Preheat PLA Conf >
            * Hotend Temp (220)
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
            * Hotend Temp (180)
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
            * Max Z Accel (100)
            * Max E Accel (1000)
        * Junction Dev (0.100)
        * Advance K (0.180)
        * Step Smoothing (true)
        * Steps/mm >
            * X Steps/mm (80)
            * Y Steps/mm (80)
            * Z Steps/mm (400)
            * E Steps/mm (98.8)
        * Flow (100)
        * Speed (100)
    * Store Settings
    * Load Settings
    * Restore Defaults
    * Reboot Rpinter
    * Info Screen >
        * Machine Name: Ender3V2-422-BLTUBL-LA-MPC
        * Size: 230x230x250
        * Professional Firmware: Version 2.1.3 MRiscoC ; 20240127 - 14:13 ; OFFICIAL BUILD
* Advanced >
    * Store Settings
    * Mesh Leveling >
        * Mesh Points X (9)
        * Mesh Points Y (9)
        * Mesh Inset >
            * Mesh X Minimum (10)
            * Mesh X Maximum (203)
            * Mesh Y Minimum (10)
            * Mesh Y Maximum (220)
            * Maximize Area
            * Center Area
        * Bed Temp (60)
        * Fade Height (10)
        * Auto Build Mesh: _will heat the bed and probe the NxN grid as specified in 'Mesh Points'.  If the bed is already pre-heated, takes about 3 minutes for 9x9._
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
            * Z Value (0.23): _Varies according to x/y index point selection_
            * Probing Z Reference
        * View Mesh >
            * Continue
    * Probe Settings >
        * Probe X Offset (-44.6)
        * Probe Y Offset (-5.5)
        * Probe Z Offset (-2.00): _This value changes according to probe Z offset calibration_
        * Z Feed Rate (480)
        * Multiple Probing (0)
        * Stow Z-Probe
        * Deploy Z-Probe
        * Reset
        * Enable HS mode (true)
        * M48 Probe Test: _Will probe the bed 10 times and display the deviation value_
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
        * MPC Autotune: _Will perform automatic tuning of the hotend controller parameters_
        * Heater Power (40)
        * Heat Capacity (15.58)
        * Sensor Resp. (0.1960)
        * Ambient Coeff. (0.1005)
        * Fan coeff. (0.1130)
    * Bed PID Settings >
        * Bed PID: _Will perform automatic tuning of the bed heater controller parameters_
        * Temperature (60)
        * PID Cycles (5)
        * Set Kp: (136.27)
        * Set Ki: (26.61)
        * Set Kd: (465.13)
        * Store Settings
    * Physical settings >
        * X min position (0)
        * Y min position (0)
        * X max position (248)
        * Y max position (231)
        * Z max position (250)
        * X bed size (230)
        * Y bed size (230)
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
        * x\_min: open
        * y\_min: open
        * z\_min: TRIGGERED
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

* Control, Motion, Steps/mm, E Steps/mm: _Adjust according to filament.  If unsure, perform the 100mm extrusion/120mm mark trick (see below)._
* Control, Temperature, Bed temp: 60
* Wait for bed temperature to raise to 60
* Prepare, Homing, Auto Home: _This is important to deactivate any previously loaded mesh when performing the bed tramming._
* Prepare, Bed Tramming, Tramming Wizard
* Prepare, Auto Build Mesh (about 3min), then Save
* Prepare, Filament Management, Preheat Hotend, Preheat PLA: _It is important to preheat the hotend before doing the Z probe offset to account for the thermal expansion of the hotend._
* Prepare, Z Probe Wizard: paper sheet trick
* Prepare, Filament Management, Load Filament
* Insert micro SD card with the sliced `*.gcode` file
* Media, Select the gcode file to print

# Notes

## Filament Parameters

| Filament Brand | Model               | Color        | Step/mm |
| -------------- | -----               | -----        | ------- |
| Polymaker      | PolyLite PLA Pro    | Magenta      | 99.0    |
| Polymaker      | PolyLite PLA        | Aqua Blue    | 98.0    |
| Polymaker      | Panchroma Silk PLA  | Yellow       | 97.3    |
| Polymaker      | Panchroma Silk PLA  | Green        | ????    |
| Eryone         | Silk PLA            | Blue & Green | 97.3    |

## Calibration

### Extruder Calibration

Make sure hot end is heated.

```
:send macros/ext_calib.gcode
```

Then:

`new_step = old_step * 100 / (120 - remaining_length)`

## Slicing

### Print

Some extrusion moves to compare:

| Z     | Motion  | E       | F    |
| ------| ------- | ------- | ---- |
| 0.28  | 130     | 10      | 1500 |
| 0.28  | 130     | 10      | 1200 |
| 0.2   | 145.028 | 5.51199 | 3000 |
| 0.2   | 129.816 | 4.93381 | 3000 |

Rough formula:

```
E = motion * .4 ^ 2 / 1.75 ^ 2
E = motion * 0.05224
```

Wolfram Alpha:

* 100 mm print of .4 mm x .2 mm
* Filament is 1.75 mm dia.
* Fullcontrol extruded 3.326014 mm

Volume in (filament pushed by the extruder gear) match the volume out (molten filament deposited on the bed).

```
.4mm * .2 mm * 100 mm / (3.326014 mm * pi * (1.75 mm / 2)^2)
```

### Retraction

* `E-5 F3600`
* `E5 F2400`

### Wipe

TBD

# Development

## fullcontrol

Manual install wheel (not yet on pypi):

```
pip install fullcontrol-0.1.1-py3-none-any.whl
```

Git install from repo:

```
pip install git+https://github.com/FullControlXYZ/fullcontrol
```

Run jupyter lab

```
jupyter-lab
```

# References

* https://marlinfw.org/meta/gcode/
* https://github.com/FullControlXYZ/fullcontrol
