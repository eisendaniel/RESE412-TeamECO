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
P 1810 4140
F 0 "A1" H 1540 5210 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 1280 5120 50  0000 C CNN
F 2 "Module:Arduino_UNO_R3" H 1810 4140 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 1810 4140 50  0001 C CNN
	1    1810 4140
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
P 2010 2990
F 0 "#PWR0103" H 2010 2840 50  0001 C CNN
F 1 "+5V" H 2025 3163 50  0000 C CNN
F 2 "" H 2010 2990 50  0001 C CNN
F 3 "" H 2010 2990 50  0001 C CNN
	1    2010 2990
	1    0    0    -1  
$EndComp
Wire Wire Line
	2010 3140 2010 2990
$Comp
L power:GND #PWR0104
U 1 1 5F6AD56D
P 1810 5350
F 0 "#PWR0104" H 1810 5100 50  0001 C CNN
F 1 "GND" H 1815 5177 50  0000 C CNN
F 2 "" H 1810 5350 50  0001 C CNN
F 3 "" H 1810 5350 50  0001 C CNN
	1    1810 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1710 5240 1710 5300
Wire Wire Line
	1810 5240 1810 5300
Wire Wire Line
	1810 5300 1710 5300
Wire Wire Line
	1910 5240 1910 5300
Wire Wire Line
	1910 5300 1810 5300
Connection ~ 1810 5300
Wire Wire Line
	1810 5350 1810 5300
Wire Wire Line
	2310 4140 2540 4140
Text Label 2380 4140 0    50   ~ 0
VIOUT
$EndSCHEMATC
