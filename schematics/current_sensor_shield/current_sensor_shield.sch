EESchema Schematic File Version 4
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
$Comp
L Sensor_Current:ACS713xLCTR-20A U1
U 1 1 5F681870
P 1600 1600
F 0 "U1" H 1450 2100 50  0000 C CNN
F 1 "ACS713xLCTR-20A" H 1150 2000 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 1700 1250 50  0001 L CIN
F 3 "http://www.allegromicro.com/~/media/Files/Datasheets/ACS713-Datasheet.ashx?la=en" H 1600 1600 50  0001 C CNN
	1    1600 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1400 1000 1400
Text Label 1000 1400 0    50   ~ 0
I_in
Wire Wire Line
	1200 1800 1000 1800
Text Label 1000 1800 0    50   ~ 0
I_out
$Comp
L power:+5V #PWR0101
U 1 1 5F6836AE
P 1600 950
F 0 "#PWR0101" H 1600 800 50  0001 C CNN
F 1 "+5V" H 1615 1123 50  0000 C CNN
F 2 "" H 1600 950 50  0001 C CNN
F 3 "" H 1600 950 50  0001 C CNN
	1    1600 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 950  1600 1100
$Comp
L power:GND #PWR0102
U 1 1 5F683D18
P 1600 2150
F 0 "#PWR0102" H 1600 1900 50  0001 C CNN
F 1 "GND" H 1605 1977 50  0000 C CNN
F 2 "" H 1600 2150 50  0001 C CNN
F 3 "" H 1600 2150 50  0001 C CNN
	1    1600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2000 1600 2050
Wire Wire Line
	2000 1600 2250 1600
Text Label 2050 1600 0    50   ~ 0
VIOUT
$Comp
L Device:C C1
U 1 1 5F68441B
P 2150 1900
F 0 "C1" H 2265 1946 50  0000 L CNN
F 1 "100n" H 2265 1855 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2188 1750 50  0001 C CNN
F 3 "~" H 2150 1900 50  0001 C CNN
	1    2150 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2050 1600 2050
Connection ~ 1600 2050
Wire Wire Line
	1600 2050 1600 2150
Wire Wire Line
	2000 1700 2150 1700
Wire Wire Line
	2150 1700 2150 1750
$Comp
L Device:C C2
U 1 1 5F686BC2
P 2600 1550
F 0 "C2" H 2715 1596 50  0000 L CNN
F 1 "100n" H 2715 1505 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2638 1400 50  0001 C CNN
F 3 "~" H 2600 1550 50  0001 C CNN
	1    2600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2050 2150 2050
Connection ~ 2150 2050
Wire Wire Line
	2600 1100 1600 1100
Connection ~ 1600 1100
Wire Wire Line
	1600 1100 1600 1200
Wire Wire Line
	2600 1400 2600 1100
Wire Wire Line
	2600 1700 2600 2050
$Comp
L MCU_Module:Arduino_UNO_R3 A1
U 1 1 5F68A29D
P 4410 1990
F 0 "A1" H 4140 3060 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 3880 2970 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 4410 1990 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 4410 1990 50  0001 C CNN
	1    4410 1990
	1    0    0    -1  
$EndComp
Wire Notes Line
	3320 470  3320 2640
Wire Notes Line
	3320 2640 470  2640
Text Notes 2330 2600 0    50   ~ 0
ACS713  Current sensor\n
$Comp
L power:+5V #PWR0103
U 1 1 5F6AA068
P 4610 840
F 0 "#PWR0103" H 4610 690 50  0001 C CNN
F 1 "+5V" H 4625 1013 50  0000 C CNN
F 2 "" H 4610 840 50  0001 C CNN
F 3 "" H 4610 840 50  0001 C CNN
	1    4610 840 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4610 990  4610 840 
$Comp
L power:GND #PWR0104
U 1 1 5F6AD56D
P 4410 3200
F 0 "#PWR0104" H 4410 2950 50  0001 C CNN
F 1 "GND" H 4415 3027 50  0000 C CNN
F 2 "" H 4410 3200 50  0001 C CNN
F 3 "" H 4410 3200 50  0001 C CNN
	1    4410 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4310 3090 4310 3150
Wire Wire Line
	4410 3090 4410 3150
Wire Wire Line
	4410 3150 4310 3150
Wire Wire Line
	4510 3090 4510 3150
Wire Wire Line
	4510 3150 4410 3150
Connection ~ 4410 3150
Wire Wire Line
	4410 3200 4410 3150
Wire Wire Line
	4910 1990 5140 1990
Text Label 4980 1990 0    50   ~ 0
VIOUT
$EndSCHEMATC
