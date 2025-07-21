import serial
import readline  # Enables arrow key history in interactive mode
import time
import sys
import os

# === Configuration ===
PORT = '/dev/ttyUSB0'   # Replace with your printer's serial port
BAUD = 115200
LINE_DELAY = 0.1        # Seconds to wait between lines (tune for your printer)

def send_line(ser, line):
    line = line.strip()
    if not line:
        return
    print(f">>> {line}")
    ser.write((line + '\n').encode())
    time.sleep(LINE_DELAY)
    while ser.in_waiting:
        response = ser.readline().decode(errors='ignore').strip()
        if response:
            print(f"<< {response}")

def send_file(ser, filepath):
    if not os.path.exists(filepath):
        print(f"File not found: {filepath}")
        return
    with open(filepath) as f:
        for line in f:
            send_line(ser, line)

def main():
    print(f"Connecting to {PORT} at {BAUD} baud...")
    try:
        ser = serial.Serial(PORT, BAUD, timeout=1)
    except serial.SerialException as e:
        print(f"Could not open serial port: {e}")
        sys.exit(1)

    time.sleep(2)  # Let printer reset
    print("Connected. Type G-code commands or ':send path/to/file.gcode'. Type ':exit' to quit.\n")

    try:
        while True:
            try:
                cmd = input("GCODE> ")
            except EOFError:
                break  # e.g., Ctrl+D
            if cmd.startswith(":send "):
                path = cmd.split(" ", 1)[1]
                send_file(ser, path)
            elif cmd == ":exit":
                break
            else:
                send_line(ser, cmd)
    finally:
        print("Closing connection.")
        ser.close()

if __name__ == "__main__":
    main()
