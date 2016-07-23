opt subtitle "Microchip Technology Omniscient Code Generator v1.38 (Free mode) build 201607010351"

opt pagewidth 120

	opt lm

	processor	18F4550
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 51 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 70 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 146 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 219 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 244 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UFRM equ 0F66h ;# 
# 250 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UFRML equ 0F66h ;# 
# 327 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 366 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UIR equ 0F68h ;# 
# 421 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UIE equ 0F69h ;# 
# 476 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 526 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 576 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 635 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 685 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 748 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 829 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 960 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1091 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1222 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1353 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1484 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1615 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1746 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1877 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1964 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2051 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2138 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2225 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2312 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2399 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2486 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2573 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2711 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2820 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2964 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PORTD equ 0F83h ;# 
# 3084 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PORTE equ 0F84h ;# 
# 3254 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
LATA equ 0F89h ;# 
# 3371 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3503 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3591 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3723 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3780 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3785 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
DDRA equ 0F92h ;# 
# 3977 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TRISB equ 0F93h ;# 
# 3982 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
DDRB equ 0F93h ;# 
# 4198 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TRISC equ 0F94h ;# 
# 4203 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4351 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4356 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4572 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4577 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4673 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4731 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4819 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4907 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4995 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5065 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5135 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5205 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5270 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5276 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5282 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5288 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5293 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5497 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5502 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5794 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TXREG equ 0FADh ;# 
# 5799 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5805 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5810 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5816 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5821 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5827 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5833 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5955 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5961 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5967 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5973 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6068 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6152 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6157 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6313 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6318 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6450 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6455 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6629 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6692 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6698 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6704 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6710 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6715 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6871 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6877 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6883 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6889 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6959 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7049 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7167 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7173 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7179 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7185 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7246 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7315 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7573 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7579 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7585 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7682 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7687 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7791 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7797 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7901 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7907 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7913 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7919 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
RCON equ 0FD0h ;# 
# 8067 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8094 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8099 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8363 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8445 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8514 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8520 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8526 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8532 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8610 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8616 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8622 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8628 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8634 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8640 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8646 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8652 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8658 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8664 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8670 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8676 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8682 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8688 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8694 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8700 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8706 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8712 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8718 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8724 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8730 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8736 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8742 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8748 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8754 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8760 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8766 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8857 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8933 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9049 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PROD equ 0FF3h ;# 
# 9055 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9061 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9067 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9075 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9081 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9087 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9093 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9101 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9108 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PC equ 0FF9h ;# 
# 9114 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PCL equ 0FF9h ;# 
# 9120 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9126 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9132 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9207 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TOS equ 0FFDh ;# 
# 9213 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9219 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9225 "/opt/microchip/xc8/v1.38/include/pic18f4550.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_EnhancedRead
	FNCALL	_main,_MotorsSpeed
	FNCALL	_main,_Wixel
	FNCALL	_main,___aldiv
	FNCALL	_main,___almod
	FNCALL	_main,___lmul
	FNCALL	_main,___wmul
	FNCALL	_main,_initLED
	FNCALL	_main,_initYBOT
	FNCALL	_main,_printf
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_printf,_putch
	FNCALL	_initYBOT,_InitAnalog
	FNCALL	_initYBOT,_InitButtons
	FNCALL	_initYBOT,_InitSP
	FNCALL	_initYBOT,_InitTIMERS
	FNCALL	_initYBOT,_MotorsPWM
	FNCALL	_initYBOT,_ResetCounter
	FNCALL	_initYBOT,_configurations_init
	FNCALL	_InitSP,_ReadAnalog
	FNCALL	_MotorsSpeed,_MotorASpeed
	FNCALL	_MotorsSpeed,_MotorBSpeed
	FNCALL	_MotorBSpeed,___awdiv
	FNCALL	_MotorASpeed,___awdiv
	FNCALL	_EnhancedRead,___awdiv
	FNROOT	_main
	FNCALL	intlevel2,_enc
	global	intlevel2
	FNROOT	intlevel2
	global	_KD
	global	_KP
	global	_KR
	global	_SP
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	103

;initializer for _KD
	db	low(float24(300.00000000000000))
	db	high(float24(300.00000000000000))
	db	low highword(float24(300.00000000000000))
	db	low(float24(300.00000000000000))
	db	high(float24(300.00000000000000))
	db	low highword(float24(300.00000000000000))
	db	low(float24(300.00000000000000))
	db	high(float24(300.00000000000000))
	db	low highword(float24(300.00000000000000))
	db	low(float24(300.00000000000000))
	db	high(float24(300.00000000000000))
	db	low highword(float24(300.00000000000000))
	line	102

;initializer for _KP
	db	low(float24(28.000000000000000))
	db	high(float24(28.000000000000000))
	db	low highword(float24(28.000000000000000))
	db	low(float24(80.000000000000000))
	db	high(float24(80.000000000000000))
	db	low highword(float24(80.000000000000000))
	db	low(float24(60.000000000000000))
	db	high(float24(60.000000000000000))
	db	low highword(float24(60.000000000000000))
	db	low(float24(28.000000000000000))
	db	high(float24(28.000000000000000))
	db	low highword(float24(28.000000000000000))
	line	104

;initializer for _KR
	db	low(float24(0.20000000000000001))
	db	high(float24(0.20000000000000001))
	db	low highword(float24(0.20000000000000001))
	db	low(float24(0.10000000000000001))
	db	high(float24(0.10000000000000001))
	db	low highword(float24(0.10000000000000001))
	db	low(float24(0.20000000000000001))
	db	high(float24(0.20000000000000001))
	db	low highword(float24(0.20000000000000001))
	db	low(float24(0.10000000000000001))
	db	high(float24(0.10000000000000001))
	db	low highword(float24(0.10000000000000001))
	line	105

;initializer for _SP
	db	low(float24(900.00000000000000))
	db	high(float24(900.00000000000000))
	db	low highword(float24(900.00000000000000))
	db	low(float24(430.00000000000000))
	db	high(float24(430.00000000000000))
	db	low highword(float24(430.00000000000000))
	db	low(float24(400.00000000000000))
	db	high(float24(400.00000000000000))
	db	low highword(float24(400.00000000000000))
	db	low(float24(350.00000000000000))
	db	high(float24(350.00000000000000))
	db	low highword(float24(350.00000000000000))
	line	124

;initializer for _TIMEFRENO
	dw	(0C8h) & 0xffff
	dw	highword(0C8h)
	global	_dpowers
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	354
_dpowers:
	dw	(01h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(064h)&0ffffh
	dw	(03E8h)&0ffffh
	dw	(02710h)&0ffffh
	global __end_of_dpowers
__end_of_dpowers:
	global	_dpowers
	global	_PIDf
	global	_TIME
	global	_w
	global	_CURRENT
	global	_speedMode
	global	_MF
	global	_PisoActual
	global	_RWM
	global	_ST_B_AMARILLO
	global	_ST_B_ROJO
	global	_ST_B_VERDE
	global	_actual
	global	_nove
	global	_x
	global	_SIZES
	global	_POSICION
	global	_WAITIME
	global	_a
	global	_mode
	global	_sa
	global	_high
	global	_low
	global	_amax
	global	_amin
	global	_AMOUNT
	global	_V
	global	_DER
	global	_LP
	global	_MS
	global	_WAITFRENAR
	global	_division
	global	_sum
	global	_v
	global	_gstatus
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
	global	_gstatus
_gstatus:
       ds      1
	global	_status
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
	global	_status
_status:
       ds      1
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON1bits
_ADCON1bits	set	0xFC1
	global	_ADCON2bits
_ADCON2bits	set	0xFC0
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_BAUDCONbits
_BAUDCONbits	set	0xFB8
	global	_CCP1CONbits
_CCP1CONbits	set	0xFBD
	global	_CCP2CONbits
_CCP2CONbits	set	0xFBA
	global	_CCPR1L
_CCPR1L	set	0xFBE
	global	_CCPR2L
_CCPR2L	set	0xFBB
	global	_CMCON
_CMCON	set	0xFB4
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_INTCON2bits
_INTCON2bits	set	0xFF1
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_OSCCONbits
_OSCCONbits	set	0xFD3
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_PORTDbits
_PORTDbits	set	0xF83
	global	_PORTEbits
_PORTEbits	set	0xF84
	global	_PR2
_PR2	set	0xFCB
	global	_RCONbits
_RCONbits	set	0xFD0
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SPBRGH
_SPBRGH	set	0xFB0
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_T1CONbits
_T1CONbits	set	0xFCD
	global	_T2CONbits
_T2CONbits	set	0xFCA
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR1H
_TMR1H	set	0xFCF
	global	_TMR1L
_TMR1L	set	0xFCE
	global	_TRISAbits
_TRISAbits	set	0xF92
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TRISDbits
_TRISDbits	set	0xF95
	global	_TRISEbits
_TRISEbits	set	0xF96
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global	_UCFGbits
_UCFGbits	set	0xF6F
	global	_UCONbits
_UCONbits	set	0xF6D
	global	_ADON
_ADON	set	0x7E10
	global	_CHS0
_CHS0	set	0x7E12
	global	_CHS1
_CHS1	set	0x7E13
	global	_CHS2
_CHS2	set	0x7E14
	global	_CHS3
_CHS3	set	0x7E15
	global	_GO
_GO	set	0x7E11
	global	_T2CKPS0
_T2CKPS0	set	0x7E50
	global	_T2CKPS1
_T2CKPS1	set	0x7E51
	global	_T2OUTPS0
_T2OUTPS0	set	0x7E53
	global	_T2OUTPS1
_T2OUTPS1	set	0x7E54
	global	_T2OUTPS2
_T2OUTPS2	set	0x7E55
	global	_T2OUTPS3
_T2OUTPS3	set	0x7E56
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR2ON
_TMR2ON	set	0x7E52
	global	_TXIF
_TXIF	set	0x7CF4
psect	smallconst
	
STR_5:
	db	123
	db	39
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	39
	db	58	;':'
	db	39
	db	112	;'p'
	db	108	;'l'
	db	111	;'o'
	db	116	;'t'
	db	39
	db	44
	db	39
	db	110	;'n'
	db	97	;'a'
	db	109	;'m'
	db	101	;'e'
	db	39
	db	58	;':'
	db	39
	db	83	;'S'
	db	37
	db	105	;'i'
	db	39
	db	44
	db	39
	db	118	;'v'
	db	97	;'a'
	db	108	;'l'
	db	117	;'u'
	db	101	;'e'
	db	39
	db	58	;':'
	db	37
	db	105	;'i'
	db	44
	db	32
	db	39
	db	99	;'c'
	db	111	;'o'
	db	108	;'l'
	db	111	;'o'
	db	114	;'r'
	db	39
	db	58	;':'
	db	40
	db	37
	db	100	;'d'
	db	44
	db	37
	db	100	;'d'
	db	44
	db	37
	db	100	;'d'
	db	41
	db	125
	db	10
	db	0
	
STR_2:
	db	123
	db	39
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	39
	db	58	;':'
	db	39
	db	108	;'l'
	db	105	;'i'
	db	110	;'n'
	db	101	;'e'
	db	39
	db	44
	db	39
	db	118	;'v'
	db	97	;'a'
	db	108	;'l'
	db	117	;'u'
	db	101	;'e'
	db	39
	db	58	;':'
	db	39
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	99	;'c'
	db	97	;'a'
	db	108	;'l'
	db	105	;'i'
	db	98	;'b'
	db	114	;'r'
	db	97	;'a'
	db	116	;'t'
	db	105	;'i'
	db	111	;'o'
	db	110	;'n'
	db	39
	db	125
	db	10
	db	0
	
STR_3:
	db	123
	db	39
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	39
	db	58	;':'
	db	39
	db	108	;'l'
	db	105	;'i'
	db	110	;'n'
	db	101	;'e'
	db	39
	db	44
	db	39
	db	118	;'v'
	db	97	;'a'
	db	108	;'l'
	db	117	;'u'
	db	101	;'e'
	db	39
	db	58	;':'
	db	39
	db	82	;'R'
	db	101	;'e'
	db	115	;'s'
	db	101	;'e'
	db	116	;'t'
	db	32
	db	99	;'c'
	db	97	;'a'
	db	108	;'l'
	db	105	;'i'
	db	98	;'b'
	db	114	;'r'
	db	97	;'a'
	db	116	;'t'
	db	105	;'i'
	db	111	;'o'
	db	110	;'n'
	db	39
	db	125
	db	10
	db	0
	
STR_4:
	db	123
	db	39
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	39
	db	58	;':'
	db	39
	db	108	;'l'
	db	105	;'i'
	db	110	;'n'
	db	101	;'e'
	db	39
	db	44
	db	39
	db	118	;'v'
	db	97	;'a'
	db	108	;'l'
	db	117	;'u'
	db	101	;'e'
	db	39
	db	58	;':'
	db	39
	db	105	;'i'
	db	110	;'n'
	db	105	;'i'
	db	116	;'t'
	db	105	;'i'
	db	97	;'a'
	db	108	;'l'
	db	32
	db	109	;'m'
	db	111	;'o'
	db	100	;'d'
	db	101	;'e'
	db	39
	db	125
	db	10
	db	0
	
STR_1:
	db	123
	db	39
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	39
	db	58	;':'
	db	39
	db	108	;'l'
	db	105	;'i'
	db	110	;'n'
	db	101	;'e'
	db	39
	db	44
	db	39
	db	118	;'v'
	db	97	;'a'
	db	108	;'l'
	db	117	;'u'
	db	101	;'e'
	db	39
	db	58	;':'
	db	39
	db	82	;'R'
	db	97	;'a'
	db	121	;'y'
	db	105	;'i'
	db	116	;'t'
	db	111	;'o'
	db	32
	db	50	;'2'
	db	46
	db	48	;'0'
	db	39
	db	125
	db	10
	db	0
; #config settings
global __CFG_PLLDIV$5
__CFG_PLLDIV$5 equ 0x0
global __CFG_CPUDIV$OSC1_PLL2
__CFG_CPUDIV$OSC1_PLL2 equ 0x0
global __CFG_USBDIV$2
__CFG_USBDIV$2 equ 0x0
global __CFG_FOSC$HSPLL_HS
__CFG_FOSC$HSPLL_HS equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOR$OFF
__CFG_BOR$OFF equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_VREGEN$OFF
__CFG_VREGEN$OFF equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_CCP2MX$ON
__CFG_CCP2MX$ON equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_ICPRT$OFF
__CFG_ICPRT$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_DEBUG$OFF
__CFG_DEBUG$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_PIDf
_PIDf:
       ds      4
	global	_TIME
_TIME:
       ds      4
	global	_w
_w:
       ds      4
	global	_CURRENT
_CURRENT:
       ds      2
	global	_speedMode
_speedMode:
       ds      2
	global	_MF
_MF:
       ds      1
	global	_PisoActual
_PisoActual:
       ds      1
	global	_RWM
_RWM:
       ds      1
	global	_ST_B_AMARILLO
_ST_B_AMARILLO:
       ds      1
	global	_ST_B_ROJO
_ST_B_ROJO:
       ds      1
	global	_ST_B_VERDE
_ST_B_VERDE:
       ds      1
	global	_VistActual
	global	_VistActual
_VistActual:
       ds      1
	global	_actual
_actual:
       ds      1
	global	_nove
_nove:
       ds      1
	global	_x
_x:
       ds      2
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_POSICION
_POSICION:
       ds      4
	global	_WAITIME
_WAITIME:
       ds      4
	global	_IRCounter
	global	_IRCounter
_IRCounter:
       ds      2
	global	_a
_a:
       ds      2
	global	_b
	global	_b
_b:
       ds      2
	global	_giro
	global	_giro
_giro:
       ds      2
	global	_mCiclo
	global	_mCiclo
_mCiclo:
       ds      2
	global	_mode
_mode:
       ds      2
	global	_ms
	global	_ms
_ms:
       ds      2
	global	_next
	global	_next
_next:
       ds      2
	global	_sa
_sa:
       ds      2
	global	_b2
	global	_b2
_b2:
       ds      1
	global	_fStatus
	global	_fStatus
_fStatus:
       ds      1
	global	_high
_high:
       ds      1
	global	_iStatus
	global	_iStatus
_iStatus:
       ds      1
	global	_low
_low:
       ds      1
	global	_mm
	global	_mm
_mm:
       ds      1
	global	_amax
_amax:
       ds      44
	global	_amin
_amin:
       ds      44
	global	_AMOUNT
_AMOUNT:
       ds      2
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_V
_V:
       ds      32
	global	_fw
	global	_fw
_fw:
       ds      10
	global	_suma
	global	_suma
_suma:
       ds      8
	global	_DER
_DER:
       ds      4
	global	_LP
_LP:
       ds      4
	global	_MS
_MS:
       ds      4
	global	_WAITFRENAR
_WAITFRENAR:
       ds      4
	global	_division
_division:
       ds      4
	global	_sum
_sum:
       ds      4
	global	_v
_v:
       ds      4
	global	_value
	global	_value
_value:
       ds      4
	global	_cox
	global	_cox
_cox:
       ds      2
	global	_pasada
	global	_pasada
_pasada:
       ds      2
psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	103
	global	_KD
_KD:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	102
	global	_KP
_KP:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	104
	global	_KR
_KR:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	105
	global	_SP
_SP:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	124
	global	_TIMEFRENO
	global	_TIMEFRENO
_TIMEFRENO:
       ds      4
psect	bssBIGRAM,class=BIGRAM,space=1,noexec
global __pbssBIGRAM
__pbssBIGRAM:
	global	_SIZES
_SIZES:
       ds      1020
	file	"main.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK1 (52 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,52
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
	line	#
; Clear objects allocated to BIGRAM (1020 bytes)
	global __pbssBIGRAM
lfsr	0,__pbssBIGRAM
lfsr	1,1020
clear_0:
clrf	postinc0,c
movf	postdec1,w
movf	fsr1l,w
bnz	clear_0
movf	fsr1h,w
bnz	clear_0
; Clear objects allocated to BANK1 (86 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	86
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (122 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	122
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (27 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	27
clear_3:
clrf	postinc0,c
decf	wreg
bnz	clear_3
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_main$1784
_main$1784:	; 4 bytes @ 0x0
	ds   4
	global	_main$1785
_main$1785:	; 4 bytes @ 0x4
	ds   4
	global	_main$1793
_main$1793:	; 4 bytes @ 0x8
	ds   4
	global	_main$1794
_main$1794:	; 2 bytes @ 0xC
	ds   2
	global	_main$1795
_main$1795:	; 2 bytes @ 0xE
	ds   2
	global	_main$1786
_main$1786:	; 1 bytes @ 0x10
	ds   1
	global	main@i
main@i:	; 2 bytes @ 0x11
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	printf@f
printf@f:	; 2 bytes @ 0x0
	ds   14
??_main:	; 1 bytes @ 0xE
	ds   18
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_ResetCounter:	; 1 bytes @ 0x0
?_InitAnalog:	; 1 bytes @ 0x0
?_InitTIMERS:	; 1 bytes @ 0x0
?_InitButtons:	; 1 bytes @ 0x0
?_InitSP:	; 1 bytes @ 0x0
?_MotorsPWM:	; 1 bytes @ 0x0
?_EnhancedRead:	; 1 bytes @ 0x0
?_ReadAnalog:	; 1 bytes @ 0x0
?_Wixel:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_configurations_init:	; 1 bytes @ 0x0
?_initYBOT:	; 1 bytes @ 0x0
?_enc:	; 1 bytes @ 0x0
??_enc:	; 1 bytes @ 0x0
?_initLED:	; 1 bytes @ 0x0
	ds   14
??_ResetCounter:	; 1 bytes @ 0xE
??_InitAnalog:	; 1 bytes @ 0xE
??_InitTIMERS:	; 1 bytes @ 0xE
??_InitButtons:	; 1 bytes @ 0xE
??_MotorsPWM:	; 1 bytes @ 0xE
??_ReadAnalog:	; 1 bytes @ 0xE
??_Wixel:	; 1 bytes @ 0xE
??_putch:	; 1 bytes @ 0xE
??_configurations_init:	; 1 bytes @ 0xE
??_initLED:	; 1 bytes @ 0xE
	global	?___wmul
?___wmul:	; 2 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	?___lmul
?___lmul:	; 4 bytes @ 0xE
	global	?___almod
?___almod:	; 4 bytes @ 0xE
	global	putch@data
putch@data:	; 1 bytes @ 0xE
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xE
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0xE
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0xE
	ds   1
	global	ReadAnalog@channel
ReadAnalog@channel:	; 1 bytes @ 0xF
	ds   1
??_InitSP:	; 1 bytes @ 0x10
??_initYBOT:	; 1 bytes @ 0x10
	global	initLED@x
initLED@x:	; 2 bytes @ 0x10
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	ds   2
??___wmul:	; 1 bytes @ 0x12
??___awdiv:	; 1 bytes @ 0x12
??___lwdiv:	; 1 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x12
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x12
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x12
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x12
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x13
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds   1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x15
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x15
	ds   1
??_EnhancedRead:	; 1 bytes @ 0x16
?_MotorASpeed:	; 1 bytes @ 0x16
?_MotorBSpeed:	; 1 bytes @ 0x16
??___lmul:	; 1 bytes @ 0x16
??___almod:	; 1 bytes @ 0x16
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x16
	global	MotorASpeed@S
MotorASpeed@S:	; 2 bytes @ 0x16
	global	MotorBSpeed@S
MotorBSpeed@S:	; 2 bytes @ 0x16
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x16
	ds   1
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x17
	global	EnhancedRead@aux
EnhancedRead@aux:	; 2 bytes @ 0x17
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x17
	ds   1
??_MotorASpeed:	; 1 bytes @ 0x18
??_MotorBSpeed:	; 1 bytes @ 0x18
	ds   1
?_MotorsSpeed:	; 1 bytes @ 0x19
??___lwmod:	; 1 bytes @ 0x19
	global	EnhancedRead@i
EnhancedRead@i:	; 1 bytes @ 0x19
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x19
	global	MotorsSpeed@A
MotorsSpeed@A:	; 2 bytes @ 0x19
	ds   1
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x1A
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x1A
	ds   1
	global	MotorsSpeed@B
MotorsSpeed@B:	; 2 bytes @ 0x1B
	ds   2
??_MotorsSpeed:	; 1 bytes @ 0x1D
	global	_MotorsSpeed$1723
_MotorsSpeed$1723:	; 2 bytes @ 0x1D
	ds   1
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x1E
	ds   1
	global	_MotorsSpeed$1724
_MotorsSpeed$1724:	; 2 bytes @ 0x1F
	ds   3
??___aldiv:	; 1 bytes @ 0x22
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x22
	ds   1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x23
	ds   1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x24
	ds   4
??_printf:	; 1 bytes @ 0x28
	ds   1
	global	printf@ap
printf@ap:	; 2 bytes @ 0x29
	ds   2
	global	printf@flag
printf@flag:	; 1 bytes @ 0x2B
	ds   1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x2C
	ds   1
	global	printf@val
printf@val:	; 2 bytes @ 0x2D
	ds   2
	global	printf@c
printf@c:	; 1 bytes @ 0x2F
	ds   1
?_main:	; 2 bytes @ 0x30
main@argc:	; 2 bytes @ 0x30
	ds   2
main@argv:	; 3 bytes @ 0x32
	ds   3
;!
;!Data Sizes:
;!    Strings     227
;!    Constant    10
;!    Data        52
;!    BSS         1255
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     53      80
;!    BANK0           160     32     155
;!    BANK1           256     19     158
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 60
;!		 -> STR_5(CODE[60]), STR_4(CODE[39]), STR_3(CODE[44]), STR_2(CODE[47]), 
;!		 -> STR_1(CODE[37]), 
;!
;!    printf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_printf(BANK0[2]), 
;!
;!    main$1795	PTR long  size(2) Largest target is 44
;!		 -> amin(BANK0[44]), amax(BANK0[44]), 
;!
;!    main$1794	PTR long  size(2) Largest target is 44
;!		 -> amin(BANK0[44]), amax(BANK0[44]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_printf
;!    _printf->___aldiv
;!    ___lwmod->___lwdiv
;!    _InitSP->_ReadAnalog
;!    ___aldiv->___lmul
;!    _MotorsSpeed->_MotorASpeed
;!    _MotorsSpeed->_MotorBSpeed
;!    _MotorBSpeed->___awdiv
;!    _MotorASpeed->___awdiv
;!    _EnhancedRead->___awdiv
;!
;!Critical Paths under _enc in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_printf
;!
;!Critical Paths under _enc in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _enc in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _enc in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _enc in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _enc in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _enc in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _enc in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _enc in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 18, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                42    37      5   18355
;!                                             48 COMRAM     5     0      5
;!                                             14 BANK0     18    18      0
;!                                              0 BANK1     19    19      0
;!                       _EnhancedRead
;!                        _MotorsSpeed
;!                              _Wixel
;!                            ___aldiv
;!                            ___almod
;!                             ___lmul
;!                             ___wmul
;!                            _initLED
;!                           _initYBOT
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (1) _printf                                              31    17     14    1760
;!                                             40 COMRAM     8     8      0
;!                                              0 BANK0     14     0     14
;!                            ___aldiv (ARG)
;!                             ___lmul (ARG)
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul (ARG)
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (2) _putch                                                1     1      0      31
;!                                             14 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     386
;!                                             21 COMRAM     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     395
;!                                             14 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _initYBOT                                             0     0      0     124
;!                         _InitAnalog
;!                        _InitButtons
;!                             _InitSP
;!                         _InitTIMERS
;!                          _MotorsPWM
;!                       _ResetCounter
;!                _configurations_init
;! ---------------------------------------------------------------------------------
;! (2) _configurations_init                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ResetCounter                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _MotorsPWM                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _InitTIMERS                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _InitSP                                               0     0      0     124
;!                         _ReadAnalog
;! ---------------------------------------------------------------------------------
;! (3) _ReadAnalog                                           2     2      0     124
;!                                             14 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _InitButtons                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _InitAnalog                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLED                                              4     4      0     130
;!                                             14 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4    1618
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___lmul                                              12     4      8    3176
;!                                             14 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (1) ___almod                                             10     2      8    1357
;!                                             14 COMRAM    10     2      8
;! ---------------------------------------------------------------------------------
;! (1) ___aldiv                                             14     6      8    4449
;!                                             26 COMRAM    14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _Wixel                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MotorsSpeed                                          8     4      4    3696
;!                                             25 COMRAM     8     4      4
;!                        _MotorASpeed
;!                        _MotorBSpeed
;! ---------------------------------------------------------------------------------
;! (2) _MotorBSpeed                                          3     1      2    1364
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (2) _MotorASpeed                                          3     1      2    1364
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (1) _EnhancedRead                                         4     4      0    1259
;!                                             22 COMRAM     4     4      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4    1061
;!                                             14 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _enc                                                 14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _EnhancedRead
;!     ___awdiv
;!   _MotorsSpeed
;!     _MotorASpeed
;!       ___awdiv
;!     _MotorBSpeed
;!       ___awdiv
;!   _Wixel
;!   ___aldiv
;!     ___lmul (ARG)
;!   ___almod
;!   ___lmul
;!   ___wmul
;!   _initLED
;!   _initYBOT
;!     _InitAnalog
;!     _InitButtons
;!     _InitSP
;!       _ReadAnalog
;!     _InitTIMERS
;!     _MotorsPWM
;!     _ResetCounter
;!     _configurations_init
;!   _printf
;!     ___aldiv (ARG)
;!       ___lmul (ARG)
;!     ___lmul (ARG)
;!     ___lwdiv (ARG)
;!     ___lwmod (ARG)
;!       ___lwdiv (ARG)
;!     ___wmul (ARG)
;!     _putch (ARG)
;!
;! _enc (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0     3FC      21       49.8%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     13      9E       7       61.7%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     20      9B       5       96.9%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     35      50       1       85.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     189      20        0.0%
;!DATA                 0      0     585       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 875 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   48[COMRAM] int 
;;  argv            3   50[COMRAM] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   17[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  2   48[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         5       0       0       0       0       0       0       0       0
;;      Locals:         0       0      19       0       0       0       0       0       0
;;      Temps:          0      18       0       0       0       0       0       0       0
;;      Totals:         5      18      19       0       0       0       0       0       0
;;Total ram usage:       42 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_EnhancedRead
;;		_MotorsSpeed
;;		_Wixel
;;		___aldiv
;;		___almod
;;		___lmul
;;		___wmul
;;		_initLED
;;		_initYBOT
;;		_printf
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	875
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	875
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	876
	
l4738:
	call	_initYBOT	;wreg free
	line	878
	
l4740:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_sa+1))&0ffh
	movlw	low(0)
	movwf	((_sa))&0ffh
	line	879
	
l4742:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_mode+1))&0ffh
	movlw	low(0)
	movwf	((_mode))&0ffh
	line	880
	
l4744:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_a+1))&0ffh
	movlw	low(0)
	movwf	((_a))&0ffh
	line	881
	
l4746:; BSR set to: 0

	movlb	0	; () banked
	setf	((_gstatus))&0ffh
	line	882
	
l4748:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_WAITIME))&0ffh
	movlw	high(0)
	movwf	((_WAITIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_WAITIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_WAITIME+3))&0ffh
	line	883
	
l4750:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_CURRENT+1)),c
	movlw	low(0)
	movwf	((c:_CURRENT)),c
	line	884
	
l4752:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_actual)),c
	line	885
	
l4754:; BSR set to: 0

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	886
	
l4756:; BSR set to: 1

	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	887
	
l4758:; BSR set to: 1

	call	_Wixel	;wreg free
	line	890
	
l4760:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	891
	
l4762:
	bsf	((c:3971)),c,3	;volatile
	line	893
	
l4764:
	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	894
	goto	l4768
	
l700:; BSR set to: 1

	line	897
	
l4766:
		movlw	low(STR_1)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_1)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	goto	l4768
	
l699:
	line	894
	
l4768:
	btfsc	((c:_TIME+3)),c,7
	goto	u5381
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	iorwf	((c:_TIME+1)),c,w
	bnz	u5380
	movlw	200
	subwf	 ((c:_TIME)),c,w
	btfss	status,0
	goto	u5381
	goto	u5380

u5381:
	goto	l4766
u5380:
	goto	l4770
	
l701:
	goto	l4770
	line	899
	
l702:
	line	900
	
l4770:
	call	_EnhancedRead	;wreg free
	line	904
	goto	l4880
	line	905
	
l704:; BSR set to: 1

	line	906
	bcf	((c:3969)),c,0	;volatile
	line	907
	
l4772:; BSR set to: 1

	movff	(c:_TIME),(c:___almod@dividend)
	movff	(c:_TIME+1),(c:___almod@dividend+1)
	movff	(c:_TIME+2),(c:___almod@dividend+2)
	movff	(c:_TIME+3),(c:___almod@dividend+3)
	movlw	low(07D0h)
	movwf	((c:___almod@divisor)),c
	movlw	high(07D0h)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(07D0h)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(07D0h)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u5390
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u5391
	movlw	233
	subwf	 (0+?___almod),c,w
	movlw	3
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u5391
	goto	u5390

u5391:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u5408
u5390:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u5408:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	908
	
l4774:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	909
	
l4776:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u5411
	goto	u5410
u5411:
	goto	l4770
u5410:
	line	910
	
l4778:; BSR set to: 0

		movlw	low(STR_2)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_2)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	911
	
l4780:
	movlw	low(03h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	912
	
l4782:; BSR set to: 1

	call	_initLED	;wreg free
	goto	l4770
	line	913
	
l705:
	line	914
	goto	l4770
	line	915
	
l707:; BSR set to: 1

	line	916
	bsf	((c:3969)),c,5	;volatile
	line	917
	bcf	((c:3968)),c,4	;volatile
	line	918
	bcf	((c:3969)),c,0	;volatile
	line	919
	
l4784:; BSR set to: 1

	btfsc	((c:_TIME+3)),c,7
	goto	u5421
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u5420
	movlw	209
	subwf	 ((c:_TIME)),c,w
	movlw	7
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u5421
	goto	u5420

u5421:
	goto	l4770
u5420:
	
l4786:; BSR set to: 1

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l4770
	
l708:; BSR set to: 1

	line	920
	goto	l4770
	line	921
	
l709:; BSR set to: 1

	line	922
	
l4788:; BSR set to: 1

	call	_EnhancedRead	;wreg free
	line	923
	
l4790:
	movlw	high(0)
	movwf	((c:_x+1)),c
	movlw	low(0)
	movwf	((c:_x)),c
	
l4792:
	btfsc	((c:_x+1)),c,7
	goto	u5431
	movf	((c:_x+1)),c,w
	bnz	u5430
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u5431
	goto	u5430

u5431:
	goto	l4796
u5430:
	goto	l4810
	
l4794:
	goto	l4810
	
l710:
	line	924
	
l4796:
	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	addwfc	fsr2h

	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr1l
	rlcf	((c:_x+1)),c,w
	movwf	fsr1h
	movlw	low(_V)
	addwf	fsr1l
	movlw	high(_V)
	addwfc	fsr1h
	movff	postinc1,??_main+6+0
	movff	postdec1,??_main+6+0+1
	movff	??_main+6+0,??_main+8+0
	movff	??_main+6+1,??_main+8+0+1
	movlw	0
	movlb	0	; () banked
	btfsc	(??_main+8+0+1)&0ffh,7
	movlw	255
	movwf	(??_main+8+0+2)&0ffh
	movwf	(??_main+8+0+3)&0ffh
		movf	postinc2,w
	movlb	0	; () banked
	subwf	(??_main+8+0)&0ffh,w
	movf	postinc2,w
	movlb	0	; () banked
	subwfb	(??_main+8+1)&0ffh,w
	movf	postinc2,w
	movlb	0	; () banked
	subwfb	(??_main+8+2)&0ffh,w
	movlb	0	; () banked
	movf	(??_main+8+3)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+12+0)&0ffh
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+12+0)&0ffh,w
	btfss	status,0
	goto	u5441
	goto	u5440

u5441:
	goto	l4800
u5440:
	
l4798:; BSR set to: 0

	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1784)
	movff	postdec2,(_main$1784+1)
	movlb	1	; () banked
	movlw	0
	btfsc	((_main$1784+1))&0ffh,7
	movlw	-1
	movwf	((_main$1784+2))&0ffh
	movwf	((_main$1784+3))&0ffh
	goto	l715
	
l713:; BSR set to: 1

	
l4800:
	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	addwfc	fsr2h

	movff	postinc2,(_main$1784)
	movff	postinc2,(_main$1784+1)
	movff	postinc2,(_main$1784+2)
	movff	postinc2,(_main$1784+3)
	
l715:
	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	addwfc	fsr2h

	movff	(_main$1784),postinc2
	movff	(_main$1784+1),postinc2
	movff	(_main$1784+2),postinc2
	movff	(_main$1784+3),postinc2

	line	925
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,??_main+0+0
	movff	postdec2,??_main+0+0+1
	movff	??_main+0+0,??_main+2+0
	movff	??_main+0+1,??_main+2+0+1
	movlw	0
	movlb	0	; () banked
	btfsc	(??_main+2+0+1)&0ffh,7
	movlw	255
	movwf	(??_main+2+0+2)&0ffh
	movwf	(??_main+2+0+3)&0ffh
	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+6+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+6+0)&0ffh
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+6+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+6+1)&0ffh,w
	addwfc	fsr2h

	movlb	0	; () banked
		movf	(??_main+2+0)&0ffh,w
	subwf	postinc2,w
	movlb	0	; () banked
	movf	(??_main+2+1)&0ffh,w
	subwfb	postinc2,w
	movlb	0	; () banked
	movf	(??_main+2+2)&0ffh,w
	subwfb	postinc2,w
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+12+0)&0ffh
	movlb	0	; () banked
	movf	(??_main+2+3)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+12+0)&0ffh,w
	btfss	status,0
	goto	u5451
	goto	u5450

u5451:
	goto	l4804
u5450:
	
l4802:; BSR set to: 0

	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1785)
	movff	postdec2,(_main$1785+1)
	movlb	1	; () banked
	movlw	0
	btfsc	((_main$1785+1))&0ffh,7
	movlw	-1
	movwf	((_main$1785+2))&0ffh
	movwf	((_main$1785+3))&0ffh
	goto	l719
	
l717:; BSR set to: 1

	
l4804:
	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	addwfc	fsr2h

	movff	postinc2,(_main$1785)
	movff	postinc2,(_main$1785+1)
	movff	postinc2,(_main$1785+2)
	movff	postinc2,(_main$1785+3)
	
l719:
	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	addwfc	fsr2h

	movff	(_main$1785),postinc2
	movff	(_main$1785+1),postinc2
	movff	(_main$1785+2),postinc2
	movff	(_main$1785+3),postinc2

	line	923
	
l4806:; BSR set to: 0

	infsnz	((c:_x)),c
	incf	((c:_x+1)),c
	
l4808:; BSR set to: 0

	btfsc	((c:_x+1)),c,7
	goto	u5461
	movf	((c:_x+1)),c,w
	bnz	u5460
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u5461
	goto	u5460

u5461:
	goto	l4796
u5460:
	goto	l4810
	
l711:; BSR set to: 0

	line	928
	
l4810:
	movff	(c:_TIME),(c:___almod@dividend)
	movff	(c:_TIME+1),(c:___almod@dividend+1)
	movff	(c:_TIME+2),(c:___almod@dividend+2)
	movff	(c:_TIME+3),(c:___almod@dividend+3)
	movlw	low(012Ch)
	movwf	((c:___almod@divisor)),c
	movlw	high(012Ch)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(012Ch)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(012Ch)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u5470
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u5471
	movlw	201
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u5471
	goto	u5470

u5471:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u5488
u5470:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u5488:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	929
	
l4812:; BSR set to: 0

	movlw	low(0)
	movlb	1	; () banked
	movwf	((_main$1786))&0ffh
	
l4814:; BSR set to: 1

	movff	(c:_TIME),(c:___almod@dividend)
	movff	(c:_TIME+1),(c:___almod@dividend+1)
	movff	(c:_TIME+2),(c:___almod@dividend+2)
	movff	(c:_TIME+3),(c:___almod@dividend+3)
	movlw	low(012Ch)
	movwf	((c:___almod@divisor)),c
	movlw	high(012Ch)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(012Ch)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(012Ch)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u5491
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u5490
	movlw	101
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u5491
	goto	u5490

u5491:
	goto	l4820
u5490:
	
l4816:
	movff	(c:_TIME),(c:___almod@dividend)
	movff	(c:_TIME+1),(c:___almod@dividend+1)
	movff	(c:_TIME+2),(c:___almod@dividend+2)
	movff	(c:_TIME+3),(c:___almod@dividend+3)
	movlw	low(012Ch)
	movwf	((c:___almod@divisor)),c
	movlw	high(012Ch)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(012Ch)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(012Ch)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u5500
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u5501
	movlw	200
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u5501
	goto	u5500

u5501:
	goto	l4820
u5500:
	
l4818:
	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_main$1786))&0ffh
	goto	l4820
	
l721:; BSR set to: 1

	
l4820:
	movlb	1	; () banked
	btfsc	(_main$1786)&0ffh,0
	bra	u5515
	bcf	((c:3969)),c,5	;volatile
	bra	u5516
	u5515:
	bsf	((c:3969)),c,5	;volatile
	u5516:

	line	930
	
l4822:
	movff	(c:_TIME),(c:___almod@dividend)
	movff	(c:_TIME+1),(c:___almod@dividend+1)
	movff	(c:_TIME+2),(c:___almod@dividend+2)
	movff	(c:_TIME+3),(c:___almod@dividend+3)
	movlw	low(012Ch)
	movwf	((c:___almod@divisor)),c
	movlw	high(012Ch)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(012Ch)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(012Ch)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u5521
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u5520
	movlw	100
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u5521
	goto	u5520

u5521:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u5538
u5520:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u5538:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	932
	
l4824:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u5541
	goto	u5540
u5541:
	goto	l4832
u5540:
	line	933
	
l4826:; BSR set to: 0

		movlw	low(STR_3)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_3)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	934
	
l4828:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	935
	
l4830:
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l4832
	line	936
	
l722:; BSR set to: 1

	line	937
	
l4832:
	btfsc	((c:3971)),c,4	;volatile
	goto	u5551
	goto	u5550
u5551:
	goto	l4770
u5550:
	line	938
	
l4834:
		movlw	low(STR_4)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_4)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	939
	
l4836:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	940
	
l4838:
	movlw	low(02h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l4770
	line	941
	
l723:; BSR set to: 1

	line	942
	goto	l4770
	line	943
	
l724:; BSR set to: 1

	line	944
	bsf	((c:3969)),c,0	;volatile
	line	945
	
l4840:; BSR set to: 1

	movff	(c:_TIME),(c:___almod@dividend)
	movff	(c:_TIME+1),(c:___almod@dividend+1)
	movff	(c:_TIME+2),(c:___almod@dividend+2)
	movff	(c:_TIME+3),(c:___almod@dividend+3)
	movlw	low(03E8h)
	movwf	((c:___almod@divisor)),c
	movlw	high(03E8h)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(03E8h)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(03E8h)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u5560
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u5561
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u5561
	goto	u5560

u5561:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u5578
u5560:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u5578:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	946
	
l4842:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	947
	
l4844:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	948
	
l4846:
	btfsc	((c:_TIME+3)),c,7
	goto	u5581
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u5580
	movlw	233
	subwf	 ((c:_TIME)),c,w
	movlw	3
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u5581
	goto	u5580

u5581:
	goto	l4770
u5580:
	line	949
	
l4848:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	951
	movlw	high(0)
	movlb	1	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	
l4850:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u5591
	movlb	1	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u5590
	movlw	11
	movlb	1	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u5591
	goto	u5590

u5591:
	goto	l4854
u5590:
	goto	l4770
	
l4852:; BSR set to: 1

	goto	l4770
	
l726:; BSR set to: 1

	line	952
	
l4854:; BSR set to: 1

	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	addwfc	fsr2h

	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+6+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+6+0)&0ffh
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr1l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr1h
	bcf	status,0
	rlcf	fsr1l,f
	rlcf	fsr1h,f
	movlb	0	; () banked
	movf	(??_main+6+0)&0ffh,w
	addwf	fsr1l
	movlb	0	; () banked
	movf	(??_main+6+1)&0ffh,w
	addwfc	fsr1h

		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc2,w
	subwfb	postinc1,w
	movf	postinc2,w
	subwfb	postinc1,w
	movf	postinc1,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+12+0)&0ffh
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+12+0)&0ffh,w
	btfss	status,0
	goto	u5601
	goto	u5600

u5601:
	goto	l4858
u5600:
	
l4856:; BSR set to: 0

	movff	(main@i),??_main+0+0
	movff	(main@i+1),??_main+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_main+0+0)&0ffh
	rlcf	(??_main+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_main+0+0)&0ffh
	rlcf	(??_main+0+1)&0ffh
	movlw	low(_amax)
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_main$1794))&0ffh
	movlw	high(_amax)
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	1	; () banked
	movwf	1+((_main$1794))&0ffh
	goto	l4860
	
l733:; BSR set to: 1

	
l4858:
	movff	(main@i),??_main+0+0
	movff	(main@i+1),??_main+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_main+0+0)&0ffh
	rlcf	(??_main+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_main+0+0)&0ffh
	rlcf	(??_main+0+1)&0ffh
	movlw	low(_amin)
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_main$1794))&0ffh
	movlw	high(_amin)
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	1	; () banked
	movwf	1+((_main$1794))&0ffh
	goto	l4860
	
l735:; BSR set to: 1

	
l4860:; BSR set to: 1

	movff	(_main$1794),fsr2l
	movff	(_main$1794+1),fsr2h
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr1l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_V)
	addwf	fsr1l
	movlw	high(_V)
	addwfc	fsr1h
	movff	postinc1,??_main+4+0
	movff	postdec1,??_main+4+0+1
	movff	??_main+4+0,??_main+6+0
	movff	??_main+4+1,??_main+6+0+1
	movlw	0
	movlb	0	; () banked
	btfsc	(??_main+6+0+1)&0ffh,7
	movlw	255
	movwf	(??_main+6+0+2)&0ffh
	movwf	(??_main+6+0+3)&0ffh
		movf	postinc2,w
	movlb	0	; () banked
	subwf	(??_main+6+0)&0ffh,w
	movf	postinc2,w
	movlb	0	; () banked
	subwfb	(??_main+6+1)&0ffh,w
	movf	postinc2,w
	movlb	0	; () banked
	subwfb	(??_main+6+2)&0ffh,w
	movlb	0	; () banked
	movf	(??_main+6+3)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+10+0)&0ffh
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+10+0)&0ffh,w
	btfss	status,0
	goto	u5611
	goto	u5610

u5611:
	goto	l4864
u5610:
	
l4862:; BSR set to: 0

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1793)
	movff	postdec2,(_main$1793+1)
	movlb	1	; () banked
	movlw	0
	btfsc	((_main$1793+1))&0ffh,7
	movlw	-1
	movwf	((_main$1793+2))&0ffh
	movwf	((_main$1793+3))&0ffh
	goto	l4872
	
l729:; BSR set to: 1

	
l4864:
	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	addwfc	fsr2h

	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+6+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+6+0)&0ffh
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr1l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr1h
	bcf	status,0
	rlcf	fsr1l,f
	rlcf	fsr1h,f
	movlb	0	; () banked
	movf	(??_main+6+0)&0ffh,w
	addwf	fsr1l
	movlb	0	; () banked
	movf	(??_main+6+1)&0ffh,w
	addwfc	fsr1h

		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc2,w
	subwfb	postinc1,w
	movf	postinc2,w
	subwfb	postinc1,w
	movf	postinc1,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+12+0)&0ffh
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+12+0)&0ffh,w
	btfss	status,0
	goto	u5621
	goto	u5620

u5621:
	goto	l4868
u5620:
	
l4866:; BSR set to: 0

	movff	(main@i),??_main+0+0
	movff	(main@i+1),??_main+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_main+0+0)&0ffh
	rlcf	(??_main+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_main+0+0)&0ffh
	rlcf	(??_main+0+1)&0ffh
	movlw	low(_amax)
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_main$1795))&0ffh
	movlw	high(_amax)
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	1	; () banked
	movwf	1+((_main$1795))&0ffh
	goto	l4870
	
l737:; BSR set to: 1

	
l4868:
	movff	(main@i),??_main+0+0
	movff	(main@i+1),??_main+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_main+0+0)&0ffh
	rlcf	(??_main+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_main+0+0)&0ffh
	rlcf	(??_main+0+1)&0ffh
	movlw	low(_amin)
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_main$1795))&0ffh
	movlw	high(_amin)
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	1	; () banked
	movwf	1+((_main$1795))&0ffh
	goto	l4870
	
l739:; BSR set to: 1

	
l4870:; BSR set to: 1

	movff	(_main$1795),fsr2l
	movff	(_main$1795+1),fsr2h
	movff	postinc2,(_main$1793)
	movff	postinc2,(_main$1793+1)
	movff	postinc2,(_main$1793+2)
	movff	postinc2,(_main$1793+3)
	goto	l4872
	
l731:; BSR set to: 1

	
l4872:; BSR set to: 1

		movlw	low(STR_5)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_5)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@i),0+(?_printf+02h)
	movff	(main@i+1),1+(?_printf+02h)
	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	addwfc	fsr2h

	movff	postinc2,??_main+2+0
	movff	postinc2,??_main+2+0+1
	movff	postinc2,??_main+2+0+2
	movff	postinc2,??_main+2+0+3
	movlb	0	; () banked
	comf	(??_main+2+0)&0ffh
	comf	(??_main+2+1)&0ffh
	comf	(??_main+2+2)&0ffh
	comf	(??_main+2+3)&0ffh
	incf	(??_main+2+0)&0ffh
	movlw	0
	addwfc	(??_main+2+1)&0ffh
	addwfc	(??_main+2+2)&0ffh
	addwfc	(??_main+2+3)&0ffh
	movlb	1	; () banked
	movf	((_main$1793))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh,w
	movwf	((c:___lmul@multiplier)),c
	movlb	1	; () banked
	movf	((_main$1793+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh,w
	movwf	1+((c:___lmul@multiplier)),c
	
	movlb	1	; () banked
	movf	((_main$1793+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+2+2)&0ffh,w
	movwf	2+((c:___lmul@multiplier)),c
	
	movlb	1	; () banked
	movf	((_main$1793+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+2+3)&0ffh,w
	movwf	3+((c:___lmul@multiplier)),c
	movlw	low(03E8h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(03E8h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(03E8h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(03E8h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___aldiv@dividend)
	movff	1+?___lmul,(c:___aldiv@dividend+1)
	movff	2+?___lmul,(c:___aldiv@dividend+2)
	movff	3+?___lmul,(c:___aldiv@dividend+3)
	
	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+6+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+6+0)&0ffh
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+6+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+6+1)&0ffh,w
	addwfc	fsr2h

	movff	postinc2,??_main+8+0
	movff	postinc2,??_main+8+0+1
	movff	postinc2,??_main+8+0+2
	movff	postinc2,??_main+8+0+3
	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+12+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+12+0)&0ffh
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movlb	0	; () banked
	movf	(??_main+12+0)&0ffh,w
	addwf	fsr2l
	movlb	0	; () banked
	movf	(??_main+12+1)&0ffh,w
	addwfc	fsr2h

	movff	postinc2,??_main+14+0
	movff	postinc2,??_main+14+0+1
	movff	postinc2,??_main+14+0+2
	movff	postinc2,??_main+14+0+3
	movlb	0	; () banked
	comf	(??_main+14+0)&0ffh
	comf	(??_main+14+1)&0ffh
	comf	(??_main+14+2)&0ffh
	comf	(??_main+14+3)&0ffh
	incf	(??_main+14+0)&0ffh
	movlw	0
	addwfc	(??_main+14+1)&0ffh
	addwfc	(??_main+14+2)&0ffh
	addwfc	(??_main+14+3)&0ffh
	movlb	0	; () banked
	movf	(??_main+8+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+14+0)&0ffh,w
	movwf	((c:___aldiv@divisor)),c
	movlb	0	; () banked
	movf	(??_main+8+1)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+14+1)&0ffh,w
	movwf	1+((c:___aldiv@divisor)),c
	
	movlb	0	; () banked
	movf	(??_main+8+2)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+14+2)&0ffh,w
	movwf	2+((c:___aldiv@divisor)),c
	
	movlb	0	; () banked
	movf	(??_main+8+3)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+14+3)&0ffh,w
	movwf	3+((c:___aldiv@divisor)),c
	call	___aldiv	;wreg free
	movff	0+?___aldiv,0+(?_printf+04h)
	movff	1+?___aldiv,1+(?_printf+04h)
	movff	2+?___aldiv,2+(?_printf+04h)
	movff	3+?___aldiv,3+(?_printf+04h)
	
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	comf	(0+?___wmul),c
	comf	(1+?___wmul),c
	infsnz	(0+?___wmul),c
	incf	(1+?___wmul),c
	movlw	low(0FFh)
	addwf	(0+?___wmul),c,w
	movlb	0	; () banked
	movwf	(0+(?_printf+08h))&0ffh
	movlw	high(0FFh)
	addwfc	(1+?___wmul),c,w
	movlb	0	; () banked
	movwf	1+(0+(?_printf+08h))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(?_printf+0Ah))&0ffh
	movlw	low(0)
	movwf	(0+(?_printf+0Ah))&0ffh
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,0+(?_printf+0Ch)
	movff	1+?___wmul,1+(?_printf+0Ch)
	call	_printf	;wreg free
	line	951
	
l4874:
	movlb	1	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l4876:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u5631
	movlb	1	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u5630
	movlw	11
	movlb	1	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u5631
	goto	u5630

u5631:
	goto	l4854
u5630:
	goto	l4770
	
l727:; BSR set to: 1

	goto	l4770
	line	954
	
l725:; BSR set to: 1

	line	955
	goto	l4770
	line	956
	
l4878:; BSR set to: 1

	goto	l4770
	line	904
	
l703:; BSR set to: 1

	
l4880:
	movlb	1	; () banked
	movf	((_status))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l707
	xorlw	1^0	; case 1
	skipnz
	goto	l704
	xorlw	2^1	; case 2
	skipnz
	goto	l724
	xorlw	3^2	; case 3
	skipnz
	goto	l4788
	goto	l4770

	line	956
	
l706:; BSR set to: 1

	goto	l4770
	line	957
	
l740:; BSR set to: 1

	line	899
	goto	l4770
	
l741:; BSR set to: 1

	line	958
	
l742:; BSR set to: 1

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 464 in file "/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(60), STR_4(39), STR_3(44), STR_2(47), 
;;		 -> STR_1(37), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  cp              3    0        PTR const unsigned char 
;;  val             2   45[COMRAM] unsigned int 
;;  ap              2   41[COMRAM] PTR void [1]
;;		 -> ?_printf(2), 
;;  len             2    0        unsigned int 
;;  c               1   47[COMRAM] char 
;;  prec            1   44[COMRAM] char 
;;  flag            1   43[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0      14       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         8      14       0       0       0       0       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_putch
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	464
global __ptext1
__ptext1:
psect	text1
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:; BSR set to: 1

;incstack = 0
	opt	stack 28
	line	533
	
l4500:
		movlw	low(?_printf+02h)
	movwf	((c:printf@ap)),c
	movlw	high(?_printf+02h)
	movwf	((c:printf@ap+1)),c

	line	536
	goto	l4548
	
l754:
	line	538
	
l4502:
		movlw	37
	xorwf	((c:printf@c)),c,w
	btfsc	status,2
	goto	u5021
	goto	u5020

u5021:
	goto	l4506
u5020:
	line	541
	
l4504:
	movf	((c:printf@c)),c,w
	
	call	_putch
	line	542
	goto	l4548
	line	543
	
l755:
	line	548
	
l4506:
	movlw	low(0)
	movwf	((c:printf@flag)),c
	line	635
	goto	l4510
	line	637
	
l757:
	line	638
	goto	l772
	line	697
	
l759:
	goto	l4512
	line	698
	
l760:
	line	699
	goto	l4512
	line	802
	
l762:
	line	813
	goto	l4548
	line	822
	
l4508:
	goto	l4512
	line	635
	
l756:
	
l4510:
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:printf@c)
	movf	((c:printf@c)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l772
	xorlw	100^0	; case 100
	skipnz
	goto	l4512
	xorlw	105^100	; case 105
	skipnz
	goto	l4512
	goto	l4548

	line	822
	
l761:; BSR set to: 0

	line	1259
	
l4512:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4514:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	line	1261
	
l4516:
	btfsc	((c:printf@val+1)),c,7
	goto	u5030
	goto	u5031

u5031:
	goto	l4522
u5030:
	line	1262
	
l4518:
	movlw	(03h)&0ffh
	iorwf	((c:printf@flag)),c
	line	1263
	
l4520:
	negf	((c:printf@val)),c
	comf	((c:printf@val+1)),c
	btfsc	status,0
	incf	((c:printf@val+1)),c
	goto	l4522
	line	1264
	
l763:
	line	1305
	
l4522:
	movlw	low(01h)
	movwf	((c:printf@c)),c
	
l4524:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5041
	goto	u5040

u5041:
	goto	l4528
u5040:
	goto	l4536
	
l4526:
	goto	l4536
	line	1306
	
l764:
	
l4528:
	movf	((c:printf@c)),c,w
	mullw	02h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
		tblrd	*+
	movf	tablat,w
	subwf	((c:printf@val)),c,w
	tblrd	*+
	movf	tablat,w
	subwfb	((c:printf@val+1)),c,w
	btfsc	status,0
	goto	u5051
	goto	u5050

u5051:
	goto	l4532
u5050:
	goto	l4536
	line	1307
	
l4530:
	goto	l4536
	
l766:
	line	1305
	
l4532:
	incf	((c:printf@c)),c
	
l4534:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5061
	goto	u5060

u5061:
	goto	l4528
u5060:
	goto	l4536
	
l765:
	line	1438
	
l4536:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5071
	goto	u5070
u5071:
	goto	l4540
u5070:
	line	1439
	
l4538:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4540
	
l767:
	line	1472
	
l4540:
	movff	(c:printf@c),(c:printf@prec)
	line	1474
	goto	l4546
	
l769:
	line	1489
	
l4542:
	movf	((c:printf@prec)),c,w
	mullw	02h
	movlw	low((_dpowers))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___lwdiv@divisor)
	tblrd*-
	
	movff	tablat,(c:___lwdiv@divisor+1)

	movff	(c:printf@val),(c:___lwdiv@dividend)
	movff	(c:printf@val+1),(c:___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(c:___lwmod@dividend)
	movff	1+?___lwdiv,(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor)),c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod),c,w
	addlw	low(030h)
	movwf	((c:printf@c)),c
	line	1524
	
l4544:
	movf	((c:printf@c)),c,w
	
	call	_putch
	goto	l4546
	line	1525
	
l768:
	line	1474
	
l4546:
	decf	((c:printf@prec)),c
		incf	((c:printf@prec)),c,w
	btfss	status,2
	goto	u5081
	goto	u5080

u5081:
	goto	l4542
u5080:
	goto	l4548
	
l770:
	goto	l4548
	line	1533
	
l753:
	line	536
	
l4548:
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(c:printf@c)
	movf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5091
	goto	u5090
u5091:
	goto	l4502
u5090:
	goto	l772
	
l771:; BSR set to: 0

	goto	l772
	line	1535
	
l758:; BSR set to: 0

	line	1541
;	Return value of _printf is never used
	
l772:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 210 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	210
global __ptext2
__ptext2:
psect	text2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	210
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 28
	movwf	((c:putch@data)),c
	line	211
	
l3934:
	goto	l200
	
l201:
	line	212
	
l200:
	line	211
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u4181
	goto	u4180
u4181:
	goto	l200
u4180:
	goto	l3936
	
l202:
	line	213
	
l3936:
	movff	(c:putch@data),(c:4013)	;volatile
	line	214
	
l203:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   21[COMRAM] unsigned int 
;;  divisor         2   23[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   21[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/lwmod.c"
	line	8
global __ptext3
__ptext3:
psect	text3
	file	"/opt/microchip/xc8/v1.38/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 28
	line	13
	
l4102:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u4321
	goto	u4320

u4321:
	goto	l1185
u4320:
	line	14
	
l4104:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l4108
	
l1187:
	line	16
	
l4106:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l4108
	line	18
	
l1186:
	line	15
	
l4108:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u4331
	goto	u4330
u4331:
	goto	l4106
u4330:
	goto	l4110
	
l1188:
	goto	l4110
	line	19
	
l1189:
	line	20
	
l4110:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u4341
	goto	u4340

u4341:
	goto	l4114
u4340:
	line	21
	
l4112:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l4114
	
l1190:
	line	22
	
l4114:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l4116:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l4110
	goto	l1185
	
l1191:
	line	24
	
l1185:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1192:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] unsigned int 
;;  divisor         2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   19[COMRAM] unsigned int 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/lwdiv.c"
	line	8
global __ptext4
__ptext4:
psect	text4
	file	"/opt/microchip/xc8/v1.38/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 28
	line	14
	
l4080:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l4082:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u4291
	goto	u4290

u4291:
	goto	l1175
u4290:
	line	16
	
l4084:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l4088
	
l1177:
	line	18
	
l4086:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l4088
	line	20
	
l1176:
	line	17
	
l4088:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l4086
u4300:
	goto	l4090
	
l1178:
	goto	l4090
	line	21
	
l1179:
	line	22
	
l4090:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l4092:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u4311
	goto	u4310

u4311:
	goto	l4098
u4310:
	line	24
	
l4094:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l4096:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l4098
	line	26
	
l1180:
	line	27
	
l4098:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l4100:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l4090
	goto	l1175
	
l1181:
	line	29
	
l1175:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1182:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_initYBOT

;; *************** function _initYBOT *****************
;; Defined at:
;;		line 333 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_InitAnalog
;;		_InitButtons
;;		_InitSP
;;		_InitTIMERS
;;		_MotorsPWM
;;		_ResetCounter
;;		_configurations_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	333
global __ptext5
__ptext5:
psect	text5
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	333
	global	__size_of_initYBOT
	__size_of_initYBOT	equ	__end_of_initYBOT-_initYBOT
	
_initYBOT:
;incstack = 0
	opt	stack 27
	line	335
	
l4138:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	336
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_MS))&0ffh
	movlw	high(0)
	movwf	((_MS+1))&0ffh
	movlw	low highword(0)
	movwf	((_MS+2))&0ffh
	movlw	high highword(0)
	movwf	((_MS+3))&0ffh
	line	337
	
l4140:; BSR set to: 1

	call	_ResetCounter	;wreg free
	line	338
	
l4142:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_gstatus))&0ffh
	line	340
	call	_configurations_init	;wreg free
	line	341
	call	_InitAnalog	;wreg free
	line	342
	call	_InitTIMERS	;wreg free
	line	343
	call	_InitButtons	;wreg free
	line	344
	
l4144:
	call	_InitSP	;wreg free
	line	345
	
l4146:
	call	_MotorsPWM	;wreg free
	line	348
	
l313:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initYBOT
	__end_of_initYBOT:
	signat	_initYBOT,89
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 268 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	268
global __ptext6
__ptext6:
psect	text6
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	268
	global	__size_of_configurations_init
	__size_of_configurations_init	equ	__end_of_configurations_init-_configurations_init
	
_configurations_init:
;incstack = 0
	opt	stack 28
	line	269
	
l3938:
		
	bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	272
	
l3940:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	275
	
l3942:
	bcf	((c:3949)),c,3	;volatile
	line	276
	
l3944:
	bsf	((c:3951)),c,3	;volatile
	line	277
	
l245:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,89
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 455 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	line	455
global __ptext7
__ptext7:
psect	text7
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	455
	global	__size_of_ResetCounter
	__size_of_ResetCounter	equ	__end_of_ResetCounter-_ResetCounter
	
_ResetCounter:
;incstack = 0
	opt	stack 28
	line	456
	
l3946:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	457
	
l334:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetCounter
	__end_of_ResetCounter:
	signat	_ResetCounter,89
	global	_MotorsPWM

;; *************** function _MotorsPWM *****************
;; Defined at:
;;		line 772 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	772
global __ptext8
__ptext8:
psect	text8
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	772
	global	__size_of_MotorsPWM
	__size_of_MotorsPWM	equ	__end_of_MotorsPWM-_MotorsPWM
	
_MotorsPWM:
;incstack = 0
	opt	stack 28
	line	774
	
l4040:
	bcf	c:(32339/8),(32339)&7	;volatile
	line	775
	bcf	c:(32340/8),(32340)&7	;volatile
	line	776
	bcf	c:(32341/8),(32341)&7	;volatile
	line	777
	bcf	c:(32342/8),(32342)&7	;volatile
	line	779
	bsf	c:(32338/8),(32338)&7	;volatile
	line	780
	bcf	c:(32336/8),(32336)&7	;volatile
	line	781
	bcf	c:(32337/8),(32337)&7	;volatile
	line	783
	bsf	c:(32338/8),(32338)&7	;volatile
	line	786
	
l4042:
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<4)-1)<<3)
	iorlw	(0Bh & ((1<<4)-1))<<3
	movwf	((c:4042)),c	;volatile
	line	787
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	((c:4042)),c	;volatile
	line	788
	
l4044:
	bcf	((c:4042)),c,2	;volatile
	line	789
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	790
	
l4046:
	bsf	((c:4042)),c,2	;volatile
	line	793
	movf	((c:4029)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4029)),c	;volatile
	line	794
	movf	((c:4026)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4026)),c	;volatile
	line	795
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	797
	
l610:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsPWM
	__end_of_MotorsPWM:
	signat	_MotorsPWM,89
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 375 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	375
global __ptext9
__ptext9:
psect	text9
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	375
	global	__size_of_InitTIMERS
	__size_of_InitTIMERS	equ	__end_of_InitTIMERS-_InitTIMERS
	
_InitTIMERS:
;incstack = 0
	opt	stack 28
	line	376
	
l3958:
	bcf	((c:4053)),c,7	;volatile
	line	377
	bcf	((c:4053)),c,6	;volatile
	line	378
	bcf	((c:4053)),c,5	;volatile
	line	380
	bsf	((c:4053)),c,3	;volatile
	line	381
	
l3960:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	382
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	385
	
l3962:
	bsf	((c:4081)),c,2	;volatile
	line	386
	
l3964:
	bcf	((c:4048)),c,7	;volatile
	line	387
	
l3966:
	bsf	((c:4082)),c,5	;volatile
	line	391
	
l3968:
	bsf	((c:4082)),c,7	;volatile
	line	393
	
l3970:
	bsf	((c:4053)),c,7	;volatile
	line	395
	
l3972:
	bcf	((c:4045)),c,0	;volatile
	line	396
	
l3974:
	bcf	((c:4045)),c,7	;volatile
	line	397
	
l3976:
	bcf	((c:4045)),c,6	;volatile
	line	398
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	399
	
l3978:
	bcf	((c:4045)),c,3	;volatile
	line	400
	
l3980:
	bcf	((c:4045)),c,1	;volatile
	line	401
	
l3982:
	bsf	((c:4045)),c,0	;volatile
	line	403
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	404
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	412
	
l3984:
	bcf	((c:3987)),c,5	;volatile
	line	414
	
l3986:
	bcf	((c:3986)),c,4	;volatile
	line	415
	
l3988:
	bcf	((c:3987)),c,0	;volatile
	line	417
	
l3990:
	bsf	((c:3989)),c,4	;volatile
	line	418
	
l3992:
	bsf	((c:3989)),c,5	;volatile
	line	419
	
l3994:
	bsf	((c:3989)),c,6	;volatile
	line	422
	
l3996:
	bcf	((c:3989)),c,1	;volatile
	line	423
	
l3998:
	bcf	((c:3989)),c,2	;volatile
	line	424
	
l4000:
	bsf	((c:3989)),c,0	;volatile
	line	425
	
l4002:
	bcf	((c:3989)),c,3	;volatile
	line	428
	
l4004:
	bcf	((c:3988)),c,1	;volatile
	line	429
	
l4006:
	bcf	((c:3988)),c,2	;volatile
	line	432
	
l4008:
	bsf	((c:3986)),c,0	;volatile
	line	433
	
l4010:
	bsf	((c:3986)),c,1	;volatile
	line	434
	
l4012:
	bsf	((c:3986)),c,2	;volatile
	line	435
	
l4014:
	bsf	((c:3986)),c,3	;volatile
	line	436
	
l4016:
	bsf	((c:3986)),c,5	;volatile
	line	438
	
l4018:
	bsf	((c:3990)),c,0	;volatile
	line	439
	
l4020:
	bsf	((c:3990)),c,1	;volatile
	line	440
	
l4022:
	bsf	((c:3990)),c,2	;volatile
	line	441
	
l4024:
	bsf	((c:3987)),c,2	;volatile
	line	443
	
l4026:
	bsf	((c:3987)),c,1	;volatile
	line	448
	
l4028:
	bcf	((c:3988)),c,6	;volatile
	line	449
	
l4030:
	bsf	((c:3988)),c,7	;volatile
	line	451
	
l4032:
	bsf	((c:3972)),c,7	;volatile
	line	452
	
l331:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,89
	global	_InitSP

;; *************** function _InitSP *****************
;; Defined at:
;;		line 696 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadAnalog
;; This function is called by:
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	696
global __ptext10
__ptext10:
psect	text10
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	696
	global	__size_of_InitSP
	__size_of_InitSP	equ	__end_of_InitSP-_InitSP
	
_InitSP:
;incstack = 0
	opt	stack 27
	line	697
	
l4036:
	movlw	low(0)
	movwf	((c:_PisoActual)),c
	line	698
	
l4038:
	movf	((c:_PisoActual)),c,w
	
	call	_ReadAnalog
	line	699
	
l554:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitSP
	__end_of_InitSP:
	signat	_InitSP,89
	global	_ReadAnalog

;; *************** function _ReadAnalog *****************
;; Defined at:
;;		line 700 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_InitSP
;;		_UpdatePiso
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	700
global __ptext11
__ptext11:
psect	text11
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	700
	global	__size_of_ReadAnalog
	__size_of_ReadAnalog	equ	__end_of_ReadAnalog-_ReadAnalog
	
_ReadAnalog:
;incstack = 0
	opt	stack 27
	movwf	((c:ReadAnalog@channel)),c
	line	701
	
l3878:
	
	btfsc	((c:ReadAnalog@channel)),c,(0)&7
	goto	u4041
	goto	u4040
u4041:
	bsf	c:(32274/8),(32274)&7	;volatile
	goto	u4055
u4040:
	bcf	c:(32274/8),(32274)&7	;volatile
u4055:
	line	702
	
l3880:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	03h
	andwf	(??_ReadAnalog+0+0),c
		movlw	02h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4061
	goto	u4060

u4061:
	bsf	c:(32275/8),(32275)&7	;volatile
	goto	u4075
u4060:
	bcf	c:(32275/8),(32275)&7	;volatile
u4075:
	line	703
	
l3882:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	07h
	andwf	(??_ReadAnalog+0+0),c
		movlw	04h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4081
	goto	u4080

u4081:
	bsf	c:(32276/8),(32276)&7	;volatile
	goto	u4095
u4080:
	bcf	c:(32276/8),(32276)&7	;volatile
u4095:
	line	704
	
l3884:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	0Fh
	andwf	(??_ReadAnalog+0+0),c
		movlw	08h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4101
	goto	u4100

u4101:
	bsf	c:(32277/8),(32277)&7	;volatile
	goto	u4115
u4100:
	bcf	c:(32277/8),(32277)&7	;volatile
u4115:
	line	706
	
l3886:
	bsf	c:(32272/8),(32272)&7	;volatile
	line	707
	
l3888:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	708
	
l557:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadAnalog
	__end_of_ReadAnalog:
	signat	_ReadAnalog,4217
	global	_InitButtons

;; *************** function _InitButtons *****************
;; Defined at:
;;		line 635 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	line	635
global __ptext12
__ptext12:
psect	text12
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	635
	global	__size_of_InitButtons
	__size_of_InitButtons	equ	__end_of_InitButtons-_InitButtons
	
_InitButtons:
;incstack = 0
	opt	stack 28
	line	636
	
l4034:
	movlw	low(0)
	movwf	((c:_ST_B_VERDE)),c
	line	637
	movlw	low(0)
	movwf	((c:_ST_B_AMARILLO)),c
	line	638
	movlw	low(0)
	movwf	((c:_ST_B_ROJO)),c
	line	639
	
l521:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitButtons
	__end_of_InitButtons:
	signat	_InitButtons,89
	global	_InitAnalog

;; *************** function _InitAnalog *****************
;; Defined at:
;;		line 678 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	line	678
global __ptext13
__ptext13:
psect	text13
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	678
	global	__size_of_InitAnalog
	__size_of_InitAnalog	equ	__end_of_InitAnalog-_InitAnalog
	
_InitAnalog:
;incstack = 0
	opt	stack 28
	line	679
	
l3948:
	bcf	((c:4033)),c,5	;volatile
	line	680
	bcf	((c:4033)),c,4	;volatile
	line	682
	bcf	((c:4033)),c,3	;volatile
	line	683
	bcf	((c:4033)),c,2	;volatile
	line	684
	bsf	((c:4033)),c,1	;volatile
	line	685
	bsf	((c:4033)),c,0	;volatile
	line	689
	bcf	((c:4032)),c,7	;volatile
	line	690
		
	bsf	((c:4032)),c, 3+0	;volatile
	bsf	((c:4032)),c, 3+1	;volatile
	bsf	((c:4032)),c, 3+2	;volatile

	line	691
	
l3950:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	692
	
l3952:
		
	bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	693
	
l3954:
	bcf	((c:4034)),c,1	;volatile
	line	694
	
l3956:
	bsf	((c:4034)),c,0	;volatile
	line	695
	
l551:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,89
	global	_initLED

;; *************** function _initLED *****************
;; Defined at:
;;		line 818 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	line	818
global __ptext14
__ptext14:
psect	text14
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	818
	global	__size_of_initLED
	__size_of_initLED	equ	__end_of_initLED-_initLED
	
_initLED:
;incstack = 0
	opt	stack 29
	line	820
	
l4488:
	movlw	high(0)
	movwf	((c:initLED@x+1)),c
	movlw	low(0)
	movwf	((c:initLED@x)),c
	
l4490:
	btfsc	((c:initLED@x+1)),c,7
	goto	u5001
	movf	((c:initLED@x+1)),c,w
	bnz	u5000
	movlw	11
	subwf	 ((c:initLED@x)),c,w
	btfss	status,0
	goto	u5001
	goto	u5000

u5001:
	goto	l4494
u5000:
	goto	l645
	
l4492:
	goto	l645
	
l643:
	line	821
	
l4494:
	movlw	low((_amax))
	movwf	(??_initLED+0+0)&0ffh,c
	movlw	high((_amax))
	movwf	1+(??_initLED+0+0)&0ffh,c
	bcf	status,0
	rlcf	((c:initLED@x)),c,w
	movwf	fsr2l
	rlcf	((c:initLED@x+1)),c,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movf	(??_initLED+0+0),c,w
	addwf	fsr2l
	movf	(??_initLED+0+1),c,w
	addwfc	fsr2h

	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postinc2,c
	clrf	postdec2,c

	line	822
	movlw	low((_amin))
	movwf	(??_initLED+0+0)&0ffh,c
	movlw	high((_amin))
	movwf	1+(??_initLED+0+0)&0ffh,c
	bcf	status,0
	rlcf	((c:initLED@x)),c,w
	movwf	fsr2l
	rlcf	((c:initLED@x+1)),c,w
	movwf	fsr2h
	bcf	status,0
	rlcf	fsr2l,f
	rlcf	fsr2h,f
	movf	(??_initLED+0+0),c,w
	addwf	fsr2l
	movf	(??_initLED+0+1),c,w
	addwfc	fsr2h

	movlw	low(0400h)
	movwf	postinc2,c
	movlw	high(0400h)
	movwf	postinc2,c
	movlw	low highword(0400h)
	movwf	postinc2,c
	movlw	high highword(0400h)
	movwf	postdec2,c

	line	820
	
l4496:
	infsnz	((c:initLED@x)),c
	incf	((c:initLED@x+1)),c
	
l4498:
	btfsc	((c:initLED@x+1)),c,7
	goto	u5011
	movf	((c:initLED@x+1)),c,w
	bnz	u5010
	movlw	11
	subwf	 ((c:initLED@x)),c,w
	btfss	status,0
	goto	u5011
	goto	u5010

u5011:
	goto	l4494
u5010:
	goto	l645
	
l644:
	line	824
	
l645:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initLED
	__end_of_initLED:
	signat	_initLED,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.38/sources/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   14[COMRAM] unsigned int 
;;  multiplicand    2   16[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   18[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Ponderado
;;		_LineFollow
;;		_Line
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul16.c"
	line	15
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 29
	line	37
	
l4550:
	movf	((c:___wmul@multiplier)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier)),c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h)),c,w
	mulwf	((c:___wmul@multiplicand)),c
	movf	(prodl),c,w
	addwf	((c:___wmul@product+1)),c

	line	52
	
l4552:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l775
	
l4554:
	line	53
	
l775:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4   14[COMRAM] unsigned long 
;;  multiplicand    4   18[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   22[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4   14[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_millis
;;		_Ponderado
;;		_LineFollow
;;		_Line
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
	line	15
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
;incstack = 0
	opt	stack 29
	line	119
	
l4556:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l4558
	line	120
	
l784:
	line	121
	
l4558:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u5101
	goto	u5100
u5101:
	goto	l4562
u5100:
	line	122
	
l4560:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l4562
	
l785:
	line	123
	
l4562:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l4564:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3)),c
	rrcf	((c:___lmul@multiplier+2)),c
	rrcf	((c:___lmul@multiplier+1)),c
	rrcf	((c:___lmul@multiplier)),c
	line	125
	movf	((c:___lmul@multiplier)),c,w
iorwf	((c:___lmul@multiplier+1)),c,w
iorwf	((c:___lmul@multiplier+2)),c,w
iorwf	((c:___lmul@multiplier+3)),c,w
	btfss	status,2
	goto	u5111
	goto	u5110

u5111:
	goto	l4558
u5110:
	
l786:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l787:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___almod

;; *************** function ___almod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/almod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   14[COMRAM] long 
;;  divisor         4   18[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   23[COMRAM] unsigned char 
;;  counter         1   22[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/almod.c"
	line	8
global __ptext17
__ptext17:
psect	text17
	file	"/opt/microchip/xc8/v1.38/sources/common/almod.c"
	line	8
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:
;incstack = 0
	opt	stack 29
	line	13
	
l4610:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l4612:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u5180
	goto	u5181

u5181:
	goto	l4618
u5180:
	line	15
	
l4614:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l4616:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l4618
	line	17
	
l841:
	line	18
	
l4618:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u5190
	goto	u5191

u5191:
	goto	l4622
u5190:
	line	19
	
l4620:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l4622
	
l842:
	line	20
	
l4622:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u5201
	goto	u5200

u5201:
	goto	l4638
u5200:
	line	21
	
l4624:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l4628
	
l845:
	line	23
	
l4626:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l4628
	line	25
	
l844:
	line	22
	
l4628:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u5211
	goto	u5210
u5211:
	goto	l4626
u5210:
	goto	l4630
	
l846:
	goto	l4630
	line	26
	
l847:
	line	27
	
l4630:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u5221
	goto	u5220

u5221:
	goto	l4634
u5220:
	line	28
	
l4632:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l4634
	
l848:
	line	29
	
l4634:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l4636:
	decfsz	((c:___almod@counter)),c
	
	goto	l4630
	goto	l4638
	
l849:
	goto	l4638
	line	31
	
l843:
	line	32
	
l4638:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u5231
	goto	u5230
u5231:
	goto	l4642
u5230:
	line	33
	
l4640:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l4642
	
l850:
	line	34
	
l4642:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l851
	
l4644:
	line	35
	
l851:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   26[COMRAM] long 
;;  divisor         4   30[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   36[COMRAM] long 
;;  sign            1   35[COMRAM] unsigned char 
;;  counter         1   34[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_Ponderado
;;		_LineFollow
;;		_Line
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
	line	8
global __ptext18
__ptext18:
psect	text18
	file	"/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
	line	8
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	stack 29
	line	14
	
l4566:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l4568:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u5120
	goto	u5121

u5121:
	goto	l4574
u5120:
	line	16
	
l4570:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l4572:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l4574
	line	18
	
l828:
	line	19
	
l4574:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u5130
	goto	u5131

u5131:
	goto	l4580
u5130:
	line	20
	
l4576:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l4578:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l4580
	line	22
	
l829:
	line	23
	
l4580:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l4582:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u5141
	goto	u5140

u5141:
	goto	l4602
u5140:
	line	25
	
l4584:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l4588
	
l832:
	line	27
	
l4586:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l4588
	line	29
	
l831:
	line	26
	
l4588:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u5151
	goto	u5150
u5151:
	goto	l4586
u5150:
	goto	l4590
	
l833:
	goto	l4590
	line	30
	
l834:
	line	31
	
l4590:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l4592:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u5161
	goto	u5160

u5161:
	goto	l4598
u5160:
	line	33
	
l4594:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l4596:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l4598
	line	35
	
l835:
	line	36
	
l4598:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l4600:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l4590
	goto	l4602
	
l836:
	goto	l4602
	line	38
	
l830:
	line	39
	
l4602:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l4606
u5170:
	line	40
	
l4604:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l4606
	
l837:
	line	41
	
l4606:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l838
	
l4608:
	line	42
	
l838:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_Wixel

;; *************** function _Wixel *****************
;; Defined at:
;;		line 190 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	190
global __ptext19
__ptext19:
psect	text19
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	190
	global	__size_of_Wixel
	__size_of_Wixel	equ	__end_of_Wixel-_Wixel
	
_Wixel:
;incstack = 0
	opt	stack 29
	line	191
	
l4118:
	bcf	((c:4024)),c,5	;volatile
	line	192
	bcf	((c:4024)),c,4	;volatile
	line	193
	bsf	((c:4024)),c,3	;volatile
	line	195
	bcf	((c:4024)),c,1	;volatile
	line	196
	bcf	((c:4024)),c,0	;volatile
	line	197
	
l4120:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	198
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	199
	
l4122:
	bcf	((c:4012)),c,7	;volatile
	line	200
	
l4124:
	bcf	((c:4012)),c,6	;volatile
	line	201
	
l4126:
	bsf	((c:4012)),c,5	;volatile
	line	202
	
l4128:
	bcf	((c:4012)),c,4	;volatile
	line	204
	
l4130:
	bcf	((c:4012)),c,2	;volatile
	line	205
	
l4132:
	bcf	((c:4011)),c,6	;volatile
	line	206
	
l4134:
	bsf	((c:4011)),c,4	;volatile
	line	207
	
l4136:
	bsf	((c:4011)),c,7	;volatile
	line	209
	
l197:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,89
	global	_MotorsSpeed

;; *************** function _MotorsSpeed *****************
;; Defined at:
;;		line 755 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  A               2   25[COMRAM] int 
;;  B               2   27[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_MotorASpeed
;;		_MotorBSpeed
;; This function is called by:
;;		_main
;;		_LineFollow
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	755
global __ptext20
__ptext20:
psect	text20
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	755
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 27
	line	756
	
l4458:
	goto	l592
	
l4460:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1723)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1723+1)
	goto	l4462
	
l592:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1723)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1723+1)
	goto	l4462
	
l594:
	
l4462:
	movff	(c:_MotorsSpeed$1723),(c:MotorASpeed@S)
	movff	(c:_MotorsSpeed$1723+1),(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	757
	
l4464:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1724)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1724+1)
	goto	l4466
	
l596:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1724)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1724+1)
	goto	l4466
	
l598:
	
l4466:
	movff	(c:_MotorsSpeed$1724),(c:MotorBSpeed@S)
	movff	(c:_MotorsSpeed$1724+1),(c:MotorBSpeed@S+1)
	call	_MotorBSpeed	;wreg free
	line	758
	
l599:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8313
	global	_MotorBSpeed

;; *************** function _MotorBSpeed *****************
;; Defined at:
;;		line 808 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  S               2   22[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_MotorsSpeed
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	808
global __ptext21
__ptext21:
psect	text21
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	808
	global	__size_of_MotorBSpeed
	__size_of_MotorBSpeed	equ	__end_of_MotorBSpeed-_MotorBSpeed
	
_MotorBSpeed:
;incstack = 0
	opt	stack 27
	line	809
	
l4064:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4241
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u4241
	goto	u4240

u4241:
	goto	l4068
u4240:
	
l4066:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4068
	
l629:
	goto	l4068
	
l631:
	line	810
	
l4068:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u4251
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u4251
	goto	u4250

u4251:
	goto	l4072
u4250:
	
l4070:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4072
	
l633:
	goto	l4072
	
l635:
	line	812
	
l4072:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4261
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u4260
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u4261
	goto	u4260

u4261:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u4278
u4260:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u4278:
	rlncf	(??_MotorBSpeed+0+0),c
	rlncf	(??_MotorBSpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	813
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4280
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u4281
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u4281
	goto	u4280

u4281:
	goto	l4076
u4280:
	
l4074:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l4076
	
l637:
	goto	l4076
	
l639:
	line	815
	
l4076:
	movff	(c:MotorBSpeed@S),??_MotorBSpeed+0+0
	movlw	03h
	andwf	(??_MotorBSpeed+0+0),c
	swapf	(??_MotorBSpeed+0+0),c
	movf	((c:4026)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:4026)),c	;volatile
	line	816
	
l4078:
	movff	(c:MotorBSpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorBSpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4027)),c	;volatile
	line	817
	
l640:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorBSpeed
	__end_of_MotorBSpeed:
	signat	_MotorBSpeed,4217
	global	_MotorASpeed

;; *************** function _MotorASpeed *****************
;; Defined at:
;;		line 798 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  S               2   22[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_MotorsSpeed
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	line	798
global __ptext22
__ptext22:
psect	text22
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	798
	global	__size_of_MotorASpeed
	__size_of_MotorASpeed	equ	__end_of_MotorASpeed-_MotorASpeed
	
_MotorASpeed:
;incstack = 0
	opt	stack 27
	line	799
	
l4048:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4191
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u4191
	goto	u4190

u4191:
	goto	l4052
u4190:
	
l4050:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l4052
	
l614:
	goto	l4052
	
l616:
	line	800
	
l4052:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u4201
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u4201
	goto	u4200

u4201:
	goto	l4056
u4200:
	
l4054:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l4056
	
l618:
	goto	l4056
	
l620:
	line	802
	
l4056:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4211
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u4210
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u4211
	goto	u4210

u4211:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u4228
u4210:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u4228:
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	803
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4230
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u4231
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u4231
	goto	u4230

u4231:
	goto	l4060
u4230:
	
l4058:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l4060
	
l622:
	goto	l4060
	
l624:
	line	805
	
l4060:
	movff	(c:MotorASpeed@S),??_MotorASpeed+0+0
	movlw	03h
	andwf	(??_MotorASpeed+0+0),c
	swapf	(??_MotorASpeed+0+0),c
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:4029)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:4029)),c	;volatile
	line	806
	
l4062:
	movff	(c:MotorASpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorASpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4030)),c	;volatile
	line	807
	
l625:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorASpeed
	__end_of_MotorASpeed:
	signat	_MotorASpeed,4217
	global	_EnhancedRead

;; *************** function _EnhancedRead *****************
;; Defined at:
;;		line 759 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  aux             2   23[COMRAM] unsigned int 
;;  i               1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_main
;;		_LineUpdate
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	line	759
global __ptext23
__ptext23:
psect	text23
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	759
	global	__size_of_EnhancedRead
	__size_of_EnhancedRead	equ	__end_of_EnhancedRead-_EnhancedRead
	
_EnhancedRead:
;incstack = 0
	opt	stack 28
	line	762
	
l4468:
	movlw	low(0)
	movwf	((c:EnhancedRead@i)),c
	
l4470:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u4971
	goto	u4970

u4971:
	goto	l4474
u4970:
	goto	l607
	
l4472:
	goto	l607
	
l602:
	line	763
	
l4474:
	movff	(c:EnhancedRead@i),??_EnhancedRead+0+0
	rlncf	(??_EnhancedRead+0+0),c
	rlncf	(??_EnhancedRead+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_EnhancedRead+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_EnhancedRead+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	764
	
l4476:
	bsf	((c:4034)),c,1	;volatile
	line	765
	goto	l604
	
l605:
	
l604:
	btfsc	((c:4034)),c,1	;volatile
	goto	u4981
	goto	u4980
u4981:
	goto	l604
u4980:
	goto	l4478
	
l606:
	line	766
	
l4478:
	movf	((c:4036)),c,w	;volatile
	mullw	04h
	movff	prodl,(c:EnhancedRead@aux)
	movff	prodh,(c:EnhancedRead@aux+1)
	line	767
	
l4480:
	movff	(c:4035),(c:___awdiv@dividend)	;volatile
	clrf	((c:___awdiv@dividend+1)),c
	movlw	high(040h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(040h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	((c:EnhancedRead@aux)),c,w
	addwf	(0+?___awdiv),c,w
	movwf	((c:EnhancedRead@aux)),c
	movf	((c:EnhancedRead@aux+1)),c,w
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:EnhancedRead@aux)),c
	line	768
	
l4482:
	movf	((c:EnhancedRead@i)),c,w
	mullw	02h
	movlw	low(_V)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_V)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:EnhancedRead@aux),postinc2
	movff	(c:EnhancedRead@aux+1),postdec2
	line	762
	
l4484:
	incf	((c:EnhancedRead@i)),c
	
l4486:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u4991
	goto	u4990

u4991:
	goto	l4474
u4990:
	goto	l607
	
l603:
	line	770
	
l607:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_EnhancedRead
	__end_of_EnhancedRead:
	signat	_EnhancedRead,89
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   20[COMRAM] int 
;;  sign            1   19[COMRAM] unsigned char 
;;  counter         1   18[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EnhancedRead
;;		_MotorASpeed
;;		_MotorBSpeed
;;		_Line
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
	line	8
global __ptext24
__ptext24:
psect	text24
	file	"/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 27
	line	14
	
l3890:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l3892:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u4120
	goto	u4121

u4121:
	goto	l3898
u4120:
	line	16
	
l3894:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l3896:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l3898
	line	18
	
l940:
	line	19
	
l3898:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u4130
	goto	u4131

u4131:
	goto	l3904
u4130:
	line	20
	
l3900:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l3902:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l3904
	line	22
	
l941:
	line	23
	
l3904:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l3906:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u4141
	goto	u4140

u4141:
	goto	l3926
u4140:
	line	25
	
l3908:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l3912
	
l944:
	line	27
	
l3910:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l3912
	line	29
	
l943:
	line	26
	
l3912:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u4151
	goto	u4150
u4151:
	goto	l3910
u4150:
	goto	l3914
	
l945:
	goto	l3914
	line	30
	
l946:
	line	31
	
l3914:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l3916:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u4161
	goto	u4160

u4161:
	goto	l3922
u4160:
	line	33
	
l3918:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l3920:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l3922
	line	35
	
l947:
	line	36
	
l3922:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l3924:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l3914
	goto	l3926
	
l948:
	goto	l3926
	line	38
	
l942:
	line	39
	
l3926:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u4171
	goto	u4170
u4171:
	goto	l3930
u4170:
	line	40
	
l3928:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l3930
	
l949:
	line	41
	
l3930:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l950
	
l3932:
	line	42
	
l950:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 596 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:         14       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	596
	global	__size_of_enc
	__size_of_enc	equ	__end_of_enc-_enc
	
_enc:
;incstack = 0
	opt	stack 27
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	movff	pclat+0,??_enc+0
	movff	pclat+1,??_enc+1
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0l+0,??_enc+2
	movff	fsr0h+0,??_enc+3
	movff	fsr1l+0,??_enc+4
	movff	fsr1h+0,??_enc+5
	movff	fsr2l+0,??_enc+6
	movff	fsr2h+0,??_enc+7
	movff	prodl+0,??_enc+8
	movff	prodh+0,??_enc+9
	movff	tblptrl+0,??_enc+10
	movff	tblptrh+0,??_enc+11
	movff	tblptru+0,??_enc+12
	movff	tablat+0,??_enc+13
	line	597
	
i2l2292:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u143_41
	goto	i2u143_40
i2u143_41:
	goto	i2l511
i2u143_40:
	line	598
	
i2l2294:
	movlw	low(01h)
	addwf	((c:_TIME)),c
	movlw	0
	addwfc	((c:_TIME+1)),c
	addwfc	((c:_TIME+2)),c
	addwfc	((c:_TIME+3)),c
	line	599
	
i2l2296:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	600
	
i2l2298:
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	603
	
i2l2300:
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l511
	line	604
	
i2l510:
	line	605
	
i2l511:
	movff	??_enc+13,tablat+0
	movff	??_enc+12,tblptru+0
	movff	??_enc+11,tblptrh+0
	movff	??_enc+10,tblptrl+0
	movff	??_enc+9,prodh+0
	movff	??_enc+8,prodl+0
	movff	??_enc+7,fsr2h+0
	movff	??_enc+6,fsr2l+0
	movff	??_enc+5,fsr1h+0
	movff	??_enc+4,fsr1l+0
	movff	??_enc+3,fsr0h+0
	movff	??_enc+2,fsr0l+0
	movff	??_enc+1,pclat+1
	movff	??_enc+0,pclat+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_enc
	__end_of_enc:
	signat	_enc,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 16
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	end
