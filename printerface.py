"""
Interactive Serial Monitor for 3D Printer G-code

This script provides a command-line interface to communicate with a 3D printer
over a serial connection. It allows users to send individual G-code commands
or entire G-code files to the printer, and displays responses in real time.

Features:
- Interactive prompt with command history (arrow keys supported)
- Send single G-code lines or entire files (':send path/to/file.gcode')
- Saves command history to ~/.gcode_history
- Graceful handling of serial connection and program exit

Usage:
    python printerface.py serial_port baud
"""

# Import necessary libraries
import serial
import readline  # Enables arrow key history in interactive mode
import time
import sys
import os
import atexit
import argparse



HISTORY_FILE = os.path.expanduser("~/.gcode_history")

# Load history if available
if os.path.exists(HISTORY_FILE):
    readline.read_history_file(HISTORY_FILE)

# Save history when the program exits
atexit.register(readline.write_history_file, HISTORY_FILE)


# === Configuration ===
PORT = '/dev/ttyUSB0'   # Replace with your printer's serial port
BAUD = 115200


def wait_for_ok(ser):
    combined_response = ""
    done = False
    while not done:
        # print("!done")
        while ser.in_waiting:
            # print("data avail")
            response = ser.readline().decode(errors='ignore').strip()
            if response:
                combined_response += response + '\n'
                print(f"<< {response}")
                if response.startswith('ok'):
                    done = True
    return combined_response


def send_line(ser, line):
    line = line.strip()
    # Skip empty lines and comments
    if not line or line.startswith(';'):
        return
    ser.write((line + '\n').encode())  # Send line to printer
    wait_for_ok(ser)


def send_file(ser, filepath):
    if not os.path.exists(filepath):
        print(f"File not found: {filepath}")
        return
    with open(filepath) as fp:
        for line in fp:
            send_line(ser, line)


def print_help():
    print("Commands:")
    print("  Type G-code commands directly.")
    print("  :send path/to/file.gcode   # Send all lines from a G-code file")
    print("  :help                      # Show this help message")
    print("  :exit                      # Quit the program")
    print("Press Ctrl+D to exit or type ':exit'.")


def parse_args():
    """Argument Parsing"""
    parser = argparse.ArgumentParser(description="Simple G-code serial interface for 3D printers")
    parser.add_argument(
        "port", nargs="?", default="/dev/ttyUSB0",
        help="Serial port to connect to (default: /dev/ttyUSB0)"
    )
    parser.add_argument(
        "baud", nargs="?", type=int, default=115200,
        help="Baud rate for serial communication (default: 115200)"
    )

    args = parser.parse_args()
    return args.port, args.baud


def serial_connect(port, baud):
    print(f"Connecting to {port} at {baud} baud...")
    try:
        ser = serial.Serial(port, baud, timeout=1)
    except serial.SerialException as e:
        print(f"Could not open serial port: {e}")
        sys.exit(1)

    print("Connected. Type G-code commands or ':send path/to/file.gcode'. Type ':exit' or Ctrl+D to quit.\n")
    return ser


def processing_loop(ser):
    try:
        while True:
            try:
                cmd = input("GCODE> ")
                cmd = cmd.strip()
            except EOFError:
                break  # e.g., Ctrl+D
            if cmd.startswith(":send "):
                path = cmd.split(" ", 1)[1]
                send_file(ser, path)
            elif cmd.startswith(":help"):
                print_help()
            elif cmd == ":exit":
                break
            else:
                send_line(ser, cmd)
    finally:
        print("Closing connection.")
        ser.close()


def main():
    port, baud = parse_args()
    ser = serial_connect(port, baud)
    processing_loop(ser)


if __name__ == "__main__":
    main()
