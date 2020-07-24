EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "STM32 battery-powered wireless temperature sensor"
Date "2020-07-23"
Rev "v0.2"
Comp ""
Comment1 "Used in low power tests"
Comment2 "Pull up/down added after testing"
Comment3 "SCL moved from pin 10 to pin 17 for pcb tracing"
Comment4 ""
$EndDescr
$Comp
L power:VDD #PWR0101
U 1 1 5F073E10
P 5800 3250
F 0 "#PWR0101" H 5800 3100 50  0001 C CNN
F 1 "VDD" H 5815 3423 50  0000 C CNN
F 2 "" H 5800 3250 50  0001 C CNN
F 3 "" H 5800 3250 50  0001 C CNN
	1    5800 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR0102
U 1 1 5F0742AE
P 3850 3250
F 0 "#PWR0102" H 3850 3100 50  0001 C CNN
F 1 "VDDA" H 3865 3423 50  0000 C CNN
F 2 "" H 3850 3250 50  0001 C CNN
F 3 "" H 3850 3250 50  0001 C CNN
	1    3850 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5F07490D
P 5800 3350
F 0 "#PWR0103" H 5800 3100 50  0001 C CNN
F 1 "GND" H 5805 3177 50  0000 C CNN
F 2 "" H 5800 3350 50  0001 C CNN
F 3 "" H 5800 3350 50  0001 C CNN
	1    5800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3350 5450 3350
Wire Wire Line
	5800 3250 5450 3250
Wire Wire Line
	4250 3250 3850 3250
NoConn ~ 5450 3450
NoConn ~ 4250 3450
NoConn ~ 4250 3350
NoConn ~ 4250 3050
NoConn ~ 4250 2950
$Comp
L Connector:Conn_01x05_Male J1
U 1 1 5F08558C
P 1200 2900
F 0 "J1" H 1308 3281 50  0000 C CNN
F 1 "Programmer" H 1308 3190 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 1200 2900 50  0001 C CNN
F 3 "~" H 1200 2900 50  0001 C CNN
	1    1200 2900
	1    0    0    -1  
$EndComp
Text Label 1400 2700 0    50   ~ 0
VDD
Text Label 1400 2800 0    50   ~ 0
GND
Text Label 1400 2900 0    50   ~ 0
NRST
Text Label 5450 2950 0    50   ~ 0
SWDIO
Text Label 1400 3000 0    50   ~ 0
SWDIO
Text Label 1400 3100 0    50   ~ 0
SWCLK
Text Label 5450 2850 0    50   ~ 0
SWCLK
$Comp
L MCU_ST_STM32L0:stm32l010f4 U1
U 1 1 5F078E1F
P 4850 3300
F 0 "U1" H 4850 4065 50  0000 C CNN
F 1 "stm32l010f4" H 4850 3974 50  0000 C CNN
F 2 "STM32:stm32l010f4" H 4800 3300 50  0001 C CNN
F 3 "file:///tmp/mozilla_steven0/stm32l010f4.pdf" H 4800 3300 50  0001 C CNN
	1    4850 3300
	1    0    0    -1  
$EndComp
Text Label 4250 3150 2    50   ~ 0
NRST
Text Notes 2100 2450 2    50   ~ 0
ST-Link pins in no particular order\n\n
Wire Notes Line
	600  2150 2250 2150
Wire Notes Line
	2250 2150 2250 3300
Wire Notes Line
	2250 3300 600  3300
Wire Notes Line
	600  3300 600  2150
Text Label 4250 2850 2    50   ~ 0
GND
$Comp
L Device:R R1
U 1 1 5F08D678
P 1950 2750
F 0 "R1" H 2020 2796 50  0000 L CNN
F 1 "R" H 2020 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 1880 2750 50  0001 C CNN
F 3 "~" H 1950 2750 50  0001 C CNN
	1    1950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 2900 1400 2900
$Comp
L power:VDD #PWR01
U 1 1 5F08ECD2
P 1950 2600
F 0 "#PWR01" H 1950 2450 50  0001 C CNN
F 1 "VDD" H 1965 2773 50  0000 C CNN
F 2 "" H 1950 2600 50  0001 C CNN
F 3 "" H 1950 2600 50  0001 C CNN
	1    1950 2600
	1    0    0    -1  
$EndComp
$Comp
L RF:NRF24L01_Breakout U2
U 1 1 5F075B3E
P 8750 1900
F 0 "U2" H 9130 1946 50  0000 L CNN
F 1 "NRF24L01_Breakout" H 9130 1855 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 8900 2500 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 8750 1800 50  0001 C CNN
	1    8750 1900
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0107
U 1 1 5F07791D
P 8750 1300
F 0 "#PWR0107" H 8750 1150 50  0001 C CNN
F 1 "VDD" H 8765 1473 50  0000 C CNN
F 2 "" H 8750 1300 50  0001 C CNN
F 3 "" H 8750 1300 50  0001 C CNN
	1    8750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5F077DA1
P 8750 2500
F 0 "#PWR0108" H 8750 2250 50  0001 C CNN
F 1 "GND" H 8755 2327 50  0000 C CNN
F 2 "" H 8750 2500 50  0001 C CNN
F 3 "" H 8750 2500 50  0001 C CNN
	1    8750 2500
	1    0    0    -1  
$EndComp
Text Label 8250 1600 2    50   ~ 0
MOSI
Text Label 8250 1700 2    50   ~ 0
MISO
Text Label 8250 1800 2    50   ~ 0
SPI_SCK
Text Label 8250 1900 2    50   ~ 0
NCSN
Text Label 8250 2100 2    50   ~ 0
NRF_CE
NoConn ~ 8250 2200
Text Label 4250 3550 2    50   ~ 0
NRF_CE
Text Label 4250 3650 2    50   ~ 0
NCSN
Text Label 5450 3550 0    50   ~ 0
MOSI
Text Label 5450 3750 0    50   ~ 0
SPI_SCK
Text Label 5450 3650 0    50   ~ 0
MISO
$Comp
L Sensor_Temperature:MCP9808_MSOP U3
U 1 1 5F07D429
P 8400 4650
F 0 "U3" H 8844 4696 50  0000 L CNN
F 1 "MCP9808_MSOP" H 8844 4605 50  0000 L CNN
F 2 "Package_SO:MSOP-8_3x3mm_P0.65mm" H 8400 4650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22203b.pdf" H 8150 5100 50  0001 C CNN
	1    8400 4650
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR03
U 1 1 5F07DFEC
P 8400 4150
F 0 "#PWR03" H 8400 4000 50  0001 C CNN
F 1 "VDD" H 8415 4323 50  0000 C CNN
F 2 "" H 8400 4150 50  0001 C CNN
F 3 "" H 8400 4150 50  0001 C CNN
	1    8400 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5F07E33F
P 8400 5150
F 0 "#PWR04" H 8400 4900 50  0001 C CNN
F 1 "GND" H 8405 4977 50  0000 C CNN
F 2 "" H 8400 5150 50  0001 C CNN
F 3 "" H 8400 5150 50  0001 C CNN
	1    8400 5150
	1    0    0    -1  
$EndComp
NoConn ~ 8800 4650
$Comp
L power:GND #PWR02
U 1 1 5F07ECBD
P 7750 5150
F 0 "#PWR02" H 7750 4900 50  0001 C CNN
F 1 "GND" H 7755 4977 50  0000 C CNN
F 2 "" H 7750 5150 50  0001 C CNN
F 3 "" H 7750 5150 50  0001 C CNN
	1    7750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4950 7750 4950
Wire Wire Line
	7750 4950 7750 5150
Wire Wire Line
	7750 4850 7750 4950
Connection ~ 7750 4950
Wire Wire Line
	7750 4750 7750 4850
Connection ~ 7750 4850
Wire Wire Line
	7750 4850 8000 4850
$Comp
L power:VDD #PWR06
U 1 1 5F081713
P 7750 3850
F 0 "#PWR06" H 7750 3700 50  0001 C CNN
F 1 "VDD" H 7765 4023 50  0000 C CNN
F 2 "" H 7750 3850 50  0001 C CNN
F 3 "" H 7750 3850 50  0001 C CNN
	1    7750 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5F082DE3
P 7500 4150
F 0 "R2" H 7570 4196 50  0000 L CNN
F 1 "R" H 7570 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7430 4150 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5F083925
P 7750 4150
F 0 "R3" H 7820 4196 50  0000 L CNN
F 1 "R" H 7820 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7680 4150 50  0001 C CNN
F 3 "~" H 7750 4150 50  0001 C CNN
	1    7750 4150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR05
U 1 1 5F085823
P 7500 3850
F 0 "#PWR05" H 7500 3700 50  0001 C CNN
F 1 "VDD" H 7515 4023 50  0000 C CNN
F 2 "" H 7500 3850 50  0001 C CNN
F 3 "" H 7500 3850 50  0001 C CNN
	1    7500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3850 7500 4000
Wire Wire Line
	7750 4000 7750 3850
Wire Wire Line
	7750 4750 8000 4750
Wire Wire Line
	8000 4350 7750 4350
Wire Wire Line
	7750 4350 7750 4300
Wire Wire Line
	8000 4450 7500 4450
Wire Wire Line
	7500 4300 7500 4450
Wire Wire Line
	7750 4350 7400 4350
Connection ~ 7750 4350
Wire Wire Line
	7500 4450 7400 4450
Connection ~ 7500 4450
Text Label 7400 4350 2    50   ~ 0
SDA
Text Label 7400 4450 2    50   ~ 0
SCL
Text Label 5450 3050 0    50   ~ 0
SDA
$Comp
L Device:R R7
U 1 1 5F1720F2
P 7750 1400
F 0 "R7" H 7820 1446 50  0000 L CNN
F 1 "R" H 7820 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7680 1400 50  0001 C CNN
F 3 "~" H 7750 1400 50  0001 C CNN
	1    7750 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F1727AD
P 7500 1400
F 0 "R6" H 7570 1446 50  0000 L CNN
F 1 "R" H 7570 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7430 1400 50  0001 C CNN
F 3 "~" H 7500 1400 50  0001 C CNN
	1    7500 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR010
U 1 1 5F179053
P 7750 1250
F 0 "#PWR010" H 7750 1100 50  0001 C CNN
F 1 "VDD" H 7765 1423 50  0000 C CNN
F 2 "" H 7750 1250 50  0001 C CNN
F 3 "" H 7750 1250 50  0001 C CNN
	1    7750 1250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR09
U 1 1 5F179DF8
P 7500 1250
F 0 "#PWR09" H 7500 1100 50  0001 C CNN
F 1 "VDD" H 7515 1423 50  0000 C CNN
F 2 "" H 7500 1250 50  0001 C CNN
F 3 "" H 7500 1250 50  0001 C CNN
	1    7500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1600 7750 1600
Wire Wire Line
	7750 1600 7750 1550
Wire Wire Line
	8250 1700 7500 1700
Wire Wire Line
	7500 1700 7500 1550
$Comp
L Device:R R8
U 1 1 5F17B1DA
P 7750 2350
F 0 "R8" H 7820 2396 50  0000 L CNN
F 1 "R" H 7820 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7680 2350 50  0001 C CNN
F 3 "~" H 7750 2350 50  0001 C CNN
	1    7750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1800 7750 1800
Wire Wire Line
	7750 1800 7750 2200
$Comp
L power:GND #PWR011
U 1 1 5F17BEE7
P 7750 2500
F 0 "#PWR011" H 7750 2250 50  0001 C CNN
F 1 "GND" H 7755 2327 50  0000 C CNN
F 2 "" H 7750 2500 50  0001 C CNN
F 3 "" H 7750 2500 50  0001 C CNN
	1    7750 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F17CF9A
P 7250 1400
F 0 "R5" H 7320 1446 50  0000 L CNN
F 1 "R" H 7320 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 7180 1400 50  0001 C CNN
F 3 "~" H 7250 1400 50  0001 C CNN
	1    7250 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1900 7250 1900
Wire Wire Line
	7250 1900 7250 1550
$Comp
L power:VDD #PWR08
U 1 1 5F17DC19
P 7250 1250
F 0 "#PWR08" H 7250 1100 50  0001 C CNN
F 1 "VDD" H 7265 1423 50  0000 C CNN
F 2 "" H 7250 1250 50  0001 C CNN
F 3 "" H 7250 1250 50  0001 C CNN
	1    7250 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5F17DF5A
P 7000 1400
F 0 "R4" H 7070 1446 50  0000 L CNN
F 1 "R" H 7070 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 6930 1400 50  0001 C CNN
F 3 "~" H 7000 1400 50  0001 C CNN
	1    7000 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR07
U 1 1 5F17E1EC
P 7000 1250
F 0 "#PWR07" H 7000 1100 50  0001 C CNN
F 1 "VDD" H 7015 1423 50  0000 C CNN
F 2 "" H 7000 1250 50  0001 C CNN
F 3 "" H 7000 1250 50  0001 C CNN
	1    7000 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 2100 7000 2100
Wire Wire Line
	7000 2100 7000 1550
$Comp
L Device:Battery_Cell BT1
U 1 1 5F1A2584
P 1100 1150
F 0 "BT1" H 1218 1246 50  0000 L CNN
F 1 "Battery_Cell" H 1218 1155 50  0000 L CNN
F 2 "Battery:BatteryHolder_Keystone_1060_1x2032" V 1100 1210 50  0001 C CNN
F 3 "~" V 1100 1210 50  0001 C CNN
	1    1100 1150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR012
U 1 1 5F1A3B5A
P 1100 800
F 0 "#PWR012" H 1100 650 50  0001 C CNN
F 1 "VDD" H 1115 973 50  0000 C CNN
F 2 "" H 1100 800 50  0001 C CNN
F 3 "" H 1100 800 50  0001 C CNN
	1    1100 800 
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR014
U 1 1 5F1A4C85
P 1300 800
F 0 "#PWR014" H 1300 650 50  0001 C CNN
F 1 "VDDA" H 1315 973 50  0000 C CNN
F 2 "" H 1300 800 50  0001 C CNN
F 3 "" H 1300 800 50  0001 C CNN
	1    1300 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5F1A5AA0
P 1100 1400
F 0 "#PWR013" H 1100 1150 50  0001 C CNN
F 1 "GND" H 1105 1227 50  0000 C CNN
F 2 "" H 1100 1400 50  0001 C CNN
F 3 "" H 1100 1400 50  0001 C CNN
	1    1100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 1400 1100 1300
Wire Wire Line
	1100 800  1100 900 
Wire Wire Line
	1300 800  1300 900 
Wire Wire Line
	1300 900  1100 900 
Connection ~ 1100 900 
Wire Wire Line
	1100 900  1100 950 
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5F1A8AF7
P 1650 800
F 0 "#FLG0101" H 1650 875 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 973 50  0000 C CNN
F 2 "" H 1650 800 50  0001 C CNN
F 3 "~" H 1650 800 50  0001 C CNN
	1    1650 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 800  1650 900 
Wire Wire Line
	1650 900  1300 900 
Connection ~ 1300 900 
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5F1AAEC1
P 1650 1400
F 0 "#FLG0102" H 1650 1475 50  0001 C CNN
F 1 "PWR_FLAG" H 1650 1573 50  0000 C CNN
F 2 "" H 1650 1400 50  0001 C CNN
F 3 "~" H 1650 1400 50  0001 C CNN
	1    1650 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	1650 1400 1650 1300
Wire Wire Line
	1650 1300 1100 1300
Connection ~ 1100 1300
Wire Wire Line
	1100 1300 1100 1250
$Comp
L Device:C C1
U 1 1 5F1B4BB1
P 750 1100
F 0 "C1" H 865 1146 50  0000 L CNN
F 1 "C" H 865 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 788 950 50  0001 C CNN
F 3 "~" H 750 1100 50  0001 C CNN
	1    750  1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 900  750  900 
Wire Wire Line
	750  900  750  950 
Wire Wire Line
	1100 1300 750  1300
Wire Wire Line
	750  1300 750  1250
$Comp
L Device:C C4
U 1 1 5F1B7E91
P 9600 1200
F 0 "C4" H 9715 1246 50  0000 L CNN
F 1 "C" H 9715 1155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9638 1050 50  0001 C CNN
F 3 "~" H 9600 1200 50  0001 C CNN
	1    9600 1200
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR019
U 1 1 5F1BCE33
P 9600 1050
F 0 "#PWR019" H 9600 900 50  0001 C CNN
F 1 "VDD" H 9615 1223 50  0000 C CNN
F 2 "" H 9600 1050 50  0001 C CNN
F 3 "" H 9600 1050 50  0001 C CNN
	1    9600 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5F1BD1D7
P 9600 1350
F 0 "#PWR020" H 9600 1100 50  0001 C CNN
F 1 "GND" H 9605 1177 50  0000 C CNN
F 2 "" H 9600 1350 50  0001 C CNN
F 3 "" H 9600 1350 50  0001 C CNN
	1    9600 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5F1C3F5D
P 9700 4600
F 0 "C5" H 9815 4646 50  0000 L CNN
F 1 "C" H 9815 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9738 4450 50  0001 C CNN
F 3 "~" H 9700 4600 50  0001 C CNN
	1    9700 4600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR021
U 1 1 5F1C3F63
P 9700 4450
F 0 "#PWR021" H 9700 4300 50  0001 C CNN
F 1 "VDD" H 9715 4623 50  0000 C CNN
F 2 "" H 9700 4450 50  0001 C CNN
F 3 "" H 9700 4450 50  0001 C CNN
	1    9700 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 5F1C3F69
P 9700 4750
F 0 "#PWR022" H 9700 4500 50  0001 C CNN
F 1 "GND" H 9705 4577 50  0000 C CNN
F 2 "" H 9700 4750 50  0001 C CNN
F 3 "" H 9700 4750 50  0001 C CNN
	1    9700 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F1C71B8
P 4550 4500
F 0 "C2" H 4665 4546 50  0000 L CNN
F 1 "C" H 4665 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4588 4350 50  0001 C CNN
F 3 "~" H 4550 4500 50  0001 C CNN
	1    4550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR015
U 1 1 5F1C71BE
P 4550 4350
F 0 "#PWR015" H 4550 4200 50  0001 C CNN
F 1 "VDD" H 4565 4523 50  0000 C CNN
F 2 "" H 4550 4350 50  0001 C CNN
F 3 "" H 4550 4350 50  0001 C CNN
	1    4550 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5F1C71C4
P 4550 4650
F 0 "#PWR016" H 4550 4400 50  0001 C CNN
F 1 "GND" H 4555 4477 50  0000 C CNN
F 2 "" H 4550 4650 50  0001 C CNN
F 3 "" H 4550 4650 50  0001 C CNN
	1    4550 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5F1C82F4
P 5000 4500
F 0 "C3" H 5115 4546 50  0000 L CNN
F 1 "C" H 5115 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5038 4350 50  0001 C CNN
F 3 "~" H 5000 4500 50  0001 C CNN
	1    5000 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5F1C8300
P 5000 4650
F 0 "#PWR018" H 5000 4400 50  0001 C CNN
F 1 "GND" H 5005 4477 50  0000 C CNN
F 2 "" H 5000 4650 50  0001 C CNN
F 3 "" H 5000 4650 50  0001 C CNN
	1    5000 4650
	1    0    0    -1  
$EndComp
$Comp
L power:VDDA #PWR017
U 1 1 5F1C8CEA
P 5000 4350
F 0 "#PWR017" H 5000 4200 50  0001 C CNN
F 1 "VDDA" H 5015 4523 50  0000 C CNN
F 2 "" H 5000 4350 50  0001 C CNN
F 3 "" H 5000 4350 50  0001 C CNN
	1    5000 4350
	1    0    0    -1  
$EndComp
NoConn ~ 4250 3750
Text Label 5450 3150 0    50   ~ 0
SCL
$EndSCHEMATC
