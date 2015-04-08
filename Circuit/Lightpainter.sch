EESchema Schematic File Version 2
LIBS:power
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:adc-dac
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:brooktre
LIBS:cmos_ieee
LIBS:cmos4000
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ftdi
LIBS:gennum
LIBS:graphic
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:linear
LIBS:logo
LIBS:memory
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip
LIBS:microchip1
LIBS:microcontrollers
LIBS:motorola
LIBS:msp430
LIBS:nxp_armmcu
LIBS:opto
LIBS:philips
LIBS:powerint
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:sensors
LIBS:siliconi
LIBS:special
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:xilinx
LIBS:TJS
LIBS:Lightpainter-cache
EELAYER 24 0
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
$Comp
L Arduino_Nano_v3 U2
U 1 1 55244B71
P 6950 1750
F 0 "U2" H 6950 50  60  0000 C CNN
F 1 "Arduino_Nano_v3" H 6950 1850 60  0000 C CNN
F 2 "" H 6950 1750 60  0000 C CNN
F 3 "" H 6950 1750 60  0000 C CNN
	1    6950 1750
	1    0    0    -1  
$EndComp
$Comp
L SD_Card_Socket U3
U 1 1 55244B85
P 7450 4750
F 0 "U3" H 7900 4900 60  0000 C CNN
F 1 "SD_Card_Socket" H 7900 4800 60  0000 C CNN
F 2 "" H 7450 4750 60  0000 C CNN
F 3 "" H 7450 4750 60  0000 C CNN
	1    7450 4750
	0    1    1    0   
$EndComp
$Comp
L CONN_3 K1
U 1 1 55244BA4
P 4200 6150
F 0 "K1" V 4150 6150 50  0000 C CNN
F 1 "CONN_3" V 4250 6150 40  0000 C CNN
F 2 "" H 4200 6150 60  0000 C CNN
F 3 "" H 4200 6150 60  0000 C CNN
	1    4200 6150
	-1   0    0    1   
$EndComp
$Comp
L SW_PUSH SW2
U 1 1 55244BC5
P 5000 2750
F 0 "SW2" H 5150 2860 50  0000 C CNN
F 1 "SW_PUSH" H 5000 2670 50  0000 C CNN
F 2 "" H 5000 2750 60  0000 C CNN
F 3 "" H 5000 2750 60  0000 C CNN
	1    5000 2750
	1    0    0    -1  
$EndComp
$Comp
L SW_PUSH SW1
U 1 1 55244BD7
P 3950 3300
F 0 "SW1" H 4100 3410 50  0000 C CNN
F 1 "SW_PUSH" H 3950 3220 50  0000 C CNN
F 2 "" H 3950 3300 60  0000 C CNN
F 3 "" H 3950 3300 60  0000 C CNN
	1    3950 3300
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 55244BE4
P 4250 2850
F 0 "R1" V 4330 2850 40  0000 C CNN
F 1 "470k" V 4257 2851 40  0000 C CNN
F 2 "" V 4180 2850 30  0000 C CNN
F 3 "" H 4250 2850 30  0000 C CNN
	1    4250 2850
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 55244BF6
P 5300 2300
F 0 "R2" V 5380 2300 40  0000 C CNN
F 1 "470k" V 5307 2301 40  0000 C CNN
F 2 "" V 5230 2300 30  0000 C CNN
F 3 "" H 5300 2300 30  0000 C CNN
	1    5300 2300
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 55244C03
P 3000 4700
F 0 "C1" H 3000 4800 40  0000 L CNN
F 1 "100u" H 3006 4615 40  0000 L CNN
F 2 "" H 3038 4550 30  0000 C CNN
F 3 "" H 3000 4700 60  0000 C CNN
	1    3000 4700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 55244C15
P 4000 4700
F 0 "C2" H 4000 4800 40  0000 L CNN
F 1 "100u" H 4006 4615 40  0000 L CNN
F 2 "" H 4038 4550 30  0000 C CNN
F 3 "" H 4000 4700 60  0000 C CNN
	1    4000 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 55244C36
P 3000 5000
F 0 "#PWR01" H 3000 5000 30  0001 C CNN
F 1 "GND" H 3000 4930 30  0001 C CNN
F 2 "" H 3000 5000 60  0000 C CNN
F 3 "" H 3000 5000 60  0000 C CNN
	1    3000 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 55244C48
P 4000 5000
F 0 "#PWR02" H 4000 5000 30  0001 C CNN
F 1 "GND" H 4000 4930 30  0001 C CNN
F 2 "" H 4000 5000 60  0000 C CNN
F 3 "" H 4000 5000 60  0000 C CNN
	1    4000 5000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 55244C53
P 4700 3000
F 0 "#PWR03" H 4700 3000 30  0001 C CNN
F 1 "GND" H 4700 2930 30  0001 C CNN
F 2 "" H 4700 3000 60  0000 C CNN
F 3 "" H 4700 3000 60  0000 C CNN
	1    4700 3000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR04
U 1 1 55244C60
P 2900 4500
F 0 "#PWR04" H 2900 4600 30  0001 C CNN
F 1 "VDD" H 2900 4610 30  0000 C CNN
F 2 "" H 2900 4500 60  0000 C CNN
F 3 "" H 2900 4500 60  0000 C CNN
	1    2900 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4900 3000 5000
Wire Wire Line
	4000 4900 4000 5000
$Comp
L GND #PWR05
U 1 1 55244C8E
P 3500 5000
F 0 "#PWR05" H 3500 5000 30  0001 C CNN
F 1 "GND" H 3500 4930 30  0001 C CNN
F 2 "" H 3500 5000 60  0000 C CNN
F 3 "" H 3500 5000 60  0000 C CNN
	1    3500 5000
	1    0    0    -1  
$EndComp
$Comp
L +5VD #PWR06
U 1 1 55244CA2
P 4350 4500
F 0 "#PWR06" H 4350 4450 20  0001 C CNN
F 1 "+5VD" H 4350 4600 30  0000 C CNN
F 2 "" H 4350 4500 60  0000 C CNN
F 3 "" H 4350 4500 60  0000 C CNN
	1    4350 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3300 4250 3100
Wire Wire Line
	5300 2750 5300 2550
Wire Wire Line
	4700 3000 4700 2750
$Comp
L GND #PWR07
U 1 1 55244D89
P 3650 3550
F 0 "#PWR07" H 3650 3550 30  0001 C CNN
F 1 "GND" H 3650 3480 30  0001 C CNN
F 2 "" H 3650 3550 60  0000 C CNN
F 3 "" H 3650 3550 60  0000 C CNN
	1    3650 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3300 3650 3550
Wire Wire Line
	4550 6150 5000 6150
Wire Wire Line
	7750 2150 8300 2150
Wire Wire Line
	4250 2250 4250 2600
Wire Wire Line
	5300 1800 5300 2050
$Comp
L VDD #PWR08
U 1 1 55245022
P 7850 1750
F 0 "#PWR08" H 7850 1850 30  0001 C CNN
F 1 "VDD" H 7850 1860 30  0000 C CNN
F 2 "" H 7850 1750 60  0000 C CNN
F 3 "" H 7850 1750 60  0000 C CNN
	1    7850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1850 7850 1850
Wire Wire Line
	7850 1850 7850 1750
$Comp
L GND #PWR09
U 1 1 55245045
P 7950 2000
F 0 "#PWR09" H 7950 2000 30  0001 C CNN
F 1 "GND" H 7950 1930 30  0001 C CNN
F 2 "" H 7950 2000 60  0000 C CNN
F 3 "" H 7950 2000 60  0000 C CNN
	1    7950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1950 7950 1950
Wire Wire Line
	7950 1950 7950 2000
$Comp
L GND #PWR010
U 1 1 5524506A
P 5950 2150
F 0 "#PWR010" H 5950 2150 30  0001 C CNN
F 1 "GND" H 5950 2080 30  0001 C CNN
F 2 "" H 5950 2150 60  0000 C CNN
F 3 "" H 5950 2150 60  0000 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2150 5950 2150
$Comp
L GND #PWR011
U 1 1 552450A0
P 6000 4750
F 0 "#PWR011" H 6000 4750 30  0001 C CNN
F 1 "GND" H 6000 4680 30  0001 C CNN
F 2 "" H 6000 4750 60  0000 C CNN
F 3 "" H 6000 4750 60  0000 C CNN
	1    6000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3250 7950 3250
Wire Wire Line
	7950 3250 7950 3900
Wire Wire Line
	7950 3900 6800 3900
Wire Wire Line
	6800 3900 6800 4300
Wire Wire Line
	6700 4300 6700 3800
Wire Wire Line
	6700 3800 5800 3800
Wire Wire Line
	5800 3800 5800 3250
Wire Wire Line
	5800 3250 6150 3250
Wire Wire Line
	6900 4300 6900 4050
Wire Wire Line
	6900 4050 5600 4050
Wire Wire Line
	5600 4050 5600 3150
Wire Wire Line
	5600 3150 6150 3150
Wire Wire Line
	6150 3050 6000 3050
Wire Wire Line
	6000 3050 6000 3700
Wire Wire Line
	6000 3700 7000 3700
Wire Wire Line
	7000 3700 7000 4300
Wire Wire Line
	6600 4300 6600 4200
Wire Wire Line
	6600 4200 6000 4200
Wire Wire Line
	6000 4200 6000 4750
$Comp
L GND #PWR012
U 1 1 55245188
P 7900 4700
F 0 "#PWR012" H 7900 4700 30  0001 C CNN
F 1 "GND" H 7900 4630 30  0001 C CNN
F 2 "" H 7900 4700 60  0000 C CNN
F 3 "" H 7900 4700 60  0000 C CNN
	1    7900 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4300 7300 4200
Wire Wire Line
	7300 4200 7900 4200
Wire Wire Line
	7900 4200 7900 4700
$Comp
L +5V #PWR013
U 1 1 552451C7
P 4250 2250
F 0 "#PWR013" H 4250 2340 20  0001 C CNN
F 1 "+5V" H 4250 2340 30  0000 C CNN
F 2 "" H 4250 2250 60  0000 C CNN
F 3 "" H 4250 2250 60  0000 C CNN
	1    4250 2250
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR014
U 1 1 552451D9
P 5300 1800
F 0 "#PWR014" H 5300 1890 20  0001 C CNN
F 1 "+5V" H 5300 1890 30  0000 C CNN
F 2 "" H 5300 1800 60  0000 C CNN
F 3 "" H 5300 1800 60  0000 C CNN
	1    5300 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR015
U 1 1 552451E4
P 7100 4050
F 0 "#PWR015" H 7100 4140 20  0001 C CNN
F 1 "+5V" H 7100 4140 30  0000 C CNN
F 2 "" H 7100 4050 60  0000 C CNN
F 3 "" H 7100 4050 60  0000 C CNN
	1    7100 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4300 7100 4050
$Comp
L +5V #PWR016
U 1 1 55245222
P 8300 2050
F 0 "#PWR016" H 8300 2140 20  0001 C CNN
F 1 "+5V" H 8300 2140 30  0000 C CNN
F 2 "" H 8300 2050 60  0000 C CNN
F 3 "" H 8300 2050 60  0000 C CNN
	1    8300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2150 8300 2050
$Comp
L +5VD #PWR017
U 1 1 552452C2
P 4700 6000
F 0 "#PWR017" H 4700 5950 20  0001 C CNN
F 1 "+5VD" H 4700 6100 30  0000 C CNN
F 2 "" H 4700 6000 60  0000 C CNN
F 3 "" H 4700 6000 60  0000 C CNN
	1    4700 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6050 4700 6050
Wire Wire Line
	4700 6050 4700 6000
$Comp
L GND #PWR018
U 1 1 552452FF
P 4700 6400
F 0 "#PWR018" H 4700 6400 30  0001 C CNN
F 1 "GND" H 4700 6330 30  0001 C CNN
F 2 "" H 4700 6400 60  0000 C CNN
F 3 "" H 4700 6400 60  0000 C CNN
	1    4700 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 6250 4700 6250
Wire Wire Line
	4700 6250 4700 6400
Text Notes 3100 6250 0    60   ~ 0
LED STRIP\nCHECK DIRECTION
Wire Notes Line
	2750 5950 4300 5950
Wire Notes Line
	4300 5950 4300 6350
Wire Notes Line
	4300 6350 2500 6350
Wire Notes Line
	2500 6350 2750 6200
Wire Notes Line
	2750 6200 2600 6050
Wire Notes Line
	2600 6050 2750 5950
Text Notes 8450 2100 0    60   ~ 0
NOTE: This is NOT same 5V \n	supply as LED STRIP
Text Notes 3800 1900 0    60   ~ 0
NOTE: This is NOT same 5V \n	supply as LED STRIP
Text Notes 7500 7500 0    60   ~ 0
LED LIGHT PAINTING RIG
Text Notes 10000 7350 0    60   ~ 0
©2015 Tim Stephens
Wire Notes Line
	4050 6050 3900 6050
Wire Notes Line
	3900 6050 3950 6000
Wire Notes Line
	3900 6050 3950 6100
Text Notes 2900 4250 0    60   ~ 0
LED POWER SUPPLY
Wire Wire Line
	5300 2750 6150 2750
Text GLabel 6050 2650 0    60   Input ~ 0
STRIP_DATA
Text GLabel 5000 6150 2    60   Input ~ 0
STRIP_DATA
Wire Wire Line
	6050 2650 6150 2650
Wire Wire Line
	6150 2850 5300 2850
Wire Wire Line
	5300 2850 5300 3300
Wire Wire Line
	5300 3300 4250 3300
Wire Wire Line
	2900 4500 3100 4500
Connection ~ 3000 4500
Wire Wire Line
	3900 4500 4350 4500
Connection ~ 4000 4500
Wire Wire Line
	3500 4800 3500 5000
Connection ~ 3900 4500
Connection ~ 3100 4500
$Comp
L 78L05 U1
U 1 1 5525A5E4
P 3500 4550
F 0 "U1" H 3650 4354 60  0000 C CNN
F 1 "78L05" H 3500 4750 60  0000 C CNN
F 2 "" H 3500 4550 60  0000 C CNN
F 3 "" H 3500 4550 60  0000 C CNN
	1    3500 4550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
