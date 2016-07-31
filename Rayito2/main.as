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
	FNCALL	_main,_Line
	FNCALL	_main,_MotorsSpeed
	FNCALL	_main,_Wixel
	FNCALL	_main,___almod
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftmul
	FNCALL	_main,___ftsub
	FNCALL	_main,___fttol
	FNCALL	_main,___wmul
	FNCALL	_main,_initLED
	FNCALL	_main,_initYBOT
	FNCALL	_main,_printf
	FNCALL	_printf,___awdiv
	FNCALL	_printf,___ftadd
	FNCALL	_printf,___ftge
	FNCALL	_printf,___ftmul
	FNCALL	_printf,___ftneg
	FNCALL	_printf,___ftsub
	FNCALL	_printf,___fttol
	FNCALL	_printf,___lldiv
	FNCALL	_printf,___llmod
	FNCALL	_printf,___lltoft
	FNCALL	_printf,___wmul
	FNCALL	_printf,__div_to_l_
	FNCALL	_printf,__tdiv_to_l_
	FNCALL	_printf,_fround
	FNCALL	_printf,_isdigit
	FNCALL	_printf,_putch
	FNCALL	_printf,_scale
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___awmod
	FNCALL	_scale,___ftmul
	FNCALL	_scale,___wmul
	FNCALL	_fround,___awdiv
	FNCALL	_fround,___awmod
	FNCALL	_fround,___ftmul
	FNCALL	_fround,___wmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	_initYBOT,_InitAnalog
	FNCALL	_initYBOT,_InitTIMERS
	FNCALL	_initYBOT,_MotorsPWM
	FNCALL	_initYBOT,_ResetCounter
	FNCALL	_initYBOT,_configurations_init
	FNCALL	___awtoft,___ftpack
	FNCALL	_MotorsSpeed,_MotorASpeed
	FNCALL	_MotorsSpeed,_MotorBSpeed
	FNCALL	_MotorBSpeed,___awdiv
	FNCALL	_MotorASpeed,___awdiv
	FNCALL	_Line,___aldiv
	FNCALL	_Line,___lmul
	FNCALL	_EnhancedRead,___awdiv
	FNROOT	_main
	FNCALL	intlevel2,_enc
	global	intlevel2
	FNROOT	intlevel2
	global	_sd
	global	_test_kd
	global	_test_kp
	global	_LOW_SPEED
	global	_fw
	global	_pd
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	281

;initializer for _sd
	dw	(01h)&0ffffh
	dw	(07h)&0ffffh
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	line	58

;initializer for _TIMEFRENO
	dw	(0C8h) & 0xffff
	dw	highword(0C8h)
	line	276

;initializer for _test_kd
	db	low(float24(20.000000000000000))
	db	high(float24(20.000000000000000))
	db	low highword(float24(20.000000000000000))
	line	275

;initializer for _test_kp
	db	low(float24(7.0000000000000000))
	db	high(float24(7.0000000000000000))
	db	low highword(float24(7.0000000000000000))
	line	274

;initializer for _LOW_SPEED
	dw	(0208h)&0ffffh
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	38

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
	line	37

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
	line	39

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
	line	40

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
	line	279

;initializer for _fw
	dw	(06h)&0ffffh
	dw	(05h)&0ffffh
	dw	(04h)&0ffffh
	dw	(03h)&0ffffh
	dw	(02h)&0ffffh
	line	280

;initializer for _pd
	dw	(-200)&0ffffh
	dw	(-100)&0ffffh
	dw	(0)&0ffffh
	dw	(064h)&0ffffh
	dw	(0C8h)&0ffffh
	global	_dpowers
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	354
_dpowers:
	dw	(01h) & 0xffff
	dw	highword(01h)
	dw	(0Ah) & 0xffff
	dw	highword(0Ah)
	dw	(064h) & 0xffff
	dw	highword(064h)
	dw	(03E8h) & 0xffff
	dw	highword(03E8h)
	dw	(02710h) & 0xffff
	dw	highword(02710h)
	dw	(0186A0h) & 0xffff
	dw	highword(0186A0h)
	dw	(0F4240h) & 0xffff
	dw	highword(0F4240h)
	dw	(0989680h) & 0xffff
	dw	highword(0989680h)
	dw	(05F5E100h) & 0xffff
	dw	highword(05F5E100h)
	dw	(03B9ACA00h) & 0xffff
	dw	highword(03B9ACA00h)
	global __end_of_dpowers
__end_of_dpowers:
	global	__npowers_
psect	mediumconst
	file	"/opt/microchip/xc8/v1.38/sources/common/powers.c"
	line	39
__npowers_:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(0.10000000000000001))
	db	high(float24(0.10000000000000001))
	db	low highword(float24(0.10000000000000001))
	db	low(float24(0.010000000000000000))
	db	high(float24(0.010000000000000000))
	db	low highword(float24(0.010000000000000000))
	db	low(float24(0.0010000000000000000))
	db	high(float24(0.0010000000000000000))
	db	low highword(float24(0.0010000000000000000))
	db	low(float24(0.00010000000000000000))
	db	high(float24(0.00010000000000000000))
	db	low highword(float24(0.00010000000000000000))
	db	low(float24(1.0000000000000001e-05))
	db	high(float24(1.0000000000000001e-05))
	db	low highword(float24(1.0000000000000001e-05))
	db	low(float24(9.9999999999999995e-07))
	db	high(float24(9.9999999999999995e-07))
	db	low highword(float24(9.9999999999999995e-07))
	db	low(float24(9.9999999999999995e-08))
	db	high(float24(9.9999999999999995e-08))
	db	low highword(float24(9.9999999999999995e-08))
	db	low(float24(1.0000000000000000e-08))
	db	high(float24(1.0000000000000000e-08))
	db	low highword(float24(1.0000000000000000e-08))
	db	low(float24(1.0000000000000001e-09))
	db	high(float24(1.0000000000000001e-09))
	db	low highword(float24(1.0000000000000001e-09))
	db	low(float24(1.0000000000000000e-10))
	db	high(float24(1.0000000000000000e-10))
	db	low highword(float24(1.0000000000000000e-10))
	db	low(float24(9.9999999999999995e-21))
	db	high(float24(9.9999999999999995e-21))
	db	low highword(float24(9.9999999999999995e-21))
	db	low(float24(1.0000000000000001e-30))
	db	high(float24(1.0000000000000001e-30))
	db	low highword(float24(1.0000000000000001e-30))
	global __end_of__npowers_
__end_of__npowers_:
	global	__powers_
psect	mediumconst
	file	"/opt/microchip/xc8/v1.38/sources/common/powers.c"
	line	7
__powers_:
	db	low(float24(1.0000000000000000))
	db	high(float24(1.0000000000000000))
	db	low highword(float24(1.0000000000000000))
	db	low(float24(10.000000000000000))
	db	high(float24(10.000000000000000))
	db	low highword(float24(10.000000000000000))
	db	low(float24(100.00000000000000))
	db	high(float24(100.00000000000000))
	db	low highword(float24(100.00000000000000))
	db	low(float24(1000.0000000000000))
	db	high(float24(1000.0000000000000))
	db	low highword(float24(1000.0000000000000))
	db	low(float24(10000.000000000000))
	db	high(float24(10000.000000000000))
	db	low highword(float24(10000.000000000000))
	db	low(float24(100000.00000000000))
	db	high(float24(100000.00000000000))
	db	low highword(float24(100000.00000000000))
	db	low(float24(1000000.0000000000))
	db	high(float24(1000000.0000000000))
	db	low highword(float24(1000000.0000000000))
	db	low(float24(10000000.000000000))
	db	high(float24(10000000.000000000))
	db	low highword(float24(10000000.000000000))
	db	low(float24(100000000.00000000))
	db	high(float24(100000000.00000000))
	db	low highword(float24(100000000.00000000))
	db	low(float24(1000000000.0000000))
	db	high(float24(1000000000.0000000))
	db	low highword(float24(1000000000.0000000))
	db	low(float24(10000000000.000000))
	db	high(float24(10000000000.000000))
	db	low highword(float24(10000000000.000000))
	db	low(float24(1.0000000000000000e+20))
	db	high(float24(1.0000000000000000e+20))
	db	low highword(float24(1.0000000000000000e+20))
	db	low(float24(1.0000000000000000e+30))
	db	high(float24(1.0000000000000000e+30))
	db	low highword(float24(1.0000000000000000e+30))
	global __end_of__powers_
__end_of__powers_:
	global	_dpowers
	global	__npowers_
	global	__powers_
	global	_CURRENT
	global	_line
	global	_x
	global	_MF
	global	_AMOUNT
	global	_SIZES
	global	_TIME
	global	_TIME2
	global	_WAITIME
	global	_der
	global	_fa
	global	_fb
	global	_flag_line
	global	_fns
	global	_formula
	global	_gf
	global	_last
	global	_ma
	global	_mb
	global	_rcount
	global	_rf
	global	_actual
	global	_P
	global	_V
	global	_amax
	global	_amin
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
       ds      2
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
psect	mediumconst
	
STR_10:
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
	db	37
	db	105	;'i'
	db	44
	db	39
	db	99	;'c'
	db	111	;'o'
	db	108	;'l'
	db	111	;'o'
	db	114	;'r'
	db	39
	db	58	;':'
	db	40
	db	48	;'0'
	db	44
	db	49	;'1'
	db	48	;'0'
	db	48	;'0'
	db	44
	db	50	;'2'
	db	48	;'0'
	db	48	;'0'
	db	41
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
	
STR_8:
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
	db	83	;'S'
	db	91	;'['
	db	32
	db	37
	db	48	;'0'
	db	52	;'4'
	db	117	;'u'
	db	32
	db	93	;']'
	db	32
	db	58	;':'
	db	32
	db	91	;'['
	db	37
	db	48	;'0'
	db	52	;'4'
	db	117	;'u'
	db	32
	db	44
	db	32
	db	37
	db	48	;'0'
	db	52	;'4'
	db	117	;'u'
	db	32
	db	93	;']'
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
	
STR_6:
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
	
STR_13:
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
	db	114	;'r'
	db	99	;'c'
	db	111	;'o'
	db	117	;'u'
	db	110	;'n'
	db	116	;'t'
	db	32
	db	32
	db	32
	db	61	;'='
	db	32
	db	37
	db	105	;'i'
	db	39
	db	125
	db	10
	db	0
	
STR_7:
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
	db	77	;'M'
	db	111	;'o'
	db	116	;'t'
	db	111	;'o'
	db	114	;'r'
	db	32
	db	116	;'t'
	db	101	;'e'
	db	115	;'s'
	db	116	;'t'
	db	39
	db	125
	db	10
	db	0
	
STR_11:
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
	db	107	;'k'
	db	112	;'p'
	db	32
	db	61	;'='
	db	32
	db	37
	db	102	;'f'
	db	39
	db	125
	db	10
	db	0
STR_5	equ	STR_4+0
STR_9	equ	STR_4+0
STR_14	equ	STR_10+0
STR_12	equ	STR_11+0
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
	global	_CURRENT
_CURRENT:
       ds      2
	global	_line
_line:
       ds      2
	global	_x
_x:
       ds      2
	global	_MF
_MF:
       ds      1
	global	_RWM
	global	_RWM
_RWM:
       ds      1
	global	_b2
	global	_b2
_b2:
       ds      1
	global	_mm
	global	_mm
_mm:
       ds      1
	global	_nove
	global	_nove
_nove:
       ds      1
	global	_AMOUNT
_AMOUNT:
       ds      2
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_TIME
_TIME:
       ds      4
	global	_TIME2
_TIME2:
       ds      4
	global	_WAITIME
_WAITIME:
       ds      4
	global	_a
	global	_a
_a:
       ds      2
	global	_b
	global	_b
_b:
       ds      2
	global	_cox
	global	_cox
_cox:
       ds      2
	global	_der
_der:
       ds      2
	global	_fa
_fa:
       ds      2
	global	_fb
_fb:
       ds      2
	global	_flag_line
_flag_line:
       ds      2
	global	_fns
_fns:
       ds      2
	global	_formula
_formula:
       ds      2
	global	_gf
_gf:
       ds      2
	global	_last
_last:
       ds      2
	global	_ma
_ma:
       ds      2
	global	_mb
_mb:
       ds      2
	global	_pasada
	global	_pasada
_pasada:
       ds      2
	global	_rcount
_rcount:
       ds      2
	global	_rf
_rf:
       ds      2
	global	_speedMode
	global	_speedMode
_speedMode:
       ds      2
	global	_actual
_actual:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	281
	global	_sd
_sd:
       ds      10
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	58
	global	_TIMEFRENO
	global	_TIMEFRENO
_TIMEFRENO:
       ds      4
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	276
	global	_test_kd
_test_kd:
       ds      3
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	275
	global	_test_kp
_test_kp:
       ds      3
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	274
	global	_LOW_SPEED
_LOW_SPEED:
       ds      2
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_P
_P:
       ds      32
	global	_V
_V:
       ds      32
	global	_amax
_amax:
       ds      32
	global	_amin
_amin:
       ds      32
	global	_WAITFRENAR
	global	_WAITFRENAR
_WAITFRENAR:
       ds      4
	global	_v
	global	_v
_v:
       ds      4
	global	_w
	global	_w
_w:
       ds      4
psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	38
	global	_KD
	global	_KD
_KD:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	37
	global	_KP
	global	_KP
_KP:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	39
	global	_KR
	global	_KR
_KR:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	40
	global	_SP
	global	_SP
_SP:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	279
	global	_fw
_fw:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	280
	global	_pd
_pd:
       ds      10
psect	bssBIGRAM,class=BIGRAM,space=1,noexec
global __pbssBIGRAM
__pbssBIGRAM:
	global	_SIZES
_SIZES:
       ds      1020
	file	"main.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK1 (68 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,68
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (22 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,22
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
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
; Clear objects allocated to BANK1 (140 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	140
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (47 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	47
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (13 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	13
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
	global	_main$486
_main$486:	; 2 bytes @ 0x0
	ds   2
	global	_main$487
_main$487:	; 2 bytes @ 0x2
	ds   2
	global	_main$472
_main$472:	; 2 bytes @ 0x4
	ds   2
	global	_main$478
_main$478:	; 2 bytes @ 0x6
	ds   2
	global	main@j_476
main@j_476:	; 2 bytes @ 0x8
	ds   2
	global	main@i_475
main@i_475:	; 2 bytes @ 0xA
	ds   2
	global	main@j_481
main@j_481:	; 2 bytes @ 0xC
	ds   2
	global	_main$2353
_main$2353:	; 2 bytes @ 0xE
	ds   2
	global	_main$2354
_main$2354:	; 2 bytes @ 0x10
	ds   2
	global	_main$2355
_main$2355:	; 2 bytes @ 0x12
	ds   2
	global	_main$2356
_main$2356:	; 2 bytes @ 0x14
	ds   2
	global	_main$2357
_main$2357:	; 2 bytes @ 0x16
	ds   2
	global	_main$2358
_main$2358:	; 2 bytes @ 0x18
	ds   2
	global	main@i_480
main@i_480:	; 2 bytes @ 0x1A
	ds   2
	global	main@j
main@j:	; 2 bytes @ 0x1C
	ds   2
	global	main@i
main@i:	; 2 bytes @ 0x1E
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftadd:	; 1 bytes @ 0x0
	ds   3
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x4
	ds   1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x5
	ds   1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x6
	global	?___fttol
?___fttol:	; 4 bytes @ 0x6
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x6
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x6
	ds   3
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x9
	ds   1
??___fttol:	; 1 bytes @ 0xA
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xF
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x10
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x14
	ds   1
	global	?_printf
?_printf:	; 2 bytes @ 0x15
	global	printf@f
printf@f:	; 2 bytes @ 0x15
	ds   12
??_printf:	; 1 bytes @ 0x21
	ds   6
	global	_printf$2362
_printf$2362:	; 3 bytes @ 0x27
	ds   3
	global	printf@ap
printf@ap:	; 2 bytes @ 0x2A
	ds   2
	global	printf@prec
printf@prec:	; 2 bytes @ 0x2C
	ds   2
	global	printf@val
printf@val:	; 4 bytes @ 0x2E
	ds   4
	global	printf@flag
printf@flag:	; 2 bytes @ 0x32
	ds   2
	global	printf@tmpval
printf@tmpval:	; 4 bytes @ 0x34
	ds   4
	global	printf@width
printf@width:	; 2 bytes @ 0x38
	ds   2
	global	printf@exp
printf@exp:	; 2 bytes @ 0x3A
	ds   2
	global	printf@fval
printf@fval:	; 3 bytes @ 0x3C
	ds   3
	global	printf@c
printf@c:	; 1 bytes @ 0x3F
	ds   1
?_main:	; 2 bytes @ 0x40
main@argc:	; 2 bytes @ 0x40
	ds   2
main@argv:	; 3 bytes @ 0x42
	ds   3
??_main:	; 1 bytes @ 0x45
	ds   4
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_isdigit:	; 1 bit 
?_ResetCounter:	; 1 bytes @ 0x0
?_configurations_init:	; 1 bytes @ 0x0
?_InitAnalog:	; 1 bytes @ 0x0
?_InitTIMERS:	; 1 bytes @ 0x0
?_MotorsPWM:	; 1 bytes @ 0x0
?_Wixel:	; 1 bytes @ 0x0
?_EnhancedRead:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_initYBOT:	; 1 bytes @ 0x0
?_enc:	; 1 bytes @ 0x0
??_enc:	; 1 bytes @ 0x0
?_initLED:	; 1 bytes @ 0x0
?_Line:	; 1 bytes @ 0x0
	ds   14
?___ftge:	; 1 bit 
??_ResetCounter:	; 1 bytes @ 0xE
??_configurations_init:	; 1 bytes @ 0xE
??_InitAnalog:	; 1 bytes @ 0xE
??_InitTIMERS:	; 1 bytes @ 0xE
??_MotorsPWM:	; 1 bytes @ 0xE
??_Wixel:	; 1 bytes @ 0xE
??_isdigit:	; 1 bytes @ 0xE
??_putch:	; 1 bytes @ 0xE
??_initYBOT:	; 1 bytes @ 0xE
??_initLED:	; 1 bytes @ 0xE
	global	?___awmod
?___awmod:	; 2 bytes @ 0xE
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0xE
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0xE
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0xE
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0xE
	global	?___lmul
?___lmul:	; 4 bytes @ 0xE
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0xE
	global	?___almod
?___almod:	; 4 bytes @ 0xE
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0xE
	global	putch@data
putch@data:	; 1 bytes @ 0xE
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xE
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0xE
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0xE
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0xE
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0xE
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0xE
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0xE
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0xE
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0xE
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xE
	ds   1
	global	_isdigit$2002
_isdigit$2002:	; 1 bytes @ 0xF
	ds   1
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x10
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x10
	ds   1
??___ftneg:	; 1 bytes @ 0x11
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x11
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x11
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x11
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x11
	ds   1
??___awmod:	; 1 bytes @ 0x12
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x12
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x12
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x12
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x12
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x12
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x12
	ds   1
??___ftpack:	; 1 bytes @ 0x13
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x13
	ds   1
??__tdiv_to_l_:	; 1 bytes @ 0x14
??__div_to_l_:	; 1 bytes @ 0x14
??___ftge:	; 1 bytes @ 0x14
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x14
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x14
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x14
	ds   2
??___lmul:	; 1 bytes @ 0x16
??___aldiv:	; 1 bytes @ 0x16
??___almod:	; 1 bytes @ 0x16
??___lldiv:	; 1 bytes @ 0x16
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x16
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x16
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x16
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x16
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x16
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x16
	ds   1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x17
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x17
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x17
	ds   1
??___awdiv:	; 1 bytes @ 0x18
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x18
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x18
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x18
	ds   1
??___awtoft:	; 1 bytes @ 0x19
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x19
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x19
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x19
	ds   1
??___lltoft:	; 1 bytes @ 0x1A
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x1A
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x1A
	ds   1
	global	?___llmod
?___llmod:	; 4 bytes @ 0x1B
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x1B
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x1B
	ds   1
??_EnhancedRead:	; 1 bytes @ 0x1C
??_Line:	; 1 bytes @ 0x1C
?_MotorASpeed:	; 1 bytes @ 0x1C
?_MotorBSpeed:	; 1 bytes @ 0x1C
	global	?___wmul
?___wmul:	; 2 bytes @ 0x1C
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x1C
	global	MotorASpeed@S
MotorASpeed@S:	; 2 bytes @ 0x1C
	global	MotorBSpeed@S
MotorBSpeed@S:	; 2 bytes @ 0x1C
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x1C
	ds   1
	global	EnhancedRead@aux
EnhancedRead@aux:	; 2 bytes @ 0x1D
	ds   1
??_MotorASpeed:	; 1 bytes @ 0x1E
??_MotorBSpeed:	; 1 bytes @ 0x1E
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0x1E
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x1E
	ds   1
	global	EnhancedRead@i
EnhancedRead@i:	; 1 bytes @ 0x1F
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x1F
	ds   1
??___wmul:	; 1 bytes @ 0x20
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x20
	ds   2
?_MotorsSpeed:	; 1 bytes @ 0x22
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x22
	global	MotorsSpeed@A
MotorsSpeed@A:	; 2 bytes @ 0x22
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x22
	ds   1
??___llmod:	; 1 bytes @ 0x23
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x23
	global	Line@w
Line@w:	; 4 bytes @ 0x23
	ds   1
	global	MotorsSpeed@B
MotorsSpeed@B:	; 2 bytes @ 0x24
	ds   1
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x25
	ds   1
??_MotorsSpeed:	; 1 bytes @ 0x26
	global	_MotorsSpeed$1715
_MotorsSpeed$1715:	; 2 bytes @ 0x26
	ds   1
	global	Line@a
Line@a:	; 4 bytes @ 0x27
	ds   1
??___ftmul:	; 1 bytes @ 0x28
	global	_MotorsSpeed$1717
_MotorsSpeed$1717:	; 2 bytes @ 0x28
	ds   3
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2B
	global	Line@b
Line@b:	; 4 bytes @ 0x2B
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2C
	ds   3
	global	Line@g
Line@g:	; 1 bytes @ 0x2F
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x2F
	ds   1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x30
	global	Line@j_435
Line@j_435:	; 2 bytes @ 0x30
	ds   1
	global	?_fround
?_fround:	; 3 bytes @ 0x31
	global	?_scale
?_scale:	; 3 bytes @ 0x31
	ds   1
	global	Line@j
Line@j:	; 2 bytes @ 0x32
	ds   2
??_fround:	; 1 bytes @ 0x34
??_scale:	; 1 bytes @ 0x34
	global	Line@i
Line@i:	; 2 bytes @ 0x34
	global	_fround$2360
_fround$2360:	; 3 bytes @ 0x34
	global	_scale$2361
_scale$2361:	; 3 bytes @ 0x34
	ds   2
	global	Line@i_436
Line@i_436:	; 2 bytes @ 0x36
	ds   1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x37
	global	_fround$2359
_fround$2359:	; 3 bytes @ 0x37
	ds   1
	global	Line@v
Line@v:	; 4 bytes @ 0x38
	ds   2
	global	fround@prec
fround@prec:	; 1 bytes @ 0x3A
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x3B
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x3B
	ds   3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x3E
	ds   3
??___ftsub:	; 1 bytes @ 0x41
;!
;!Data Sizes:
;!    Strings     452
;!    Constant    118
;!    Data        90
;!    BSS         1220
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     65      78
;!    BANK0           160     73     143
;!    BANK1           256     32     242
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 61
;!		 -> STR_14(CODE[61]), STR_13(CODE[40]), STR_12(CODE[34]), STR_11(CODE[34]), 
;!		 -> STR_10(CODE[61]), STR_9(CODE[60]), STR_8(CODE[53]), STR_7(CODE[39]), 
;!		 -> STR_6(CODE[44]), STR_5(CODE[60]), STR_4(CODE[60]), STR_3(CODE[47]), 
;!		 -> STR_2(CODE[37]), STR_1(CODE[37]), 
;!
;!    printf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_printf(BANK0[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->___ftadd
;!    _printf->___ftadd
;!    _scale->___ftmul
;!    _fround->___ftmul
;!    ___wmul->___awdiv
;!    ___ftmul->___wmul
;!    ___lltoft->___ftpack
;!    ___llmod->___lldiv
;!    ___fttol->___ftadd
;!    ___ftsub->___ftadd
;!    ___ftadd->_fround
;!    ___awtoft->___ftpack
;!    _MotorsSpeed->___wmul
;!    _MotorBSpeed->___awdiv
;!    _MotorASpeed->___awdiv
;!    _Line->___aldiv
;!    _EnhancedRead->___awdiv
;!    ___awdiv->___awmod
;!
;!Critical Paths under _enc in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_printf
;!    _printf->___fttol
;!    ___fttol->___ftadd
;!    ___ftsub->___ftadd
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                               109   104      5  110720
;!                                             64 BANK0      9     4      5
;!                                              0 BANK1     32    32      0
;!                       _EnhancedRead
;!                               _Line
;!                        _MotorsSpeed
;!                              _Wixel
;!                            ___almod
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftsub
;!                            ___fttol
;!                             ___wmul
;!                            _initLED
;!                           _initYBOT
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (1) _printf                                              49    37     12   67461
;!                                             21 BANK0     43    31     12
;!                            ___awdiv
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                            ___lldiv
;!                            ___llmod
;!                           ___lltoft
;!                             ___wmul
;!                         __div_to_l_
;!                        __tdiv_to_l_
;!                             _fround
;!                            _isdigit
;!                              _putch
;!                              _scale
;! ---------------------------------------------------------------------------------
;! (2) _scale                                               10     7      3   16423
;!                                             49 COMRAM     7     4      3
;!                            ___awdiv
;!                            ___awmod
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) _putch                                                1     1      0      31
;!                                             14 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              3     3      0      99
;!                                             14 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _fround                                              13    10      3   16144
;!                                             49 COMRAM    10     7      3
;!                            ___awdiv
;!                            ___awmod
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4    5930
;!                                             28 COMRAM     6     2      4
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    5530
;!                                             34 COMRAM    15     9      6
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                           ___awtoft (ARG)
;!                           ___ftpack
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4    1819
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) __tdiv_to_l_                                         15     9      6     608
;!                                             14 COMRAM    15     9      6
;! ---------------------------------------------------------------------------------
;! (2) __div_to_l_                                          12     6      6     827
;!                                             14 COMRAM    12     6      6
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             9     5      4    2643
;!                                             22 COMRAM     9     5      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                              9     1      8     848
;!                                             27 COMRAM     9     1      8
;!                            ___lldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     703
;!                                             14 COMRAM    13     5      8
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4     679
;!                                              6 BANK0     15    11      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                              _scale (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    4937
;!                                              6 BANK0      6     0      6
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             12     6      6    4419
;!                                             59 COMRAM     6     0      6
;!                                              0 BANK0      6     6      0
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     142
;!                                             14 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               9     3      6     660
;!                                             14 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (1) _initYBOT                                             0     0      0       0
;!                         _InitAnalog
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
;! (2) _InitAnalog                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLED                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             4     1      3    2751
;!                                             22 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2464
;!                                             14 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) ___almod                                             10     2      8    1665
;!                                             14 COMRAM    10     2      8
;! ---------------------------------------------------------------------------------
;! (1) _Wixel                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MotorsSpeed                                          8     4      4    6536
;!                                             34 COMRAM     8     4      4
;!                        _MotorASpeed
;!                        _MotorBSpeed
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _MotorBSpeed                                          3     1      2    2784
;!                                             28 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (2) _MotorASpeed                                          3     1      2    2784
;!                                             28 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (1) _Line                                                32    32      0    3098
;!                                             28 COMRAM    32    32      0
;!                            ___aldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8     712
;!                                             14 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             14     6      8     907
;!                                             14 COMRAM    14     6      8
;! ---------------------------------------------------------------------------------
;! (1) _EnhancedRead                                         4     4      0    2645
;!                                             28 COMRAM     4     4      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4    2447
;!                                             20 COMRAM     8     4      4
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _enc                                                 14    14      0       0
;!                                              0 COMRAM    14    14      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _EnhancedRead
;!     ___awdiv
;!       ___awmod (ARG)
;!   _Line
;!     ___aldiv
;!     ___lmul
;!   _MotorsSpeed
;!     _MotorASpeed
;!       ___awdiv
;!         ___awmod (ARG)
;!     _MotorBSpeed
;!       ___awdiv
;!         ___awmod (ARG)
;!     ___wmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!   _Wixel
;!   ___almod
;!   ___awtoft
;!     ___ftpack
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___wmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!     ___ftpack (ARG)
;!     _fround (ARG)
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!       ___wmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!   ___ftmul
;!     ___awdiv (ARG)
;!       ___awmod (ARG)
;!     ___awmod (ARG)
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!     ___wmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!   ___ftsub
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!       ___ftpack (ARG)
;!       _fround (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!         ___wmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!     ___lltoft (ARG)
;!       ___ftpack
;!   ___fttol
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!       ___ftpack (ARG)
;!       _fround (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!         ___wmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!     ___ftmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___wmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!     _scale (ARG)
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!       ___wmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!   ___wmul
;!     ___awdiv (ARG)
;!       ___awmod (ARG)
;!     ___awmod (ARG)
;!   _initLED
;!   _initYBOT
;!     _InitAnalog
;!     _InitTIMERS
;!     _MotorsPWM
;!     _ResetCounter
;!     _configurations_init
;!   _printf
;!     ___awdiv
;!       ___awmod (ARG)
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!       ___ftpack (ARG)
;!       _fround (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!         ___wmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!     ___ftge
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!       ___wmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!     ___ftneg
;!     ___ftsub
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _fround (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!           ___wmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!         ___ftpack (ARG)
;!         _fround (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!             ___wmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!           ___wmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!       _scale (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!           ___wmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!         ___wmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!     ___lldiv
;!     ___llmod
;!       ___lldiv (ARG)
;!     ___lltoft
;!       ___ftpack
;!     ___wmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!     __div_to_l_
;!     __tdiv_to_l_
;!     _fround
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!       ___wmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!     _isdigit
;!     _putch
;!     _scale
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!       ___wmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
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
;!BANK1              100     20      F2       7       94.5%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     49      8F       5       89.4%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     41      4E       1       83.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     1CF      20        0.0%
;!DATA                 0      0     5CB       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 345 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   64[BANK0 ] int 
;;  argv            3   66[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   26[BANK1 ] int 
;;  j               2   12[BANK1 ] int 
;;  i               2   10[BANK1 ] int 
;;  j               2    8[BANK1 ] int 
;;  i               2   30[BANK1 ] int 
;;  j               2   28[BANK1 ] int 
;; Return value:  Size  Location     Type
;;                  2   64[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       5       0       0       0       0       0       0       0
;;      Locals:         0       0      32       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0
;;      Totals:         0       9      32       0       0       0       0       0       0
;;Total ram usage:       41 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_EnhancedRead
;;		_Line
;;		_MotorsSpeed
;;		_Wixel
;;		___almod
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___ftsub
;;		___fttol
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
	line	345
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	345
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 26
	line	346
	
l5998:
	call	_initYBOT	;wreg free
	line	348
	
l6000:
	movlb	0	; () banked
	setf	((_gstatus))&0ffh
	line	349
	
l6002:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_WAITIME))&0ffh
	movlw	high(0)
	movwf	((_WAITIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_WAITIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_WAITIME+3))&0ffh
	line	350
	
l6004:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_CURRENT+1)),c
	movlw	low(0)
	movwf	((c:_CURRENT)),c
	line	351
	
l6006:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_actual))&0ffh
	line	352
	
l6008:; BSR set to: 0

	movlw	high(02h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(02h)
	movwf	((_status))&0ffh
	line	353
	
l6010:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	354
	
l6012:; BSR set to: 0

	call	_Wixel	;wreg free
	line	356
	
l6014:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	357
	
l6016:
	bsf	((c:3971)),c,3	;volatile
	line	359
	
l6018:
	movlw	high(02h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(02h)
	movwf	((_status))&0ffh
	line	360
	goto	l6022
	
l250:; BSR set to: 1

	line	365
	
l6020:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	goto	l6022
	
l249:; BSR set to: 0

	line	360
	
l6022:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7271
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7270
	movlw	136
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	19
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7271
	goto	u7270

u7271:
	goto	l6020
u7270:
	goto	l6394
	
l251:; BSR set to: 0

	goto	l6394
	line	366
	
l252:; BSR set to: 0

	line	371
	goto	l6394
	line	372
	
l254:; BSR set to: 0

	line	373
	
l6024:; BSR set to: 0

	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
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
	goto	u7280
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u7281
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u7281
	goto	u7280

u7281:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7298
u7280:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7298:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	374
	
l6026:; BSR set to: 0

	movlb	0	; () banked
	movf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u7301
	goto	u7300

u7301:
	goto	l6030
u7300:
	line	375
	
l6028:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	376
	goto	l6038
	
l255:; BSR set to: 0

	
l6030:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u7311
	goto	u7310

u7311:
	goto	l6034
u7310:
	line	377
	
l6032:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	line	378
	goto	l6038
	
l257:; BSR set to: 0

	
l6034:; BSR set to: 0

	movlb	0	; () banked
		incf	((_ma))&0ffh,w
	bnz	u7321
	movlb	0	; () banked
	incf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u7321
	goto	u7320

u7321:
	goto	l6038
u7320:
	line	379
	
l6036:; BSR set to: 0

	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
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
	goto	u7330
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u7331
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u7331
	goto	u7330

u7331:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7348
u7330:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7348:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l6038
	line	380
	
l259:; BSR set to: 0

	goto	l6038
	line	381
	
l258:; BSR set to: 0

	goto	l6038
	
l256:; BSR set to: 0

	
l6038:; BSR set to: 0

	movlb	0	; () banked
	movf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u7351
	goto	u7350

u7351:
	goto	l6042
u7350:
	line	382
	
l6040:; BSR set to: 0

	bcf	((c:3969)),c,0	;volatile
	line	383
	goto	l6050
	
l260:; BSR set to: 0

	
l6042:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u7361
	goto	u7360

u7361:
	goto	l6046
u7360:
	line	384
	
l6044:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	385
	goto	l6050
	
l262:; BSR set to: 0

	
l6046:; BSR set to: 0

	movlb	0	; () banked
		incf	((_mb))&0ffh,w
	bnz	u7371
	movlb	0	; () banked
	incf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u7371
	goto	u7370

u7371:
	goto	l6050
u7370:
	line	386
	
l6048:; BSR set to: 0

	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
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
	goto	u7380
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u7381
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u7381
	goto	u7380

u7381:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7398
u7380:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7398:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l6050
	line	387
	
l264:; BSR set to: 0

	goto	l6050
	line	389
	
l263:; BSR set to: 0

	goto	l6050
	
l261:; BSR set to: 0

	
l6050:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u7401
	goto	u7400

u7401:
	goto	l6056
u7400:
	line	390
	
l6052:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	391
	
l6054:; BSR set to: 0

		movlw	low(STR_1)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_1)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	goto	l6056
	line	392
	
l265:
	line	394
	
l6056:
	btfsc	((c:3971)),c,6	;volatile
	goto	u7411
	goto	u7410
u7411:
	goto	l266
u7410:
	
l6058:
	movlb	0	; () banked
	movf	((_fa))&0ffh,w
	movlb	0	; () banked
iorwf	((_fa+1))&0ffh,w
	btfss	status,2
	goto	u7421
	goto	u7420

u7421:
	goto	l266
u7420:
	line	395
	
l6060:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(01h)
	movwf	((_fa))&0ffh
	line	396
	
l6062:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfsc	status,2
	goto	u7431
	goto	u7430

u7431:
	goto	l268
u7430:
	
l6064:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_ma))&0ffh,w
	movlb	0	; () banked
	movwf	((_ma))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((_ma+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((_ma))&0ffh
	goto	l266
	
l268:; BSR set to: 0

	movlb	0	; () banked
	setf	((_ma))&0ffh
	setf	((_ma+1))&0ffh
	goto	l266
	
l270:; BSR set to: 0

	line	397
	
l266:
	line	398
	btfsc	((c:3971)),c,4	;volatile
	goto	u7441
	goto	u7440
u7441:
	goto	l271
u7440:
	
l6066:
	movlb	0	; () banked
	movf	((_fb))&0ffh,w
	movlb	0	; () banked
iorwf	((_fb+1))&0ffh,w
	btfss	status,2
	goto	u7451
	goto	u7450

u7451:
	goto	l271
u7450:
	line	399
	
l6068:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(01h)
	movwf	((_fb))&0ffh
	line	400
	
l6070:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfsc	status,2
	goto	u7461
	goto	u7460

u7461:
	goto	l273
u7460:
	
l6072:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_mb))&0ffh,w
	movlb	0	; () banked
	movwf	((_mb))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((_mb+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((_mb))&0ffh
	goto	l271
	
l273:; BSR set to: 0

	movlb	0	; () banked
	setf	((_mb))&0ffh
	setf	((_mb+1))&0ffh
	goto	l271
	
l275:; BSR set to: 0

	line	401
	
l271:
	line	402
	btfss	((c:3971)),c,6	;volatile
	goto	u7471
	goto	u7470
u7471:
	goto	l6076
u7470:
	
l6074:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	goto	l6076
	
l276:; BSR set to: 0

	line	403
	
l6076:
	btfss	((c:3971)),c,4	;volatile
	goto	u7481
	goto	u7480
u7481:
	goto	l6080
u7480:
	
l6078:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	goto	l6080
	
l277:; BSR set to: 0

	line	405
	
l6080:
	movff	(_ma),(c:___wmul@multiplier)
	movff	(_ma+1),(c:___wmul@multiplier+1)
	movlw	high(03E8h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03E8h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:MotorsSpeed@A)
	movff	1+?___wmul,(c:MotorsSpeed@A+1)
	movff	(_mb),(c:___wmul@multiplier)
	movff	(_mb+1),(c:___wmul@multiplier+1)
	movlw	high(03E8h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03E8h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:MotorsSpeed@B)
	movff	1+?___wmul,(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	406
	goto	l6394
	line	407
	
l279:
	line	408
	
l6082:
	call	_EnhancedRead	;wreg free
	line	409
	
l6084:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u7491
	goto	u7490

u7491:
	goto	l6090
u7490:
	line	410
	
l6086:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	411
	
l6088:; BSR set to: 0

		movlw	low(STR_2)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_2)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	goto	l6090
	line	412
	
l280:
	line	413
	
l6090:
	bcf	((c:3969)),c,0	;volatile
	line	414
	
l6092:
	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
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
	goto	u7500
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u7501
	movlw	233
	subwf	 (0+?___almod),c,w
	movlw	3
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u7501
	goto	u7500

u7501:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7518
u7500:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7518:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	415
	
l6094:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	416
	
l6096:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u7521
	goto	u7520
u7521:
	goto	l6106
u7520:
	line	417
	
l6098:; BSR set to: 0

		movlw	low(STR_3)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_3)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	418
	
l6100:
	movlw	high(04h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	419
	
l6102:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	420
	
l6104:; BSR set to: 0

	call	_initLED	;wreg free
	goto	l6106
	line	421
	
l281:
	line	427
	
l6106:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l6108:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u7531
	movlb	1	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u7530
	movlw	2
	movlb	1	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u7531
	goto	u7530

u7531:
	goto	l6112
u7530:
	goto	l6394
	
l6110:; BSR set to: 1

	goto	l6394
	
l282:; BSR set to: 1

	line	428
	
l6112:; BSR set to: 1

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i)
	movff	postdec2,(main@i+1)
	line	429
	
l6114:; BSR set to: 1

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
	movff	??_main+0+0,(c:___wmul@multiplier)
	movff	??_main+0+1,(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2353)
	movff	1+?___wmul,(_main$2353+1)
	
l6116:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2354)
	movff	1+?___wmul,(_main$2354+1)
	
l6118:
	movff	(main@i),??_main+0+0
	movff	(main@i+1),??_main+0+0+1
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	swapf	(??_main+0+1)&0ffh
	movlw	0f0h
	andwf	(??_main+0+1)&0ffh
	movf	(??_main+0+0)&0ffh,w
	andlw	0fh
	iorwf	(??_main+0+1)&0ffh
	movlw	0f0h
	andwf	(??_main+0+0)&0ffh
	movff	??_main+0+0,(c:___wmul@multiplier)
	movff	??_main+0+1,(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2355)
	movff	1+?___wmul,(_main$2355+1)
	
l6120:
	movff	(_main$2353),(c:___wmul@multiplier)
	movff	(_main$2353+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2356))&0ffh
	clrf	((_main$2356+1))&0ffh
	
l6122:; BSR set to: 1

	movff	(_main$2354),(c:___wmul@multiplier)
	movff	(_main$2354+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2357))&0ffh
	clrf	((_main$2357+1))&0ffh
	
l6124:; BSR set to: 1

	movff	(_main$2355),(c:___wmul@multiplier)
	movff	(_main$2355+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2358))&0ffh
	clrf	((_main$2358+1))&0ffh
	
l6126:; BSR set to: 1

		movlw	low(STR_4)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_4)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@i),0+(?_printf+02h)
	movff	(main@i+1),1+(?_printf+02h)
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
	movff	postinc2,0+(?_printf+04h)
	movff	postdec2,1+(?_printf+04h)
	movff	(_main$2356),0+(?_printf+06h)
	movff	(_main$2356+1),1+(?_printf+06h)
	movff	(_main$2357),0+(?_printf+08h)
	movff	(_main$2357+1),1+(?_printf+08h)
	movff	(_main$2358),0+(?_printf+0Ah)
	movff	(_main$2358+1),1+(?_printf+0Ah)
	call	_printf	;wreg free
	line	427
	
l6128:
	movlb	1	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l6130:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u7541
	movlb	1	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u7540
	movlw	2
	movlb	1	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u7541
	goto	u7540

u7541:
	goto	l6112
u7540:
	goto	l6394
	
l283:; BSR set to: 1

	line	431
	goto	l6394
	line	432
	
l284:; BSR set to: 0

	line	433
	bsf	((c:3969)),c,5	;volatile
	line	434
	bcf	((c:3968)),c,4	;volatile
	line	435
	bcf	((c:3969)),c,0	;volatile
	line	436
	
l6132:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7551
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7550
	movlw	209
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	7
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7551
	goto	u7550

u7551:
	goto	l6394
u7550:
	
l6134:; BSR set to: 0

	movlw	high(02h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(02h)
	movwf	((_status))&0ffh
	goto	l6394
	
l285:; BSR set to: 1

	line	437
	goto	l6394
	line	438
	
l286:; BSR set to: 1

	line	439
	
l6136:
	call	_EnhancedRead	;wreg free
	line	445
	
l6138:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7561
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7560
	movlw	233
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7561
	goto	u7560

u7561:
	goto	l6166
u7560:
	line	446
	
l6140:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	447
	movlw	high(0)
	movlb	1	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l6142:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u7571
	movlb	1	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u7570
	movlw	2
	movlb	1	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u7571
	goto	u7570

u7571:
	goto	l6146
u7570:
	goto	l6166
	
l6144:; BSR set to: 1

	goto	l6166
	
l288:; BSR set to: 1

	line	448
	
l6146:; BSR set to: 1

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i)
	movff	postdec2,(main@i+1)
	line	449
	
l6148:; BSR set to: 1

	movff	(main@i),??_main+0+0
	movff	(main@i+1),??_main+0+0+1
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	swapf	(??_main+0+1)&0ffh
	movlw	0f0h
	andwf	(??_main+0+1)&0ffh
	movf	(??_main+0+0)&0ffh,w
	andlw	0fh
	iorwf	(??_main+0+1)&0ffh
	movlw	0f0h
	andwf	(??_main+0+0)&0ffh
	movff	??_main+0+0,(c:___wmul@multiplier)
	movff	??_main+0+1,(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2353)
	movff	1+?___wmul,(_main$2353+1)
	
l6150:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2354)
	movff	1+?___wmul,(_main$2354+1)
	
l6152:
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
	movff	??_main+0+0,(c:___wmul@multiplier)
	movff	??_main+0+1,(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2355)
	movff	1+?___wmul,(_main$2355+1)
	
l6154:
	movff	(_main$2353),(c:___wmul@multiplier)
	movff	(_main$2353+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2356))&0ffh
	clrf	((_main$2356+1))&0ffh
	
l6156:; BSR set to: 1

	movff	(_main$2354),(c:___wmul@multiplier)
	movff	(_main$2354+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2357))&0ffh
	clrf	((_main$2357+1))&0ffh
	
l6158:; BSR set to: 1

	movff	(_main$2355),(c:___wmul@multiplier)
	movff	(_main$2355+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2358))&0ffh
	clrf	((_main$2358+1))&0ffh
	
l6160:; BSR set to: 1

		movlw	low(STR_5)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_5)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@i),0+(?_printf+02h)
	movff	(main@i+1),1+(?_printf+02h)
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
	movff	postinc2,0+(?_printf+04h)
	movff	postdec2,1+(?_printf+04h)
	movff	(_main$2356),0+(?_printf+06h)
	movff	(_main$2356+1),1+(?_printf+06h)
	movff	(_main$2357),0+(?_printf+08h)
	movff	(_main$2357+1),1+(?_printf+08h)
	movff	(_main$2358),0+(?_printf+0Ah)
	movff	(_main$2358+1),1+(?_printf+0Ah)
	call	_printf	;wreg free
	line	447
	
l6162:
	movlb	1	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l6164:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u7581
	movlb	1	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u7580
	movlw	2
	movlb	1	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u7581
	goto	u7580

u7581:
	goto	l6146
u7580:
	goto	l6166
	
l289:; BSR set to: 1

	goto	l6166
	line	451
	
l287:; BSR set to: 1

	line	454
	
l6166:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	
l6168:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u7591
	movlb	1	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u7590
	movlw	11
	movlb	1	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u7591
	goto	u7590

u7591:
	goto	l290
u7590:
	goto	l6184
	
l6170:; BSR set to: 1

	goto	l6184
	
l290:; BSR set to: 1

	line	457
	movff	(main@i),(main@j)
	movff	(main@i+1),(main@j+1)
	line	458
	
l6172:; BSR set to: 1

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_amax)
	addwf	fsr1l
	movlw	high(_amax)
	addwfc	fsr1h
		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc2,w
	subwfb	postinc1,w
	btfsc	status,0
	goto	u7601
	goto	u7600

u7601:
	goto	l6176
u7600:
	line	459
	
l6174:; BSR set to: 1

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_amax)
	addwf	fsr1l
	movlw	high(_amax)
	addwfc	fsr1h
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	goto	l6176
	line	460
	
l292:; BSR set to: 1

	line	461
	
l6176:; BSR set to: 1

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_V)
	addwf	fsr1l
	movlw	high(_V)
	addwfc	fsr1h
		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc2,w
	subwfb	postinc1,w
	btfsc	status,0
	goto	u7611
	goto	u7610

u7611:
	goto	l6180
u7610:
	line	462
	
l6178:; BSR set to: 1

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	1	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_amin)
	addwf	fsr1l
	movlw	high(_amin)
	addwfc	fsr1h
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	goto	l6180
	line	463
	
l293:; BSR set to: 1

	line	454
	
l6180:; BSR set to: 1

	movlb	1	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l6182:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u7621
	movlb	1	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u7620
	movlw	11
	movlb	1	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u7621
	goto	u7620

u7621:
	goto	l290
u7620:
	goto	l6184
	
l291:; BSR set to: 1

	line	466
	
l6184:; BSR set to: 1

	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
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
	goto	u7630
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u7631
	movlw	201
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u7631
	goto	u7630

u7631:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7648
u7630:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7648:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	467
	
l6186:; BSR set to: 0

	movlw	low(0)
	movlb	1	; () banked
	movwf	((_main$472))&0ffh
	
l6188:; BSR set to: 1

	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
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
	goto	u7651
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u7650
	movlw	101
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u7651
	goto	u7650

u7651:
	goto	l6194
u7650:
	
l6190:
	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
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
	goto	u7660
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u7661
	movlw	200
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u7661
	goto	u7660

u7661:
	goto	l6194
u7660:
	
l6192:
	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_main$472))&0ffh
	goto	l6194
	
l295:; BSR set to: 1

	
l6194:
	movlb	1	; () banked
	btfsc	(_main$472)&0ffh,0
	bra	u7675
	bcf	((c:3969)),c,5	;volatile
	bra	u7676
	u7675:
	bsf	((c:3969)),c,5	;volatile
	u7676:

	line	468
	
l6196:
	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
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
	goto	u7681
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u7680
	movlw	100
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u7681
	goto	u7680

u7681:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7698
u7680:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7698:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	470
	
l6198:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u7701
	goto	u7700
u7701:
	goto	l6206
u7700:
	line	471
	
l6200:; BSR set to: 0

		movlw	low(STR_6)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_6)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	472
	
l6202:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	473
	
l6204:; BSR set to: 0

	movlw	high(01h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(01h)
	movwf	((_status))&0ffh
	goto	l6206
	line	474
	
l296:; BSR set to: 1

	line	475
	
l6206:
	btfsc	((c:3971)),c,4	;volatile
	goto	u7711
	goto	u7710
u7711:
	goto	l6394
u7710:
	line	476
	
l6208:
		movlw	low(STR_7)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_7)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	477
	
l6210:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	478
	
l6212:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	479
	
l6214:; BSR set to: 0

	movlw	high(03h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(03h)
	movwf	((_status))&0ffh
	line	481
	
l6216:; BSR set to: 1

	movlw	high(0)
	movlb	1	; () banked
	movwf	((main@i_475+1))&0ffh
	movlw	low(0)
	movwf	((main@i_475))&0ffh
	
l6218:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@i_475+1))&0ffh,7
	goto	u7721
	movlb	1	; () banked
	movf	((main@i_475+1))&0ffh,w
	bnz	u7720
	movlw	5
	movlb	1	; () banked
	subwf	 ((main@i_475))&0ffh,w
	btfss	status,0
	goto	u7721
	goto	u7720

u7721:
	goto	l6222
u7720:
	goto	l6394
	
l6220:; BSR set to: 1

	goto	l6394
	
l298:; BSR set to: 1

	line	482
	
l6222:; BSR set to: 1

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i_475))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@i_475+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(main@j_476)
	movff	postdec2,(main@j_476+1)
	line	483
	
l6224:; BSR set to: 1

		movlw	low(STR_8)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_8)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@j_476),0+(?_printf+02h)
	movff	(main@j_476+1),1+(?_printf+02h)
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j_476))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j_476+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,0+(?_printf+04h)
	movff	postdec2,1+(?_printf+04h)
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j_476))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j_476+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,0+(?_printf+06h)
	movff	postdec2,1+(?_printf+06h)
	call	_printf	;wreg free
	line	481
	
l6226:
	movlb	1	; () banked
	infsnz	((main@i_475))&0ffh
	incf	((main@i_475+1))&0ffh
	
l6228:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@i_475+1))&0ffh,7
	goto	u7731
	movlb	1	; () banked
	movf	((main@i_475+1))&0ffh,w
	bnz	u7730
	movlw	5
	movlb	1	; () banked
	subwf	 ((main@i_475))&0ffh,w
	btfss	status,0
	goto	u7731
	goto	u7730

u7731:
	goto	l6222
u7730:
	goto	l6394
	
l299:; BSR set to: 1

	goto	l6394
	line	485
	
l297:; BSR set to: 1

	line	486
	goto	l6394
	line	487
	
l300:; BSR set to: 1

	line	488
	
l6230:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u7741
	goto	u7740

u7741:
	goto	l6234
u7740:
	line	489
	
l6232:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(01h)
	movwf	((_rf))&0ffh
	line	490
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(01h)
	movwf	((_gf))&0ffh
	line	491
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	goto	l6234
	line	492
	
l301:; BSR set to: 0

	line	493
	
l6234:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	494
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_main$478))&0ffh
	
l6236:; BSR set to: 1

	bcf	status,0
	movlb	0	; () banked
	rlcf	(0+(_sd+02h))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	(1+(_sd+02h))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movlw	1
	btfsc	plusw2,7
	goto	u7751
	movlw	45
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7751
	goto	u7750

u7751:
	goto	l6254
u7750:
	
l6238:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7760
	movf	((c:_line+1)),c,w
	bnz	u7761
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7761
	goto	u7760

u7761:
	goto	l4772
u7760:
	
l6240:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$472)
	movff	??_main+0+1,(_main$472+1)
	goto	l6242
	
l4772:; BSR set to: 0

	movff	(c:_line),(_main$472)
	movff	(c:_line+1),(_main$472+1)
	goto	l6242
	
l4774:; BSR set to: 0

	
l6242:; BSR set to: 0

	movlb	1	; () banked
	btfsc	((_main$472+1))&0ffh,7
	goto	u7770
	movlb	1	; () banked
	movf	((_main$472+1))&0ffh,w
	bnz	u7771
	movlw	150
	movlb	1	; () banked
	subwf	 ((_main$472))&0ffh,w
	btfsc	status,0
	goto	u7771
	goto	u7770

u7771:
	goto	l6254
u7770:
	
l6244:; BSR set to: 1

	bcf	status,0
	movlb	0	; () banked
	rlcf	((_sd))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((_sd+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movlw	1
	btfsc	plusw2,7
	goto	u7781
	movlw	45
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7781
	goto	u7780

u7781:
	goto	l6254
u7780:
	
l6246:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7790
	movf	((c:_line+1)),c,w
	bnz	u7791
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7791
	goto	u7790

u7791:
	goto	l4776
u7790:
	
l6248:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$478)
	movff	??_main+0+1,(_main$478+1)
	goto	l6250
	
l4776:; BSR set to: 0

	movff	(c:_line),(_main$478)
	movff	(c:_line+1),(_main$478+1)
	goto	l6250
	
l4778:; BSR set to: 0

	
l6250:; BSR set to: 0

	movlb	1	; () banked
	btfsc	((_main$478+1))&0ffh,7
	goto	u7800
	movlb	1	; () banked
	movf	((_main$478+1))&0ffh,w
	bnz	u7801
	movlw	150
	movlb	1	; () banked
	subwf	 ((_main$478))&0ffh,w
	btfsc	status,0
	goto	u7801
	goto	u7800

u7801:
	goto	l6254
u7800:
	
l6252:; BSR set to: 1

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_main$478))&0ffh
	goto	l6254
	
l303:; BSR set to: 1

	
l6254:
	movlb	1	; () banked
	btfsc	(_main$478)&0ffh,0
	bra	u7815
	bcf	((c:3968)),c,4	;volatile
	bra	u7816
	u7815:
	bsf	((c:3968)),c,4	;volatile
	u7816:

	line	495
	
l6256:
	bcf	((c:3969)),c,5	;volatile
	line	498
	
l6258:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	500
	
l6260:
	call	_EnhancedRead	;wreg free
	line	501
	
l6262:
	call	_Line	;wreg free
	line	502
	
l6264:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7821
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7820
	movlw	245
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	1
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7821
	goto	u7820

u7821:
	goto	l6294
u7820:
	line	503
	
l6266:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	509
	movlw	high(0)
	movlb	1	; () banked
	movwf	((main@j_481+1))&0ffh
	movlw	low(0)
	movwf	((main@j_481))&0ffh
	
l6268:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@j_481+1))&0ffh,7
	goto	u7831
	movlb	1	; () banked
	movf	((main@j_481+1))&0ffh,w
	bnz	u7830
	movlw	2
	movlb	1	; () banked
	subwf	 ((main@j_481))&0ffh,w
	btfss	status,0
	goto	u7831
	goto	u7830

u7831:
	goto	l6272
u7830:
	goto	l6292
	
l6270:; BSR set to: 1

	goto	l6292
	
l305:; BSR set to: 1

	line	510
	
l6272:; BSR set to: 1

	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@j_481))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@j_481+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i_480)
	movff	postdec2,(main@i_480+1)
	line	511
	
l6274:; BSR set to: 1

	movff	(main@i_480),(c:___wmul@multiplier)
	movff	(main@i_480+1),(c:___wmul@multiplier+1)
	movff	(main@i_480),(c:___wmul@multiplicand)
	movff	(main@i_480+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2353)
	movff	1+?___wmul,(_main$2353+1)
	
l6276:
	movff	(main@i_480),(c:___wmul@multiplier)
	movff	(main@i_480+1),(c:___wmul@multiplier+1)
	movff	(main@i_480),(c:___wmul@multiplicand)
	movff	(main@i_480+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2354)
	movff	1+?___wmul,(_main$2354+1)
	
l6278:
	movff	(main@i_480),(c:___wmul@multiplier)
	movff	(main@i_480+1),(c:___wmul@multiplier+1)
	movff	(main@i_480),(c:___wmul@multiplicand)
	movff	(main@i_480+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2355)
	movff	1+?___wmul,(_main$2355+1)
	
l6280:
	movff	(_main$2353),(c:___wmul@multiplier)
	movff	(_main$2353+1),(c:___wmul@multiplier+1)
	movlw	high(0384h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0384h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2356))&0ffh
	clrf	((_main$2356+1))&0ffh
	
l6282:; BSR set to: 1

	movff	(_main$2354),(c:___wmul@multiplier)
	movff	(_main$2354+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2357))&0ffh
	clrf	((_main$2357+1))&0ffh
	
l6284:; BSR set to: 1

	movff	(_main$2355),(c:___wmul@multiplier)
	movff	(_main$2355+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	1	; () banked
	movwf	((_main$2358))&0ffh
	clrf	((_main$2358+1))&0ffh
	
l6286:; BSR set to: 1

		movlw	low(STR_9)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_9)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@i_480),0+(?_printf+02h)
	movff	(main@i_480+1),1+(?_printf+02h)
	bcf	status,0
	movlb	1	; () banked
	rlcf	((main@i_480))&0ffh,w
	movwf	fsr2l
	movlb	1	; () banked
	rlcf	((main@i_480+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	postinc2,0+(?_printf+04h)
	movff	postdec2,1+(?_printf+04h)
	movff	(_main$2356),0+(?_printf+06h)
	movff	(_main$2356+1),1+(?_printf+06h)
	movff	(_main$2357),0+(?_printf+08h)
	movff	(_main$2357+1),1+(?_printf+08h)
	movff	(_main$2358),0+(?_printf+0Ah)
	movff	(_main$2358+1),1+(?_printf+0Ah)
	call	_printf	;wreg free
	line	509
	
l6288:
	movlb	1	; () banked
	infsnz	((main@j_481))&0ffh
	incf	((main@j_481+1))&0ffh
	
l6290:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@j_481+1))&0ffh,7
	goto	u7841
	movlb	1	; () banked
	movf	((main@j_481+1))&0ffh,w
	bnz	u7840
	movlw	2
	movlb	1	; () banked
	subwf	 ((main@j_481))&0ffh,w
	btfss	status,0
	goto	u7841
	goto	u7840

u7841:
	goto	l6272
u7840:
	goto	l6292
	
l306:; BSR set to: 1

	line	513
	
l6292:; BSR set to: 1

		movlw	low(STR_10)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_10)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(c:_line),0+(?_printf+02h)
	movff	(c:_line+1),1+(?_printf+02h)
	call	_printf	;wreg free
	goto	l6294
	line	514
	
l304:
	line	515
	
l6294:
	btfsc	((c:3971)),c,5	;volatile
	goto	u7851
	goto	u7850
u7851:
	goto	l6298
u7850:
	line	516
	
l6296:
	movlw	high(05h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(05h)
	movwf	((_status))&0ffh
	goto	l6298
	line	517
	
l307:; BSR set to: 1

	line	518
	
l6298:
	btfsc	((c:3971)),c,6	;volatile
	goto	u7861
	goto	u7860
u7861:
	goto	l6308
u7860:
	
l6300:
	movlb	0	; () banked
	movf	((_rf))&0ffh,w
	movlb	0	; () banked
iorwf	((_rf+1))&0ffh,w
	btfss	status,2
	goto	u7871
	goto	u7870

u7871:
	goto	l6308
u7870:
	line	519
	
l6302:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(01h)
	movwf	((_rf))&0ffh
	line	520
	
l6304:; BSR set to: 0

	movff	(_test_kp),(___ftsub@f1)
	movff	(_test_kp+1),(___ftsub@f1+1)
	movff	(_test_kp+2),(___ftsub@f1+2)
	movlw	low(float24(0.010000000000000000))
	movlb	0	; () banked
	movwf	((___ftsub@f2))&0ffh
	movlw	high(float24(0.010000000000000000))
	movlb	0	; () banked
	movwf	((___ftsub@f2+1))&0ffh
	movlw	low highword(float24(0.010000000000000000))
	movlb	0	; () banked
	movwf	((___ftsub@f2+2))&0ffh

	call	___ftsub	;wreg free
	movff	0+?___ftsub,(_test_kp)
	movff	1+?___ftsub,(_test_kp+1)
	movff	2+?___ftsub,(_test_kp+2)
	line	521
	
l6306:
		movlw	low(STR_11)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_11)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(_test_kp),0+(?_printf+02h)
	movff	(_test_kp+1),1+(?_printf+02h)
	movff	(_test_kp+2),2+(?_printf+02h)
	call	_printf	;wreg free
	goto	l6308
	line	522
	
l308:
	line	523
	
l6308:
	btfsc	((c:3971)),c,4	;volatile
	goto	u7881
	goto	u7880
u7881:
	goto	l6318
u7880:
	
l6310:
	movlb	0	; () banked
	movf	((_gf))&0ffh,w
	movlb	0	; () banked
iorwf	((_gf+1))&0ffh,w
	btfss	status,2
	goto	u7891
	goto	u7890

u7891:
	goto	l6318
u7890:
	line	524
	
l6312:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(01h)
	movwf	((_gf))&0ffh
	line	525
	
l6314:; BSR set to: 0

	movff	(_test_kp),(c:___ftadd@f1)
	movff	(_test_kp+1),(c:___ftadd@f1+1)
	movff	(_test_kp+2),(c:___ftadd@f1+2)
	movlw	low(float24(0.010000000000000000))
	movwf	((c:___ftadd@f2)),c
	movlw	high(float24(0.010000000000000000))
	movwf	((c:___ftadd@f2+1)),c
	movlw	low highword(float24(0.010000000000000000))
	movwf	((c:___ftadd@f2+2)),c

	call	___ftadd	;wreg free
	movff	0+?___ftadd,(_test_kp)
	movff	1+?___ftadd,(_test_kp+1)
	movff	2+?___ftadd,(_test_kp+2)
	line	526
	
l6316:
		movlw	low(STR_12)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_12)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(_test_kp),0+(?_printf+02h)
	movff	(_test_kp+1),1+(?_printf+02h)
	movff	(_test_kp+2),2+(?_printf+02h)
	call	_printf	;wreg free
	goto	l6318
	line	527
	
l309:
	line	528
	
l6318:
	btfss	((c:3971)),c,6	;volatile
	goto	u7901
	goto	u7900
u7901:
	goto	l6322
u7900:
	
l6320:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(0)
	movwf	((_rf))&0ffh
	goto	l6322
	
l310:; BSR set to: 0

	line	529
	
l6322:
	btfss	((c:3971)),c,4	;volatile
	goto	u7911
	goto	u7910
u7911:
	goto	l6394
u7910:
	
l6324:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(0)
	movwf	((_gf))&0ffh
	goto	l6394
	
l311:; BSR set to: 0

	line	530
	goto	l6394
	line	531
	
l312:; BSR set to: 0

	line	532
	bsf	((c:3969)),c,0	;volatile
	line	533
	bsf	((c:3968)),c,4	;volatile
	line	534
	bsf	((c:3969)),c,5	;volatile
	line	535
	btfss	((c:3971)),c,5	;volatile
	goto	u7921
	goto	u7920
u7921:
	goto	l6394
u7920:
	line	536
	
l6326:; BSR set to: 0

	movlw	high(06h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(06h)
	movwf	((_status))&0ffh
	line	537
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	538
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME2))&0ffh
	movlw	high(0)
	movwf	((_TIME2+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME2+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME2+3))&0ffh
	line	539
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	goto	l6394
	line	540
	
l313:; BSR set to: 0

	line	541
	goto	l6394
	line	542
	
l314:; BSR set to: 0

	line	573
	btfsc	((c:3971)),c,6	;volatile
	goto	u7931
	goto	u7930
u7931:
	goto	l6330
u7930:
	line	574
	
l6328:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	575
	movlw	high(03h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(03h)
	movwf	((_status))&0ffh
	goto	l6330
	line	576
	
l315:; BSR set to: 1

	line	579
	
l6330:
	bsf	((c:3969)),c,0	;volatile
	line	581
	
l6332:
	bcf	((c:3969)),c,5	;volatile
	line	583
	
l6334:
	call	_EnhancedRead	;wreg free
	line	584
	
l6336:
	call	_Line	;wreg free
	line	586
	
l6338:
	movff	(_last),??_main+0+0
	movff	(_last+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movf	((c:_line)),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_der))&0ffh
	movf	((c:_line+1)),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((_der))&0ffh
	line	588
	
l6340:; BSR set to: 0

	movff	(_test_kd),(c:___ftmul@f2)
	movff	(_test_kd+1),(c:___ftmul@f2+1)
	movff	(_test_kd+2),(c:___ftmul@f2+2)
	movff	(_der),(c:___awtoft@c)
	movff	(_der+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	movff	(_test_kp),(c:___ftmul@f2)
	movff	(_test_kp+1),(c:___ftmul@f2+1)
	movff	(_test_kp+2),(c:___ftmul@f2+2)
	movff	(c:_line),(c:___awtoft@c)
	movff	(c:_line+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f1)
	movff	1+?___ftmul,(c:___ftadd@f1+1)
	movff	2+?___ftmul,(c:___ftadd@f1+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(___fttol@f1)
	movff	1+?___ftadd,(___fttol@f1+1)
	movff	2+?___ftadd,(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(_formula)
	movff	1+?___fttol,(_formula+1)
	line	590
	
l6342:
	movlb	0	; () banked
	btfsc	((_formula+1))&0ffh,7
	goto	u7941
	movlb	0	; () banked
	movf	((_formula+1))&0ffh,w
	bnz	u7940
	movlb	0	; () banked
	decf	((_formula))&0ffh,w
	btfss	status,0
	goto	u7941
	goto	u7940

u7941:
	goto	l6346
u7940:
	line	591
	
l6344:; BSR set to: 0

	movff	(_formula),??_main+0+0
	movff	(_formula+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movlb	0	; () banked
	movf	((_LOW_SPEED))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movwf	((c:MotorsSpeed@A)),c
	movlb	0	; () banked
	movf	((_LOW_SPEED+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movwf	1+((c:MotorsSpeed@A)),c
	movff	(_LOW_SPEED),(c:MotorsSpeed@B)
	movff	(_LOW_SPEED+1),(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	592
	goto	l6348
	
l316:
	line	593
	
l6346:
	movff	(_LOW_SPEED),(c:MotorsSpeed@A)
	movff	(_LOW_SPEED+1),(c:MotorsSpeed@A+1)
	movlb	0	; () banked
	movf	((_formula))&0ffh,w
	movlb	0	; () banked
	addwf	((_LOW_SPEED))&0ffh,w
	movwf	((c:MotorsSpeed@B)),c
	movlb	0	; () banked
	movf	((_formula+1))&0ffh,w
	movlb	0	; () banked
	addwfc	((_LOW_SPEED+1))&0ffh,w
	movwf	1+((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	goto	l6348
	line	594
	
l317:
	line	595
	
l6348:
	movlb	0	; () banked
	movf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7951
	goto	u7950

u7951:
	goto	l6372
u7950:
	line	596
	
l6350:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	(0+(_sd+02h))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	(1+(_sd+02h))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movlw	1
	btfsc	plusw2,7
	goto	u7961
	movlw	45
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7961
	goto	u7960

u7961:
	goto	l6358
u7960:
	
l6352:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7970
	movf	((c:_line+1)),c,w
	bnz	u7971
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7971
	goto	u7970

u7971:
	goto	l325
u7970:
	
l6354:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$486)
	movff	??_main+0+1,(_main$486+1)
	goto	l6356
	
l325:; BSR set to: 0

	movff	(c:_line),(_main$486)
	movff	(c:_line+1),(_main$486+1)
	goto	l6356
	
l327:; BSR set to: 0

	
l6356:; BSR set to: 0

	movlb	1	; () banked
	btfsc	((_main$486+1))&0ffh,7
	goto	u7981
	movlb	1	; () banked
	movf	((_main$486+1))&0ffh,w
	bnz	u7980
	movlw	150
	movlb	1	; () banked
	subwf	 ((_main$486))&0ffh,w
	btfss	status,0
	goto	u7981
	goto	u7980

u7981:
	goto	l6366
u7980:
	goto	l6358
	
l323:; BSR set to: 1

	
l6358:
	bcf	status,0
	movlb	0	; () banked
	rlcf	((_sd))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((_sd+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movlw	1
	btfsc	plusw2,7
	goto	u7991
	movlw	45
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7991
	goto	u7990

u7991:
	goto	l6372
u7990:
	
l6360:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u8000
	movf	((c:_line+1)),c,w
	bnz	u8001
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u8001
	goto	u8000

u8001:
	goto	l329
u8000:
	
l6362:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$487)
	movff	??_main+0+1,(_main$487+1)
	goto	l6364
	
l329:; BSR set to: 0

	movff	(c:_line),(_main$487)
	movff	(c:_line+1),(_main$487+1)
	goto	l6364
	
l331:; BSR set to: 0

	
l6364:; BSR set to: 0

	movlb	1	; () banked
	btfsc	((_main$487+1))&0ffh,7
	goto	u8010
	movlb	1	; () banked
	movf	((_main$487+1))&0ffh,w
	bnz	u8011
	movlw	150
	movlb	1	; () banked
	subwf	 ((_main$487))&0ffh,w
	btfsc	status,0
	goto	u8011
	goto	u8010

u8011:
	goto	l6372
u8010:
	goto	l6366
	
l321:; BSR set to: 1

	line	597
	
l6366:; BSR set to: 1

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(01h)
	movwf	((_flag_line))&0ffh
	line	598
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	599
	
l6368:; BSR set to: 0

	btfss	((c:3968)),c,4	;volatile
	goto	u8021
	goto	u8020
u8021:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u8038
u8020:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u8038:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	600
	
l6370:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	goto	l6372
	line	601
	
l319:; BSR set to: 0

	goto	l6372
	line	602
	
l318:; BSR set to: 0

	line	603
	
l6372:
	movlb	0	; () banked
		decf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u8041
	goto	u8040

u8041:
	goto	l6380
u8040:
	line	604
	
l6374:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u8051
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u8050
	movlw	105
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	16
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u8051
	goto	u8050

u8051:
	goto	l6380
u8050:
	line	605
	
l6376:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	606
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	line	607
	
l6378:; BSR set to: 0

		movlw	low(STR_13)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_13)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(_rcount),0+(?_printf+02h)
	movff	(_rcount+1),1+(?_printf+02h)
	call	_printf	;wreg free
	goto	l6380
	line	608
	
l333:
	goto	l6380
	line	609
	
l332:
	line	610
	
l6380:
	movlb	0	; () banked
		decf	((_rcount))&0ffh,w
	movlb	0	; () banked
iorwf	((_rcount+1))&0ffh,w
	btfss	status,2
	goto	u8061
	goto	u8060

u8061:
	goto	l6384
u8060:
	line	611
	
l6382:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	612
	movlw	high(03h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(03h)
	movwf	((_status))&0ffh
	goto	l6384
	line	613
	
l334:; BSR set to: 1

	line	614
	
l6384:
	movlb	0	; () banked
	btfsc	((_TIME2+3))&0ffh,7
	goto	u8071
	movlb	0	; () banked
	movf	((_TIME2+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME2+2))&0ffh,w
	bnz	u8070
	movlw	233
	movlb	0	; () banked
	subwf	 ((_TIME2))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((_TIME2+1))&0ffh,w
	btfss	status,0
	goto	u8071
	goto	u8070

u8071:
	goto	l6390
u8070:
	line	615
	
l6386:; BSR set to: 0

		movlw	low(STR_14)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_14)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(c:_line),0+(?_printf+02h)
	movff	(c:_line+1),1+(?_printf+02h)
	call	_printf	;wreg free
	line	616
	
l6388:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME2))&0ffh
	movlw	high(0)
	movwf	((_TIME2+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME2+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME2+3))&0ffh
	goto	l6390
	line	617
	
l335:; BSR set to: 0

	line	618
	
l6390:; BSR set to: 0

	movff	(c:_line),(_last)
	movff	(c:_line+1),(_last+1)
	line	619
	goto	l6394
	line	620
	
l6392:; BSR set to: 0

	goto	l6394
	line	371
	
l253:; BSR set to: 0

	
l6394:
	movff	(_status),??_main+0+0
	movff	(_status+1),??_main+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movlb	0	; () banked
	movf ??_main+0+1&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l6432
	goto	l6394
	
l6432:; BSR set to: 0

; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
;	Chosen strategy is simple_byte

	movlb	0	; () banked
	movf ??_main+0+0&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l6024
	xorlw	1^0	; case 1
	skipnz
	goto	l284
	xorlw	2^1	; case 2
	skipnz
	goto	l6082
	xorlw	3^2	; case 3
	skipnz
	goto	l6230
	xorlw	4^3	; case 4
	skipnz
	goto	l6136
	xorlw	5^4	; case 5
	skipnz
	goto	l312
	xorlw	6^5	; case 6
	skipnz
	goto	l314
	goto	l6394

	line	620
	
l278:; BSR set to: 0

	goto	l6394
	line	621
	
l336:; BSR set to: 0

	line	366
	goto	l6394
	
l337:; BSR set to: 0

	line	622
	
l338:; BSR set to: 0

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
;;  f               2   21[BANK0 ] PTR const unsigned char 
;;		 -> STR_14(61), STR_13(40), STR_12(34), STR_11(34), 
;;		 -> STR_10(61), STR_9(60), STR_8(53), STR_7(39), 
;;		 -> STR_6(44), STR_5(60), STR_4(60), STR_3(47), 
;;		 -> STR_2(37), STR_1(37), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4   52[BANK0 ] struct .
;;  val             4   46[BANK0 ] unsigned long 
;;  fval            3   60[BANK0 ] unsigned long 
;;  cp              3    0        PTR const unsigned char 
;;  exp             2   58[BANK0 ] int 
;;  width           2   56[BANK0 ] int 
;;  flag            2   50[BANK0 ] unsigned short 
;;  prec            2   44[BANK0 ] int 
;;  ap              2   42[BANK0 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  len             2    0        unsigned int 
;;  c               1   63[BANK0 ] char 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   21[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0      12       0       0       0       0       0       0       0
;;      Locals:         0      25       0       0       0       0       0       0       0
;;      Temps:          0       6       0       0       0       0       0       0       0
;;      Totals:         0      43       0       0       0       0       0       0       0
;;Total ram usage:       43 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awdiv
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		___lldiv
;;		___llmod
;;		___lltoft
;;		___wmul
;;		__div_to_l_
;;		__tdiv_to_l_
;;		_fround
;;		_isdigit
;;		_putch
;;		_scale
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
	
_printf:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	533
	
l5666:
		movlw	low(?_printf+02h)
	movlb	0	; () banked
	movwf	((printf@ap))&0ffh
	movlw	high(?_printf+02h)
	movlb	0	; () banked
	movwf	((printf@ap+1))&0ffh

	line	536
	goto	l5928
	
l528:; BSR set to: 0

	line	538
	
l5668:; BSR set to: 0

		movlw	37
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfsc	status,2
	goto	u6681
	goto	u6680

u6681:
	goto	l5672
u6680:
	line	541
	
l5670:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_putch
	line	542
	goto	l5928
	line	543
	
l529:
	line	546
	
l5672:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	line	548
	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@flag+1))&0ffh
	movlw	low(0)
	movwf	((printf@flag))&0ffh
	goto	l5678
	line	550
	
l530:; BSR set to: 0

	line	551
	goto	l5678
	line	579
	
l532:; BSR set to: 0

	line	580
	
l5674:
	movlb	0	; () banked
	bsf	(0+(2/8)+(printf@flag))&0ffh,(2)&7
	line	581
	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	line	582
	goto	l5678
	line	584
	
l5676:; BSR set to: 0

	goto	l5680
	line	551
	
l531:; BSR set to: 0

	
l5678:
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 48 to 48
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	48^0	; case 48
	skipnz
	goto	l5674
	goto	l5680

	line	584
	
l534:
	line	585
	goto	l5680
	line	586
	
l533:
	goto	l5678
	
l535:
	line	597
	
l5680:
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_isdigit
	btfss	status,0
	goto	u6691
	goto	u6690
u6691:
	goto	l5698
u6690:
	line	598
	
l5682:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l5684
	line	599
	
l537:; BSR set to: 0

	line	600
	
l5684:
	movff	(printf@width),(c:___wmul@multiplier)
	movff	(printf@width+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(printf@width)
	movff	1+?___wmul,(printf@width+1)
	line	601
	
l5686:
	movlw	low(-48)
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	high(-48)
	movlb	0	; () banked
	movwf	1+(??_printf+0+0)&0ffh
	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	movlb	0	; () banked
	movwf	(??_printf+2+0)&0ffh
	clrf	(??_printf+2+0+1)&0ffh

	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_printf+2+0)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+1)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_printf+2+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+2+0)&0ffh,w
	movlb	0	; () banked
	addwf	((printf@width))&0ffh
	movlb	0	; () banked
	movf	(??_printf+2+1)&0ffh,w
	movlb	0	; () banked
	addwfc	((printf@width+1))&0ffh

	
l5688:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	line	602
	
l5690:; BSR set to: 0

	movff	(printf@f),tblptrl
	movff	(printf@f+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_isdigit
	btfsc	status,0
	goto	u6701
	goto	u6700
u6701:
	goto	l5684
u6700:
	goto	l5698
	
l538:
	goto	l5698
	line	608
	
l536:
	line	635
	goto	l5698
	line	637
	
l540:
	line	638
	goto	l619
	line	662
	
l542:
	line	663
	
l5692:
	movlb	0	; () banked
	bsf	(0+(10/8)+(printf@flag))&0ffh,(10)&7
	line	664
	goto	l5700
	line	697
	
l544:; BSR set to: 0

	goto	l5700
	line	698
	
l545:; BSR set to: 0

	line	699
	goto	l5700
	line	802
	
l546:; BSR set to: 0

	line	813
	goto	l5928
	line	817
	
l547:; BSR set to: 0

	line	818
	
l5694:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(6/8)+(printf@flag))&0ffh,(6)&7
	line	819
	goto	l5700
	line	822
	
l5696:; BSR set to: 0

	goto	l5700
	line	635
	
l539:; BSR set to: 0

	
l5698:
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
	
	movff	tablat,(printf@c)
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l619
	xorlw	100^0	; case 100
	skipnz
	goto	l5700
	xorlw	102^100	; case 102
	skipnz
	goto	l5692
	xorlw	105^102	; case 105
	skipnz
	goto	l5700
	xorlw	117^105	; case 117
	skipnz
	goto	l5694
	goto	l5928

	line	822
	
l543:; BSR set to: 0

	line	825
	
l5700:; BSR set to: 0

	movlw	high(0700h)
	movlb	0	; () banked
	andwf	((printf@flag+1))&0ffh,w

	btfsc	status,2
	goto	u6711
	goto	u6710
u6711:
	goto	l548
u6710:
	line	829
	
l5702:; BSR set to: 0

	movlw	high(06h)
	movlb	0	; () banked
	movwf	((printf@prec+1))&0ffh
	movlw	low(06h)
	movwf	((printf@prec))&0ffh
	line	830
	
l5704:; BSR set to: 0

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,(printf@fval)
	movff	postinc2,(printf@fval+1)
	movff	postdec2,(printf@fval+2)
	
l5706:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	line	831
	
l5708:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@fval+2))&0ffh,7
	goto	u6720
	goto	u6721

u6721:
	goto	l5714
u6720:
	line	832
	
l5710:; BSR set to: 0

	movff	(printf@fval),(c:___ftneg@f1)
	movff	(printf@fval+1),(c:___ftneg@f1+1)
	movff	(printf@fval+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(printf@fval)
	movff	1+?___ftneg,(printf@fval+1)
	movff	2+?___ftneg,(printf@fval+2)
	line	833
	
l5712:
	movlw	03h
	movlb	0	; () banked
	iorwf	((printf@flag))&0ffh
	goto	l5714
	line	834
	
l549:; BSR set to: 0

	line	835
	
l5714:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@exp+1))&0ffh
	movlw	low(0)
	movwf	((printf@exp))&0ffh
	line	836
	
l5716:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@fval))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@fval+1))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@fval+2))&0ffh,w
	btfsc	status,2
	goto	u6731
	goto	u6730

u6731:
	goto	l5742
u6730:
	line	837
	
l5718:; BSR set to: 0

	movlw	low(-126)
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	high(-126)
	movlb	0	; () banked
	movwf	1+(??_printf+0+0)&0ffh
	movff	0+(printf@fval),??_printf+2+0
	movff	1+(printf@fval),??_printf+2+0+1
	movff	2+(printf@fval),??_printf+2+0+2
	movff	3+(printf@fval),??_printf+2+0+3
	movlw	0Fh+1
	goto	u6740
u6745:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_printf+2+3)&0ffh
	rrcf	(??_printf+2+2)&0ffh
	rrcf	(??_printf+2+1)&0ffh
	rrcf	(??_printf+2+0)&0ffh
u6740:
	decfsz	wreg
	goto	u6745
	movlb	0	; () banked
	movf	(??_printf+2+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((printf@exp))&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(??_printf+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((printf@exp))&0ffh
	line	838
	
l5720:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	line	839
	
l5722:; BSR set to: 0

	movff	(printf@exp),(c:___wmul@multiplier)
	movff	(printf@exp+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(printf@exp)
	movff	1+?___wmul,(printf@exp+1)
	line	840
	
l5724:
	movff	(printf@exp),(c:___awdiv@dividend)
	movff	(printf@exp+1),(c:___awdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(printf@exp)
	movff	1+?___awdiv,(printf@exp+1)
	line	841
	
l5726:
	movlb	0	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u6750
	goto	u6751

u6751:
	goto	l5730
u6750:
	line	842
	
l5728:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l5730
	
l551:; BSR set to: 0

	line	846
	
l5730:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@exp))&0ffh,w
	sublw	0
	
	call	_scale
	movff	0+?_scale,(printf@tmpval)
	movff	1+?_scale,(printf@tmpval+1)
	movff	2+?_scale,(printf@tmpval+2)
	line	847
	
l5732:
	movff	(printf@tmpval),(c:___ftmul@f1)
	movff	(printf@tmpval+1),(c:___ftmul@f1+1)
	movff	(printf@tmpval+2),(c:___ftmul@f1+2)
	movff	(printf@fval),(c:___ftmul@f2)
	movff	(printf@fval+1),(c:___ftmul@f2+1)
	movff	(printf@fval+2),(c:___ftmul@f2+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(printf@tmpval)
	movff	1+?___ftmul,(printf@tmpval+1)
	movff	2+?___ftmul,(printf@tmpval+2)
	line	848
	
l5734:
	movff	(printf@tmpval),(c:___ftge@ff1)
	movff	(printf@tmpval+1),(c:___ftge@ff1+1)
	movff	(printf@tmpval+2),(c:___ftge@ff1+2)
	movlw	low(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(1.0000000000000000))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfsc	status,0
	goto	u6761
	goto	u6760
u6761:
	goto	l5738
u6760:
	line	849
	
l5736:
	movlb	0	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l5742
	line	850
	
l552:; BSR set to: 0

	
l5738:
	movff	(printf@tmpval),(c:___ftge@ff1)
	movff	(printf@tmpval+1),(c:___ftge@ff1+1)
	movff	(printf@tmpval+2),(c:___ftge@ff1+2)
	movlw	low(float24(10.000000000000000))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(10.000000000000000))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(10.000000000000000))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfss	status,0
	goto	u6771
	goto	u6770
u6771:
	goto	l5742
u6770:
	line	851
	
l5740:
	movlb	0	; () banked
	infsnz	((printf@exp))&0ffh
	incf	((printf@exp+1))&0ffh
	goto	l5742
	
l554:; BSR set to: 0

	goto	l5742
	line	852
	
l553:; BSR set to: 0

	goto	l5742
	
l550:; BSR set to: 0

	line	1112
	
l5742:
	movlb	0	; () banked
	btfsc	((printf@prec+1))&0ffh,7
	goto	u6780
	movlb	0	; () banked
	movf	((printf@prec+1))&0ffh,w
	bnz	u6781
	movlw	13
	movlb	0	; () banked
	subwf	 ((printf@prec))&0ffh,w
	btfsc	status,0
	goto	u6781
	goto	u6780

u6781:
	goto	l5746
u6780:
	line	1113
	
l5744:; BSR set to: 0

	movff	(printf@fval),(c:___ftadd@f1)
	movff	(printf@fval+1),(c:___ftadd@f1+1)
	movff	(printf@fval+2),(c:___ftadd@f1+2)
	movlb	0	; () banked
	movf	((printf@prec))&0ffh,w
	
	call	_fround
	movff	0+?_fround,(c:___ftadd@f2)
	movff	1+?_fround,(c:___ftadd@f2+1)
	movff	2+?_fround,(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(printf@fval)
	movff	1+?___ftadd,(printf@fval+1)
	movff	2+?___ftadd,(printf@fval+2)
	goto	l5746
	
l555:
	line	1116
	
l5746:
	movlb	0	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u6790
	movlb	0	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u6791
	movlw	10
	movlb	0	; () banked
	subwf	 ((printf@exp))&0ffh,w
	btfsc	status,0
	goto	u6791
	goto	u6790

u6791:
	goto	l5754
u6790:
	
l5748:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@fval))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@fval+1))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@fval+2))&0ffh,w
	btfsc	status,2
	goto	u6801
	goto	u6800

u6801:
	goto	l5768
u6800:
	
l5750:; BSR set to: 0

	movff	(printf@fval),(___fttol@f1)
	movff	(printf@fval+1),(___fttol@f1+1)
	movff	(printf@fval+2),(___fttol@f1+2)
	call	___fttol	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___fttol)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
iorwf	(1+?___fttol)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
iorwf	(2+?___fttol)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
iorwf	(3+?___fttol)&0ffh,w
	btfss	status,2
	goto	u6811
	goto	u6810

u6811:
	goto	l5768
u6810:
	
l5752:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u6821
	movlb	0	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u6820
	movlw	2
	movlb	0	; () banked
	subwf	 ((printf@exp))&0ffh,w
	btfss	status,0
	goto	u6821
	goto	u6820

u6821:
	goto	l5768
u6820:
	goto	l5754
	
l558:; BSR set to: 0

	line	1120
	
l5754:; BSR set to: 0

	movff	(printf@tmpval),(c:___ftge@ff1)
	movff	(printf@tmpval+1),(c:___ftge@ff1+1)
	movff	(printf@tmpval+2),(c:___ftge@ff1+2)
	movlw	low(float24(4.2949672960000003))
	movwf	((c:___ftge@ff2)),c
	movlw	high(float24(4.2949672960000003))
	movwf	((c:___ftge@ff2+1)),c
	movlw	low highword(float24(4.2949672960000003))
	movwf	((c:___ftge@ff2+2)),c

	call	___ftge	;wreg free
	btfsc	status,0
	goto	u6831
	goto	u6830
u6831:
	goto	l5758
u6830:
	line	1121
	
l5756:
	movlb	0	; () banked
	movlw	low(-9)
	addwf	((printf@exp))&0ffh
	movlw	high(-9)
	addwfc	((printf@exp+1))&0ffh
	line	1122
	goto	l5760
	
l559:; BSR set to: 0

	line	1123
	
l5758:
	movlb	0	; () banked
	movlw	low(-8)
	addwf	((printf@exp))&0ffh
	movlw	high(-8)
	addwfc	((printf@exp+1))&0ffh
	goto	l5760
	line	1124
	
l560:; BSR set to: 0

	line	1125
	
l5760:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@exp))&0ffh,w
	
	call	_scale
	movff	0+?_scale,(printf@tmpval)
	movff	1+?_scale,(printf@tmpval+1)
	movff	2+?_scale,(printf@tmpval+2)
	line	1126
	goto	l5764
	
l5762:
	movff	(printf@fval),(c:__div_to_l_@f1)
	movff	(printf@fval+1),(c:__div_to_l_@f1+1)
	movff	(printf@fval+2),(c:__div_to_l_@f1+2)
	movff	(printf@tmpval),(c:__div_to_l_@f2)
	movff	(printf@tmpval+1),(c:__div_to_l_@f2+1)
	movff	(printf@tmpval+2),(c:__div_to_l_@f2+2)
	call	__div_to_l_	;wreg free
	movff	0+?__div_to_l_,(printf@val)
	movff	1+?__div_to_l_,(printf@val+1)
	movff	2+?__div_to_l_,(printf@val+2)
	movff	3+?__div_to_l_,(printf@val+3)
	
	goto	l5766
	
l562:
	
l5764:
	movff	(printf@fval),(c:__tdiv_to_l_@f1)
	movff	(printf@fval+1),(c:__tdiv_to_l_@f1+1)
	movff	(printf@fval+2),(c:__tdiv_to_l_@f1+2)
	movff	(printf@tmpval),(c:__tdiv_to_l_@f2)
	movff	(printf@tmpval+1),(c:__tdiv_to_l_@f2+1)
	movff	(printf@tmpval+2),(c:__tdiv_to_l_@f2+2)
	call	__tdiv_to_l_	;wreg free
	movff	0+?__tdiv_to_l_,(printf@val)
	movff	1+?__tdiv_to_l_,(printf@val+1)
	movff	2+?__tdiv_to_l_,(printf@val+2)
	movff	3+?__tdiv_to_l_,(printf@val+3)
	
	goto	l5766
	
l564:
	line	1129
	
l5766:
	movlw	low(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((printf@fval))&0ffh
	movlw	high(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((printf@fval+1))&0ffh
	movlw	low highword(float24(0.0000000000000000))
	movlb	0	; () banked
	movwf	((printf@fval+2))&0ffh

	line	1130
	goto	l5772
	
l556:; BSR set to: 0

	line	1131
	
l5768:; BSR set to: 0

	movff	(printf@fval),(___fttol@f1)
	movff	(printf@fval+1),(___fttol@f1+1)
	movff	(printf@fval+2),(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(printf@val)
	movff	1+?___fttol,(printf@val+1)
	movff	2+?___fttol,(printf@val+2)
	movff	3+?___fttol,(printf@val+3)
	
	line	1132
	movff	(printf@fval),(___ftsub@f1)
	movff	(printf@fval+1),(___ftsub@f1+1)
	movff	(printf@fval+2),(___ftsub@f1+2)
	movff	(printf@val),(c:___lltoft@c)
	movff	(printf@val+1),(c:___lltoft@c+1)
	movff	(printf@val+2),(c:___lltoft@c+2)
	movff	(printf@val+3),(c:___lltoft@c+3)
	call	___lltoft	;wreg free
	movff	0+?___lltoft,(___ftsub@f2)
	movff	1+?___lltoft,(___ftsub@f2+1)
	movff	2+?___lltoft,(___ftsub@f2+2)
	call	___ftsub	;wreg free
	movff	0+?___ftsub,(printf@fval)
	movff	1+?___ftsub,(printf@fval+1)
	movff	2+?___ftsub,(printf@fval+2)
	line	1133
	
l5770:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@exp+1))&0ffh
	movlw	low(0)
	movwf	((printf@exp))&0ffh
	goto	l5772
	line	1134
	
l565:; BSR set to: 0

	line	1136
	
l5772:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((printf@c))&0ffh
	
l5774:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u6841
	goto	u6840

u6841:
	goto	l5778
u6840:
	goto	l5786
	
l5776:; BSR set to: 0

	goto	l5786
	line	1137
	
l566:; BSR set to: 0

	
l5778:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
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
	movlb	0	; () banked
	subwf	((printf@val))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	0	; () banked
	subwfb	((printf@val+1))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	0	; () banked
	subwfb	((printf@val+2))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	0	; () banked
	subwfb	((printf@val+3))&0ffh,w
	btfsc	status,0
	goto	u6851
	goto	u6850

u6851:
	goto	l5782
u6850:
	goto	l5786
	line	1138
	
l5780:; BSR set to: 0

	goto	l5786
	
l568:; BSR set to: 0

	line	1136
	
l5782:; BSR set to: 0

	movlb	0	; () banked
	incf	((printf@c))&0ffh
	
l5784:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u6861
	goto	u6860

u6861:
	goto	l5778
u6860:
	goto	l5786
	
l567:; BSR set to: 0

	line	1142
	
l5786:; BSR set to: 0

	movff	(printf@c),??_printf+0+0
	movlb	0	; () banked
	clrf	(??_printf+0+0+1)&0ffh
	btfsc	(??_printf+0+0)&0ffh,7
	decf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	((printf@prec))&0ffh,w
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh
	movlb	0	; () banked
	movf	((printf@prec+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_printf+0+1)&0ffh
	movlb	0	; () banked
	movf	((printf@exp))&0ffh,w
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh
	movlb	0	; () banked
	movf	((printf@exp+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_printf+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
	subwf	((printf@width))&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+1)&0ffh,w
	movlb	0	; () banked
	subwfb	((printf@width+1))&0ffh

	line	1147
	movlb	0	; () banked
	movf	((printf@prec))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@prec+1))&0ffh,w
	btfsc	status,2
	goto	u6871
	goto	u6870

u6871:
	goto	l5790
u6870:
	line	1148
	
l5788:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l5790
	
l569:; BSR set to: 0

	line	1149
	
l5790:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u6881
	goto	u6880

u6881:
	goto	l5794
u6880:
	line	1150
	
l5792:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l5794
	
l570:; BSR set to: 0

	line	1153
	
l5794:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((printf@flag))&0ffh,(2)&7
	goto	u6891
	goto	u6890
u6891:
	goto	l5810
u6890:
	line	1157
	
l5796:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u6901
	goto	u6900

u6901:
	goto	l5804
u6900:
	line	1159
	
l5798:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l5804
	
l572:
	line	1168
	goto	l5804
	
l574:
	line	1169
	
l5800:
	movlw	(030h)&0ffh
	
	call	_putch
	line	1170
	
l5802:
	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l5804
	line	1171
	
l573:; BSR set to: 0

	line	1168
	
l5804:
	movlb	0	; () banked
	btfsc	((printf@width+1))&0ffh,7
	goto	u6910
	movlb	0	; () banked
	movf	((printf@width+1))&0ffh,w
	bnz	u6911
	movlb	0	; () banked
	decf	((printf@width))&0ffh,w
	btfsc	status,0
	goto	u6911
	goto	u6910

u6911:
	goto	l5800
u6910:
	goto	l5822
	
l575:; BSR set to: 0

	line	1173
	goto	l5822
	
l571:; BSR set to: 0

	line	1180
	goto	l5810
	
l578:; BSR set to: 0

	line	1181
	
l5806:; BSR set to: 0

	movlw	(020h)&0ffh
	
	call	_putch
	line	1182
	
l5808:
	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l5810
	line	1183
	
l577:; BSR set to: 0

	line	1180
	
l5810:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@width+1))&0ffh,7
	goto	u6920
	movlb	0	; () banked
	movf	((printf@width+1))&0ffh,w
	bnz	u6921
	movlb	0	; () banked
	decf	((printf@width))&0ffh,w
	btfsc	status,0
	goto	u6921
	goto	u6920

u6921:
	goto	l5806
u6920:
	goto	l5812
	
l579:; BSR set to: 0

	line	1188
	
l5812:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u6931
	goto	u6930

u6931:
	goto	l5822
u6930:
	line	1190
	
l5814:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l5822
	
l580:
	goto	l5822
	line	1195
	
l576:
	line	1196
	goto	l5822
	
l582:
	line	1201
	
l5816:
	movff	(printf@val),(c:___lldiv@dividend)
	movff	(printf@val+1),(c:___lldiv@dividend+1)
	movff	(printf@val+2),(c:___lldiv@dividend+2)
	movff	(printf@val+3),(c:___lldiv@dividend+3)
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
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
	
	movff	tablat,(c:___lldiv@divisor)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___lldiv@divisor+3)
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(printf@tmpval)
	movff	1+?___lldiv,(printf@tmpval+1)
	movff	2+?___lldiv,(printf@tmpval+2)
	movff	3+?___lldiv,(printf@tmpval+3)
	
	line	1202
	
l5818:
	movff	(printf@tmpval),(c:___llmod@dividend)
	movff	(printf@tmpval+1),(c:___llmod@dividend+1)
	movff	(printf@tmpval+2),(c:___llmod@dividend+2)
	movff	(printf@tmpval+3),(c:___llmod@dividend+3)
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor)),c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1)),c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2)),c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3)),c
	call	___llmod	;wreg free
	movff	0+?___llmod,(printf@tmpval)
	movff	1+?___llmod,(printf@tmpval+1)
	movff	2+?___llmod,(printf@tmpval+2)
	movff	3+?___llmod,(printf@tmpval+3)
	
	line	1203
	
l5820:
	movlb	0	; () banked
	movf	((printf@tmpval))&0ffh,w
	addlw	low(030h)
	
	call	_putch
	goto	l5822
	line	1206
	
l581:
	line	1196
	
l5822:
	movlb	0	; () banked
	decf	((printf@c))&0ffh
	movlb	0	; () banked
		incf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u6941
	goto	u6940

u6941:
	goto	l5816
u6940:
	goto	l5828
	
l583:; BSR set to: 0

	line	1207
	goto	l5828
	
l585:; BSR set to: 0

	line	1208
	
l5824:; BSR set to: 0

	movlw	(030h)&0ffh
	
	call	_putch
	line	1209
	
l5826:
	movlb	0	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l5828
	line	1210
	
l584:; BSR set to: 0

	line	1207
	
l5828:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u6950
	movlb	0	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u6951
	movlb	0	; () banked
	decf	((printf@exp))&0ffh,w
	btfsc	status,0
	goto	u6951
	goto	u6950

u6951:
	goto	l5824
u6950:
	goto	l5830
	
l586:; BSR set to: 0

	line	1211
	
l5830:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@prec+1))&0ffh,7
	goto	u6961
	movlb	0	; () banked
	movf	((printf@prec+1))&0ffh,w
	bnz	u6960
	movlw	9
	movlb	0	; () banked
	subwf	 ((printf@prec))&0ffh,w
	btfss	status,0
	goto	u6961
	goto	u6960

u6961:
	goto	l587
u6960:
	line	1212
	
l5832:; BSR set to: 0

	movlw	low(08h)
	movlb	0	; () banked
	movwf	((printf@c))&0ffh
	goto	l5834
	line	1213
	
l587:; BSR set to: 0

	line	1214
	movff	(printf@prec),(printf@c)
	goto	l5834
	
l588:; BSR set to: 0

	line	1215
	
l5834:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	movlb	0	; () banked
	subwf	((printf@prec))&0ffh
	movlw	0
	movlb	0	; () banked
	btfsc	((printf@c))&0ffh,7
	movlw	0ffh
	movlb	0	; () banked
	subwfb	((printf@prec+1))&0ffh

	line	1219
	
l5836:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6971
	goto	u6970
u6971:
	goto	l5840
u6970:
	line	1221
	
l5838:; BSR set to: 0

	movlw	(02Eh)&0ffh
	
	call	_putch
	goto	l5840
	
l589:
	line	1227
	
l5840:
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_scale
	movff	0+?_scale,(_printf$2362)
	movff	1+?_scale,(_printf$2362+1)
	movff	2+?_scale,(_printf$2362+2)
	
l5842:
	movff	(printf@fval),(c:___ftmul@f2)
	movff	(printf@fval+1),(c:___ftmul@f2+1)
	movff	(printf@fval+2),(c:___ftmul@f2+2)
	movff	(_printf$2362),(c:___ftmul@f1)
	movff	(_printf$2362+1),(c:___ftmul@f1+1)
	movff	(_printf$2362+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(___fttol@f1)
	movff	1+?___ftmul,(___fttol@f1+1)
	movff	2+?___ftmul,(___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(printf@val)
	movff	1+?___fttol,(printf@val+1)
	movff	2+?___fttol,(printf@val+2)
	movff	3+?___fttol,(printf@val+3)
	
	line	1228
	goto	l5850
	
l591:
	line	1229
	
l5844:
	movff	(printf@val),(c:___lldiv@dividend)
	movff	(printf@val+1),(c:___lldiv@dividend+1)
	movff	(printf@val+2),(c:___lldiv@dividend+2)
	movff	(printf@val+3),(c:___lldiv@dividend+3)
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
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
	
	movff	tablat,(c:___lldiv@divisor)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___lldiv@divisor+3)
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(printf@tmpval)
	movff	1+?___lldiv,(printf@tmpval+1)
	movff	2+?___lldiv,(printf@tmpval+2)
	movff	3+?___lldiv,(printf@tmpval+3)
	
	line	1230
	
l5846:
	movff	(printf@tmpval),(c:___llmod@dividend)
	movff	(printf@tmpval+1),(c:___llmod@dividend+1)
	movff	(printf@tmpval+2),(c:___llmod@dividend+2)
	movff	(printf@tmpval+3),(c:___llmod@dividend+3)
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor)),c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1)),c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2)),c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3)),c
	call	___llmod	;wreg free
	movff	0+?___llmod,(printf@tmpval)
	movff	1+?___llmod,(printf@tmpval+1)
	movff	2+?___llmod,(printf@tmpval+2)
	movff	3+?___llmod,(printf@tmpval+3)
	
	line	1231
	
l5848:
	movlb	0	; () banked
	movf	((printf@tmpval))&0ffh,w
	addlw	low(030h)
	
	call	_putch
	line	1232
	movff	(printf@val),(c:___llmod@dividend)
	movff	(printf@val+1),(c:___llmod@dividend+1)
	movff	(printf@val+2),(c:___llmod@dividend+2)
	movff	(printf@val+3),(c:___llmod@dividend+3)
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
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
	
	movff	tablat,(c:___llmod@divisor)
	tblrd*+
	
	movff	tablat,(c:___llmod@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___llmod@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___llmod@divisor+3)
	call	___llmod	;wreg free
	movff	0+?___llmod,(printf@val)
	movff	1+?___llmod,(printf@val+1)
	movff	2+?___llmod,(printf@val+2)
	movff	3+?___llmod,(printf@val+3)
	
	goto	l5850
	line	1233
	
l590:
	line	1228
	
l5850:
	movlb	0	; () banked
	decf	((printf@c))&0ffh
	movlb	0	; () banked
		incf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u6981
	goto	u6980

u6981:
	goto	l5844
u6980:
	goto	l5856
	
l592:; BSR set to: 0

	line	1235
	goto	l5856
	
l594:; BSR set to: 0

	line	1236
	
l5852:; BSR set to: 0

	movlw	(030h)&0ffh
	
	call	_putch
	line	1237
	
l5854:
	movlb	0	; () banked
	decf	((printf@prec))&0ffh
	btfss	status,0
	decf	((printf@prec+1))&0ffh
	goto	l5856
	line	1238
	
l593:; BSR set to: 0

	line	1235
	
l5856:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@prec))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@prec+1))&0ffh,w
	btfss	status,2
	goto	u6991
	goto	u6990

u6991:
	goto	l5852
u6990:
	goto	l5928
	
l595:; BSR set to: 0

	line	1245
	goto	l5928
	line	1246
	
l548:; BSR set to: 0

	line	1251
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((printf@flag))&0ffh,(6)&7
	goto	u7001
	goto	u7000
u7001:
	goto	l5868
u7000:
	line	1259
	
l5858:; BSR set to: 0

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,(printf@val)
	movff	postdec2,(printf@val+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((printf@val+1))&0ffh,7
	movlw	-1
	movwf	((printf@val+2))&0ffh
	movwf	((printf@val+3))&0ffh
	
l5860:; BSR set to: 0

	movlw	02h
	movlb	0	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	line	1261
	
l5862:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@val+3))&0ffh,7
	goto	u7010
	goto	u7011

u7011:
	goto	l5872
u7010:
	line	1262
	
l5864:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	iorwf	((printf@flag))&0ffh
	line	1263
	
l5866:; BSR set to: 0

	movlb	0	; () banked
	comf	((printf@val+3))&0ffh
	comf	((printf@val+2))&0ffh
	comf	((printf@val+1))&0ffh
	negf	((printf@val))&0ffh
	movlw	0
	addwfc	((printf@val+1))&0ffh
	addwfc	((printf@val+2))&0ffh
	addwfc	((printf@val+3))&0ffh
	goto	l5872
	line	1264
	
l597:; BSR set to: 0

	line	1266
	goto	l5872
	line	1268
	
l596:; BSR set to: 0

	line	1286
	
l5868:; BSR set to: 0

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,??_printf+0+0
	movff	postdec2,??_printf+0+0+1
	movff	??_printf+0+0,(printf@val)
	movff	??_printf+0+1,(printf@val+1)
	movlb	0	; () banked
	clrf	((printf@val+2))&0ffh
	clrf	((printf@val+3))&0ffh

	
l5870:; BSR set to: 0

	movlw	02h
	movlb	0	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	goto	l5872
	line	1287
	
l598:; BSR set to: 0

	line	1305
	
l5872:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((printf@c))&0ffh
	
l5874:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u7021
	goto	u7020

u7021:
	goto	l5878
u7020:
	goto	l5886
	
l5876:; BSR set to: 0

	goto	l5886
	line	1306
	
l599:; BSR set to: 0

	
l5878:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	mullw	04h
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
	movlb	0	; () banked
	subwf	((printf@val))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	0	; () banked
	subwfb	((printf@val+1))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	0	; () banked
	subwfb	((printf@val+2))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	0	; () banked
	subwfb	((printf@val+3))&0ffh,w
	btfsc	status,0
	goto	u7031
	goto	u7030

u7031:
	goto	l5882
u7030:
	goto	l5886
	line	1307
	
l5880:; BSR set to: 0

	goto	l5886
	
l601:; BSR set to: 0

	line	1305
	
l5882:; BSR set to: 0

	movlb	0	; () banked
	incf	((printf@c))&0ffh
	
l5884:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u7041
	goto	u7040

u7041:
	goto	l5878
u7040:
	goto	l5886
	
l600:; BSR set to: 0

	line	1345
	
l5886:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u7051
	goto	u7050

u7051:
	goto	l5892
u7050:
	
l5888:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u7061
	goto	u7060

u7061:
	goto	l5892
u7060:
	line	1346
	
l5890:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l5892
	
l602:; BSR set to: 0

	line	1381
	
l5892:; BSR set to: 0

	movlw	080h
	movlb	0	; () banked
	btfsc	((printf@c))&0ffh,7
	movlw	07fh
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
	subwf	((printf@c))&0ffh,w
	movlb	0	; () banked
	movf	((printf@width+1))&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_printf+0+0)&0ffh,w
	btfsc	status,0
	goto	u7071
	goto	u7070
u7071:
	goto	l5896
u7070:
	line	1382
	
l5894:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	movlb	0	; () banked
	subwf	((printf@width))&0ffh
	movlw	0
	movlb	0	; () banked
	btfsc	((printf@c))&0ffh,7
	movlw	0ffh
	movlb	0	; () banked
	subwfb	((printf@width+1))&0ffh

	goto	l5898
	line	1383
	
l603:; BSR set to: 0

	line	1384
	
l5896:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l5898
	
l604:; BSR set to: 0

	line	1387
	
l5898:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((printf@flag))&0ffh,(2)&7
	goto	u7081
	goto	u7080
u7081:
	goto	l5910
u7080:
	line	1392
	
l5900:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u7091
	goto	u7090

u7091:
	goto	l5904
u7090:
	line	1393
	
l5902:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l5904
	
l606:
	line	1415
	
l5904:
	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u7101
	goto	u7100

u7101:
	goto	l5920
u7100:
	goto	l5906
	line	1416
	
l608:; BSR set to: 0

	line	1417
	
l5906:; BSR set to: 0

	movlw	(030h)&0ffh
	
	call	_putch
	line	1418
	
l5908:
	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u7111
	goto	u7110

u7111:
	goto	l5906
u7110:
	goto	l5920
	
l609:; BSR set to: 0

	goto	l5920
	
l607:; BSR set to: 0

	line	1420
	goto	l5920
	
l605:; BSR set to: 0

	line	1428
	
l5910:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u7121
	goto	u7120

u7121:
	goto	l5916
u7120:
	goto	l5912
	line	1429
	
l612:; BSR set to: 0

	line	1430
	
l5912:; BSR set to: 0

	movlw	(020h)&0ffh
	
	call	_putch
	line	1431
	
l5914:
	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u7131
	goto	u7130

u7131:
	goto	l5912
u7130:
	goto	l5916
	
l613:; BSR set to: 0

	goto	l5916
	
l611:; BSR set to: 0

	line	1438
	
l5916:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	andwf	((printf@flag))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlw	0
	movlb	0	; () banked
	andwf	((printf@flag+1))&0ffh,w
	movlb	0	; () banked
	movwf	(??_printf+0+0+1)&0ffh
	movlb	0	; () banked
	movf	(??_printf+0+0)&0ffh,w
	movlb	0	; () banked
iorwf	(??_printf+0+1)&0ffh,w
	btfsc	status,2
	goto	u7141
	goto	u7140

u7141:
	goto	l5920
u7140:
	line	1439
	
l5918:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l5920
	
l614:
	goto	l5920
	line	1469
	
l610:
	line	1472
	
l5920:
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	movlb	0	; () banked
	movwf	((printf@prec))&0ffh
	clrf	((printf@prec+1))&0ffh
	btfsc	((printf@prec))&0ffh,7
	decf	((printf@prec+1))&0ffh
	line	1474
	goto	l5926
	
l616:; BSR set to: 0

	line	1489
	
l5922:; BSR set to: 0

	movff	(printf@prec),??_printf+0+0
	movff	(printf@prec+1),??_printf+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_printf+0+0)&0ffh
	rlcf	(??_printf+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_printf+0+0)&0ffh
	rlcf	(??_printf+0+1)&0ffh
	movlw	low((_dpowers))
	movlb	0	; () banked
	addwf	(??_printf+0+0)&0ffh,w
	movwf	tblptrl
	movlw	high((_dpowers))
	addwfc	(??_printf+0+1)&0ffh,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+1)
	tblrd*+
	
	movff	tablat,(c:___lldiv@divisor+2)
	tblrd*-
	
	movff	tablat,(c:___lldiv@divisor+3)
	movff	(printf@val),(c:___lldiv@dividend)
	movff	(printf@val+1),(c:___lldiv@dividend+1)
	movff	(printf@val+2),(c:___lldiv@dividend+2)
	movff	(printf@val+3),(c:___lldiv@dividend+3)
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(c:___llmod@dividend)
	movff	1+?___lldiv,(c:___llmod@dividend+1)
	movff	2+?___lldiv,(c:___llmod@dividend+2)
	movff	3+?___lldiv,(c:___llmod@dividend+3)
	
	movlw	low(0Ah)
	movwf	((c:___llmod@divisor)),c
	movlw	high(0Ah)
	movwf	((c:___llmod@divisor+1)),c
	movlw	low highword(0Ah)
	movwf	((c:___llmod@divisor+2)),c
	movlw	high highword(0Ah)
	movwf	((c:___llmod@divisor+3)),c
	call	___llmod	;wreg free
	movf	(0+?___llmod),c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((printf@c))&0ffh
	line	1524
	
l5924:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_putch
	goto	l5926
	line	1525
	
l615:
	line	1474
	
l5926:
	movlb	0	; () banked
	decf	((printf@prec))&0ffh
	btfss	status,0
	decf	((printf@prec+1))&0ffh
	movlb	0	; () banked
		incf	((printf@prec))&0ffh,w
	bnz	u7151
	movlb	0	; () banked
	incf	((printf@prec+1))&0ffh,w
	btfss	status,2
	goto	u7151
	goto	u7150

u7151:
	goto	l5922
u7150:
	goto	l5928
	
l617:; BSR set to: 0

	goto	l5928
	line	1533
	
l527:; BSR set to: 0

	line	536
	
l5928:
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
	
	movff	tablat,(printf@c)
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u7161
	goto	u7160
u7161:
	goto	l5668
u7160:
	goto	l619
	
l618:; BSR set to: 0

	goto	l619
	line	1535
	
l541:; BSR set to: 0

	line	1541
;	Return value of _printf is never used
	
l619:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_scale

;; *************** function _scale *****************
;; Defined at:
;;		line 425 in file "/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   55[COMRAM] char 
;; Return value:  Size  Location     Type
;;                  3   49[COMRAM] char 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	425
global __ptext2
__ptext2:
psect	text2
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	425
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:
;incstack = 0
	opt	stack 26
	movwf	((c:scale@scl)),c
	line	428
	
l5190:
	btfsc	((c:scale@scl)),c,7
	goto	u6030
	goto	u6031

u6031:
	goto	l5210
u6030:
	line	429
	
l5192:
	negf	((c:scale@scl)),c
	line	430
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^06Eh)
	btfss	status,0
	goto	u6041
	goto	u6040

u6041:
	goto	l5200
u6040:
	line	431
	
l5194:
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movlw	high(064h)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___awdiv@dividend)
	movff	1+?___awmod,(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awdiv@dividend)),c
	clrf	((c:___awdiv@dividend+1)),c
	btfsc	((c:___awdiv@dividend)),c,7
	decf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(012h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(012h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_scale$2361)
	movff	1+?___ftmul,(c:_scale$2361+1)
	movff	2+?___ftmul,(c:_scale$2361+2)
	movff	(c:_scale$2361),(c:___ftmul@f1)
	movff	(c:_scale$2361+1),(c:___ftmul@f1+1)
	movff	(c:_scale$2361+2),(c:___ftmul@f1+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_scale)
	movff	1+?___ftmul,(c:?_scale+1)
	movff	2+?___ftmul,(c:?_scale+2)
	goto	l519
	
l5196:
	goto	l519
	
l5198:
	goto	l5206
	line	432
	
l518:
	
l5200:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^0Bh)
	btfss	status,0
	goto	u6051
	goto	u6050

u6051:
	goto	l5206
u6050:
	line	433
	
l5202:
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awdiv@dividend)),c
	clrf	((c:___awdiv@dividend+1)),c
	btfsc	((c:___awdiv@dividend)),c,7
	decf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_scale)
	movff	1+?___ftmul,(c:?_scale+1)
	movff	2+?___ftmul,(c:?_scale+2)
	goto	l519
	
l5204:
	goto	l519
	
l521:
	goto	l5206
	line	434
	
l520:
	
l5206:
	movf	((c:scale@scl)),c,w
	mullw	03h
	movlw	low((__npowers_))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:?_scale)
	tblrd*+
	
	movff	tablat,(c:?_scale+1)
	tblrd*-
	
	movff	tablat,(c:?_scale+2)

	goto	l519
	
l5208:
	goto	l519
	line	435
	
l517:
	line	436
	
l5210:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^06Eh)
	btfss	status,0
	goto	u6061
	goto	u6060

u6061:
	goto	l5218
u6060:
	line	437
	
l5212:
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movlw	high(064h)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___awdiv@dividend)
	movff	1+?___awmod,(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awdiv@dividend)),c
	clrf	((c:___awdiv@dividend+1)),c
	btfsc	((c:___awdiv@dividend)),c,7
	decf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(012h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(012h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_scale$2361)
	movff	1+?___ftmul,(c:_scale$2361+1)
	movff	2+?___ftmul,(c:_scale$2361+2)
	movff	(c:_scale$2361),(c:___ftmul@f1)
	movff	(c:_scale$2361+1),(c:___ftmul@f1+1)
	movff	(c:_scale$2361+2),(c:___ftmul@f1+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_scale)
	movff	1+?___ftmul,(c:?_scale+1)
	movff	2+?___ftmul,(c:?_scale+2)
	goto	l519
	
l5214:
	goto	l519
	
l5216:
	goto	l5224
	line	438
	
l522:
	
l5218:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^0Bh)
	btfss	status,0
	goto	u6071
	goto	u6070

u6071:
	goto	l5224
u6070:
	line	439
	
l5220:
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awdiv@dividend)),c
	clrf	((c:___awdiv@dividend+1)),c
	btfsc	((c:___awdiv@dividend)),c,7
	decf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movf	((c:scale@scl)),c,w
	movwf	((c:___awmod@dividend)),c
	clrf	((c:___awmod@dividend+1)),c
	btfsc	((c:___awmod@dividend)),c,7
	decf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__powers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_scale)
	movff	1+?___ftmul,(c:?_scale+1)
	movff	2+?___ftmul,(c:?_scale+2)
	goto	l519
	
l5222:
	goto	l519
	
l524:
	goto	l5224
	line	440
	
l523:
	
l5224:
	movf	((c:scale@scl)),c,w
	mullw	03h
	movlw	low((__powers_))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((__powers_))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:?_scale)
	tblrd*+
	
	movff	tablat,(c:?_scale+1)
	tblrd*-
	
	movff	tablat,(c:?_scale+2)

	goto	l519
	
l5226:
	line	441
	
l519:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
	signat	_scale,4219
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 100 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text3,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	100
global __ptext3
__ptext3:
psect	text3
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	100
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 28
	movwf	((c:putch@data)),c
	line	101
	
l5024:
	goto	l85
	
l86:
	line	102
	
l85:
	line	101
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u5901
	goto	u5900
u5901:
	goto	l85
u5900:
	goto	l5026
	
l87:
	line	103
	
l5026:
	movff	(c:putch@data),(c:4013)	;volatile
	line	104
	
l88:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/isdigit.c"
	line	8
global __ptext4
__ptext4:
psect	text4
	file	"/opt/microchip/xc8/v1.38/sources/common/isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:
;incstack = 0
	opt	stack 28
	movwf	((c:isdigit@c)),c
	line	14
	
l5228:
	movlw	low(0)
	movwf	((c:_isdigit$2002)),c
	
l5230:
		movlw	03Ah-0
	cpfslt	((c:isdigit@c)),c
	goto	u6081
	goto	u6080

u6081:
	goto	l5236
u6080:
	
l5232:
		movlw	030h-1
	cpfsgt	((c:isdigit@c)),c
	goto	u6091
	goto	u6090

u6091:
	goto	l5236
u6090:
	
l5234:
	movlw	low(01h)
	movwf	((c:_isdigit$2002)),c
	goto	l5236
	
l983:
	
l5236:
	movff	(c:_isdigit$2002),??_isdigit+0+0
	rrcf	(??_isdigit+0+0),c,w
	goto	l984
	
l5238:
	line	15
	
l984:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	_fround

;; *************** function _fround *****************
;; Defined at:
;;		line 409 in file "/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   58[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   49[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___ftmul
;;		___wmul
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	409
global __ptext5
__ptext5:
psect	text5
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	409
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:
;incstack = 0
	opt	stack 26
	movwf	((c:fround@prec)),c
	line	413
	
l5168:
		movlw	06Eh-1
	cpfsgt	((c:fround@prec)),c
	goto	u6011
	goto	u6010

u6011:
	goto	l5178
u6010:
	line	414
	
l5170:
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movlw	high(064h)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awmod@divisor)),c
	movff	(c:fround@prec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___awdiv@dividend)
	movff	1+?___awmod,(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movlw	high(064h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(064h)
	movwf	((c:___awdiv@divisor)),c
	movff	(c:fround@prec),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(012h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(012h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_fround$2359)
	movff	1+?___ftmul,(c:_fround$2359+1)
	movff	2+?___ftmul,(c:_fround$2359+2)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movff	(c:fround@prec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movff	(c:_fround$2359),(c:___ftmul@f1)
	movff	(c:_fround$2359+1),(c:___ftmul@f1+1)
	movff	(c:_fround$2359+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_fround$2360)
	movff	1+?___ftmul,(c:_fround$2360+1)
	movff	2+?___ftmul,(c:_fround$2360+2)
	
l5172:
	movff	(c:_fround$2360),(c:___ftmul@f1)
	movff	(c:_fround$2360+1),(c:___ftmul@f1+1)
	movff	(c:_fround$2360+2),(c:___ftmul@f1+2)
	movlw	low(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_fround)
	movff	1+?___ftmul,(c:?_fround+1)
	movff	2+?___ftmul,(c:?_fround+2)
	goto	l512
	
l5174:
	goto	l512
	
l5176:
	goto	l5186
	line	415
	
l511:
	
l5178:
		movlw	0Bh-1
	cpfsgt	((c:fround@prec)),c
	goto	u6021
	goto	u6020

u6021:
	goto	l5186
u6020:
	line	416
	
l5180:
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	movlw	high(0Ah)
	movwf	((c:___awmod@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awmod@divisor)),c
	movff	(c:fround@prec),(c:___awmod@dividend)
	clrf	((c:___awmod@dividend+1)),c
	call	___awmod	;wreg free
	movff	0+?___awmod,(c:___wmul@multiplier)
	movff	1+?___awmod,(c:___wmul@multiplier+1)
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f2+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f2+2)

	movlw	high(0Ah)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(0Ah)
	movwf	((c:___awdiv@divisor)),c
	movff	(c:fround@prec),(c:___awdiv@dividend)
	clrf	((c:___awdiv@dividend+1)),c
	call	___awdiv	;wreg free
	movlw	low(09h)
	addwf	(0+?___awdiv),c,w
	movwf	((c:___wmul@multiplier)),c
	movlw	high(09h)
	addwfc	(1+?___awdiv),c,w
	movwf	1+((c:___wmul@multiplier)),c
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low((__npowers_))
	addwf	(0+?___wmul),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(1+?___wmul),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_fround$2359)
	movff	1+?___ftmul,(c:_fround$2359+1)
	movff	2+?___ftmul,(c:_fround$2359+2)
	
l5182:
	movff	(c:_fround$2359),(c:___ftmul@f1)
	movff	(c:_fround$2359+1),(c:___ftmul@f1+1)
	movff	(c:_fround$2359+2),(c:___ftmul@f1+2)
	movlw	low(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_fround)
	movff	1+?___ftmul,(c:?_fround+1)
	movff	2+?___ftmul,(c:?_fround+2)
	goto	l512
	
l5184:
	goto	l512
	
l514:
	goto	l5186
	line	417
	
l513:
	
l5186:
	movf	((c:fround@prec)),c,w
	mullw	03h
	movlw	low((__npowers_))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((__npowers_))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1)
	tblrd*+
	
	movff	tablat,(c:___ftmul@f1+1)
	tblrd*-
	
	movff	tablat,(c:___ftmul@f1+2)

	movlw	low(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2)),c
	movlw	high(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+1)),c
	movlw	low highword(float24(0.50000000000000000))
	movwf	((c:___ftmul@f2+2)),c

	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:?_fround)
	movff	1+?___ftmul,(c:?_fround+1)
	movff	2+?___ftmul,(c:?_fround+2)
	goto	l512
	
l5188:
	line	418
	
l512:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
	signat	_fround,4219
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.38/sources/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   28[COMRAM] unsigned int 
;;  multiplicand    2   30[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   32[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   28[COMRAM] unsigned int 
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
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul16.c"
	line	15
global __ptext6
__ptext6:
psect	text6
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 27
	line	37
	
l4820:
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
	
l4822:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l622
	
l4824:
	line	53
	
l622:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.38/sources/common/ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   34[COMRAM] float 
;;  f2              3   37[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   44[COMRAM] unsigned um
;;  sign            1   48[COMRAM] unsigned char 
;;  cntr            1   47[COMRAM] unsigned char 
;;  exp             1   43[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   34[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/ftmul.c"
	line	62
global __ptext7
__ptext7:
psect	text7
	file	"/opt/microchip/xc8/v1.38/sources/common/ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:
;incstack = 0
	opt	stack 26
	line	67
	
l4896:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u5721
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u5721:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u5731
	goto	u5730
u5731:
	goto	l4902
u5730:
	line	68
	
l4898:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l948
	
l4900:
	goto	l948
	
l947:
	line	69
	
l4902:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u5741
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u5741:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u5751
	goto	u5750
u5751:
	goto	l4908
u5750:
	line	70
	
l4904:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l948
	
l4906:
	goto	l948
	
l949:
	line	71
	
l4908:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l4910:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l4912:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l4914:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l4916:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l4918:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l4920:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l4922
	line	135
	
l950:
	line	136
	
l4922:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u5761
	goto	u5760
u5761:
	goto	l4926
u5760:
	line	137
	
l4924:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l4926
	
l951:
	line	138
	
l4926:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	139
	bcf	status,0
	rlcf	((c:___ftmul@f2)),c
	rlcf	((c:___ftmul@f2+1)),c
	rlcf	((c:___ftmul@f2+2)),c
	line	140
	
l4928:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l4922
	goto	l4930
	
l952:
	line	143
	
l4930:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l4932
	line	144
	
l953:
	line	145
	
l4932:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u5771
	goto	u5770
u5771:
	goto	l4936
u5770:
	line	146
	
l4934:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l4936
	
l954:
	line	147
	
l4936:
	bcf	status,0
	rrcf	((c:___ftmul@f1+2)),c
	rrcf	((c:___ftmul@f1+1)),c
	rrcf	((c:___ftmul@f1)),c
	line	148
	bcf	status,0
	rrcf	((c:___ftmul@f3_as_product+2)),c
	rrcf	((c:___ftmul@f3_as_product+1)),c
	rrcf	((c:___ftmul@f3_as_product)),c
	line	149
	
l4938:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l4932
	goto	l4940
	
l955:
	line	156
	
l4940:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l948
	
l4942:
	line	157
	
l948:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[COMRAM] int 
;;  divisor         2   16[COMRAM] int 
;; Auto vars:     Size  Location     Type
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
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/awmod.c"
	line	8
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v1.38/sources/common/awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 27
	line	13
	
l4988:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l4990:
	btfsc	((c:___awmod@dividend+1)),c,7
	goto	u5840
	goto	u5841

u5841:
	goto	l4996
u5840:
	line	15
	
l4992:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l4994:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l4996
	line	17
	
l800:
	line	18
	
l4996:
	btfsc	((c:___awmod@divisor+1)),c,7
	goto	u5850
	goto	u5851

u5851:
	goto	l5000
u5850:
	line	19
	
l4998:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l5000
	
l801:
	line	20
	
l5000:
	movf	((c:___awmod@divisor)),c,w
iorwf	((c:___awmod@divisor+1)),c,w
	btfsc	status,2
	goto	u5861
	goto	u5860

u5861:
	goto	l5016
u5860:
	line	21
	
l5002:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l5006
	
l804:
	line	23
	
l5004:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l5006
	line	25
	
l803:
	line	22
	
l5006:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u5871
	goto	u5870
u5871:
	goto	l5004
u5870:
	goto	l5008
	
l805:
	goto	l5008
	line	26
	
l806:
	line	27
	
l5008:
		movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u5881
	goto	u5880

u5881:
	goto	l5012
u5880:
	line	28
	
l5010:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l5012
	
l807:
	line	29
	
l5012:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l5014:
	decfsz	((c:___awmod@counter)),c
	
	goto	l5008
	goto	l5016
	
l808:
	goto	l5016
	line	31
	
l802:
	line	32
	
l5016:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u5891
	goto	u5890
u5891:
	goto	l5020
u5890:
	line	33
	
l5018:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l5020
	
l809:
	line	34
	
l5020:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l810
	
l5022:
	line	35
	
l810:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	__tdiv_to_l_

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 60 in file "/opt/microchip/xc8/v1.38/sources/common/ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[COMRAM] float 
;;  f2              3   17[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  quot            4   23[COMRAM] unsigned long 
;;  exp1            1   28[COMRAM] unsigned char 
;;  cntr            1   27[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/ftdivl.c"
	line	60
global __ptext9
__ptext9:
psect	text9
	file	"/opt/microchip/xc8/v1.38/sources/common/ftdivl.c"
	line	60
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:
;incstack = 0
	opt	stack 28
	line	66
	
l5240:
	movff	(c:__tdiv_to_l_@f1+2),??__tdiv_to_l_+0+0
	clrf	(??__tdiv_to_l_+0+0+1)&0ffh,c
	clrf	(??__tdiv_to_l_+0+0+2)&0ffh,c
	rlcf	((c:__tdiv_to_l_@f1+1)),c,w
	rlcf	(??__tdiv_to_l_+0+0)&0ffh,c
	bnc	u6101
	bsf	(??__tdiv_to_l_+0+0+1)&0ffh,c,0
u6101:
	movf	(??__tdiv_to_l_+0+0),c,w
	movwf	((c:__tdiv_to_l_@exp1)),c
	movf	((c:__tdiv_to_l_@exp1)),c,w
	btfss	status,2
	goto	u6111
	goto	u6110
u6111:
	goto	l5246
u6110:
	line	67
	
l5242:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l924
	
l5244:
	goto	l924
	
l923:
	line	68
	
l5246:
	movff	(c:__tdiv_to_l_@f2+2),??__tdiv_to_l_+0+0
	clrf	(??__tdiv_to_l_+0+0+1)&0ffh,c
	clrf	(??__tdiv_to_l_+0+0+2)&0ffh,c
	rlcf	((c:__tdiv_to_l_@f2+1)),c,w
	rlcf	(??__tdiv_to_l_+0+0)&0ffh,c
	bnc	u6121
	bsf	(??__tdiv_to_l_+0+0+1)&0ffh,c,0
u6121:
	movf	(??__tdiv_to_l_+0+0),c,w
	movwf	((c:__tdiv_to_l_@cntr)),c
	movf	((c:__tdiv_to_l_@cntr)),c,w
	btfss	status,2
	goto	u6131
	goto	u6130
u6131:
	goto	l5252
u6130:
	line	69
	
l5248:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l924
	
l5250:
	goto	l924
	
l925:
	line	70
	
l5252:
	bsf	(0+(15/8)+(c:__tdiv_to_l_@f1)),c,(15)&7
	line	71
	
l5254:
	movlw	low(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1+2)),c

	line	72
	bsf	(0+(15/8)+(c:__tdiv_to_l_@f2)),c,(15)&7
	line	73
	
l5256:
	movlw	low(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2+2)),c

	line	74
	
l5258:
	movlw	low(0)
	movwf	((c:__tdiv_to_l_@quot)),c
	movlw	high(0)
	movwf	((c:__tdiv_to_l_@quot+1)),c
	movlw	low highword(0)
	movwf	((c:__tdiv_to_l_@quot+2)),c
	movlw	high highword(0)
	movwf	((c:__tdiv_to_l_@quot+3)),c
	line	75
	
l5260:
	movlw	(07Fh)&0ffh
	subwf	((c:__tdiv_to_l_@exp1)),c
	line	76
	
l5262:
	movf	((c:__tdiv_to_l_@cntr)),c,w
	addlw	low(098h)
	subwf	((c:__tdiv_to_l_@exp1)),c
	line	77
	
l5264:
	movlw	low(018h)
	movwf	((c:__tdiv_to_l_@cntr)),c
	line	78
	
l926:
	line	79
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@quot)),c
	rlcf	((c:__tdiv_to_l_@quot+1)),c
	rlcf	((c:__tdiv_to_l_@quot+2)),c
	rlcf	((c:__tdiv_to_l_@quot+3)),c
	line	80
	
l5266:
		movf	((c:__tdiv_to_l_@f2)),c,w
	subwf	((c:__tdiv_to_l_@f1)),c,w
	movf	((c:__tdiv_to_l_@f2+1)),c,w
	subwfb	((c:__tdiv_to_l_@f1+1)),c,w
	movf	((c:__tdiv_to_l_@f2+2)),c,w
	subwfb	((c:__tdiv_to_l_@f1+2)),c,w
	btfss	status,0
	goto	u6141
	goto	u6140

u6141:
	goto	l927
u6140:
	line	81
	
l5268:
	movf	((c:__tdiv_to_l_@f2)),c,w
	subwf	((c:__tdiv_to_l_@f1)),c
	movf	((c:__tdiv_to_l_@f2+1)),c,w
	subwfb	((c:__tdiv_to_l_@f1+1)),c
	movf	((c:__tdiv_to_l_@f2+2)),c,w
	subwfb	((c:__tdiv_to_l_@f1+2)),c

	line	82
	
l5270:
	bsf	(0+(0/8)+(c:__tdiv_to_l_@quot)),c,(0)&7
	line	83
	
l927:
	line	84
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@f1)),c
	rlcf	((c:__tdiv_to_l_@f1+1)),c
	rlcf	((c:__tdiv_to_l_@f1+2)),c
	line	85
	
l5272:
	decfsz	((c:__tdiv_to_l_@cntr)),c
	
	goto	l926
	goto	l5274
	
l928:
	line	86
	
l5274:
	btfsc	((c:__tdiv_to_l_@exp1)),c,7
	goto	u6150
	goto	u6151

u6151:
	goto	l5286
u6150:
	line	87
	
l5276:
		movf	((c:__tdiv_to_l_@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u6161
	goto	u6160

u6161:
	goto	l5282
u6160:
	line	88
	
l5278:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l924
	
l5280:
	goto	l924
	
l930:
	goto	l5282
	line	89
	
l931:
	line	90
	
l5282:
	bcf	status,0
	rrcf	((c:__tdiv_to_l_@quot+3)),c
	rrcf	((c:__tdiv_to_l_@quot+2)),c
	rrcf	((c:__tdiv_to_l_@quot+1)),c
	rrcf	((c:__tdiv_to_l_@quot)),c
	line	91
	
l5284:
	incfsz	((c:__tdiv_to_l_@exp1)),c
	
	goto	l5282
	goto	l933
	
l932:
	line	92
	goto	l933
	
l929:
	line	93
	
l5286:
		movlw	018h-1
	cpfsgt	((c:__tdiv_to_l_@exp1)),c
	goto	u6171
	goto	u6170

u6171:
	goto	l5294
u6170:
	line	94
	
l5288:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l924
	
l5290:
	goto	l924
	
l934:
	line	95
	goto	l5294
	
l936:
	line	96
	
l5292:
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@quot)),c
	rlcf	((c:__tdiv_to_l_@quot+1)),c
	rlcf	((c:__tdiv_to_l_@quot+2)),c
	rlcf	((c:__tdiv_to_l_@quot+3)),c
	line	97
	decf	((c:__tdiv_to_l_@exp1)),c
	goto	l5294
	line	98
	
l935:
	line	95
	
l5294:
	movf	((c:__tdiv_to_l_@exp1)),c,w
	btfss	status,2
	goto	u6181
	goto	u6180
u6181:
	goto	l5292
u6180:
	goto	l933
	
l937:
	line	99
	
l933:
	line	100
	movff	(c:__tdiv_to_l_@quot),(c:?__tdiv_to_l_)
	movff	(c:__tdiv_to_l_@quot+1),(c:?__tdiv_to_l_+1)
	movff	(c:__tdiv_to_l_@quot+2),(c:?__tdiv_to_l_+2)
	movff	(c:__tdiv_to_l_@quot+3),(c:?__tdiv_to_l_+3)
	line	101
	
l924:
	return	;funcret
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
	signat	__tdiv_to_l_,8316
	global	__div_to_l_

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 60 in file "/opt/microchip/xc8/v1.38/sources/common/fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[COMRAM] unsigned long 
;;  f2              3   17[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quot            4   20[COMRAM] unsigned long 
;;  exp1            1   25[COMRAM] unsigned char 
;;  cntr            1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   14[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/fldivl.c"
	line	60
global __ptext10
__ptext10:
psect	text10
	file	"/opt/microchip/xc8/v1.38/sources/common/fldivl.c"
	line	60
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:
;incstack = 0
	opt	stack 28
	line	66
	
l5296:
	rlcf	(2+((c:__div_to_l_@f1))),c,w
	rlcf	(3+((c:__div_to_l_@f1))),c,w
	movwf	((c:__div_to_l_@exp1)),c
	movf	((c:__div_to_l_@exp1)),c,w
	btfss	status,2
	goto	u6191
	goto	u6190
u6191:
	goto	l5302
u6190:
	line	67
	
l5298:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l820
	
l5300:
	goto	l820
	
l819:
	line	68
	
l5302:
	rlcf	(2+((c:__div_to_l_@f2))),c,w
	rlcf	(3+((c:__div_to_l_@f2))),c,w
	movwf	((c:__div_to_l_@cntr)),c
	movf	((c:__div_to_l_@cntr)),c,w
	btfss	status,2
	goto	u6201
	goto	u6200
u6201:
	goto	l5308
u6200:
	line	69
	
l5304:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l820
	
l5306:
	goto	l820
	
l821:
	line	70
	
l5308:
	bsf	(0+(23/8)+0+((c:__div_to_l_@f1))),c,(23)&7
	line	71
	
l5310:
	movlw	0FFh
	andwf	(0+((c:__div_to_l_@f1))),c
	movlw	0FFh
	andwf	(1+((c:__div_to_l_@f1))),c
	movlw	0FFh
	andwf	(2+((c:__div_to_l_@f1))),c
	movlw	0
	andwf	(3+((c:__div_to_l_@f1))),c
	line	72
	
l5312:
	bsf	(0+(23/8)+0+((c:__div_to_l_@f2))),c,(23)&7
	line	73
	movlw	0FFh
	andwf	(0+((c:__div_to_l_@f2))),c
	movlw	0FFh
	andwf	(1+((c:__div_to_l_@f2))),c
	movlw	0FFh
	andwf	(2+((c:__div_to_l_@f2))),c
	movlw	0
	andwf	(3+((c:__div_to_l_@f2))),c
	line	74
	
l5314:
	movlw	low(0)
	movwf	((c:__div_to_l_@quot)),c
	movlw	high(0)
	movwf	((c:__div_to_l_@quot+1)),c
	movlw	low highword(0)
	movwf	((c:__div_to_l_@quot+2)),c
	movlw	high highword(0)
	movwf	((c:__div_to_l_@quot+3)),c
	line	75
	
l5316:
	movlw	(07Fh)&0ffh
	subwf	((c:__div_to_l_@exp1)),c
	line	76
	
l5318:
	movf	((c:__div_to_l_@cntr)),c,w
	addlw	low(0A0h)
	subwf	((c:__div_to_l_@exp1)),c
	line	77
	
l5320:
	movlw	low(020h)
	movwf	((c:__div_to_l_@cntr)),c
	goto	l5322
	line	78
	
l822:
	line	79
	
l5322:
	bcf	status,0
	rlcf	((c:__div_to_l_@quot)),c
	rlcf	((c:__div_to_l_@quot+1)),c
	rlcf	((c:__div_to_l_@quot+2)),c
	rlcf	((c:__div_to_l_@quot+3)),c
	line	80
	
l5324:
		movf	(0+((c:__div_to_l_@f2))),c,w
	subwf	(0+((c:__div_to_l_@f1))),c,w
	movf	(1+((c:__div_to_l_@f2))),c,w
	subwfb	(1+((c:__div_to_l_@f1))),c,w
	movf	(2+((c:__div_to_l_@f2))),c,w
	subwfb	(2+((c:__div_to_l_@f1))),c,w
	movf	(3+((c:__div_to_l_@f2))),c,w
	subwfb	(3+((c:__div_to_l_@f1))),c,w
	btfss	status,0
	goto	u6211
	goto	u6210

u6211:
	goto	l5330
u6210:
	line	81
	
l5326:
	movf	(0+((c:__div_to_l_@f2))),c,w
	subwf	(0+((c:__div_to_l_@f1))),c
	movf	(1+((c:__div_to_l_@f2))),c,w
	subwfb	(1+((c:__div_to_l_@f1))),c
	movf	(2+((c:__div_to_l_@f2))),c,w
	subwfb	(2+((c:__div_to_l_@f1))),c
	movf	(3+((c:__div_to_l_@f2))),c,w
	subwfb	(3+((c:__div_to_l_@f1))),c
	line	82
	
l5328:
	bsf	(0+(0/8)+(c:__div_to_l_@quot)),c,(0)&7
	goto	l5330
	line	83
	
l823:
	line	84
	
l5330:
	bcf	status,0
	rlcf	(0+((c:__div_to_l_@f1))),c
	rlcf	(1+((c:__div_to_l_@f1))),c
	rlcf	(2+((c:__div_to_l_@f1))),c
	rlcf	(3+((c:__div_to_l_@f1))),c
	line	85
	
l5332:
	decfsz	((c:__div_to_l_@cntr)),c
	
	goto	l5322
	goto	l5334
	
l824:
	line	86
	
l5334:
	btfsc	((c:__div_to_l_@exp1)),c,7
	goto	u6220
	goto	u6221

u6221:
	goto	l5346
u6220:
	line	87
	
l5336:
		movf	((c:__div_to_l_@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-31)
	btfsc	status,0
	goto	u6231
	goto	u6230

u6231:
	goto	l5342
u6230:
	line	88
	
l5338:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l820
	
l5340:
	goto	l820
	
l826:
	goto	l5342
	line	89
	
l827:
	line	90
	
l5342:
	bcf	status,0
	rrcf	((c:__div_to_l_@quot+3)),c
	rrcf	((c:__div_to_l_@quot+2)),c
	rrcf	((c:__div_to_l_@quot+1)),c
	rrcf	((c:__div_to_l_@quot)),c
	line	91
	
l5344:
	incfsz	((c:__div_to_l_@exp1)),c
	
	goto	l5342
	goto	l829
	
l828:
	line	92
	goto	l829
	
l825:
	line	93
	
l5346:
		movlw	020h-1
	cpfsgt	((c:__div_to_l_@exp1)),c
	goto	u6241
	goto	u6240

u6241:
	goto	l5354
u6240:
	line	94
	
l5348:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l820
	
l5350:
	goto	l820
	
l830:
	line	95
	goto	l5354
	
l832:
	line	96
	
l5352:
	bcf	status,0
	rlcf	((c:__div_to_l_@quot)),c
	rlcf	((c:__div_to_l_@quot+1)),c
	rlcf	((c:__div_to_l_@quot+2)),c
	rlcf	((c:__div_to_l_@quot+3)),c
	line	97
	decf	((c:__div_to_l_@exp1)),c
	goto	l5354
	line	98
	
l831:
	line	95
	
l5354:
	movf	((c:__div_to_l_@exp1)),c,w
	btfss	status,2
	goto	u6251
	goto	u6250
u6251:
	goto	l5352
u6250:
	goto	l829
	
l833:
	line	99
	
l829:
	line	100
	movff	(c:__div_to_l_@quot),(c:?__div_to_l_)
	movff	(c:__div_to_l_@quot+1),(c:?__div_to_l_+1)
	movff	(c:__div_to_l_@quot+2),(c:?__div_to_l_+2)
	movff	(c:__div_to_l_@quot+3),(c:?__div_to_l_+3)
	line	101
	
l820:
	return	;funcret
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
	signat	__div_to_l_,8316
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "/opt/microchip/xc8/v1.38/sources/common/lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   22[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   30[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/lltoft.c"
	line	35
global __ptext11
__ptext11:
psect	text11
	file	"/opt/microchip/xc8/v1.38/sources/common/lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:
;incstack = 0
	opt	stack 27
	line	38
	
l5524:
	movlw	low(08Eh)
	movwf	((c:___lltoft@exp)),c
	line	41
	goto	l5528
	
l1031:
	line	42
	
l5526:
	bcf	status,0
	rrcf	((c:___lltoft@c+3)),c
	rrcf	((c:___lltoft@c+2)),c
	rrcf	((c:___lltoft@c+1)),c
	rrcf	((c:___lltoft@c)),c
	line	43
	incf	((c:___lltoft@exp)),c
	goto	l5528
	line	44
	
l1030:
	line	41
	
l5528:
	movlw	0
	andwf	((c:___lltoft@c)),c,w
	movwf	(??___lltoft+0+0)&0ffh,c
	movlw	0
	andwf	((c:___lltoft@c+1)),c,w
	movwf	1+(??___lltoft+0+0)&0ffh,c
	
	movlw	0
	andwf	((c:___lltoft@c+2)),c,w
	movwf	2+(??___lltoft+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___lltoft@c+3)),c,w
	movwf	3+(??___lltoft+0+0)&0ffh,c
	movf	(??___lltoft+0+0),c,w
iorwf	(??___lltoft+0+1),c,w
iorwf	(??___lltoft+0+2),c,w
iorwf	(??___lltoft+0+3),c,w
	btfss	status,2
	goto	u6531
	goto	u6530

u6531:
	goto	l5526
u6530:
	goto	l5530
	
l1032:
	line	45
	
l5530:
	movff	(c:___lltoft@c),(c:___ftpack@arg)
	movff	(c:___lltoft@c+1),(c:___ftpack@arg+1)
	movff	(c:___lltoft@c+2),(c:___ftpack@arg+2)
	movff	(c:___lltoft@exp),(c:___ftpack@exp)
	movlw	low(0)
	movwf	((c:___ftpack@sign)),c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lltoft)
	movff	1+?___ftpack,(c:?___lltoft+1)
	movff	2+?___ftpack,(c:?___lltoft+2)
	goto	l1033
	
l5532:
	line	46
	
l1033:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/llmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   27[COMRAM] unsigned long 
;;  divisor         4   31[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   27[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/llmod.c"
	line	8
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v1.38/sources/common/llmod.c"
	line	8
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:
;incstack = 0
	opt	stack 28
	line	13
	
l5508:
	movf	((c:___llmod@divisor)),c,w
iorwf	((c:___llmod@divisor+1)),c,w
iorwf	((c:___llmod@divisor+2)),c,w
iorwf	((c:___llmod@divisor+3)),c,w
	btfsc	status,2
	goto	u6501
	goto	u6500

u6501:
	goto	l1018
u6500:
	line	14
	
l5510:
	movlw	low(01h)
	movwf	((c:___llmod@counter)),c
	line	15
	goto	l5514
	
l1020:
	line	16
	
l5512:
	bcf	status,0
	rlcf	((c:___llmod@divisor)),c
	rlcf	((c:___llmod@divisor+1)),c
	rlcf	((c:___llmod@divisor+2)),c
	rlcf	((c:___llmod@divisor+3)),c
	line	17
	incf	((c:___llmod@counter)),c
	goto	l5514
	line	18
	
l1019:
	line	15
	
l5514:
	
	btfss	((c:___llmod@divisor+3)),c,(31)&7
	goto	u6511
	goto	u6510
u6511:
	goto	l5512
u6510:
	goto	l5516
	
l1021:
	goto	l5516
	line	19
	
l1022:
	line	20
	
l5516:
		movf	((c:___llmod@divisor)),c,w
	subwf	((c:___llmod@dividend)),c,w
	movf	((c:___llmod@divisor+1)),c,w
	subwfb	((c:___llmod@dividend+1)),c,w
	movf	((c:___llmod@divisor+2)),c,w
	subwfb	((c:___llmod@dividend+2)),c,w
	movf	((c:___llmod@divisor+3)),c,w
	subwfb	((c:___llmod@dividend+3)),c,w
	btfss	status,0
	goto	u6521
	goto	u6520

u6521:
	goto	l5520
u6520:
	line	21
	
l5518:
	movf	((c:___llmod@divisor)),c,w
	subwf	((c:___llmod@dividend)),c
	movf	((c:___llmod@divisor+1)),c,w
	subwfb	((c:___llmod@dividend+1)),c
	movf	((c:___llmod@divisor+2)),c,w
	subwfb	((c:___llmod@dividend+2)),c
	movf	((c:___llmod@divisor+3)),c,w
	subwfb	((c:___llmod@dividend+3)),c
	goto	l5520
	
l1023:
	line	22
	
l5520:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3)),c
	rrcf	((c:___llmod@divisor+2)),c
	rrcf	((c:___llmod@divisor+1)),c
	rrcf	((c:___llmod@divisor)),c
	line	23
	
l5522:
	decfsz	((c:___llmod@counter)),c
	
	goto	l5516
	goto	l1018
	
l1024:
	line	24
	
l1018:
	line	25
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	26
	
l1025:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   14[COMRAM] unsigned long 
;;  divisor         4   18[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   22[COMRAM] unsigned long 
;;  counter         1   26[COMRAM] unsigned char 
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
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/lldiv.c"
	line	8
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v1.38/sources/common/lldiv.c"
	line	8
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:
;incstack = 0
	opt	stack 28
	line	14
	
l5486:
	movlw	low(0)
	movwf	((c:___lldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3)),c
	line	15
	
l5488:
	movf	((c:___lldiv@divisor)),c,w
iorwf	((c:___lldiv@divisor+1)),c,w
iorwf	((c:___lldiv@divisor+2)),c,w
iorwf	((c:___lldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u6471
	goto	u6470

u6471:
	goto	l1008
u6470:
	line	16
	
l5490:
	movlw	low(01h)
	movwf	((c:___lldiv@counter)),c
	line	17
	goto	l5494
	
l1010:
	line	18
	
l5492:
	bcf	status,0
	rlcf	((c:___lldiv@divisor)),c
	rlcf	((c:___lldiv@divisor+1)),c
	rlcf	((c:___lldiv@divisor+2)),c
	rlcf	((c:___lldiv@divisor+3)),c
	line	19
	incf	((c:___lldiv@counter)),c
	goto	l5494
	line	20
	
l1009:
	line	17
	
l5494:
	
	btfss	((c:___lldiv@divisor+3)),c,(31)&7
	goto	u6481
	goto	u6480
u6481:
	goto	l5492
u6480:
	goto	l5496
	
l1011:
	goto	l5496
	line	21
	
l1012:
	line	22
	
l5496:
	bcf	status,0
	rlcf	((c:___lldiv@quotient)),c
	rlcf	((c:___lldiv@quotient+1)),c
	rlcf	((c:___lldiv@quotient+2)),c
	rlcf	((c:___lldiv@quotient+3)),c
	line	23
	
l5498:
		movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c,w
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c,w
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c,w
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c,w
	btfss	status,0
	goto	u6491
	goto	u6490

u6491:
	goto	l5504
u6490:
	line	24
	
l5500:
	movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c
	line	25
	
l5502:
	bsf	(0+(0/8)+(c:___lldiv@quotient)),c,(0)&7
	goto	l5504
	line	26
	
l1013:
	line	27
	
l5504:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3)),c
	rrcf	((c:___lldiv@divisor+2)),c
	rrcf	((c:___lldiv@divisor+1)),c
	rrcf	((c:___lldiv@divisor)),c
	line	28
	
l5506:
	decfsz	((c:___lldiv@counter)),c
	
	goto	l5496
	goto	l1008
	
l1014:
	line	29
	
l1008:
	line	30
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	31
	
l1015:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "/opt/microchip/xc8/v1.38/sources/common/fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   16[BANK0 ] unsigned long 
;;  exp1            1   20[BANK0 ] unsigned char 
;;  sign1           1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/fttol.c"
	line	44
global __ptext14
__ptext14:
psect	text14
	file	"/opt/microchip/xc8/v1.38/sources/common/fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 28
	line	49
	
l5440:
	movff	(___fttol@f1+2),??___fttol+0+0
	movlb	0	; () banked
	clrf	(??___fttol+0+0+1)&0ffh
	clrf	(??___fttol+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___fttol+0+0)&0ffh
	bnc	u6391
	bsf	(??___fttol+0+0+1)&0ffh,0
u6391:
	movlb	0	; () banked
	movf	(??___fttol+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	btfss	status,2
	goto	u6401
	goto	u6400
u6401:
	goto	l5446
u6400:
	line	50
	
l5442:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l969
	
l5444:; BSR set to: 0

	goto	l969
	
l968:; BSR set to: 0

	line	51
	
l5446:; BSR set to: 0

	movlw	(017h)&0ffh
	movlb	0	; () banked
	movwf	(??___fttol+0+0)&0ffh
	movff	(___fttol@f1),??___fttol+1+0
	movff	(___fttol@f1+1),??___fttol+1+0+1
	movff	(___fttol@f1+2),??___fttol+1+0+2
	movlb	0	; () banked
	incf	((??___fttol+0+0))&0ffh,w
	movlb	0	; () banked
	movwf	(??___fttol+4+0)&0ffh
	goto	u6410
u6415:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??___fttol+1+2)&0ffh
	rrcf	(??___fttol+1+1)&0ffh
	rrcf	(??___fttol+1+0)&0ffh
u6410:
	movlb	0	; () banked
	decfsz	(??___fttol+4+0)&0ffh
	goto	u6415
	movlb	0	; () banked
	movf	(??___fttol+1+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l5448:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___fttol@f1))&0ffh,(15)&7
	line	53
	
l5450:; BSR set to: 0

	movlw	low(0FFFFh)
	movlb	0	; () banked
	andwf	((___fttol@f1))&0ffh
	movlw	high(0FFFFh)
	movlb	0	; () banked
	andwf	((___fttol@f1+1))&0ffh
	movlw	low highword(0FFFFh)
	movlb	0	; () banked
	andwf	((___fttol@f1+2))&0ffh

	line	54
	
l5452:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@f1))&0ffh,w
	movlb	0	; () banked
	movwf	((___fttol@lval))&0ffh
	movlb	0	; () banked
	movf	((___fttol@f1+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((___fttol@lval))&0ffh
	
	movlb	0	; () banked
	movf	((___fttol@f1+2))&0ffh,w
	movlb	0	; () banked
	movwf	2+((___fttol@lval))&0ffh
	
	movlb	0	; () banked
	clrf	3+((___fttol@lval))&0ffh
	line	55
	
l5454:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l5456:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___fttol@exp1))&0ffh,7
	goto	u6420
	goto	u6421

u6421:
	goto	l5468
u6420:
	line	57
	
l5458:; BSR set to: 0

	movlb	0	; () banked
		movf	((___fttol@exp1))&0ffh,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u6431
	goto	u6430

u6431:
	goto	l5464
u6430:
	line	58
	
l5460:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l969
	
l5462:; BSR set to: 0

	goto	l969
	
l971:; BSR set to: 0

	goto	l5464
	line	59
	
l972:; BSR set to: 0

	line	60
	
l5464:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___fttol@lval+3))&0ffh
	rrcf	((___fttol@lval+2))&0ffh
	rrcf	((___fttol@lval+1))&0ffh
	rrcf	((___fttol@lval))&0ffh
	line	61
	
l5466:; BSR set to: 0

	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l5464
	goto	l5478
	
l973:; BSR set to: 0

	line	62
	goto	l5478
	
l970:; BSR set to: 0

	line	63
	
l5468:; BSR set to: 0

		movlw	018h-1
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u6441
	goto	u6440

u6441:
	goto	l5476
u6440:
	line	64
	
l5470:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l969
	
l5472:; BSR set to: 0

	goto	l969
	
l975:; BSR set to: 0

	line	65
	goto	l5476
	
l977:; BSR set to: 0

	line	66
	
l5474:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___fttol@lval))&0ffh
	rlcf	((___fttol@lval+1))&0ffh
	rlcf	((___fttol@lval+2))&0ffh
	rlcf	((___fttol@lval+3))&0ffh
	line	67
	movlb	0	; () banked
	decf	((___fttol@exp1))&0ffh
	goto	l5476
	line	68
	
l976:; BSR set to: 0

	line	65
	
l5476:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6451
	goto	u6450
u6451:
	goto	l5474
u6450:
	goto	l5478
	
l978:; BSR set to: 0

	goto	l5478
	line	69
	
l974:; BSR set to: 0

	line	70
	
l5478:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6461
	goto	u6460
u6461:
	goto	l5482
u6460:
	line	71
	
l5480:; BSR set to: 0

	movlb	0	; () banked
	comf	((___fttol@lval+3))&0ffh
	comf	((___fttol@lval+2))&0ffh
	comf	((___fttol@lval+1))&0ffh
	negf	((___fttol@lval))&0ffh
	movlw	0
	addwfc	((___fttol@lval+1))&0ffh
	addwfc	((___fttol@lval+2))&0ffh
	addwfc	((___fttol@lval+3))&0ffh
	goto	l5482
	
l979:; BSR set to: 0

	line	72
	
l5482:; BSR set to: 0

	movff	(___fttol@lval),(?___fttol)
	movff	(___fttol@lval+1),(?___fttol+1)
	movff	(___fttol@lval+2),(?___fttol+2)
	movff	(___fttol@lval+3),(?___fttol+3)
	goto	l969
	
l5484:; BSR set to: 0

	line	73
	
l969:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 20 in file "/opt/microchip/xc8/v1.38/sources/common/ftsub.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK0 ] float 
;;  f2              3    9[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    6[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       6       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_main
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/ftsub.c"
	line	20
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v1.38/sources/common/ftsub.c"
	line	20
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	23
	
l5410:
	movlb	0	; () banked
	movf	((___ftsub@f2))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftsub@f2+1))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftsub@f2+2))&0ffh,w
	btfsc	status,2
	goto	u6341
	goto	u6340

u6341:
	goto	l5414
u6340:
	line	24
	
l5412:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2+2))&0ffh

	goto	l5414
	line	25
	
l964:; BSR set to: 0

	line	26
	
l5414:; BSR set to: 0

	movff	(___ftsub@f1),(c:___ftadd@f1)
	movff	(___ftsub@f1+1),(c:___ftadd@f1+1)
	movff	(___ftsub@f1+2),(c:___ftadd@f1+2)
	movff	(___ftsub@f2),(c:___ftadd@f2)
	movff	(___ftsub@f2+1),(c:___ftadd@f2+1)
	movff	(___ftsub@f2+2),(c:___ftadd@f2+2)
	call	___ftadd	;wreg free
	movff	0+?___ftadd,(?___ftsub)
	movff	1+?___ftadd,(?___ftsub+1)
	movff	2+?___ftadd,(?___ftsub+2)
	goto	l965
	
l5416:
	line	27
	
l965:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "/opt/microchip/xc8/v1.38/sources/common/ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   59[COMRAM] float 
;;  f2              3   62[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    5[BANK0 ] unsigned char 
;;  exp2            1    4[BANK0 ] unsigned char 
;;  sign            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   59[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0
;;      Totals:         6       6       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		_printf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/ftadd.c"
	line	86
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v1.38/sources/common/ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 26
	line	90
	
l4826:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	movlb	0	; () banked
	clrf	(??___ftadd+0+0+1)&0ffh
	clrf	(??___ftadd+0+0+2)&0ffh
	rlcf	((c:___ftadd@f1+1)),c,w
	movlb	0	; () banked
	rlcf	(??___ftadd+0+0)&0ffh
	bnc	u5511
	bsf	(??___ftadd+0+0+1)&0ffh,0
u5511:
	movlb	0	; () banked
	movf	(??___ftadd+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftadd@exp1))&0ffh
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	movlb	0	; () banked
	clrf	(??___ftadd+0+0+1)&0ffh
	clrf	(??___ftadd+0+0+2)&0ffh
	rlcf	((c:___ftadd@f2+1)),c,w
	movlb	0	; () banked
	rlcf	(??___ftadd+0+0)&0ffh
	bnc	u5521
	bsf	(??___ftadd+0+0+1)&0ffh,0
u5521:
	movlb	0	; () banked
	movf	(??___ftadd+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftadd@exp2))&0ffh
	line	92
	
l4828:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5531
	goto	u5530
u5531:
	goto	l884
u5530:
	
l4830:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp1))&0ffh,w
	btfsc	status,0
	goto	u5541
	goto	u5540

u5541:
	goto	l4834
u5540:
	
l4832:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	sublw	0
	movlb	0	; () banked
	addwf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	movwf	(??___ftadd+0+0)&0ffh
		movlw	019h-1
	movlb	0	; () banked
	cpfsgt	((??___ftadd+0+0))&0ffh
	goto	u5551
	goto	u5550

u5551:
	goto	l4834
u5550:
	
l884:; BSR set to: 0

	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l885
	
l882:; BSR set to: 0

	line	94
	
l4834:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5561
	goto	u5560
u5561:
	goto	l888
u5560:
	
l4836:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,0
	goto	u5571
	goto	u5570

u5571:
	goto	l4840
u5570:
	
l4838:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	sublw	0
	movlb	0	; () banked
	addwf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	movwf	(??___ftadd+0+0)&0ffh
		movlw	019h-1
	movlb	0	; () banked
	cpfsgt	((??___ftadd+0+0))&0ffh
	goto	u5581
	goto	u5580

u5581:
	goto	l4840
u5580:
	
l888:; BSR set to: 0

	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l885
	
l886:; BSR set to: 0

	line	96
	
l4840:; BSR set to: 0

	movlw	low(06h)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	line	97
	
l4842:; BSR set to: 0

	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u5591
	goto	u5590
u5591:
	goto	l4846
u5590:
	line	98
	
l4844:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(7/8)+(___ftadd@sign))&0ffh,(7)&7
	goto	l4846
	
l889:; BSR set to: 0

	line	99
	
l4846:; BSR set to: 0

	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u5601
	goto	u5600
u5601:
	goto	l890
u5600:
	line	100
	
l4848:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(6/8)+(___ftadd@sign))&0ffh,(6)&7
	
l890:; BSR set to: 0

	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l4850:; BSR set to: 0

	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l4852:; BSR set to: 0

	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l4854:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp1))&0ffh,w
	btfsc	status,0
	goto	u5611
	goto	u5610

u5611:
	goto	l4866
u5610:
	goto	l4856
	line	109
	
l892:; BSR set to: 0

	line	110
	
l4856:; BSR set to: 0

	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	movlb	0	; () banked
	decf	((___ftadd@exp2))&0ffh
	line	112
	
l4858:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,2
	goto	u5621
	goto	u5620

u5621:
	goto	l4864
u5620:
	
l4860:; BSR set to: 0

	movlb	0	; () banked
	decf	((___ftadd@sign))&0ffh
	movff	(___ftadd@sign),??___ftadd+0+0
	movlw	07h
	movlb	0	; () banked
	andwf	(??___ftadd+0+0)&0ffh
	btfss	status,2
	goto	u5631
	goto	u5630
u5631:
	goto	l4856
u5630:
	goto	l4864
	
l894:; BSR set to: 0

	goto	l4864
	
l895:; BSR set to: 0

	line	113
	goto	l4864
	
l897:; BSR set to: 0

	line	114
	
l4862:; BSR set to: 0

	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	movlb	0	; () banked
	incf	((___ftadd@exp1))&0ffh
	goto	l4864
	line	116
	
l896:; BSR set to: 0

	line	113
	
l4864:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp1))&0ffh,w
	btfss	status,2
	goto	u5641
	goto	u5640

u5641:
	goto	l4862
u5640:
	goto	l899
	
l898:; BSR set to: 0

	line	117
	goto	l899
	
l891:; BSR set to: 0

	
l4866:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,0
	goto	u5651
	goto	u5650

u5651:
	goto	l899
u5650:
	goto	l4868
	line	120
	
l901:; BSR set to: 0

	line	121
	
l4868:; BSR set to: 0

	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	movlb	0	; () banked
	decf	((___ftadd@exp1))&0ffh
	line	123
	
l4870:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,2
	goto	u5661
	goto	u5660

u5661:
	goto	l4876
u5660:
	
l4872:; BSR set to: 0

	movlb	0	; () banked
	decf	((___ftadd@sign))&0ffh
	movff	(___ftadd@sign),??___ftadd+0+0
	movlw	07h
	movlb	0	; () banked
	andwf	(??___ftadd+0+0)&0ffh
	btfss	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l4868
u5670:
	goto	l4876
	
l903:; BSR set to: 0

	goto	l4876
	
l904:; BSR set to: 0

	line	124
	goto	l4876
	
l906:; BSR set to: 0

	line	125
	
l4874:; BSR set to: 0

	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	movlb	0	; () banked
	incf	((___ftadd@exp2))&0ffh
	goto	l4876
	line	127
	
l905:; BSR set to: 0

	line	124
	
l4876:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp1))&0ffh,w
	btfss	status,2
	goto	u5681
	goto	u5680

u5681:
	goto	l4874
u5680:
	goto	l899
	
l907:; BSR set to: 0

	goto	l899
	line	128
	
l900:; BSR set to: 0

	line	129
	
l899:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@sign))&0ffh,(7)&7
	goto	u5691
	goto	u5690
u5691:
	goto	l908
u5690:
	line	131
	
l4878:; BSR set to: 0

	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f1+2)),c

	line	132
	movlw	low(01h)
	addwf	((c:___ftadd@f1)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f1+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f1+2)),c

	line	133
	
l908:; BSR set to: 0

	line	134
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@sign))&0ffh,(6)&7
	goto	u5701
	goto	u5700
u5701:
	goto	l4882
u5700:
	line	136
	
l4880:; BSR set to: 0

	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	137
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	goto	l4882
	line	138
	
l909:; BSR set to: 0

	line	139
	
l4882:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	line	140
	
l4884:; BSR set to: 0

	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l4886:; BSR set to: 0

	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u5711
	goto	u5710
u5711:
	goto	l4892
u5710:
	line	142
	
l4888:; BSR set to: 0

	movlw	low(0FFFFFFh)
	xorwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFFFh)
	xorwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFFFh)
	xorwf	((c:___ftadd@f2+2)),c

	line	143
	movlw	low(01h)
	addwf	((c:___ftadd@f2)),c
	movlw	high(01h)
	addwfc	((c:___ftadd@f2+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftadd@f2+2)),c

	line	144
	
l4890:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	goto	l4892
	line	145
	
l910:; BSR set to: 0

	line	146
	
l4892:; BSR set to: 0

	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(___ftadd@exp1),(c:___ftpack@exp)
	movff	(___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l885
	
l4894:
	line	148
	
l885:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.38/sources/common/ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   14[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   14[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/ftneg.c"
	line	15
global __ptext17
__ptext17:
psect	text17
	file	"/opt/microchip/xc8/v1.38/sources/common/ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:
;incstack = 0
	opt	stack 28
	line	17
	
l5436:
	movf	((c:___ftneg@f1)),c,w
iorwf	((c:___ftneg@f1+1)),c,w
iorwf	((c:___ftneg@f1+2)),c,w
	btfsc	status,2
	goto	u6381
	goto	u6380

u6381:
	goto	l958
u6380:
	line	18
	
l5438:
	movlw	low(0800000h)
	xorwf	((c:___ftneg@f1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftneg@f1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftneg@f1+2)),c

	
l958:
	line	19
	movff	(c:___ftneg@f1),(c:?___ftneg)
	movff	(c:___ftneg@f1+1),(c:?___ftneg+1)
	movff	(c:___ftneg@f1+2),(c:?___ftneg+2)
	line	20
	
l959:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "/opt/microchip/xc8/v1.38/sources/common/ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3   14[COMRAM] float 
;;  ff2             3   17[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/ftge.c"
	line	4
global __ptext18
__ptext18:
psect	text18
	file	"/opt/microchip/xc8/v1.38/sources/common/ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:
;incstack = 0
	opt	stack 28
	line	6
	
l5418:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u6351
	goto	u6350
u6351:
	goto	l5422
u6350:
	line	7
	
l5420:
	movff	(c:___ftge@ff1),??___ftge+0+0
	movff	(c:___ftge@ff1+1),??___ftge+0+0+1
	movff	(c:___ftge@ff1+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff1)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff1)),c
	
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff1)),c
	goto	l5422
	
l940:
	line	8
	
l5422:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u6361
	goto	u6360
u6361:
	goto	l5426
u6360:
	line	9
	
l5424:
	movff	(c:___ftge@ff2),??___ftge+0+0
	movff	(c:___ftge@ff2+1),??___ftge+0+0+1
	movff	(c:___ftge@ff2+2),??___ftge+0+0+2
	comf	(??___ftge+0+0),c
	comf	(??___ftge+0+1),c
	comf	(??___ftge+0+2),c
	incf	(??___ftge+0+0),c
	movlw	0
	addwfc	(??___ftge+0+1),c
	addwfc	(??___ftge+0+2),c

	movlw	low(0800000h)
	addwf	(??___ftge+0+0),c,w
	movwf	((c:___ftge@ff2)),c
	movlw	0
	addwfc	(??___ftge+0+1),c,w
	movwf	1+((c:___ftge@ff2)),c
	
	movlw	080h
	addwfc	(??___ftge+0+2),c,w
	movwf	2+((c:___ftge@ff2)),c
	goto	l5426
	
l941:
	line	10
	
l5426:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l5428:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff2)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff2+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff2+2)),c

	line	12
		movf	((c:___ftge@ff2)),c,w
	subwf	((c:___ftge@ff1)),c,w
	movf	((c:___ftge@ff2+1)),c,w
	subwfb	((c:___ftge@ff1+1)),c,w
	movf	((c:___ftge@ff2+2)),c,w
	subwfb	((c:___ftge@ff1+2)),c,w
	btfsc	status,0
	goto	u6371
	goto	u6370

u6371:
	goto	l5432
u6370:
	
l5430:
	bcf	status,0
	goto	l942
	
l4780:
	
l5432:
	bsf	status,0
	goto	l942
	
l4782:
	goto	l942
	
l5434:
	line	13
	
l942:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_initYBOT

;; *************** function _initYBOT *****************
;; Defined at:
;;		line 188 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
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
;;		_InitAnalog
;;		_InitTIMERS
;;		_MotorsPWM
;;		_ResetCounter
;;		_configurations_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	188
global __ptext19
__ptext19:
psect	text19
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	188
	global	__size_of_initYBOT
	__size_of_initYBOT	equ	__end_of_initYBOT-_initYBOT
	
_initYBOT:
;incstack = 0
	opt	stack 28
	line	189
	
l5534:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	190
	
l5536:; BSR set to: 0

	call	_ResetCounter	;wreg free
	line	191
	
l5538:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_gstatus))&0ffh
	line	192
	call	_configurations_init	;wreg free
	line	193
	call	_InitAnalog	;wreg free
	line	194
	call	_InitTIMERS	;wreg free
	line	195
	call	_MotorsPWM	;wreg free
	line	196
	
l160:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initYBOT
	__end_of_initYBOT:
	signat	_initYBOT,89
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 31 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text20,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	31
global __ptext20
__ptext20:
psect	text20
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	31
	global	__size_of_configurations_init
	__size_of_configurations_init	equ	__end_of_configurations_init-_configurations_init
	
_configurations_init:
;incstack = 0
	opt	stack 28
	line	32
	
l5030:
		
	bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	35
	
l5032:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	38
	
l5034:
	bcf	((c:3949)),c,3	;volatile
	line	39
	
l5036:
	bsf	((c:3951)),c,3	;volatile
	line	40
	
l432:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,89
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 219 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text21,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	219
global __ptext21
__ptext21:
psect	text21
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	219
	global	__size_of_ResetCounter
	__size_of_ResetCounter	equ	__end_of_ResetCounter-_ResetCounter
	
_ResetCounter:
;incstack = 0
	opt	stack 28
	line	220
	
l5028:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	221
	
l175:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetCounter
	__end_of_ResetCounter:
	signat	_ResetCounter,89
	global	_MotorsPWM

;; *************** function _MotorsPWM *****************
;; Defined at:
;;		line 140 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text22,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	140
global __ptext22
__ptext22:
psect	text22
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	140
	global	__size_of_MotorsPWM
	__size_of_MotorsPWM	equ	__end_of_MotorsPWM-_MotorsPWM
	
_MotorsPWM:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	142
	
l5124:
	bcf	c:(32339/8),(32339)&7	;volatile
	line	143
	bcf	c:(32340/8),(32340)&7	;volatile
	line	144
	bcf	c:(32341/8),(32341)&7	;volatile
	line	145
	bcf	c:(32342/8),(32342)&7	;volatile
	line	147
	bsf	c:(32338/8),(32338)&7	;volatile
	line	148
	bcf	c:(32336/8),(32336)&7	;volatile
	line	149
	bcf	c:(32337/8),(32337)&7	;volatile
	line	151
	bsf	c:(32338/8),(32338)&7	;volatile
	line	154
	
l5126:
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<4)-1)<<3)
	iorlw	(0Bh & ((1<<4)-1))<<3
	movwf	((c:4042)),c	;volatile
	line	155
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	((c:4042)),c	;volatile
	line	156
	
l5128:
	bcf	((c:4042)),c,2	;volatile
	line	157
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	158
	
l5130:
	bsf	((c:4042)),c,2	;volatile
	line	161
	movf	((c:4029)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4029)),c	;volatile
	line	162
	movf	((c:4026)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4026)),c	;volatile
	line	163
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	165
	
l441:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsPWM
	__end_of_MotorsPWM:
	signat	_MotorsPWM,89
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 42 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text23,class=CODE,space=0,reloc=2
	line	42
global __ptext23
__ptext23:
psect	text23
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	42
	global	__size_of_InitTIMERS
	__size_of_InitTIMERS	equ	__end_of_InitTIMERS-_InitTIMERS
	
_InitTIMERS:
;incstack = 0
	opt	stack 28
	line	43
	
l5048:
	bcf	((c:4053)),c,7	;volatile
	line	44
	bcf	((c:4053)),c,6	;volatile
	line	45
	bcf	((c:4053)),c,5	;volatile
	line	47
	bsf	((c:4053)),c,3	;volatile
	line	48
	
l5050:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	49
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	52
	
l5052:
	bsf	((c:4081)),c,2	;volatile
	line	53
	
l5054:
	bcf	((c:4048)),c,7	;volatile
	line	54
	
l5056:
	bsf	((c:4082)),c,5	;volatile
	line	58
	
l5058:
	bsf	((c:4082)),c,7	;volatile
	line	60
	
l5060:
	bsf	((c:4053)),c,7	;volatile
	line	62
	
l5062:
	bcf	((c:4045)),c,0	;volatile
	line	63
	
l5064:
	bcf	((c:4045)),c,7	;volatile
	line	64
	
l5066:
	bcf	((c:4045)),c,6	;volatile
	line	65
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	66
	
l5068:
	bcf	((c:4045)),c,3	;volatile
	line	67
	
l5070:
	bcf	((c:4045)),c,1	;volatile
	line	68
	
l5072:
	bsf	((c:4045)),c,0	;volatile
	line	70
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	71
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	79
	
l5074:
	bcf	((c:3987)),c,5	;volatile
	line	81
	
l5076:
	bcf	((c:3986)),c,4	;volatile
	line	82
	
l5078:
	bcf	((c:3987)),c,0	;volatile
	line	84
	
l5080:
	bsf	((c:3989)),c,4	;volatile
	line	85
	
l5082:
	bsf	((c:3989)),c,5	;volatile
	line	86
	
l5084:
	bsf	((c:3989)),c,6	;volatile
	line	89
	
l5086:
	bcf	((c:3989)),c,1	;volatile
	line	90
	
l5088:
	bcf	((c:3989)),c,2	;volatile
	line	91
	
l5090:
	bsf	((c:3989)),c,0	;volatile
	line	92
	
l5092:
	bcf	((c:3989)),c,3	;volatile
	line	95
	
l5094:
	bcf	((c:3988)),c,1	;volatile
	line	96
	
l5096:
	bcf	((c:3988)),c,2	;volatile
	line	99
	
l5098:
	bsf	((c:3986)),c,0	;volatile
	line	100
	
l5100:
	bsf	((c:3986)),c,1	;volatile
	line	101
	
l5102:
	bsf	((c:3986)),c,2	;volatile
	line	102
	
l5104:
	bsf	((c:3986)),c,3	;volatile
	line	103
	
l5106:
	bsf	((c:3986)),c,5	;volatile
	line	105
	
l5108:
	bsf	((c:3990)),c,0	;volatile
	line	106
	
l5110:
	bsf	((c:3990)),c,1	;volatile
	line	107
	
l5112:
	bsf	((c:3990)),c,2	;volatile
	line	108
	
l5114:
	bsf	((c:3987)),c,2	;volatile
	line	110
	
l5116:
	bsf	((c:3987)),c,1	;volatile
	line	115
	
l5118:
	bcf	((c:3988)),c,6	;volatile
	line	116
	
l5120:
	bsf	((c:3988)),c,7	;volatile
	line	118
	
l5122:
	bsf	((c:3972)),c,7	;volatile
	line	119
	
l435:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,89
	global	_InitAnalog

;; *************** function _InitAnalog *****************
;; Defined at:
;;		line 121 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text24,class=CODE,space=0,reloc=2
	line	121
global __ptext24
__ptext24:
psect	text24
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	121
	global	__size_of_InitAnalog
	__size_of_InitAnalog	equ	__end_of_InitAnalog-_InitAnalog
	
_InitAnalog:
;incstack = 0
	opt	stack 28
	line	122
	
l5038:
	bcf	((c:4033)),c,5	;volatile
	line	123
	bcf	((c:4033)),c,4	;volatile
	line	125
	bcf	((c:4033)),c,3	;volatile
	line	126
	bsf	((c:4033)),c,2	;volatile
	line	127
	bcf	((c:4033)),c,1	;volatile
	line	128
	bcf	((c:4033)),c,0	;volatile
	line	132
	bcf	((c:4032)),c,7	;volatile
	line	133
		
	bsf	((c:4032)),c, 3+0	;volatile
	bsf	((c:4032)),c, 3+1	;volatile
	bsf	((c:4032)),c, 3+2	;volatile

	line	134
	
l5040:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	135
	
l5042:
		
	bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	136
	
l5044:
	bcf	((c:4034)),c,1	;volatile
	line	137
	
l5046:
	bsf	((c:4034)),c,0	;volatile
	line	138
	
l438:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,89
	global	_initLED

;; *************** function _initLED *****************
;; Defined at:
;;		line 243 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
psect	text25,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	243
global __ptext25
__ptext25:
psect	text25
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	243
	global	__size_of_initLED
	__size_of_initLED	equ	__end_of_initLED-_initLED
	
_initLED:
;incstack = 0
	opt	stack 29
	line	244
	
l5540:
	movlw	high(0)
	movwf	((c:_x+1)),c
	movlw	low(0)
	movwf	((c:_x)),c
	
l5542:
	btfsc	((c:_x+1)),c,7
	goto	u6541
	movf	((c:_x+1)),c,w
	bnz	u6540
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6541
	goto	u6540

u6541:
	goto	l5546
u6540:
	goto	l190
	
l5544:
	goto	l190
	
l188:
	line	245
	
l5546:
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	246
	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movlw	low(0400h)
	movwf	postinc2,c
	movlw	high(0400h)
	movwf	postdec2,c
	line	244
	
l5548:
	infsnz	((c:_x)),c
	incf	((c:_x+1)),c
	
l5550:
	btfsc	((c:_x+1)),c,7
	goto	u6551
	movf	((c:_x+1)),c,w
	bnz	u6550
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6551
	goto	u6550

u6551:
	goto	l5546
u6550:
	goto	l190
	
l189:
	line	248
	
l190:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initLED
	__end_of_initLED:
	signat	_initLED,89
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "/opt/microchip/xc8/v1.38/sources/common/awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   25[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         3       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/awtoft.c"
	line	32
global __ptext26
__ptext26:
psect	text26
	file	"/opt/microchip/xc8/v1.38/sources/common/awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 28
	line	36
	
l5986:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l5988:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u7260
	goto	u7261

u7261:
	goto	l5994
u7260:
	line	38
	
l5990:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l5992:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l5994
	line	40
	
l815:
	line	41
	
l5994:
	movff	(c:___awtoft@c),(c:___ftpack@arg)
	movff	(c:___awtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2)),c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp)),c
	movff	(c:___awtoft@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___awtoft)
	movff	1+?___ftpack,(c:?___awtoft+1)
	movff	2+?___ftpack,(c:?___awtoft+2)
	goto	l816
	
l5996:
	line	42
	
l816:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.38/sources/common/float.c"
;; Parameters:    Size  Location     Type
;;  arg             3   14[COMRAM] unsigned um
;;  exp             1   17[COMRAM] unsigned char 
;;  sign            1   18[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   14[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         5       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___lltoft
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/float.c"
	line	62
global __ptext27
__ptext27:
psect	text27
	file	"/opt/microchip/xc8/v1.38/sources/common/float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 26
	line	64
	
l4784:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u5431
	goto	u5430
u5431:
	goto	l4788
u5430:
	
l4786:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u5441
	goto	u5440

u5441:
	goto	l4794
u5440:
	goto	l4788
	
l849:
	line	65
	
l4788:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l850
	
l4790:
	goto	l850
	
l847:
	line	66
	goto	l4794
	
l852:
	line	67
	
l4792:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l4794
	line	69
	
l851:
	line	66
	
l4794:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u5451
	goto	u5450

u5451:
	goto	l4792
u5450:
	goto	l4800
	
l853:
	line	70
	goto	l4800
	
l855:
	line	71
	
l4796:
	incf	((c:___ftpack@exp)),c
	line	72
	
l4798:
	movlw	low(01h)
	addwf	((c:___ftpack@arg)),c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1)),c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2)),c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l4800
	line	74
	
l854:
	line	70
	
l4800:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg)),c,w
	movwf	(??___ftpack+0+0)&0ffh,c
	movlw	0
	andwf	((c:___ftpack@arg+1)),c,w
	movwf	1+(??___ftpack+0+0)&0ffh,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2)),c,w
	movwf	2+(??___ftpack+0+0)&0ffh,c

	movf	(??___ftpack+0+0),c,w
iorwf	(??___ftpack+0+1),c,w
iorwf	(??___ftpack+0+2),c,w
	btfss	status,2
	goto	u5461
	goto	u5460

u5461:
	goto	l4796
u5460:
	goto	l4804
	
l856:
	line	75
	goto	l4804
	
l858:
	line	76
	
l4802:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l4804
	line	78
	
l857:
	line	75
	
l4804:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u5471
	goto	u5470
u5471:
	goto	l861
u5470:
	
l4806:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u5481
	goto	u5480

u5481:
	goto	l4802
u5480:
	goto	l861
	
l860:
	
l861:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u5491
	goto	u5490
u5491:
	goto	l4810
u5490:
	line	80
	
l4808:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l4810
	
l862:
	line	81
	
l4810:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l4812:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u5501
	goto	u5500
u5501:
	goto	l4816
u5500:
	line	84
	
l4814:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l4816
	
l863:
	line	85
	
l4816:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l850
	
l4818:
	line	86
	
l850:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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
psect	text28,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/almod.c"
	line	8
global __ptext28
__ptext28:
psect	text28
	file	"/opt/microchip/xc8/v1.38/sources/common/almod.c"
	line	8
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:
;incstack = 0
	opt	stack 29
	line	13
	
l5950:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l5952:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u7200
	goto	u7201

u7201:
	goto	l5958
u7200:
	line	15
	
l5954:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l5956:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l5958
	line	17
	
l688:
	line	18
	
l5958:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u7210
	goto	u7211

u7211:
	goto	l5962
u7210:
	line	19
	
l5960:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l5962
	
l689:
	line	20
	
l5962:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u7221
	goto	u7220

u7221:
	goto	l5978
u7220:
	line	21
	
l5964:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l5968
	
l692:
	line	23
	
l5966:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l5968
	line	25
	
l691:
	line	22
	
l5968:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u7231
	goto	u7230
u7231:
	goto	l5966
u7230:
	goto	l5970
	
l693:
	goto	l5970
	line	26
	
l694:
	line	27
	
l5970:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u7241
	goto	u7240

u7241:
	goto	l5974
u7240:
	line	28
	
l5972:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l5974
	
l695:
	line	29
	
l5974:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l5976:
	decfsz	((c:___almod@counter)),c
	
	goto	l5970
	goto	l5978
	
l696:
	goto	l5978
	line	31
	
l690:
	line	32
	
l5978:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u7251
	goto	u7250
u7251:
	goto	l5982
u7250:
	line	33
	
l5980:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l5982
	
l697:
	line	34
	
l5982:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l698
	
l5984:
	line	35
	
l698:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	_Wixel

;; *************** function _Wixel *****************
;; Defined at:
;;		line 9 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text29,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	9
global __ptext29
__ptext29:
psect	text29
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	9
	global	__size_of_Wixel
	__size_of_Wixel	equ	__end_of_Wixel-_Wixel
	
_Wixel:
;incstack = 0
	opt	stack 29
	line	10
	
l5636:
	bcf	((c:4024)),c,5	;volatile
	line	11
	bcf	((c:4024)),c,4	;volatile
	line	12
	bsf	((c:4024)),c,3	;volatile
	line	14
	bcf	((c:4024)),c,1	;volatile
	line	15
	bcf	((c:4024)),c,0	;volatile
	line	16
	
l5638:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	17
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	18
	
l5640:
	bcf	((c:4012)),c,7	;volatile
	line	19
	
l5642:
	bcf	((c:4012)),c,6	;volatile
	line	20
	
l5644:
	bsf	((c:4012)),c,5	;volatile
	line	21
	
l5646:
	bcf	((c:4012)),c,4	;volatile
	line	23
	
l5648:
	bcf	((c:4012)),c,2	;volatile
	line	24
	
l5650:
	bcf	((c:4011)),c,6	;volatile
	line	25
	
l5652:
	bsf	((c:4011)),c,4	;volatile
	line	26
	
l5654:
	bsf	((c:4011)),c,7	;volatile
	line	28
	
l429:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,89
	global	_MotorsSpeed

;; *************** function _MotorsSpeed *****************
;; Defined at:
;;		line 189 in file "/home/newtonis/Robots/Rayito2/config.c"
;; Parameters:    Size  Location     Type
;;  A               2   34[COMRAM] int 
;;  B               2   36[COMRAM] int 
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
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	line	189
global __ptext30
__ptext30:
psect	text30
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	189
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 27
	line	190
	
l5656:
	goto	l475
	
l5658:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1715)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1715+1)
	goto	l5660
	
l475:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1715)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1715+1)
	goto	l5660
	
l477:
	
l5660:
	movff	(c:_MotorsSpeed$1715),(c:MotorASpeed@S)
	movff	(c:_MotorsSpeed$1715+1),(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	191
	
l5662:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1717)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1717+1)
	goto	l5664
	
l479:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1717)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1717+1)
	goto	l5664
	
l481:
	
l5664:
	movff	(c:_MotorsSpeed$1717),(c:MotorBSpeed@S)
	movff	(c:_MotorsSpeed$1717+1),(c:MotorBSpeed@S+1)
	call	_MotorBSpeed	;wreg free
	line	192
	
l482:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8313
	global	_MotorBSpeed

;; *************** function _MotorBSpeed *****************
;; Defined at:
;;		line 177 in file "/home/newtonis/Robots/Rayito2/config.c"
;; Parameters:    Size  Location     Type
;;  S               2   28[COMRAM] int 
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
psect	text31,class=CODE,space=0,reloc=2
	line	177
global __ptext31
__ptext31:
psect	text31
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	177
	global	__size_of_MotorBSpeed
	__size_of_MotorBSpeed	equ	__end_of_MotorBSpeed-_MotorBSpeed
	
_MotorBSpeed:
;incstack = 0
	opt	stack 27
	line	178
	
l5150:
	negf	((c:MotorBSpeed@S)),c
	comf	((c:MotorBSpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorBSpeed@S+1)),c
	line	179
	
l5152:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5961
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u5961
	goto	u5960

u5961:
	goto	l5156
u5960:
	
l5154:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l5156
	
l460:
	goto	l5156
	
l462:
	line	180
	
l5156:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u5971
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u5971
	goto	u5970

u5971:
	goto	l5160
u5970:
	
l5158:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l5160
	
l464:
	goto	l5160
	
l466:
	line	182
	
l5160:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5981
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u5980
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u5981
	goto	u5980

u5981:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u5998
u5980:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u5998:
	rlncf	(??_MotorBSpeed+0+0),c
	rlncf	(??_MotorBSpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	183
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u6000
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u6001
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u6001
	goto	u6000

u6001:
	goto	l5164
u6000:
	
l5162:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l5164
	
l468:
	goto	l5164
	
l470:
	line	185
	
l5164:
	movff	(c:MotorBSpeed@S),??_MotorBSpeed+0+0
	movlw	03h
	andwf	(??_MotorBSpeed+0+0),c
	swapf	(??_MotorBSpeed+0+0),c
	movf	((c:4026)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:4026)),c	;volatile
	line	186
	
l5166:
	movff	(c:MotorBSpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorBSpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4027)),c	;volatile
	line	187
	
l471:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorBSpeed
	__end_of_MotorBSpeed:
	signat	_MotorBSpeed,4217
	global	_MotorASpeed

;; *************** function _MotorASpeed *****************
;; Defined at:
;;		line 166 in file "/home/newtonis/Robots/Rayito2/config.c"
;; Parameters:    Size  Location     Type
;;  S               2   28[COMRAM] int 
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
psect	text32,class=CODE,space=0,reloc=2
	line	166
global __ptext32
__ptext32:
psect	text32
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	166
	global	__size_of_MotorASpeed
	__size_of_MotorASpeed	equ	__end_of_MotorASpeed-_MotorASpeed
	
_MotorASpeed:
;incstack = 0
	opt	stack 27
	line	167
	
l5132:
	negf	((c:MotorASpeed@S)),c
	comf	((c:MotorASpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorASpeed@S+1)),c
	line	168
	
l5134:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5911
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u5911
	goto	u5910

u5911:
	goto	l5138
u5910:
	
l5136:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l5138
	
l445:
	goto	l5138
	
l447:
	line	169
	
l5138:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u5921
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u5921
	goto	u5920

u5921:
	goto	l5142
u5920:
	
l5140:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l5142
	
l449:
	goto	l5142
	
l451:
	line	171
	
l5142:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5931
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u5930
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u5931
	goto	u5930

u5931:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u5948
u5930:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u5948:
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	172
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5950
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u5951
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u5951
	goto	u5950

u5951:
	goto	l5146
u5950:
	
l5144:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l5146
	
l453:
	goto	l5146
	
l455:
	line	174
	
l5146:
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
	line	175
	
l5148:
	movff	(c:MotorASpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorASpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4030)),c	;volatile
	line	176
	
l456:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorASpeed
	__end_of_MotorASpeed:
	signat	_MotorASpeed,4217
	global	_Line

;; *************** function _Line *****************
;; Defined at:
;;		line 290 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   54[COMRAM] int 
;;  i               2   52[COMRAM] int 
;;  j               2   48[COMRAM] int 
;;  v               4   56[COMRAM] long 
;;  b               4   43[COMRAM] long 
;;  a               4   39[COMRAM] long 
;;  w               4   35[COMRAM] long 
;;  j               2   50[COMRAM] int 
;;  g               1   47[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:        25       0       0       0       0       0       0       0       0
;;      Temps:          7       0       0       0       0       0       0       0       0
;;      Totals:        32       0       0       0       0       0       0       0       0
;;Total ram usage:       32 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___aldiv
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	290
global __ptext33
__ptext33:
psect	text33
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	290
	global	__size_of_Line
	__size_of_Line	equ	__end_of_Line-_Line
	
_Line:
;incstack = 0
	opt	stack 28
	line	291
	
l5552:
	movlw	low(0)
	movwf	((c:Line@a)),c
	movlw	high(0)
	movwf	((c:Line@a+1)),c
	movlw	low highword(0)
	movwf	((c:Line@a+2)),c
	movlw	high highword(0)
	movwf	((c:Line@a+3)),c
	line	292
	movlw	low(0)
	movwf	((c:Line@b)),c
	movlw	high(0)
	movwf	((c:Line@b+1)),c
	movlw	low highword(0)
	movwf	((c:Line@b+2)),c
	movlw	high highword(0)
	movwf	((c:Line@b+3)),c
	line	293
	movlw	low(0)
	movwf	((c:Line@g)),c
	line	297
	movlw	high(0)
	movwf	((c:Line@j+1)),c
	movlw	low(0)
	movwf	((c:Line@j)),c
	
l5554:
	btfsc	((c:Line@j+1)),c,7
	goto	u6561
	movf	((c:Line@j+1)),c,w
	bnz	u6560
	movlw	5
	subwf	 ((c:Line@j)),c,w
	btfss	status,0
	goto	u6561
	goto	u6560

u6561:
	goto	l5558
u6560:
	goto	l5596
	
l5556:
	goto	l5596
	
l231:
	line	298
	
l5558:
	bcf	status,0
	rlcf	((c:Line@j)),c,w
	movwf	fsr2l
	rlcf	((c:Line@j+1)),c,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(c:Line@i)
	movff	postdec2,(c:Line@i+1)
	line	299
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(c:Line@v)
	movff	??_Line+0+1,(c:Line@v+1)
	clrf	((c:Line@v+2)),c
	clrf	((c:Line@v+3)),c

	line	300
	
l5560:
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movf	(??_Line+0+0),c,w
	movwf	(??_Line+2+0)&0ffh,c
	movf	(??_Line+0+1),c,w
	movwf	1+(??_Line+2+0)&0ffh,c
	
	clrf	2+(??_Line+2+0)&0ffh,c
	
	clrf	3+(??_Line+2+0)&0ffh,c
		movf	(??_Line+2+0),c,w
	subwf	((c:Line@v)),c,w
	movf	(??_Line+2+1),c,w
	subwfb	((c:Line@v+1)),c,w
	movf	(??_Line+2+2),c,w
	subwfb	((c:Line@v+2)),c,w
	movf	((c:Line@v+3)),c,w
	xorlw	80h
	movwf	(??_Line+6+0)&0ffh,c
	movf	(??_Line+2+3),c,w
	xorlw	80h
	subwfb	(??_Line+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u6571
	goto	u6570

u6571:
	goto	l5564
u6570:
	line	301
	
l5562:
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(c:Line@v)
	movff	??_Line+0+1,(c:Line@v+1)
	clrf	((c:Line@v+2)),c
	clrf	((c:Line@v+3)),c

	goto	l5564
	line	302
	
l233:
	line	303
	
l5564:
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movf	(??_Line+0+0),c,w
	movwf	(??_Line+2+0)&0ffh,c
	movf	(??_Line+0+1),c,w
	movwf	1+(??_Line+2+0)&0ffh,c
	
	clrf	2+(??_Line+2+0)&0ffh,c
	
	clrf	3+(??_Line+2+0)&0ffh,c
		movf	((c:Line@v)),c,w
	subwf	(??_Line+2+0),c,w
	movf	((c:Line@v+1)),c,w
	subwfb	(??_Line+2+1),c,w
	movf	((c:Line@v+2)),c,w
	subwfb	(??_Line+2+2),c,w
	movf	(??_Line+2+3),c,w
	xorlw	80h
	movwf	(??_Line+6+0)&0ffh,c
	movf	((c:Line@v+3)),c,w
	xorlw	80h
	subwfb	(??_Line+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u6581
	goto	u6580

u6581:
	goto	l5568
u6580:
	line	304
	
l5566:
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(c:Line@v)
	movff	??_Line+0+1,(c:Line@v+1)
	clrf	((c:Line@v+2)),c
	clrf	((c:Line@v+3)),c

	goto	l5568
	line	305
	
l234:
	line	306
	
l5568:
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movf	(??_Line+0+0),c,w
	movwf	(??_Line+2+0)&0ffh,c
	movf	(??_Line+0+1),c,w
	movwf	1+(??_Line+2+0)&0ffh,c
	
	clrf	2+(??_Line+2+0)&0ffh,c
	
	clrf	3+(??_Line+2+0)&0ffh,c
	movf	(??_Line+2+0),c,w
	subwf	((c:Line@v)),c
	movf	(??_Line+2+1),c,w
	subwfb	((c:Line@v+1)),c
	movf	(??_Line+2+2),c,w
	subwfb	((c:Line@v+2)),c
	movf	(??_Line+2+3),c,w
	subwfb	((c:Line@v+3)),c

	line	307
	
l5570:
	movff	(c:Line@v),(c:___lmul@multiplier)
	movff	(c:Line@v+1),(c:___lmul@multiplier+1)
	movff	(c:Line@v+2),(c:___lmul@multiplier+2)
	movff	(c:Line@v+3),(c:___lmul@multiplier+3)
	movlw	low(03E8h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(03E8h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(03E8h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(03E8h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:Line@v)
	movff	1+?___lmul,(c:Line@v+1)
	movff	2+?___lmul,(c:Line@v+2)
	movff	3+?___lmul,(c:Line@v+3)
	
	line	308
	
l5572:
	movff	(c:Line@v),(c:___aldiv@dividend)
	movff	(c:Line@v+1),(c:___aldiv@dividend+1)
	movff	(c:Line@v+2),(c:___aldiv@dividend+2)
	movff	(c:Line@v+3),(c:___aldiv@dividend+3)
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+2+0
	movff	postdec2,??_Line+2+0+1
	comf	(??_Line+2+0),c
	comf	(??_Line+2+1),c
	infsnz	(??_Line+2+0),c
	incf	(??_Line+2+1),c
	movf	(??_Line+0+0),c,w
	addwf	(??_Line+2+0),c
	movf	(??_Line+0+1),c,w
	addwfc	(??_Line+2+1),c
	movff	??_Line+2+0,(c:___aldiv@divisor)
	movff	??_Line+2+1,(c:___aldiv@divisor+1)
	clrf	((c:___aldiv@divisor+2)),c
	clrf	((c:___aldiv@divisor+3)),c

	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:Line@v)
	movff	1+?___aldiv,(c:Line@v+1)
	movff	2+?___aldiv,(c:Line@v+2)
	movff	3+?___aldiv,(c:Line@v+3)
	
	line	309
	
l5574:
	movff	(c:Line@v),??_Line+0+0
	movff	(c:Line@v+1),??_Line+0+0+1
	movff	(c:Line@v+2),??_Line+0+0+2
	movff	(c:Line@v+3),??_Line+0+0+3
	comf	(??_Line+0+0),c
	comf	(??_Line+0+1),c
	comf	(??_Line+0+2),c
	comf	(??_Line+0+3),c
	incf	(??_Line+0+0),c
	movlw	0
	addwfc	(??_Line+0+1),c
	addwfc	(??_Line+0+2),c
	addwfc	(??_Line+0+3),c
	movlw	0E8h
	addwf	(??_Line+0+0),c,w
	movwf	((c:Line@v)),c
	movlw	03h
	addwfc	(??_Line+0+1),c,w
	movwf	1+((c:Line@v)),c
	
	movlw	0
	addwfc	(??_Line+0+2),c,w
	movwf	2+((c:Line@v)),c
	
	movlw	0
	addwfc	(??_Line+0+3),c,w
	movwf	3+((c:Line@v)),c
	line	310
	
l5576:
	btfsc	((c:Line@v+3)),c,7
	goto	u6590
	movf	((c:Line@v+3)),c,w
	iorwf	((c:Line@v+2)),c,w
	iorwf	((c:Line@v+1)),c,w
	bnz	u6591
	movlw	50
	subwf	 ((c:Line@v)),c,w
	btfsc	status,0
	goto	u6591
	goto	u6590

u6591:
	goto	l5580
u6590:
	line	311
	
l5578:
	movlw	low(0)
	movwf	((c:Line@v)),c
	movlw	high(0)
	movwf	((c:Line@v+1)),c
	movlw	low highword(0)
	movwf	((c:Line@v+2)),c
	movlw	high highword(0)
	movwf	((c:Line@v+3)),c
	goto	l5580
	line	312
	
l235:
	line	313
	
l5580:
	bcf	status,0
	rlcf	((c:Line@i)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i+1)),c,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	(c:Line@v),postinc2
	movff	(c:Line@v+1),postdec2
	line	314
	
l5582:
	bcf	status,0
	rlcf	((c:Line@j)),c,w
	movwf	fsr2l
	rlcf	((c:Line@j+1)),c,w
	movwf	fsr2h
	movlw	low(_pd)
	addwf	fsr2l
	movlw	high(_pd)
	addwfc	fsr2h
	movff	postinc2,(c:Line@w)
	movff	postdec2,(c:Line@w+1)
	movlw	0
	btfsc	((c:Line@w+1)),c,7
	movlw	-1
	movwf	((c:Line@w+2)),c
	movwf	((c:Line@w+3)),c
	line	317
	
l5584:
	movff	(c:Line@v),(c:___lmul@multiplier)
	movff	(c:Line@v+1),(c:___lmul@multiplier+1)
	movff	(c:Line@v+2),(c:___lmul@multiplier+2)
	movff	(c:Line@v+3),(c:___lmul@multiplier+3)
	movff	(c:Line@w),(c:___lmul@multiplicand)
	movff	(c:Line@w+1),(c:___lmul@multiplicand+1)
	movff	(c:Line@w+2),(c:___lmul@multiplicand+2)
	movff	(c:Line@w+3),(c:___lmul@multiplicand+3)
	call	___lmul	;wreg free
	movf	(0+?___lmul),c,w
	addwf	((c:Line@a)),c
	movf	(1+?___lmul),c,w
	addwfc	((c:Line@a+1)),c
	movf	(2+?___lmul),c,w
	addwfc	((c:Line@a+2)),c
	movf	(3+?___lmul),c,w
	addwfc	((c:Line@a+3)),c

	line	318
	
l5586:
	movf	((c:Line@v)),c,w
	addwf	((c:Line@b)),c
	movf	((c:Line@v+1)),c,w
	addwfc	((c:Line@b+1)),c
	movf	((c:Line@v+2)),c,w
	addwfc	((c:Line@b+2)),c
	movf	((c:Line@v+3)),c,w
	addwfc	((c:Line@b+3)),c
	line	319
	
l5588:
	btfsc	((c:Line@v+3)),c,7
	goto	u6601
	movf	((c:Line@v+3)),c,w
	iorwf	((c:Line@v+2)),c,w
	iorwf	((c:Line@v+1)),c,w
	bnz	u6600
	movlw	201
	subwf	 ((c:Line@v)),c,w
	btfss	status,0
	goto	u6601
	goto	u6600

u6601:
	goto	l5592
u6600:
	line	320
	
l5590:
	movlw	low(01h)
	movwf	((c:Line@g)),c
	goto	l5592
	line	321
	
l236:
	line	297
	
l5592:
	infsnz	((c:Line@j)),c
	incf	((c:Line@j+1)),c
	
l5594:
	btfsc	((c:Line@j+1)),c,7
	goto	u6611
	movf	((c:Line@j+1)),c,w
	bnz	u6610
	movlw	5
	subwf	 ((c:Line@j)),c,w
	btfss	status,0
	goto	u6611
	goto	u6610

u6611:
	goto	l5558
u6610:
	goto	l5596
	
l232:
	line	324
	
l5596:
	movlw	high(0)
	movwf	((c:Line@j_435+1)),c
	movlw	low(0)
	movwf	((c:Line@j_435)),c
	
l5598:
	btfsc	((c:Line@j_435+1)),c,7
	goto	u6621
	movf	((c:Line@j_435+1)),c,w
	bnz	u6620
	movlw	2
	subwf	 ((c:Line@j_435)),c,w
	btfss	status,0
	goto	u6621
	goto	u6620

u6621:
	goto	l5602
u6620:
	goto	l5624
	
l5600:
	goto	l5624
	
l237:
	line	325
	
l5602:
	bcf	status,0
	rlcf	((c:Line@j_435)),c,w
	movwf	fsr2l
	rlcf	((c:Line@j_435+1)),c,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(c:Line@i_436)
	movff	postdec2,(c:Line@i_436+1)
	line	326
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(c:Line@v)
	movff	??_Line+0+1,(c:Line@v+1)
	clrf	((c:Line@v+2)),c
	clrf	((c:Line@v+3)),c

	line	327
	
l5604:
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movf	(??_Line+0+0),c,w
	movwf	(??_Line+2+0)&0ffh,c
	movf	(??_Line+0+1),c,w
	movwf	1+(??_Line+2+0)&0ffh,c
	
	clrf	2+(??_Line+2+0)&0ffh,c
	
	clrf	3+(??_Line+2+0)&0ffh,c
		movf	(??_Line+2+0),c,w
	subwf	((c:Line@v)),c,w
	movf	(??_Line+2+1),c,w
	subwfb	((c:Line@v+1)),c,w
	movf	(??_Line+2+2),c,w
	subwfb	((c:Line@v+2)),c,w
	movf	((c:Line@v+3)),c,w
	xorlw	80h
	movwf	(??_Line+6+0)&0ffh,c
	movf	(??_Line+2+3),c,w
	xorlw	80h
	subwfb	(??_Line+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u6631
	goto	u6630

u6631:
	goto	l5608
u6630:
	
l5606:
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(c:Line@v)
	movff	??_Line+0+1,(c:Line@v+1)
	clrf	((c:Line@v+2)),c
	clrf	((c:Line@v+3)),c

	goto	l5608
	
l239:
	line	328
	
l5608:
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movf	(??_Line+0+0),c,w
	movwf	(??_Line+2+0)&0ffh,c
	movf	(??_Line+0+1),c,w
	movwf	1+(??_Line+2+0)&0ffh,c
	
	clrf	2+(??_Line+2+0)&0ffh,c
	
	clrf	3+(??_Line+2+0)&0ffh,c
		movf	((c:Line@v)),c,w
	subwf	(??_Line+2+0),c,w
	movf	((c:Line@v+1)),c,w
	subwfb	(??_Line+2+1),c,w
	movf	((c:Line@v+2)),c,w
	subwfb	(??_Line+2+2),c,w
	movf	(??_Line+2+3),c,w
	xorlw	80h
	movwf	(??_Line+6+0)&0ffh,c
	movf	((c:Line@v+3)),c,w
	xorlw	80h
	subwfb	(??_Line+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u6641
	goto	u6640

u6641:
	goto	l5612
u6640:
	
l5610:
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(c:Line@v)
	movff	??_Line+0+1,(c:Line@v+1)
	clrf	((c:Line@v+2)),c
	clrf	((c:Line@v+3)),c

	goto	l5612
	
l240:
	line	329
	
l5612:
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movf	(??_Line+0+0),c,w
	movwf	(??_Line+2+0)&0ffh,c
	movf	(??_Line+0+1),c,w
	movwf	1+(??_Line+2+0)&0ffh,c
	
	clrf	2+(??_Line+2+0)&0ffh,c
	
	clrf	3+(??_Line+2+0)&0ffh,c
	movf	(??_Line+2+0),c,w
	subwf	((c:Line@v)),c
	movf	(??_Line+2+1),c,w
	subwfb	((c:Line@v+1)),c
	movf	(??_Line+2+2),c,w
	subwfb	((c:Line@v+2)),c
	movf	(??_Line+2+3),c,w
	subwfb	((c:Line@v+3)),c

	
l5614:
	movff	(c:Line@v),(c:___lmul@multiplier)
	movff	(c:Line@v+1),(c:___lmul@multiplier+1)
	movff	(c:Line@v+2),(c:___lmul@multiplier+2)
	movff	(c:Line@v+3),(c:___lmul@multiplier+3)
	movlw	low(03E8h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(03E8h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(03E8h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(03E8h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:Line@v)
	movff	1+?___lmul,(c:Line@v+1)
	movff	2+?___lmul,(c:Line@v+2)
	movff	3+?___lmul,(c:Line@v+3)
	
	
l5616:
	movff	(c:Line@v),(c:___aldiv@dividend)
	movff	(c:Line@v+1),(c:___aldiv@dividend+1)
	movff	(c:Line@v+2),(c:___aldiv@dividend+2)
	movff	(c:Line@v+3),(c:___aldiv@dividend+3)
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+2+0
	movff	postdec2,??_Line+2+0+1
	comf	(??_Line+2+0),c
	comf	(??_Line+2+1),c
	infsnz	(??_Line+2+0),c
	incf	(??_Line+2+1),c
	movf	(??_Line+0+0),c,w
	addwf	(??_Line+2+0),c
	movf	(??_Line+0+1),c,w
	addwfc	(??_Line+2+1),c
	movff	??_Line+2+0,(c:___aldiv@divisor)
	movff	??_Line+2+1,(c:___aldiv@divisor+1)
	clrf	((c:___aldiv@divisor+2)),c
	clrf	((c:___aldiv@divisor+3)),c

	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:Line@v)
	movff	1+?___aldiv,(c:Line@v+1)
	movff	2+?___aldiv,(c:Line@v+2)
	movff	3+?___aldiv,(c:Line@v+3)
	
	
l5618:
	movff	(c:Line@v),??_Line+0+0
	movff	(c:Line@v+1),??_Line+0+0+1
	movff	(c:Line@v+2),??_Line+0+0+2
	movff	(c:Line@v+3),??_Line+0+0+3
	comf	(??_Line+0+0),c
	comf	(??_Line+0+1),c
	comf	(??_Line+0+2),c
	comf	(??_Line+0+3),c
	incf	(??_Line+0+0),c
	movlw	0
	addwfc	(??_Line+0+1),c
	addwfc	(??_Line+0+2),c
	addwfc	(??_Line+0+3),c
	movlw	0E8h
	addwf	(??_Line+0+0),c,w
	movwf	((c:Line@v)),c
	movlw	03h
	addwfc	(??_Line+0+1),c,w
	movwf	1+((c:Line@v)),c
	
	movlw	0
	addwfc	(??_Line+0+2),c,w
	movwf	2+((c:Line@v)),c
	
	movlw	0
	addwfc	(??_Line+0+3),c,w
	movwf	3+((c:Line@v)),c
	line	330
	bcf	status,0
	rlcf	((c:Line@i_436)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_436+1)),c,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	(c:Line@v),postinc2
	movff	(c:Line@v+1),postdec2
	line	324
	
l5620:
	infsnz	((c:Line@j_435)),c
	incf	((c:Line@j_435+1)),c
	
l5622:
	btfsc	((c:Line@j_435+1)),c,7
	goto	u6651
	movf	((c:Line@j_435+1)),c,w
	bnz	u6650
	movlw	2
	subwf	 ((c:Line@j_435)),c,w
	btfss	status,0
	goto	u6651
	goto	u6650

u6651:
	goto	l5602
u6650:
	goto	l5624
	
l238:
	line	333
	
l5624:
	movf	((c:Line@g)),c,w
	btfss	status,2
	goto	u6661
	goto	u6660
u6661:
	goto	l5634
u6660:
	line	334
	
l5626:
	btfsc	((c:_line+1)),c,7
	goto	u6670
	movf	((c:_line+1)),c,w
	bnz	u6671
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u6671
	goto	u6670

u6671:
	goto	l5630
u6670:
	
l5628:
	movlw	high(-200)
	movwf	((c:_line+1)),c
	movlw	low(-200)
	movwf	((c:_line)),c
	goto	l246
	
l243:
	
l5630:
	movlw	high(0C8h)
	movwf	((c:_line+1)),c
	movlw	low(0C8h)
	movwf	((c:_line)),c
	goto	l246
	
l245:
	goto	l246
	line	335
	
l5632:
	goto	l246
	line	336
	
l241:
	line	337
	
l5634:
	movff	(c:Line@a),(c:___aldiv@dividend)
	movff	(c:Line@a+1),(c:___aldiv@dividend+1)
	movff	(c:Line@a+2),(c:___aldiv@dividend+2)
	movff	(c:Line@a+3),(c:___aldiv@dividend+3)
	movff	(c:Line@b),(c:___aldiv@divisor)
	movff	(c:Line@b+1),(c:___aldiv@divisor+1)
	movff	(c:Line@b+2),(c:___aldiv@divisor+2)
	movff	(c:Line@b+3),(c:___aldiv@divisor+3)
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:_line)
	movff	1+?___aldiv,(c:_line+1)
	line	338
	
l246:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Line
	__end_of_Line:
	signat	_Line,89
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
;;		_Line
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
	line	15
global __ptext34
__ptext34:
psect	text34
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
;incstack = 0
	opt	stack 28
	line	119
	
l5356:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l5358
	line	120
	
l631:
	line	121
	
l5358:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u6261
	goto	u6260
u6261:
	goto	l5362
u6260:
	line	122
	
l5360:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l5362
	
l632:
	line	123
	
l5362:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l5364:
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
	goto	u6271
	goto	u6270

u6271:
	goto	l5358
u6270:
	
l633:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l634:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   14[COMRAM] long 
;;  divisor         4   18[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   24[COMRAM] long 
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
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Line
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
	line	8
global __ptext35
__ptext35:
psect	text35
	file	"/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
	line	8
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	stack 28
	line	14
	
l5366:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l5368:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u6280
	goto	u6281

u6281:
	goto	l5374
u6280:
	line	16
	
l5370:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l5372:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l5374
	line	18
	
l675:
	line	19
	
l5374:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u6290
	goto	u6291

u6291:
	goto	l5380
u6290:
	line	20
	
l5376:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l5378:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l5380
	line	22
	
l676:
	line	23
	
l5380:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l5382:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u6301
	goto	u6300

u6301:
	goto	l5402
u6300:
	line	25
	
l5384:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l5388
	
l679:
	line	27
	
l5386:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l5388
	line	29
	
l678:
	line	26
	
l5388:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u6311
	goto	u6310
u6311:
	goto	l5386
u6310:
	goto	l5390
	
l680:
	goto	l5390
	line	30
	
l681:
	line	31
	
l5390:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l5392:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u6321
	goto	u6320

u6321:
	goto	l5398
u6320:
	line	33
	
l5394:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l5396:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l5398
	line	35
	
l682:
	line	36
	
l5398:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l5400:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l5390
	goto	l5402
	
l683:
	goto	l5402
	line	38
	
l677:
	line	39
	
l5402:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u6331
	goto	u6330
u6331:
	goto	l5406
u6330:
	line	40
	
l5404:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l5406
	
l684:
	line	41
	
l5406:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l685
	
l5408:
	line	42
	
l685:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_EnhancedRead

;; *************** function _EnhancedRead *****************
;; Defined at:
;;		line 194 in file "/home/newtonis/Robots/Rayito2/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  aux             2   29[COMRAM] unsigned int 
;;  i               1   31[COMRAM] unsigned char 
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
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	194
global __ptext36
__ptext36:
psect	text36
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	194
	global	__size_of_EnhancedRead
	__size_of_EnhancedRead	equ	__end_of_EnhancedRead-_EnhancedRead
	
_EnhancedRead:
;incstack = 0
	opt	stack 28
	line	197
	
l5930:
	movlw	low(0)
	movwf	((c:EnhancedRead@i)),c
	
l5932:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u7171
	goto	u7170

u7171:
	goto	l5936
u7170:
	goto	l490
	
l5934:
	goto	l490
	
l485:
	line	198
	
l5936:
	movff	(c:EnhancedRead@i),??_EnhancedRead+0+0
	rlncf	(??_EnhancedRead+0+0),c
	rlncf	(??_EnhancedRead+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_EnhancedRead+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_EnhancedRead+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	199
	
l5938:
	bsf	((c:4034)),c,1	;volatile
	line	200
	goto	l487
	
l488:
	
l487:
	btfsc	((c:4034)),c,1	;volatile
	goto	u7181
	goto	u7180
u7181:
	goto	l487
u7180:
	goto	l5940
	
l489:
	line	201
	
l5940:
	movf	((c:4036)),c,w	;volatile
	mullw	04h
	movff	prodl,(c:EnhancedRead@aux)
	movff	prodh,(c:EnhancedRead@aux+1)
	line	202
	
l5942:
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
	line	203
	
l5944:
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
	line	197
	
l5946:
	incf	((c:EnhancedRead@i)),c
	
l5948:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u7191
	goto	u7190

u7191:
	goto	l5936
u7190:
	goto	l490
	
l486:
	line	205
	
l490:
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
;;  dividend        2   20[COMRAM] int 
;;  divisor         2   22[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   26[COMRAM] int 
;;  sign            1   25[COMRAM] unsigned char 
;;  counter         1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   20[COMRAM] int 
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
;;		_MotorASpeed
;;		_MotorBSpeed
;;		_EnhancedRead
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
	line	8
global __ptext37
__ptext37:
psect	text37
	file	"/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 27
	line	14
	
l4944:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l4946:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u5780
	goto	u5781

u5781:
	goto	l4952
u5780:
	line	16
	
l4948:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l4950:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l4952
	line	18
	
l787:
	line	19
	
l4952:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u5790
	goto	u5791

u5791:
	goto	l4958
u5790:
	line	20
	
l4954:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l4956:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l4958
	line	22
	
l788:
	line	23
	
l4958:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l4960:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u5801
	goto	u5800

u5801:
	goto	l4980
u5800:
	line	25
	
l4962:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l4966
	
l791:
	line	27
	
l4964:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l4966
	line	29
	
l790:
	line	26
	
l4966:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u5811
	goto	u5810
u5811:
	goto	l4964
u5810:
	goto	l4968
	
l792:
	goto	l4968
	line	30
	
l793:
	line	31
	
l4968:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l4970:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u5821
	goto	u5820

u5821:
	goto	l4976
u5820:
	line	33
	
l4972:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l4974:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l4976
	line	35
	
l794:
	line	36
	
l4976:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l4978:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l4968
	goto	l4980
	
l795:
	goto	l4980
	line	38
	
l789:
	line	39
	
l4980:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l4984
u5830:
	line	40
	
l4982:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l4984
	
l796:
	line	41
	
l4984:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l797
	
l4986:
	line	42
	
l797:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 223 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	223
	global	__size_of_enc
	__size_of_enc	equ	__end_of_enc-_enc
	
_enc:
;incstack = 0
	opt	stack 26
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
	line	224
	
i2l4328:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u461_41
	goto	i2u461_40
i2u461_41:
	goto	i2l179
i2u461_40:
	line	225
	
i2l4330:
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME))&0ffh
	movlw	0
	addwfc	((_TIME+1))&0ffh
	addwfc	((_TIME+2))&0ffh
	addwfc	((_TIME+3))&0ffh
	line	226
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME2))&0ffh
	movlw	0
	addwfc	((_TIME2+1))&0ffh
	addwfc	((_TIME2+2))&0ffh
	addwfc	((_TIME2+3))&0ffh
	line	227
	
i2l4332:; BSR set to: 0

	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	228
	
i2l4334:; BSR set to: 0

	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	229
	
i2l4336:; BSR set to: 0

	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l179
	line	230
	
i2l178:; BSR set to: 0

	line	231
	
i2l179:
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
psect	mediumconst
	db 0	; dummy byte at the end
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
