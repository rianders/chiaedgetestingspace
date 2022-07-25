# Read a line of serial data from a serial port and print it to the screen

import serial
import time

# ports for seiral communication: 
# make sure the 'COM#' is set according the Windows Device Manager
ser = serial.Serial('/dev/ttyACM0', 9600, timeout=1)
time.sleep(2)

for i in range(50):
    line = ser.readline()   # read a byte
    if line:
        string = line.decode()  # convert the byte string to a unicode string
        num = int(string) # convert the unicode string to an int
        print(num)

ser.close()