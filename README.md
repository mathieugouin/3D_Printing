# 3D_Printing

Tools, config related to 3D printing.

# Creality Ender-3 V2

Modified for BL-Touch.

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
    * Auto Build Mesh: will heat the bed and probe the NxN grid as specified in TBD.  If the bed is already pre-heated, takes 3 minutess.
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
        * Machine Name Ender: `Ender3V2-422-BLTUBL-MPC`
        * Size: `230x230x250`
        * Professional Firmware: Version 2.1.3 MRiscoC ; 20230904 - 09:57 ; OFFICIAL BUILD
* Advanced >
    * TBD

## Print Steps

* Control, Temperature, Bed temp: 60
* Prepare, Bed Tramming, Tramming Wizard
* Prepare, Auto Build Mesh (about 3min)
* Prepare, Z Probe Wizard
* TBD

