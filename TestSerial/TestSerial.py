# Read a line of serial data from a serial port and print it to the screen

import serial
import time

# ports for seiral communication: 
PORT_NAMES = ['ttyACM0','ttyACM1','ttyUSB0','ttyUSB1']

PORT_NAME = '/dev/ttyUSB0'
# check which port is being used in pio device monitor V

for pName in PORT_NAMES:

    with  serial.Serial( pName,  9600, timeout=1) as ser:
        print(f"Start Serial: name: {ser.name}.  ")
        time.sleep(1)
        for i in range(50):
            print(f"line: {i}")
            #if(ser.in_waiting > 0):
            line = ser.readline()
            print(line.decode('utf-8'))

# with  serial.Serial( PORT_NAME,  9600, timeout=1) as ser:
#     print(f"Start Serial: name: {ser.name}.  ")
#     time.sleep(1)
#     for i in range(50):
#         print(f"line: {i}")
#         #if(ser.in_waiting > 0):
#         line = ser.readline()
#         print(line.decode('utf-8'))

ser.close()
print("Stop Serial: ")
