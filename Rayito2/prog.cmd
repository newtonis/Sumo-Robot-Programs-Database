Device PIC18F4550
Hwtool PICkit3 
Dump -e "ee.hex"
Program "main.hex"
Write -e "ee.hex" 0x00
Quit
