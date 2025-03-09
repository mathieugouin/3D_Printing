# 3D_Printing

Tools, config related to 3D printing.

## Ender-3 V2

### Terminal

Refer to `test.gcode` for example.

Refer to: https://marlinfw.org/meta/gcode/ for G-Code reference.

```bash
# --- Miniterm on /dev/ttyUSB0  115200,8,N,1 ---
# --- Quit: Ctrl+] | Menu: Ctrl+T | Help: Ctrl+T followed by Ctrl+H ---

python3 -m serial.tools.miniterm /dev/ttyUSB0 115200 --echo --develop
```

### Specifications:
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

### Menus & Configs
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
    * Disable Steppers
    * Homing >
    * Auto Build Mesh
* Control >
* Advanced >
