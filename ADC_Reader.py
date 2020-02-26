# -*- coding : utf8 -*-

# Datasheet for ADS7886: http://www.ti.com/lit/ds/symlink/ads7886.pdf

# Note that this signalling setup is pretty nonstandard. The ADC's CS is handled by the detector's latch. 
# Clock is only used to read out data and the sampling is handled by the peak detect and sample and hold.
# As a result, a slow clock can read data out quite slowly. This is easily bit-bangable as a result.
# Max toggle speed on GPIO in python is fairly low, far slower than the ADC's 20MHz limit;
# so no need to use delays after clock transitions before reading data.
# Send a clock signal at a reasonable-ish speed, wait for data. Read data manually. Repeat.

# Standards: Every method should end with SCLK high so no bits are accidentally skipped.

# Imports

import collections # for data structures
import time # for delays (if needed)
import RPi.GPIO as GPIO # to use the GPIO
from datetime import datetime # for timestamps. 

# Setting constants for the analog readings.

vref = 3300 # Reference voltage for ADC in mV
resolution = 12 # ADC resolution in bits (12 default)
threshold = 000 # minimum event voltage to record in mV (default 0). Setting a threshold in hardware is preferred.
bufferSize = 10 # Number of samples to store in buffer before saving to the file. 
# Lower values save measurements to file more often but will cause the code to run somewhat slower. 
# "1" immediately saves each sample as it arrives. 

# Preparing GPIO. 

# Enumerating pin numbers. Change these numbers to change the GPIO pin locations.
clockPin = 31
sdoPin = 33
holdPin = 29 

# Configuring selected pins as GPIO
GPIO.setmode(GPIO.BOARD) # Pin numbers are based on the physical pin numbering.
GPIO.setwarnings(False)
GPIO.setup(holdPin, GPIO.OUT) # HOLD pin (keeps ADC chip select asserted until sampling is complete, to avoid unintentional shutdown).
GPIO.output(holdPin, GPIO.LOW) # Keep HOLD low for now since nothing is happening
GPIO.setup(clockPin, GPIO.OUT) # SCLK (clock) pin
# SDO pin. The first 4 bits after a sample starts are all 0, so it's obvious where the data begins if this pin is pulled high.
GPIO.setup(sdoPin, GPIO.IN, pull_up_down=GPIO.PUD_UP) 
ADC_file = open ("ADC_file.txt", "a+") # Open the ADC file in append mode. Creates the file if it does not exist.
# This file is essentially comma-delimited; renaming to "ADC_file.csv" may make life easier.

# Since writing to file takes a few milliseconds, it makes sense to keep a buffer of measurements and write in batches.
dataBufferString = ("Starting a data run at " + datetime.now().strftime("%d %m %Y %H:%M:%S:%f") + "\n")

# Methods Follow Below.

# Method accounts for the ADC startup behavior. 
# The first sample read by the ADC after startup may be garbage data, so we need to ignore that.
def startADC(): 
    
    print('Starting ADC')

    waitForData() # run SCLK until SDO has data. This essentially throws away the questionable first data after startup.
        
    print('ADC started!')

# Method toggles SCLK until it detects the beginning of a data block (4 0's on SDO in a row). 
# The next bit read after running this method will be the first valid data bit.
def waitForData():

    # Python docs are adamant that lists are LIFO and deques should be used for FIFO. Not that it really matters here, but...
    rawBitDeque = collections.deque([], maxlen=(resolution+4)) # Creates an empty deque of maximum length of one full SDO word.

    dataDetected = False # Data not detected yet.
    while not dataDetected: # This loop terminates if it gets its desired 4 bits of 0's on SDO. Otherwise it continues looping.
        GPIO.output(clockPin, GPIO.LOW) # Falling edge of SCLK
        GPIO.output(clockPin, GPIO.HIGH) 
        # Since data is only clocked out on falling clock edges, it's safe to make the measurement after the rising one.

        if GPIO.input(sdoPin): # If SDO is high, that means nothing is happening and there is definitely no data.
            rawBitDeque.append(1) # puts a "1" at the end of the deque and pops off the element at the other end to keep len<16.
        else:
            rawBitDeque.append(0) # puts a "0" at the end of the deque and pops off the element at the other end to keep len<16.
            # checks if the last 16 bits were 12 1's (inactivity) followed by 4 0's (beginning of data word). 
            # if so, set dataDetected to True.
            dataDetected = (list(rawBitDeque) == [1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0])  
    
# Method waits for data then saves the ADC output (in mV) to a file.
def readADC():
    global dataBufferString # Yes, I know it's bad practice. 
    waitForData()
    GPIO.output(holdPin, GPIO.HIGH) #hold asserted to keep CS asserted while sampling
    startTime = datetime.now() # Keeps track of how long the sampling takes
    
    # Now to read the next 12 bits and save them to an array.
    validDataList = list(range(resolution))
    for i in validDataList:
        GPIO.output(clockPin, GPIO.LOW)
        GPIO.output(clockPin, GPIO.HIGH)
        validDataList[i] = GPIO.input(sdoPin)

    # At this point I have an array of 12 data bits. This needs to be converted to a number.    
    validData = int("".join(str(i) for i in validDataList),2) #convert to decimal
    # Convert number reading to a voltage in mV
    validData = (validData / (2.0 ** (resolution)-1)) * vref
  
    if (validData > threshold): # Sets a software voltage threshold for recording data
        print(str(validDataList)+str(validData)+" mV") # Print event to terminal
        
        # Calculate and display time elapsed during sampling
        timeElapsed = datetime.now() - startTime 
        print (str(timeElapsed.microseconds)+" microseconds taken")

        # saves format: timestamp, value in mV, time taken from hold asserted to hold deasserted        
        dataBufferString+=(datetime.now().strftime("%d %m %Y %H:%M:%S:%f") + ", " + str(validData) + ", " + str(timeElapsed.microseconds) + "\n")
        GPIO.output(holdPin, GPIO.LOW) #Sampling done, hold is released

    
# Main method. Running this alone should detect all ADC inputs and save them to the file.
def main():
    global dataBufferString

    startADC() # Discard the first ADC reading

    try:
        while True: # Record ADC readings until program is stopped.
            
            readADC()
            
            # Every <bufferSize> samples, save measurements to file
            if dataBufferString.count('\n') > bufferSize:  
                startTime = datetime.now()
                ADC_file.write(dataBufferString) # Save event and timestamp to file
                timeElapsed = datetime.now() - startTime
                print("Took " + str(timeElapsed.microseconds) + "microseconds to save " + str(bufferSize) + " samples to file")
                dataBufferString = ("Took " + str(timeElapsed.microseconds) + "microseconds to save " + str(bufferSize) + " samples to file \n")
            
    except:
         ADC_file.close()
         print("Done")
        
# Actually run the thing
main()