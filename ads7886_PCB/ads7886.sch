EESchema Schematic File Version 4
LIBS:ads7886-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 1900 1550 2    60   ~ 0
VDD
Text Label 2850 2050 2    60   ~ 0
VIN
Text Notes 850  2850 0    60   ~ 0
POWER
Text Notes 850  1200 0    60   ~ 0
ADC
Text Notes 7400 7500 0    60   ~ 0
ADS7886 Mezzanine Board
Text Notes 700  7700 0    60   ~ 0
Notes:\nThe ADC itself pulls 2mA.\nThe Pi has configurable pull up/down resistors. As a result, no output\nresistors are included in this design. \nJohnson noise equivalent to the LSB would be >1MΩ.\n
Text Notes 5800 1200 0    60   ~ 0
ANALOG INPUT
Text Label 4300 1850 0    60   ~ 0
CS
Text Label 4300 1950 0    60   ~ 0
SDO
Text Label 4300 2050 0    60   ~ 0
SCLK
$Comp
L ads7886-rescue:TEST-ads7886-rescue TP1
U 1 1 5DB9260A
P 1750 5100
F 0 "TP1" H 1750 5400 50  0000 C BNN
F 1 "TEST" H 1750 5350 50  0000 C CNN
F 2 "Connectors:Pin_d1.0mm_L10.0mm" H 1750 5100 50  0001 C CNN
F 3 "" H 1750 5100 50  0001 C CNN
	1    1750 5100
	0    -1   -1   0   
$EndComp
Text Label 1950 5100 0    60   ~ 0
VIN
$Comp
L ads7886-rescue:TEST-ads7886-rescue TP2
U 1 1 5DB9379A
P 1750 5350
F 0 "TP2" H 1750 5650 50  0000 C BNN
F 1 "TEST" H 1750 5600 50  0000 C CNN
F 2 "Connectors:Pin_d1.0mm_L10.0mm" H 1750 5350 50  0001 C CNN
F 3 "" H 1750 5350 50  0001 C CNN
	1    1750 5350
	0    -1   -1   0   
$EndComp
Text Label 1950 5350 0    60   ~ 0
VDD
Text Notes 850  4550 0    60   ~ 0
INTERFACE
Text Notes 1550 6150 0    60   ~ 0
Test Points
Text Notes 8150 7650 0    60   ~ 0
2/24/20
Text Notes 10600 7650 0    60   ~ 0
0.5
$Comp
L Device:C_Small C2
U 1 1 5DC143B8
P 2500 3550
F 0 "C2" H 2510 3620 50  0000 L CNN
F 1 "10u" H 2510 3470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2500 3550 50  0001 C CNN
F 3 "" H 2500 3550 50  0001 C CNN
	1    2500 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5DC15109
P 2400 1750
F 0 "C1" H 2410 1820 50  0000 L CNN
F 1 "10u" H 2410 1670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2400 1750 50  0001 C CNN
F 3 "" H 2400 1750 50  0001 C CNN
	1    2400 1750
	1    0    0    -1  
$EndComp
Text Notes 4000 6300 0    60   ~ 0
DIGITAL
Text Label 3550 4800 2    60   ~ 0
5VA
Text Label 4800 4800 0    60   ~ 0
5VA
Text Label 4800 4900 0    60   ~ 0
SIG_IN
$Comp
L power:GNDA #PWR01
U 1 1 5DC199A9
P 3550 5200
F 0 "#PWR01" H 3550 4950 50  0001 C CNN
F 1 "GNDA" H 3550 5050 50  0000 C CNN
F 2 "" H 3550 5200 50  0001 C CNN
F 3 "" H 3550 5200 50  0001 C CNN
	1    3550 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR02
U 1 1 5DC19BAC
P 4800 5200
F 0 "#PWR02" H 4800 4950 50  0001 C CNN
F 1 "GNDA" H 4800 5050 50  0000 C CNN
F 2 "" H 4800 5200 50  0001 C CNN
F 3 "" H 4800 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR05
U 1 1 5DC19D7B
P 2400 2100
F 0 "#PWR05" H 2400 1850 50  0001 C CNN
F 1 "GNDA" H 2400 1950 50  0000 C CNN
F 2 "" H 2400 2100 50  0001 C CNN
F 3 "" H 2400 2100 50  0001 C CNN
	1    2400 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR06
U 1 1 5DC1A619
P 3550 6200
F 0 "#PWR06" H 3550 5950 50  0001 C CNN
F 1 "GNDD" H 3550 6075 50  0000 C CNN
F 2 "" H 3550 6200 50  0001 C CNN
F 3 "" H 3550 6200 50  0001 C CNN
	1    3550 6200
	1    0    0    -1  
$EndComp
Text Label 2750 5900 2    60   ~ 0
SCLK
Text Label 4800 5900 0    60   ~ 0
LATCH
Text Label 4800 6000 0    60   ~ 0
SDO
$Comp
L Device:R_Small R1
U 1 1 5DC1BD1C
P 3000 6050
F 0 "R1" H 3030 6070 50  0000 L CNN
F 1 "10k" H 3030 6010 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 3000 6050 50  0001 C CNN
F 3 "" H 3000 6050 50  0001 C CNN
	1    3000 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR08
U 1 1 5DC1BE6B
P 3000 6200
F 0 "#PWR08" H 3000 5950 50  0001 C CNN
F 1 "GNDD" H 3000 6075 50  0000 C CNN
F 2 "" H 3000 6200 50  0001 C CNN
F 3 "" H 3000 6200 50  0001 C CNN
	1    3000 6200
	1    0    0    -1  
$EndComp
Text Label 3550 5800 2    60   ~ 0
5VD
Text Label 4800 5800 0    60   ~ 0
5VD
Text Notes 7000 7050 0    60   ~ 0
Rev Notes:\nAdded compatiblity for 1G14 and 1G240 inverters
Text Notes 5750 4550 0    60   ~ 0
CS TIMING
Text Notes 4500 2550 0    60   ~ 0
Accepts 5V digital input\non 3.3V VDD
Wire Wire Line
	3000 6150 3000 6200
Wire Notes Line
	750  6850 750  4400
Wire Notes Line
	5650 6850 750  6850
Wire Notes Line
	5650 4400 5650 6850
Wire Notes Line
	750  4400 5650 4400
Wire Wire Line
	4550 6000 4800 6000
Wire Wire Line
	4550 6100 4800 6100
Wire Wire Line
	3550 6100 3750 6100
Wire Wire Line
	4550 5900 4800 5900
Wire Wire Line
	2750 5900 3000 5900
Wire Wire Line
	4550 5800 4800 5800
Wire Wire Line
	3750 5800 3550 5800
Wire Wire Line
	4550 4900 4800 4900
Wire Wire Line
	3750 4900 3550 4900
Connection ~ 4800 5100
Wire Wire Line
	4800 5100 4550 5100
Wire Wire Line
	4800 5000 4800 5100
Wire Wire Line
	4550 5000 4800 5000
Connection ~ 3550 5100
Wire Wire Line
	3550 5100 3750 5100
Wire Wire Line
	3550 5000 3550 5100
Wire Wire Line
	3750 5000 3550 5000
Wire Wire Line
	3750 4800 3550 4800
Wire Wire Line
	4800 4800 4550 4800
Wire Wire Line
	2400 1950 2950 1950
Wire Notes Line
	5650 4300 5650 2700
Wire Notes Line
	750  4300 5650 4300
Wire Notes Line
	750  2700 750  4300
Connection ~ 2400 1550
Wire Wire Line
	2400 1650 2400 1550
Connection ~ 2400 1950
Wire Wire Line
	2400 1850 2400 1950
Wire Wire Line
	2850 1550 2400 1550
Wire Wire Line
	2850 1850 2850 1550
Wire Wire Line
	1750 5350 1950 5350
Wire Wire Line
	1750 5100 1950 5100
Wire Wire Line
	2850 1850 2950 1850
Wire Wire Line
	2850 2050 2950 2050
Wire Wire Line
	4050 2050 4300 2050
Wire Wire Line
	4050 1950 4300 1950
Wire Notes Line
	10850 1050 5700 1050
Wire Notes Line
	5650 2600 5650 1050
Wire Notes Line
	750  2600 5650 2600
Wire Notes Line
	5650 1050 750  1050
Wire Notes Line
	750  1050 750  2600
Wire Notes Line
	5650 2700 750  2700
Wire Notes Line
	5700 4400 10850 4400
Wire Notes Line
	10850 4400 10850 6400
Wire Notes Line
	10850 6400 5700 6400
Wire Notes Line
	5700 6400 5700 4400
Wire Notes Line
	5700 1050 5700 4300
Wire Notes Line
	5700 4300 10850 4300
Wire Notes Line
	10850 4300 10850 1050
Text Notes 5950 5100 0    60   ~ 0
Inverter accepts 3.3V input on 5VD.\nSource/sink 32mA.
Text Label 1950 5850 0    60   ~ 0
CS
Text Label 1950 5600 0    60   ~ 0
PD
$Comp
L ads7886-rescue:TEST-ads7886-rescue TP4
U 1 1 5DCA4EC1
P 1750 5600
F 0 "TP4" H 1750 5900 50  0000 C BNN
F 1 "TEST" H 1750 5850 50  0000 C CNN
F 2 "Connectors:Pin_d1.0mm_L10.0mm" H 1750 5600 50  0001 C CNN
F 3 "" H 1750 5600 50  0001 C CNN
	1    1750 5600
	0    -1   -1   0   
$EndComp
$Comp
L ads7886-rescue:TEST-ads7886-rescue TP5
U 1 1 5DCA4F16
P 1750 5850
F 0 "TP5" H 1750 6150 50  0000 C BNN
F 1 "TEST" H 1750 6100 50  0000 C CNN
F 2 "Connectors:Pin_d1.0mm_L10.0mm" H 1750 5850 50  0001 C CNN
F 3 "" H 1750 5850 50  0001 C CNN
	1    1750 5850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 5850 1750 5850
Wire Wire Line
	1950 5600 1750 5600
Connection ~ 3000 5900
Wire Wire Line
	3000 5950 3000 5900
$Comp
L power:GNDA #PWR017
U 1 1 5DCA95A1
P 1150 2200
F 0 "#PWR017" H 1150 1950 50  0001 C CNN
F 1 "GNDA" H 1150 2050 50  0000 C CNN
F 2 "" H 1150 2200 50  0001 C CNN
F 3 "" H 1150 2200 50  0001 C CNN
	1    1150 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR018
U 1 1 5DCA9642
P 1550 2200
F 0 "#PWR018" H 1550 1950 50  0001 C CNN
F 1 "GNDD" H 1550 2075 50  0000 C CNN
F 2 "" H 1550 2200 50  0001 C CNN
F 3 "" H 1550 2200 50  0001 C CNN
	1    1550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2200 1150 2200
Text Notes 9350 4250 0    60   ~ 0
Peak detect with adjustable Rs
Text Notes 3700 4150 0    60   ~ 0
Boring LDO internally set to 3.3V output.
Text Notes 3900 6550 0    60   ~ 0
Connectors
Text Notes 2800 4250 0    60   ~ 0
(the LP5907 is pretty cool but the implementation is boring)
NoConn ~ 3550 4900
Text Notes 3100 4950 0    60   ~ 0
(THERM)
Wire Wire Line
	3550 6200 3550 6100
Wire Wire Line
	3750 6000 3550 6000
NoConn ~ 3550 6000
NoConn ~ 4800 6100
Text Notes 4200 6800 0    60   ~ 0
"Not connected" pins are I2C.
Text Notes 3250 6050 0    60   ~ 0
(SCL)
Text Notes 4850 6150 0    60   ~ 0
(SDA)
Text Notes 850  6750 0    60   ~ 0
Some spots around the board that might be \nuseful for debugging but hard to reach otherwise.
Wire Wire Line
	4800 5100 4800 5200
Wire Wire Line
	3550 5100 3550 5200
Wire Wire Line
	2400 1550 1900 1550
Wire Wire Line
	2400 1950 2400 2100
Wire Wire Line
	3000 5900 3750 5900
$Comp
L Regulator_Linear:LP5907MFX-3.3 U1
U 1 1 5DCE215C
P 3100 3350
F 0 "U1" H 3100 3717 50  0000 C CNN
F 1 "LP5907MFX-3.3" H 3100 3626 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 3100 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp5907.pdf" H 3100 3850 50  0001 C CNN
	1    3100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 3350 2500 3350
Wire Wire Line
	2800 3250 2500 3250
Wire Wire Line
	2500 3250 2500 3350
Connection ~ 2500 3350
Wire Wire Line
	2500 3350 2500 3450
Wire Wire Line
	2500 3650 2500 3750
$Comp
L power:GNDA #PWR03
U 1 1 5DD00550
P 2500 3750
F 0 "#PWR03" H 2500 3500 50  0001 C CNN
F 1 "GNDA" H 2500 3600 50  0000 C CNN
F 2 "" H 2500 3750 50  0001 C CNN
F 3 "" H 2500 3750 50  0001 C CNN
	1    2500 3750
	1    0    0    -1  
$EndComp
Text Label 3600 3250 0    60   ~ 0
VDD
Wire Wire Line
	3600 3250 3400 3250
$Comp
L power:GNDA #PWR04
U 1 1 5DD1A887
P 3100 3750
F 0 "#PWR04" H 3100 3500 50  0001 C CNN
F 1 "GNDA" H 3100 3600 50  0000 C CNN
F 2 "" H 3100 3750 50  0001 C CNN
F 3 "" H 3100 3750 50  0001 C CNN
	1    3100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 3750 3100 3650
Text Notes 3600 3600 0    60   ~ 0
LP5907 allows output capacitors\nplaced far from LDO
$Comp
L Amplifier_Operational:OPA355NA U2
U 1 1 5DD2FBDD
P 7100 2550
F 0 "U2" H 7444 2596 50  0000 L CNN
F 1 "OPA355NA" H 7444 2505 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 7250 2300 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/opa355.pdf" H 7250 2700 50  0001 C CNN
	1    7100 2550
	1    0    0    -1  
$EndComp
Text Label 7000 1800 2    60   ~ 0
VDD
Wire Wire Line
	7100 2850 7100 3050
Text Label 7100 3050 0    60   ~ 0
VDD
Wire Wire Line
	7000 2850 7000 3050
$Comp
L power:GNDA #PWR07
U 1 1 5DD41F6B
P 7000 3050
F 0 "#PWR07" H 7000 2800 50  0001 C CNN
F 1 "GNDA" H 7005 2877 50  0000 C CNN
F 2 "" H 7000 3050 50  0001 C CNN
F 3 "" H 7000 3050 50  0001 C CNN
	1    7000 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 2550 7400 2550
$Comp
L Device:C_Small C3
U 1 1 5DD614BC
P 7400 2050
F 0 "C3" H 7410 2120 50  0000 L CNN
F 1 "10u" H 7410 1970 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7400 2050 50  0001 C CNN
F 3 "" H 7400 2050 50  0001 C CNN
	1    7400 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1800 7000 1900
Wire Wire Line
	7400 1900 7000 1900
Connection ~ 7000 1900
Wire Wire Line
	7400 2150 7400 2200
$Comp
L power:GNDA #PWR010
U 1 1 5DD6C137
P 7400 2200
F 0 "#PWR010" H 7400 1950 50  0001 C CNN
F 1 "GNDA" H 7405 2027 50  0000 C CNN
F 2 "" H 7400 2200 50  0001 C CNN
F 3 "" H 7400 2200 50  0001 C CNN
	1    7400 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1900 7000 2250
Wire Wire Line
	7400 1900 7400 1950
Wire Wire Line
	8550 2550 8750 2550
Wire Wire Line
	8750 2550 8750 2950
Wire Wire Line
	8750 3350 6600 3350
Wire Wire Line
	6600 3350 6600 2650
Wire Wire Line
	6600 2650 6800 2650
Text Label 8550 2950 2    60   ~ 0
PD
$Comp
L Device:R_Small R4
U 1 1 5DCA0B18
P 9650 3150
F 0 "R4" H 9680 3170 50  0000 L CNN
F 1 "1M" H 9680 3110 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 9650 3150 50  0001 C CNN
F 3 "" H 9650 3150 50  0001 C CNN
	1    9650 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5DCA0044
P 9300 3150
F 0 "C4" H 9310 3220 50  0000 L CNN
F 1 "1n" H 9310 3070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9300 3150 50  0001 C CNN
F 3 "" H 9300 3150 50  0001 C CNN
	1    9300 3150
	1    0    0    -1  
$EndComp
Text Label 6400 2450 2    60   ~ 0
SIG_IN
Wire Wire Line
	8550 2950 8750 2950
Connection ~ 8750 2950
Wire Wire Line
	8750 2950 8750 3350
Wire Wire Line
	6800 2450 6400 2450
$Comp
L SamacSys_Parts:TC33X-2-101E R2
U 1 1 5DD87A99
P 8900 2550
F 0 "R2" H 9450 2815 50  0000 C CNN
F 1 "TC33X-2-101E" H 9450 2724 50  0000 C CNN
F 2 "SamacSys_Parts:TC33X-2_1" H 9850 2650 50  0001 L CNN
F 3 "https://www.bourns.com/pdfs/TC33.pdf" H 9850 2550 50  0001 L CNN
F 4 "SMD single turn trimmer 100R 25% top adj Bourns TC33 Series SMD Trimmer Resistor with Solder Pad Terminations, 100 +/-25% 0.1W +/-250ppm/C Top Adjust" H 9850 2450 50  0001 L CNN "Description"
F 5 "" H 9850 2350 50  0001 L CNN "Height"
F 6 "Bourns" H 9850 2250 50  0001 L CNN "Manufacturer_Name"
F 7 "TC33X-2-101E" H 9850 2150 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "652-TC33X-2-101E" H 9850 2050 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=652-TC33X-2-101E" H 9850 1950 50  0001 L CNN "Mouser Price/Stock"
F 10 "7432485P" H 9850 1850 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/7432485P" H 9850 1750 50  0001 L CNN "RS Price/Stock"
F 12 "70155234" H 9850 1650 50  0001 L CNN "Allied_Number"
F 13 "https://www.alliedelec.com/bourns-tc33x-2-101e/70155234/" H 9850 1550 50  0001 L CNN "Allied Price/Stock"
	1    8900 2550
	1    0    0    -1  
$EndComp
$Comp
L SamacSys_Parts:BAT_63-02V_H6327 D1
U 1 1 5DD8A14E
P 8550 2550
F 0 "D1" H 8850 2285 50  0000 C CNN
F 1 "BAT_63-02V_H6327" H 8850 2376 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 9000 2550 50  0001 L CNN
F 3 "http://fr.rs-online.com/web/p/diodes-de-redressement-et-schottky/1107456/" H 9000 2450 50  0001 L CNN
F 4 "Infineon BAT 63-02V H6327 SMT Schottky Diode, 3V 100mA, 2-Pin SC-79" H 9000 2350 50  0001 L CNN "Description"
F 5 "0.59" H 9000 2250 50  0001 L CNN "Height"
F 6 "Infineon" H 9000 2150 50  0001 L CNN "Manufacturer_Name"
F 7 "BAT 63-02V H6327" H 9000 2050 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "726-BAT6302VH6327" H 9000 1950 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=726-BAT6302VH6327" H 9000 1850 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 9000 1750 50  0001 L CNN "RS Part Number"
F 11 "" H 9000 1650 50  0001 L CNN "RS Price/Stock"
	1    8550 2550
	-1   0    0    1   
$EndComp
$Comp
L SamacSys_Parts:ADS7886SDBVT IC1
U 1 1 5DD8CEB2
P 2950 1850
F 0 "IC1" H 3500 2115 50  0000 C CNN
F 1 "ADS7886SDBVT" H 3500 2024 50  0000 C CNN
F 2 "SamacSys_Parts:SOT95P280X145-6N" H 3900 1950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads7886.pdf" H 3900 1850 50  0001 L CNN
F 4 "ADC Single SAR 1MSPS 12-Bit Serial 6-Pin" H 3900 1750 50  0001 L CNN "Description"
F 5 "1.45" H 3900 1650 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 3900 1550 50  0001 L CNN "Manufacturer_Name"
F 7 "ADS7886SDBVT" H 3900 1450 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "595-ADS7886SDBVT" H 3900 1350 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.com/Search/Refine.aspx?Keyword=595-ADS7886SDBVT" H 3900 1250 50  0001 L CNN "Mouser Price/Stock"
F 10 "6607253P" H 3900 1150 50  0001 L CNN "RS Part Number"
F 11 "http://uk.rs-online.com/web/p/products/6607253P" H 3900 1050 50  0001 L CNN "RS Price/Stock"
	1    2950 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 2550 8750 2550
Connection ~ 8750 2550
Wire Wire Line
	8900 2650 8900 2900
Wire Wire Line
	8900 2900 9300 2900
Wire Wire Line
	10000 2550 10200 2550
NoConn ~ 10200 2550
Text Label 10050 2900 0    60   ~ 0
VIN
Wire Wire Line
	9300 3050 9300 2900
Connection ~ 9300 2900
Wire Wire Line
	9300 2900 9650 2900
Wire Wire Line
	9650 3050 9650 2900
Connection ~ 9650 2900
Wire Wire Line
	9650 2900 10050 2900
Wire Wire Line
	9300 3250 9300 3450
Wire Wire Line
	9300 3450 9650 3450
Wire Wire Line
	9650 3450 9650 3250
$Comp
L power:GNDA #PWR013
U 1 1 5DDB632D
P 9650 3550
F 0 "#PWR013" H 9650 3300 50  0001 C CNN
F 1 "GNDA" H 9655 3377 50  0000 C CNN
F 2 "" H 9650 3550 50  0001 C CNN
F 3 "" H 9650 3550 50  0001 C CNN
	1    9650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3550 9650 3450
Connection ~ 9650 3450
Text Notes 9900 3200 0    60   ~ 0
T=1ms
$Comp
L SamacSys_Parts:2214S-08SG-85 J1
U 1 1 5DDC04C9
P 4550 5100
F 0 "J1" H 4950 4535 50  0000 C CNN
F 1 "2214S-08SG-85" H 4950 4626 50  0000 C CNN
F 2 "SamacSys_Parts:SHDR8W60P254_2X4_1016X508X850P" H 5200 5200 50  0001 L CNN
F 3 "http://www.farnell.com/datasheets/1697510.pdf" H 5200 5100 50  0001 L CNN
F 4 "2.54mm Dual Row 8 Pin PCB Mount Socket" H 5200 5000 50  0001 L CNN "Description"
F 5 "8.5" H 5200 4900 50  0001 L CNN "Height"
F 6 "MULTICOMP" H 5200 4800 50  0001 L CNN "Manufacturer_Name"
F 7 "2214S-08SG-85" H 5200 4700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 5200 4600 50  0001 L CNN "Mouser Part Number"
F 9 "" H 5200 4500 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 5200 4400 50  0001 L CNN "RS Part Number"
F 11 "" H 5200 4300 50  0001 L CNN "RS Price/Stock"
	1    4550 5100
	-1   0    0    1   
$EndComp
Text Notes 4000 5300 0    60   ~ 0
ANALOG
$Comp
L SamacSys_Parts:2214S-08SG-85 J2
U 1 1 5DDC85D2
P 4550 6100
F 0 "J2" H 4950 5535 50  0000 C CNN
F 1 "2214S-08SG-85" H 4950 5626 50  0000 C CNN
F 2 "SamacSys_Parts:SHDR8W60P254_2X4_1016X508X850P" H 5200 6200 50  0001 L CNN
F 3 "http://www.farnell.com/datasheets/1697510.pdf" H 5200 6100 50  0001 L CNN
F 4 "2.54mm Dual Row 8 Pin PCB Mount Socket" H 5200 6000 50  0001 L CNN "Description"
F 5 "8.5" H 5200 5900 50  0001 L CNN "Height"
F 6 "MULTICOMP" H 5200 5800 50  0001 L CNN "Manufacturer_Name"
F 7 "2214S-08SG-85" H 5200 5700 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "" H 5200 5600 50  0001 L CNN "Mouser Part Number"
F 9 "" H 5200 5500 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 5200 5400 50  0001 L CNN "RS Part Number"
F 11 "" H 5200 5300 50  0001 L CNN "RS Price/Stock"
	1    4550 6100
	-1   0    0    1   
$EndComp
Text Notes 800  2550 0    60   ~ 0
Connect grounds at ADC
Text Notes 9900 3400 0    60   ~ 0
C0G/NP0 capacitor \nrecommended
Text Label 4200 1450 0    60   ~ 0
5VD
Wire Wire Line
	4200 1550 4200 1450
Wire Wire Line
	4200 1850 4300 1850
Wire Wire Line
	4050 1850 4200 1850
Connection ~ 4200 1850
Wire Wire Line
	4200 1750 4200 1850
$Comp
L Device:R_Small R5
U 1 1 5DCA85F8
P 4200 1650
F 0 "R5" H 4230 1670 50  0000 L CNN
F 1 "10k" H 4230 1610 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 4200 1650 50  0001 C CNN
F 3 "" H 4200 1650 50  0001 C CNN
	1    4200 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5350 9200 5350
Wire Wire Line
	8800 5350 8450 5350
Wire Wire Line
	7750 4800 8200 4800
Wire Wire Line
	8200 4600 8200 4800
Wire Wire Line
	8250 5650 8250 5400
Wire Wire Line
	7100 5350 7900 5350
Connection ~ 7100 5350
Wire Wire Line
	6550 5350 7100 5350
$Comp
L power:GNDD #PWR09
U 1 1 5DDEDB51
P 7100 5900
F 0 "#PWR09" H 7100 5650 50  0001 C CNN
F 1 "GNDD" H 7100 5775 50  0000 C CNN
F 2 "" H 7100 5900 50  0001 C CNN
F 3 "" H 7100 5900 50  0001 C CNN
	1    7100 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5750 7100 5900
Wire Wire Line
	7100 5550 7100 5350
Wire Wire Line
	7750 5100 7750 5050
$Comp
L power:GNDD #PWR016
U 1 1 5DCA70CD
P 7750 5100
F 0 "#PWR016" H 7750 4850 50  0001 C CNN
F 1 "GNDD" H 7750 4975 50  0000 C CNN
F 2 "" H 7750 5100 50  0001 C CNN
F 3 "" H 7750 5100 50  0001 C CNN
	1    7750 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4850 7750 4800
$Comp
L Device:C_Small C6
U 1 1 5DCA6EFC
P 7750 4950
F 0 "C6" H 7760 5020 50  0000 L CNN
F 1 "10u" H 7760 4870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7750 4950 50  0001 C CNN
F 3 "" H 7750 4950 50  0001 C CNN
	1    7750 4950
	1    0    0    -1  
$EndComp
Text Label 8200 4600 0    60   ~ 0
5VD
Text Label 9350 5350 0    60   ~ 0
CS
$Comp
L power:GNDD #PWR011
U 1 1 5DC22043
P 8250 5650
F 0 "#PWR011" H 8250 5400 50  0001 C CNN
F 1 "GNDD" H 8250 5525 50  0000 C CNN
F 2 "" H 8250 5650 50  0001 C CNN
F 3 "" H 8250 5650 50  0001 C CNN
	1    8250 5650
	1    0    0    -1  
$EndComp
Text Label 6550 5350 2    60   ~ 0
LATCH
Text Notes 9450 6350 0    60   ~ 0
CS is delayed inverted latch.
$Comp
L Device:R_Small R6
U 1 1 5DDF72AE
P 7100 5650
F 0 "R6" H 7159 5696 50  0000 L CNN
F 1 "10k" H 7159 5605 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 7100 5650 50  0001 C CNN
F 3 "~" H 7100 5650 50  0001 C CNN
	1    7100 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5DE39DE5
P 8900 5350
F 0 "R3" V 8704 5350 50  0000 C CNN
F 1 "100" V 8795 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" H 8900 5350 50  0001 C CNN
F 3 "~" H 8900 5350 50  0001 C CNN
	1    8900 5350
	0    1    1    0   
$EndComp
Text Notes 8700 4950 0    60   ~ 0
Fall time from 5V to 0.4V\nbecomes ≈250ns. 
$Comp
L Device:C_Small C5
U 1 1 5DE53C9D
P 9200 5600
F 0 "C5" H 9292 5646 50  0000 L CNN
F 1 "1n" H 9292 5555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9200 5600 50  0001 C CNN
F 3 "~" H 9200 5600 50  0001 C CNN
	1    9200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5500 9200 5350
Connection ~ 9200 5350
Wire Wire Line
	9200 5350 9350 5350
Wire Wire Line
	9200 5700 9200 5850
$Comp
L power:GNDD #PWR012
U 1 1 5DE5A2B6
P 9200 5850
F 0 "#PWR012" H 9200 5600 50  0001 C CNN
F 1 "GNDD" H 9200 5725 50  0000 C CNN
F 2 "" H 9200 5850 50  0001 C CNN
F 3 "" H 9200 5850 50  0001 C CNN
	1    9200 5850
	1    0    0    -1  
$EndComp
Text Label 2250 3250 2    60   ~ 0
5VA
Wire Wire Line
	2250 3250 2500 3250
Connection ~ 2500 3250
$Comp
L 74xGxx:74LVC1G240 U3
U 1 1 5E5503CE
P 8200 5350
F 0 "U3" H 8175 5175 50  0000 C CNN
F 1 "74LVC1G240" H 8175 5084 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 8200 5350 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 8200 5350 50  0001 C CNN
	1    8200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4800 8250 4800
Wire Wire Line
	8250 4800 8250 5300
Connection ~ 8200 4800
Wire Wire Line
	8200 5150 8200 5100
Wire Wire Line
	8200 5100 7750 5100
Connection ~ 7750 5100
$EndSCHEMATC
