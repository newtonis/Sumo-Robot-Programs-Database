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
	FNCALL	_initYBOT,_InitSP
	FNCALL	_initYBOT,_InitTIMERS
	FNCALL	_initYBOT,_MotorsPWM
	FNCALL	_initYBOT,_ResetCounter
	FNCALL	_initYBOT,_configurations_init
	FNCALL	_InitSP,_ReadAnalog
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
	global	_test_kd
	global	_test_kp
	global	_LOW_SPEED
	global	_KD
	global	_KP
	global	_KR
	global	_SP
	global	_fw
	global	_pd
	global	_sd
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	835

;initializer for _test_kd
	db	low(float24(20.000000000000000))
	db	high(float24(20.000000000000000))
	db	low highword(float24(20.000000000000000))
	line	834

;initializer for _test_kp
	db	low(float24(7.0000000000000000))
	db	high(float24(7.0000000000000000))
	db	low highword(float24(7.0000000000000000))
	line	833

;initializer for _LOW_SPEED
	dw	(01D6h)&0ffffh
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
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
	line	838

;initializer for _fw
	dw	(06h)&0ffffh
	dw	(05h)&0ffffh
	dw	(04h)&0ffffh
	dw	(03h)&0ffffh
	dw	(02h)&0ffffh
	line	839

;initializer for _pd
	dw	(-200)&0ffffh
	dw	(-100)&0ffffh
	dw	(0)&0ffffh
	dw	(064h)&0ffffh
	dw	(0C8h)&0ffffh
	line	840

;initializer for _sd
	dw	(01h)&0ffffh
	dw	(07h)&0ffffh
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	line	124

;initializer for _TIMEFRENO
	dw	(0C8h) & 0xffff
	dw	highword(0C8h)
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
	global	_w
	global	_CURRENT
	global	_speedMode
	global	_MF
	global	_PisoActual
	global	_RWM
	global	_actual
	global	_x
	global	_SIZES
	global	_PIDf
	global	_POSICION
	global	_TIME
	global	_WAITIME
	global	_a
	global	_der
	global	_fa
	global	_fb
	global	_fns
	global	_formula
	global	_gf
	global	_last
	global	_line
	global	_ma
	global	_mb
	global	_mode
	global	_rf
	global	_sa
	global	_high
	global	_low
	global	_nove
	global	_AMOUNT
	global	_P
	global	_V
	global	_amax
	global	_amin
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
	global	_actual
_actual:
       ds      1
	global	_x
_x:
       ds      2
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_PIDf
_PIDf:
       ds      4
	global	_POSICION
_POSICION:
       ds      4
	global	_TIME
_TIME:
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
	global	_fns
_fns:
       ds      2
	global	_formula
_formula:
       ds      2
	global	_gf
_gf:
       ds      2
	global	_giro
	global	_giro
_giro:
       ds      2
	global	_last
_last:
       ds      2
	global	_line
_line:
       ds      2
	global	_mCiclo
	global	_mCiclo
_mCiclo:
       ds      2
	global	_ma
_ma:
       ds      2
	global	_mb
_mb:
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
	global	_rf
_rf:
       ds      2
	global	_sa
_sa:
       ds      2
	global	_VistActual
	global	_VistActual
_VistActual:
       ds      1
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
	global	_nove
_nove:
       ds      1
	global	_AMOUNT
_AMOUNT:
       ds      2
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	835
	global	_test_kd
_test_kd:
       ds      3
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	834
	global	_test_kp
_test_kp:
       ds      3
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	833
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
	line	838
	global	_fw
_fw:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	839
	global	_pd
_pd:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	840
	global	_sd
_sd:
       ds      10
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
; Initialize objects allocated to BANK1 (82 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,82
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (8 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,8
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
; Clear objects allocated to BANK1 (170 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	170
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (68 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	68
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (14 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	14
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
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
	global	_main$1788
_main$1788:	; 1 bytes @ 0x0
	ds   1
	global	main@j_1792
main@j_1792:	; 2 bytes @ 0x1
	ds   2
	global	main@i_1791
main@i_1791:	; 2 bytes @ 0x3
	ds   2
	global	main@j_1796
main@j_1796:	; 2 bytes @ 0x5
	ds   2
	global	_main$2471
_main$2471:	; 2 bytes @ 0x7
	ds   2
	global	_main$2472
_main$2472:	; 2 bytes @ 0x9
	ds   2
	global	_main$2473
_main$2473:	; 2 bytes @ 0xB
	ds   2
	global	_main$2474
_main$2474:	; 2 bytes @ 0xD
	ds   2
	global	_main$2475
_main$2475:	; 2 bytes @ 0xF
	ds   2
	global	_main$2476
_main$2476:	; 2 bytes @ 0x11
	ds   2
	global	main@i_1795
main@i_1795:	; 2 bytes @ 0x13
	ds   2
	global	main@j
main@j:	; 2 bytes @ 0x15
	ds   2
	global	main@i
main@i:	; 2 bytes @ 0x17
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
	global	_printf$2480
_printf$2480:	; 3 bytes @ 0x27
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
?_InitAnalog:	; 1 bytes @ 0x0
?_InitTIMERS:	; 1 bytes @ 0x0
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
?_Line:	; 1 bytes @ 0x0
	ds   14
?___ftge:	; 1 bit 
??_ResetCounter:	; 1 bytes @ 0xE
??_InitAnalog:	; 1 bytes @ 0xE
??_InitTIMERS:	; 1 bytes @ 0xE
??_MotorsPWM:	; 1 bytes @ 0xE
??_ReadAnalog:	; 1 bytes @ 0xE
??_isdigit:	; 1 bytes @ 0xE
??_Wixel:	; 1 bytes @ 0xE
??_putch:	; 1 bytes @ 0xE
??_configurations_init:	; 1 bytes @ 0xE
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
	global	ReadAnalog@channel
ReadAnalog@channel:	; 1 bytes @ 0xF
	global	_isdigit$2082
_isdigit$2082:	; 1 bytes @ 0xF
	ds   1
??_InitSP:	; 1 bytes @ 0x10
??_initYBOT:	; 1 bytes @ 0x10
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
?_MotorASpeed:	; 1 bytes @ 0x1C
?_MotorBSpeed:	; 1 bytes @ 0x1C
??_Line:	; 1 bytes @ 0x1C
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
	global	_MotorsSpeed$1707
_MotorsSpeed$1707:	; 2 bytes @ 0x26
	ds   1
	global	Line@a
Line@a:	; 4 bytes @ 0x27
	ds   1
??___ftmul:	; 1 bytes @ 0x28
	global	_MotorsSpeed$1708
_MotorsSpeed$1708:	; 2 bytes @ 0x28
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
	global	Line@j_1773
Line@j_1773:	; 2 bytes @ 0x30
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
	global	_fround$2478
_fround$2478:	; 3 bytes @ 0x34
	global	_scale$2479
_scale$2479:	; 3 bytes @ 0x34
	ds   2
	global	Line@i_1774
Line@i_1774:	; 2 bytes @ 0x36
	ds   1
	global	scale@scl
scale@scl:	; 1 bytes @ 0x37
	global	_fround$2477
_fround$2477:	; 3 bytes @ 0x37
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
;!    Strings     412
;!    Constant    118
;!    Data        90
;!    BSS         1272
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     65      79
;!    BANK0           160     73     150
;!    BANK1           256      0     253
;!    BANK2           256     25      25
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 61
;!		 -> STR_12(CODE[34]), STR_11(CODE[34]), STR_10(CODE[61]), STR_9(CODE[60]), 
;!		 -> STR_8(CODE[53]), STR_7(CODE[39]), STR_6(CODE[44]), STR_5(CODE[60]), 
;!		 -> STR_4(CODE[60]), STR_3(CODE[47]), STR_2(CODE[37]), STR_1(CODE[37]), 
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
;!    _InitSP->_ReadAnalog
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
;! (0) _main                                                58    53      5  127150
;!                                             64 BANK0      9     4      5
;!                                              0 BANK2     25    25      0
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
;! (1) _printf                                              49    37     12   74617
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
;! (2) _scale                                               10     7      3   17821
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
;! (2) _fround                                              13    10      3   17542
;!                                             49 COMRAM    10     7      3
;!                            ___awdiv
;!                            ___awmod
;!                            ___ftmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (3) ___wmul                                               6     2      4    6700
;!                                             28 COMRAM     6     2      4
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             15     9      6    6158
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
;! (2) ___lltoft                                             9     5      4    2655
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
;! (2) ___fttol                                             15    11      4    1064
;!                                              6 BANK0     15    11      4
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;!                              _scale (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    6027
;!                                              6 BANK0      6     0      6
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             12     6      6    5509
;!                                             59 COMRAM     6     0      6
;!                                              0 BANK0      6     6      0
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3     373
;!                                             14 COMRAM     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                               9     3      6     968
;!                                             14 COMRAM     9     3      6
;! ---------------------------------------------------------------------------------
;! (1) _initYBOT                                             0     0      0     124
;!                         _InitAnalog
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
;! (2) _InitAnalog                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLED                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             4     1      3    2763
;!                                             22 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    2476
;!                                             14 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) ___almod                                             10     2      8    1819
;!                                             14 COMRAM    10     2      8
;! ---------------------------------------------------------------------------------
;! (1) _Wixel                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MotorsSpeed                                          8     4      4    7152
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
;! (1) _Line                                                32    32      0    9104
;!                                             28 COMRAM    32    32      0
;!                            ___aldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8    3176
;!                                             14 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             14     6      8    4449
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
;!     _InitSP
;!       _ReadAnalog
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
;!BANK2              100     19      19       9        9.8%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      FD       7       98.8%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     49      96       5       93.8%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     41      4F       1       84.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     1FB      20        0.0%
;!DATA                 0      0     5F7       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 896 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   64[BANK0 ] int 
;;  argv            3   66[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   19[BANK2 ] int 
;;  j               2    5[BANK2 ] int 
;;  i               2    3[BANK2 ] int 
;;  j               2    1[BANK2 ] int 
;;  i               2   23[BANK2 ] int 
;;  j               2   21[BANK2 ] int 
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
;;      Locals:         0       0       0      25       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0
;;      Totals:         0       9       0      25       0       0       0       0       0
;;Total ram usage:       34 bytes
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
	line	896
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	896
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 26
	line	897
	
l7205:
	call	_initYBOT	;wreg free
	line	899
	
l7207:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_sa+1))&0ffh
	movlw	low(0)
	movwf	((_sa))&0ffh
	line	900
	
l7209:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_mode+1))&0ffh
	movlw	low(0)
	movwf	((_mode))&0ffh
	line	901
	
l7211:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_a+1))&0ffh
	movlw	low(0)
	movwf	((_a))&0ffh
	line	902
	
l7213:; BSR set to: 0

	movlb	0	; () banked
	setf	((_gstatus))&0ffh
	line	903
	
l7215:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_WAITIME))&0ffh
	movlw	high(0)
	movwf	((_WAITIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_WAITIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_WAITIME+3))&0ffh
	line	904
	
l7217:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_CURRENT+1)),c
	movlw	low(0)
	movwf	((c:_CURRENT)),c
	line	905
	
l7219:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_actual)),c
	line	906
	
l7221:; BSR set to: 0

	movlw	low(02h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	907
	
l7223:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	908
	
l7225:; BSR set to: 0

	call	_Wixel	;wreg free
	line	911
	
l7227:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	912
	
l7229:
	bsf	((c:3971)),c,3	;volatile
	line	914
	
l7231:
	movlw	low(02h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	915
	goto	l7235
	
l691:; BSR set to: 1

	line	920
	
l7233:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	goto	l7235
	
l690:; BSR set to: 0

	line	915
	
l7235:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u9291
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u9290
	movlw	136
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	19
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u9291
	goto	u9290

u9291:
	goto	l7233
u9290:
	goto	l7549
	
l692:; BSR set to: 0

	goto	l7549
	line	921
	
l693:; BSR set to: 0

	line	926
	goto	l7549
	line	927
	
l695:; BSR set to: 0

	line	928
	
l7237:
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
	goto	u9300
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u9301
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u9301
	goto	u9300

u9301:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u9318
u9300:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u9318:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	929
	
l7239:; BSR set to: 0

	movlb	0	; () banked
	movf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u9321
	goto	u9320

u9321:
	goto	l7243
u9320:
	line	930
	
l7241:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	931
	goto	l7251
	
l696:; BSR set to: 0

	
l7243:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u9331
	goto	u9330

u9331:
	goto	l7247
u9330:
	line	932
	
l7245:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	line	933
	goto	l7251
	
l698:; BSR set to: 0

	
l7247:; BSR set to: 0

	movlb	0	; () banked
		incf	((_ma))&0ffh,w
	bnz	u9341
	movlb	0	; () banked
	incf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u9341
	goto	u9340

u9341:
	goto	l7251
u9340:
	line	934
	
l7249:; BSR set to: 0

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
	goto	u9350
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u9351
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u9351
	goto	u9350

u9351:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u9368
u9350:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u9368:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l7251
	line	935
	
l700:; BSR set to: 0

	goto	l7251
	line	936
	
l699:; BSR set to: 0

	goto	l7251
	
l697:; BSR set to: 0

	
l7251:; BSR set to: 0

	movlb	0	; () banked
	movf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u9371
	goto	u9370

u9371:
	goto	l7255
u9370:
	line	937
	
l7253:; BSR set to: 0

	bcf	((c:3969)),c,0	;volatile
	line	938
	goto	l7263
	
l701:; BSR set to: 0

	
l7255:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u9381
	goto	u9380

u9381:
	goto	l7259
u9380:
	line	939
	
l7257:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	940
	goto	l7263
	
l703:; BSR set to: 0

	
l7259:; BSR set to: 0

	movlb	0	; () banked
		incf	((_mb))&0ffh,w
	bnz	u9391
	movlb	0	; () banked
	incf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u9391
	goto	u9390

u9391:
	goto	l7263
u9390:
	line	941
	
l7261:; BSR set to: 0

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
	goto	u9400
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u9401
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u9401
	goto	u9400

u9401:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u9418
u9400:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u9418:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l7263
	line	942
	
l705:; BSR set to: 0

	goto	l7263
	line	944
	
l704:; BSR set to: 0

	goto	l7263
	
l702:; BSR set to: 0

	
l7263:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u9421
	goto	u9420

u9421:
	goto	l7269
u9420:
	line	945
	
l7265:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	946
	
l7267:; BSR set to: 0

		movlw	low(STR_1)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_1)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	goto	l7269
	line	947
	
l706:
	line	949
	
l7269:
	btfsc	((c:3971)),c,6	;volatile
	goto	u9431
	goto	u9430
u9431:
	goto	l707
u9430:
	
l7271:
	movlb	0	; () banked
	movf	((_fa))&0ffh,w
	movlb	0	; () banked
iorwf	((_fa+1))&0ffh,w
	btfss	status,2
	goto	u9441
	goto	u9440

u9441:
	goto	l707
u9440:
	line	950
	
l7273:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(01h)
	movwf	((_fa))&0ffh
	line	951
	
l7275:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfsc	status,2
	goto	u9451
	goto	u9450

u9451:
	goto	l709
u9450:
	
l7277:; BSR set to: 0

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
	goto	l707
	
l709:; BSR set to: 0

	movlb	0	; () banked
	setf	((_ma))&0ffh
	setf	((_ma+1))&0ffh
	goto	l707
	
l711:; BSR set to: 0

	line	952
	
l707:
	line	953
	btfsc	((c:3971)),c,4	;volatile
	goto	u9461
	goto	u9460
u9461:
	goto	l712
u9460:
	
l7279:
	movlb	0	; () banked
	movf	((_fb))&0ffh,w
	movlb	0	; () banked
iorwf	((_fb+1))&0ffh,w
	btfss	status,2
	goto	u9471
	goto	u9470

u9471:
	goto	l712
u9470:
	line	954
	
l7281:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(01h)
	movwf	((_fb))&0ffh
	line	955
	
l7283:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfsc	status,2
	goto	u9481
	goto	u9480

u9481:
	goto	l714
u9480:
	
l7285:; BSR set to: 0

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
	goto	l712
	
l714:; BSR set to: 0

	movlb	0	; () banked
	setf	((_mb))&0ffh
	setf	((_mb+1))&0ffh
	goto	l712
	
l716:; BSR set to: 0

	line	956
	
l712:
	line	957
	btfss	((c:3971)),c,6	;volatile
	goto	u9491
	goto	u9490
u9491:
	goto	l7289
u9490:
	
l7287:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	goto	l7289
	
l717:; BSR set to: 0

	line	958
	
l7289:
	btfss	((c:3971)),c,4	;volatile
	goto	u9501
	goto	u9500
u9501:
	goto	l7293
u9500:
	
l7291:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	goto	l7293
	
l718:; BSR set to: 0

	line	960
	
l7293:
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
	line	961
	goto	l7549
	line	962
	
l720:
	line	963
	
l7295:
	call	_EnhancedRead	;wreg free
	line	964
	
l7297:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u9511
	goto	u9510

u9511:
	goto	l7303
u9510:
	line	965
	
l7299:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	966
	
l7301:; BSR set to: 0

		movlw	low(STR_2)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_2)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	goto	l7303
	line	967
	
l721:
	line	968
	
l7303:
	bcf	((c:3969)),c,0	;volatile
	line	969
	
l7305:
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
	goto	u9520
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u9521
	movlw	233
	subwf	 (0+?___almod),c,w
	movlw	3
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u9521
	goto	u9520

u9521:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u9538
u9520:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u9538:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	970
	
l7307:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	971
	
l7309:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u9541
	goto	u9540
u9541:
	goto	l7319
u9540:
	line	972
	
l7311:; BSR set to: 0

		movlw	low(STR_3)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_3)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	973
	
l7313:
	movlw	low(04h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	974
	
l7315:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	975
	
l7317:; BSR set to: 0

	call	_initLED	;wreg free
	goto	l7319
	line	976
	
l722:
	line	982
	
l7319:
	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l7321:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u9551
	movlb	2	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u9550
	movlw	2
	movlb	2	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u9551
	goto	u9550

u9551:
	goto	l7325
u9550:
	goto	l7549
	
l7323:; BSR set to: 2

	goto	l7549
	
l723:; BSR set to: 2

	line	983
	
l7325:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i)
	movff	postdec2,(main@i+1)
	line	984
	
l7327:; BSR set to: 2

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
	movff	0+?___wmul,(_main$2471)
	movff	1+?___wmul,(_main$2471+1)
	
l7329:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2472)
	movff	1+?___wmul,(_main$2472+1)
	
l7331:
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
	movff	0+?___wmul,(_main$2473)
	movff	1+?___wmul,(_main$2473+1)
	
l7333:
	movff	(_main$2471),(c:___wmul@multiplier)
	movff	(_main$2471+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2474))&0ffh
	clrf	((_main$2474+1))&0ffh
	
l7335:; BSR set to: 2

	movff	(_main$2472),(c:___wmul@multiplier)
	movff	(_main$2472+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2475))&0ffh
	clrf	((_main$2475+1))&0ffh
	
l7337:; BSR set to: 2

	movff	(_main$2473),(c:___wmul@multiplier)
	movff	(_main$2473+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2476))&0ffh
	clrf	((_main$2476+1))&0ffh
	
l7339:; BSR set to: 2

		movlw	low(STR_4)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_4)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@i),0+(?_printf+02h)
	movff	(main@i+1),1+(?_printf+02h)
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,0+(?_printf+04h)
	movff	postdec2,1+(?_printf+04h)
	movff	(_main$2474),0+(?_printf+06h)
	movff	(_main$2474+1),1+(?_printf+06h)
	movff	(_main$2475),0+(?_printf+08h)
	movff	(_main$2475+1),1+(?_printf+08h)
	movff	(_main$2476),0+(?_printf+0Ah)
	movff	(_main$2476+1),1+(?_printf+0Ah)
	call	_printf	;wreg free
	line	982
	
l7341:
	movlb	2	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l7343:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u9561
	movlb	2	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u9560
	movlw	2
	movlb	2	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u9561
	goto	u9560

u9561:
	goto	l7325
u9560:
	goto	l7549
	
l724:; BSR set to: 2

	line	986
	goto	l7549
	line	987
	
l725:; BSR set to: 1

	line	988
	bsf	((c:3969)),c,5	;volatile
	line	989
	bcf	((c:3968)),c,4	;volatile
	line	990
	bcf	((c:3969)),c,0	;volatile
	line	991
	
l7345:; BSR set to: 1

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u9571
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u9570
	movlw	209
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	7
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u9571
	goto	u9570

u9571:
	goto	l7549
u9570:
	
l7347:; BSR set to: 0

	movlw	low(02h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l7549
	
l726:; BSR set to: 1

	line	992
	goto	l7549
	line	993
	
l727:; BSR set to: 1

	line	994
	
l7349:; BSR set to: 1

	call	_EnhancedRead	;wreg free
	line	1000
	
l7351:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u9581
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u9580
	movlw	233
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u9581
	goto	u9580

u9581:
	goto	l7379
u9580:
	line	1001
	
l7353:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	1002
	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l7355:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u9591
	movlb	2	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u9590
	movlw	2
	movlb	2	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u9591
	goto	u9590

u9591:
	goto	l7359
u9590:
	goto	l7379
	
l7357:; BSR set to: 2

	goto	l7379
	
l729:; BSR set to: 2

	line	1003
	
l7359:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i)
	movff	postdec2,(main@i+1)
	line	1004
	
l7361:; BSR set to: 2

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
	movff	0+?___wmul,(_main$2471)
	movff	1+?___wmul,(_main$2471+1)
	
l7363:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2472)
	movff	1+?___wmul,(_main$2472+1)
	
l7365:
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
	movff	0+?___wmul,(_main$2473)
	movff	1+?___wmul,(_main$2473+1)
	
l7367:
	movff	(_main$2471),(c:___wmul@multiplier)
	movff	(_main$2471+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2474))&0ffh
	clrf	((_main$2474+1))&0ffh
	
l7369:; BSR set to: 2

	movff	(_main$2472),(c:___wmul@multiplier)
	movff	(_main$2472+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2475))&0ffh
	clrf	((_main$2475+1))&0ffh
	
l7371:; BSR set to: 2

	movff	(_main$2473),(c:___wmul@multiplier)
	movff	(_main$2473+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2476))&0ffh
	clrf	((_main$2476+1))&0ffh
	
l7373:; BSR set to: 2

		movlw	low(STR_5)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_5)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@i),0+(?_printf+02h)
	movff	(main@i+1),1+(?_printf+02h)
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,0+(?_printf+04h)
	movff	postdec2,1+(?_printf+04h)
	movff	(_main$2474),0+(?_printf+06h)
	movff	(_main$2474+1),1+(?_printf+06h)
	movff	(_main$2475),0+(?_printf+08h)
	movff	(_main$2475+1),1+(?_printf+08h)
	movff	(_main$2476),0+(?_printf+0Ah)
	movff	(_main$2476+1),1+(?_printf+0Ah)
	call	_printf	;wreg free
	line	1002
	
l7375:
	movlb	2	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l7377:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u9601
	movlb	2	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u9600
	movlw	2
	movlb	2	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u9601
	goto	u9600

u9601:
	goto	l7359
u9600:
	goto	l7379
	
l730:; BSR set to: 2

	goto	l7379
	line	1006
	
l728:; BSR set to: 2

	line	1009
	
l7379:
	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	
l7381:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u9611
	movlb	2	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u9610
	movlw	11
	movlb	2	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u9611
	goto	u9610

u9611:
	goto	l731
u9610:
	goto	l7397
	
l7383:; BSR set to: 2

	goto	l7397
	
l731:; BSR set to: 2

	line	1012
	movff	(main@i),(main@j)
	movff	(main@i+1),(main@j+1)
	line	1013
	
l7385:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	2	; () banked
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
	goto	u9621
	goto	u9620

u9621:
	goto	l7389
u9620:
	line	1014
	
l7387:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_amax)
	addwf	fsr1l
	movlw	high(_amax)
	addwfc	fsr1h
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	goto	l7389
	line	1015
	
l733:; BSR set to: 2

	line	1016
	
l7389:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	2	; () banked
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
	goto	u9631
	goto	u9630

u9631:
	goto	l7393
u9630:
	line	1017
	
l7391:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_amin)
	addwf	fsr1l
	movlw	high(_amin)
	addwfc	fsr1h
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	goto	l7393
	line	1018
	
l734:; BSR set to: 2

	line	1009
	
l7393:; BSR set to: 2

	movlb	2	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l7395:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u9641
	movlb	2	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u9640
	movlw	11
	movlb	2	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u9641
	goto	u9640

u9641:
	goto	l731
u9640:
	goto	l7397
	
l732:; BSR set to: 2

	line	1021
	
l7397:; BSR set to: 2

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
	goto	u9650
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u9651
	movlw	201
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u9651
	goto	u9650

u9651:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u9668
u9650:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u9668:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	1022
	
l7399:; BSR set to: 0

	movlw	low(0)
	movlb	2	; () banked
	movwf	((_main$1788))&0ffh
	
l7401:; BSR set to: 2

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
	goto	u9671
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u9670
	movlw	101
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u9671
	goto	u9670

u9671:
	goto	l7407
u9670:
	
l7403:
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
	goto	u9680
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u9681
	movlw	200
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u9681
	goto	u9680

u9681:
	goto	l7407
u9680:
	
l7405:
	movlw	low(01h)
	movlb	2	; () banked
	movwf	((_main$1788))&0ffh
	goto	l7407
	
l736:; BSR set to: 2

	
l7407:
	movlb	2	; () banked
	btfsc	(_main$1788)&0ffh,0
	bra	u9695
	bcf	((c:3969)),c,5	;volatile
	bra	u9696
	u9695:
	bsf	((c:3969)),c,5	;volatile
	u9696:

	line	1023
	
l7409:
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
	goto	u9701
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u9700
	movlw	100
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u9701
	goto	u9700

u9701:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u9718
u9700:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u9718:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	1025
	
l7411:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u9721
	goto	u9720
u9721:
	goto	l7419
u9720:
	line	1026
	
l7413:; BSR set to: 0

		movlw	low(STR_6)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_6)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	1027
	
l7415:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	1028
	
l7417:; BSR set to: 0

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l7419
	line	1029
	
l737:; BSR set to: 1

	line	1030
	
l7419:
	btfsc	((c:3971)),c,4	;volatile
	goto	u9731
	goto	u9730
u9731:
	goto	l7549
u9730:
	line	1031
	
l7421:
		movlw	low(STR_7)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_7)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	1032
	
l7423:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	1033
	
l7425:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	1034
	
l7427:; BSR set to: 0

	movlw	low(03h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	1036
	
l7429:; BSR set to: 1

	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@i_1791+1))&0ffh
	movlw	low(0)
	movwf	((main@i_1791))&0ffh
	
l7431:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@i_1791+1))&0ffh,7
	goto	u9741
	movlb	2	; () banked
	movf	((main@i_1791+1))&0ffh,w
	bnz	u9740
	movlw	5
	movlb	2	; () banked
	subwf	 ((main@i_1791))&0ffh,w
	btfss	status,0
	goto	u9741
	goto	u9740

u9741:
	goto	l7435
u9740:
	goto	l7549
	
l7433:; BSR set to: 2

	goto	l7549
	
l739:; BSR set to: 2

	line	1037
	
l7435:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1791))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1791+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(main@j_1792)
	movff	postdec2,(main@j_1792+1)
	line	1038
	
l7437:; BSR set to: 2

		movlw	low(STR_8)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_8)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@j_1792),0+(?_printf+02h)
	movff	(main@j_1792+1),1+(?_printf+02h)
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j_1792))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j_1792+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,0+(?_printf+04h)
	movff	postdec2,1+(?_printf+04h)
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j_1792))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j_1792+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,0+(?_printf+06h)
	movff	postdec2,1+(?_printf+06h)
	call	_printf	;wreg free
	line	1036
	
l7439:
	movlb	2	; () banked
	infsnz	((main@i_1791))&0ffh
	incf	((main@i_1791+1))&0ffh
	
l7441:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@i_1791+1))&0ffh,7
	goto	u9751
	movlb	2	; () banked
	movf	((main@i_1791+1))&0ffh,w
	bnz	u9750
	movlw	5
	movlb	2	; () banked
	subwf	 ((main@i_1791))&0ffh,w
	btfss	status,0
	goto	u9751
	goto	u9750

u9751:
	goto	l7435
u9750:
	goto	l7549
	
l740:; BSR set to: 2

	goto	l7549
	line	1040
	
l738:; BSR set to: 2

	line	1041
	goto	l7549
	line	1042
	
l741:; BSR set to: 2

	line	1043
	
l7443:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u9761
	goto	u9760

u9761:
	goto	l7447
u9760:
	line	1044
	
l7445:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(01h)
	movwf	((_rf))&0ffh
	line	1045
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(01h)
	movwf	((_gf))&0ffh
	line	1046
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	goto	l7447
	line	1047
	
l742:; BSR set to: 0

	line	1048
	
l7447:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	1049
	
l7449:; BSR set to: 0

	bcf	((c:3968)),c,4	;volatile
	line	1050
	
l7451:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	1053
	
l7453:; BSR set to: 0

	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	1055
	
l7455:
	call	_EnhancedRead	;wreg free
	line	1056
	
l7457:
	call	_Line	;wreg free
	line	1057
	
l7459:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u9771
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u9770
	movlw	245
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	1
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u9771
	goto	u9770

u9771:
	goto	l7489
u9770:
	line	1058
	
l7461:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	1064
	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@j_1796+1))&0ffh
	movlw	low(0)
	movwf	((main@j_1796))&0ffh
	
l7463:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j_1796+1))&0ffh,7
	goto	u9781
	movlb	2	; () banked
	movf	((main@j_1796+1))&0ffh,w
	bnz	u9780
	movlw	2
	movlb	2	; () banked
	subwf	 ((main@j_1796))&0ffh,w
	btfss	status,0
	goto	u9781
	goto	u9780

u9781:
	goto	l7467
u9780:
	goto	l7487
	
l7465:; BSR set to: 2

	goto	l7487
	
l744:; BSR set to: 2

	line	1065
	
l7467:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j_1796))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j_1796+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i_1795)
	movff	postdec2,(main@i_1795+1)
	line	1066
	
l7469:; BSR set to: 2

	movff	(main@i_1795),(c:___wmul@multiplier)
	movff	(main@i_1795+1),(c:___wmul@multiplier+1)
	movff	(main@i_1795),(c:___wmul@multiplicand)
	movff	(main@i_1795+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2471)
	movff	1+?___wmul,(_main$2471+1)
	
l7471:
	movff	(main@i_1795),(c:___wmul@multiplier)
	movff	(main@i_1795+1),(c:___wmul@multiplier+1)
	movff	(main@i_1795),(c:___wmul@multiplicand)
	movff	(main@i_1795+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2472)
	movff	1+?___wmul,(_main$2472+1)
	
l7473:
	movff	(main@i_1795),(c:___wmul@multiplier)
	movff	(main@i_1795+1),(c:___wmul@multiplier+1)
	movff	(main@i_1795),(c:___wmul@multiplicand)
	movff	(main@i_1795+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2473)
	movff	1+?___wmul,(_main$2473+1)
	
l7475:
	movff	(_main$2471),(c:___wmul@multiplier)
	movff	(_main$2471+1),(c:___wmul@multiplier+1)
	movlw	high(0384h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0384h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2474))&0ffh
	clrf	((_main$2474+1))&0ffh
	
l7477:; BSR set to: 2

	movff	(_main$2472),(c:___wmul@multiplier)
	movff	(_main$2472+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2475))&0ffh
	clrf	((_main$2475+1))&0ffh
	
l7479:; BSR set to: 2

	movff	(_main$2473),(c:___wmul@multiplier)
	movff	(_main$2473+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	2	; () banked
	movwf	((_main$2476))&0ffh
	clrf	((_main$2476+1))&0ffh
	
l7481:; BSR set to: 2

		movlw	low(STR_9)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_9)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@i_1795),0+(?_printf+02h)
	movff	(main@i_1795+1),1+(?_printf+02h)
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1795))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1795+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	postinc2,0+(?_printf+04h)
	movff	postdec2,1+(?_printf+04h)
	movff	(_main$2474),0+(?_printf+06h)
	movff	(_main$2474+1),1+(?_printf+06h)
	movff	(_main$2475),0+(?_printf+08h)
	movff	(_main$2475+1),1+(?_printf+08h)
	movff	(_main$2476),0+(?_printf+0Ah)
	movff	(_main$2476+1),1+(?_printf+0Ah)
	call	_printf	;wreg free
	line	1064
	
l7483:
	movlb	2	; () banked
	infsnz	((main@j_1796))&0ffh
	incf	((main@j_1796+1))&0ffh
	
l7485:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j_1796+1))&0ffh,7
	goto	u9791
	movlb	2	; () banked
	movf	((main@j_1796+1))&0ffh,w
	bnz	u9790
	movlw	2
	movlb	2	; () banked
	subwf	 ((main@j_1796))&0ffh,w
	btfss	status,0
	goto	u9791
	goto	u9790

u9791:
	goto	l7467
u9790:
	goto	l7487
	
l745:; BSR set to: 2

	line	1068
	
l7487:; BSR set to: 2

		movlw	low(STR_10)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_10)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(_line),0+(?_printf+02h)
	movff	(_line+1),1+(?_printf+02h)
	call	_printf	;wreg free
	goto	l7489
	line	1069
	
l743:
	line	1070
	
l7489:
	btfsc	((c:3971)),c,5	;volatile
	goto	u9801
	goto	u9800
u9801:
	goto	l7493
u9800:
	line	1071
	
l7491:
	movlw	low(05h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l7493
	line	1072
	
l746:; BSR set to: 1

	line	1073
	
l7493:
	btfsc	((c:3971)),c,6	;volatile
	goto	u9811
	goto	u9810
u9811:
	goto	l7503
u9810:
	
l7495:
	movlb	0	; () banked
	movf	((_rf))&0ffh,w
	movlb	0	; () banked
iorwf	((_rf+1))&0ffh,w
	btfss	status,2
	goto	u9821
	goto	u9820

u9821:
	goto	l7503
u9820:
	line	1074
	
l7497:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(01h)
	movwf	((_rf))&0ffh
	line	1075
	
l7499:; BSR set to: 0

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
	line	1076
	
l7501:
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
	goto	l7503
	line	1077
	
l747:
	line	1078
	
l7503:
	btfsc	((c:3971)),c,4	;volatile
	goto	u9831
	goto	u9830
u9831:
	goto	l7513
u9830:
	
l7505:
	movlb	0	; () banked
	movf	((_gf))&0ffh,w
	movlb	0	; () banked
iorwf	((_gf+1))&0ffh,w
	btfss	status,2
	goto	u9841
	goto	u9840

u9841:
	goto	l7513
u9840:
	line	1079
	
l7507:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(01h)
	movwf	((_gf))&0ffh
	line	1080
	
l7509:; BSR set to: 0

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
	line	1081
	
l7511:
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
	goto	l7513
	line	1082
	
l748:
	line	1083
	
l7513:
	btfss	((c:3971)),c,6	;volatile
	goto	u9851
	goto	u9850
u9851:
	goto	l7517
u9850:
	
l7515:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(0)
	movwf	((_rf))&0ffh
	goto	l7517
	
l749:; BSR set to: 0

	line	1084
	
l7517:
	btfss	((c:3971)),c,4	;volatile
	goto	u9861
	goto	u9860
u9861:
	goto	l7549
u9860:
	
l7519:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(0)
	movwf	((_gf))&0ffh
	goto	l7549
	
l750:; BSR set to: 0

	line	1085
	goto	l7549
	line	1086
	
l751:; BSR set to: 1

	line	1087
	bsf	((c:3969)),c,0	;volatile
	line	1088
	bsf	((c:3968)),c,4	;volatile
	line	1089
	bsf	((c:3969)),c,5	;volatile
	line	1090
	btfss	((c:3971)),c,5	;volatile
	goto	u9871
	goto	u9870
u9871:
	goto	l7549
u9870:
	line	1091
	
l7521:; BSR set to: 1

	movlw	low(06h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l7549
	line	1092
	
l752:; BSR set to: 1

	line	1093
	goto	l7549
	line	1094
	
l753:; BSR set to: 1

	line	1125
	btfsc	((c:3971)),c,6	;volatile
	goto	u9881
	goto	u9880
u9881:
	goto	l7525
u9880:
	line	1126
	
l7523:; BSR set to: 1

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	1127
	movlw	low(03h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l7525
	line	1128
	
l754:; BSR set to: 1

	line	1131
	
l7525:; BSR set to: 1

	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
	movlw	low(01F4h)
	movwf	((c:___almod@divisor)),c
	movlw	high(01F4h)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(01F4h)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(01F4h)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u9890
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u9891
	movlw	251
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u9891
	goto	u9890

u9891:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u9908
u9890:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u9908:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	1132
	
l7527:; BSR set to: 0

	bsf	((c:3968)),c,4	;volatile
	line	1133
	
l7529:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	1135
	
l7531:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	1136
	
l7533:
	call	_Line	;wreg free
	line	1138
	
l7535:
	movff	(_last),??_main+0+0
	movff	(_last+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movlb	0	; () banked
	movf	((_line))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_der))&0ffh
	movlb	0	; () banked
	movf	((_line+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+((_der))&0ffh
	line	1140
	
l7537:; BSR set to: 0

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
	movff	(_line),(c:___awtoft@c)
	movff	(_line+1),(c:___awtoft@c+1)
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
	line	1142
	
l7539:
	movlb	0	; () banked
	btfsc	((_formula+1))&0ffh,7
	goto	u9911
	movlb	0	; () banked
	movf	((_formula+1))&0ffh,w
	bnz	u9910
	movlb	0	; () banked
	decf	((_formula))&0ffh,w
	btfss	status,0
	goto	u9911
	goto	u9910

u9911:
	goto	l7543
u9910:
	line	1143
	
l7541:; BSR set to: 0

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
	line	1144
	goto	l7545
	
l755:
	line	1145
	
l7543:
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
	goto	l7545
	line	1146
	
l756:
	line	1148
	
l7545:
	movff	(_line),(_last)
	movff	(_line+1),(_last+1)
	line	1149
	goto	l7549
	line	1150
	
l7547:
	goto	l7549
	line	926
	
l694:
	
l7549:
	movlb	1	; () banked
	movf	((_status))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l7237
	xorlw	1^0	; case 1
	skipnz
	goto	l725
	xorlw	2^1	; case 2
	skipnz
	goto	l7295
	xorlw	3^2	; case 3
	skipnz
	goto	l7443
	xorlw	4^3	; case 4
	skipnz
	goto	l7349
	xorlw	5^4	; case 5
	skipnz
	goto	l751
	xorlw	6^5	; case 6
	skipnz
	goto	l753
	goto	l7549

	line	1150
	
l719:; BSR set to: 1

	goto	l7549
	line	1151
	
l757:; BSR set to: 1

	line	921
	goto	l7549
	
l758:; BSR set to: 1

	line	1152
	
l759:; BSR set to: 1

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
;;		 -> STR_12(34), STR_11(34), STR_10(61), STR_9(60), 
;;		 -> STR_8(53), STR_7(39), STR_6(44), STR_5(60), 
;;		 -> STR_4(60), STR_3(47), STR_2(37), STR_1(37), 
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
	
_printf:; BSR set to: 1

;incstack = 0
	opt	stack 26
	line	533
	
l6857:
		movlw	low(?_printf+02h)
	movlb	0	; () banked
	movwf	((printf@ap))&0ffh
	movlw	high(?_printf+02h)
	movlb	0	; () banked
	movwf	((printf@ap+1))&0ffh

	line	536
	goto	l7119
	
l797:; BSR set to: 0

	line	538
	
l6859:; BSR set to: 0

		movlw	37
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfsc	status,2
	goto	u8671
	goto	u8670

u8671:
	goto	l6863
u8670:
	line	541
	
l6861:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_putch
	line	542
	goto	l7119
	line	543
	
l798:
	line	546
	
l6863:
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
	goto	l6869
	line	550
	
l799:; BSR set to: 0

	line	551
	goto	l6869
	line	579
	
l801:; BSR set to: 0

	line	580
	
l6865:
	movlb	0	; () banked
	bsf	(0+(2/8)+(printf@flag))&0ffh,(2)&7
	line	581
	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	line	582
	goto	l6869
	line	584
	
l6867:; BSR set to: 0

	goto	l6871
	line	551
	
l800:; BSR set to: 0

	
l6869:
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
	goto	l6865
	goto	l6871

	line	584
	
l803:
	line	585
	goto	l6871
	line	586
	
l802:
	goto	l6869
	
l804:
	line	597
	
l6871:
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
	goto	u8681
	goto	u8680
u8681:
	goto	l6889
u8680:
	line	598
	
l6873:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l6875
	line	599
	
l806:; BSR set to: 0

	line	600
	
l6875:
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
	
l6877:
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

	
l6879:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	line	602
	
l6881:; BSR set to: 0

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
	goto	u8691
	goto	u8690
u8691:
	goto	l6875
u8690:
	goto	l6889
	
l807:
	goto	l6889
	line	608
	
l805:
	line	635
	goto	l6889
	line	637
	
l809:
	line	638
	goto	l888
	line	662
	
l811:
	line	663
	
l6883:
	movlb	0	; () banked
	bsf	(0+(10/8)+(printf@flag))&0ffh,(10)&7
	line	664
	goto	l6891
	line	697
	
l813:; BSR set to: 0

	goto	l6891
	line	698
	
l814:; BSR set to: 0

	line	699
	goto	l6891
	line	802
	
l815:; BSR set to: 0

	line	813
	goto	l7119
	line	817
	
l816:; BSR set to: 0

	line	818
	
l6885:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(6/8)+(printf@flag))&0ffh,(6)&7
	line	819
	goto	l6891
	line	822
	
l6887:; BSR set to: 0

	goto	l6891
	line	635
	
l808:; BSR set to: 0

	
l6889:
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
	goto	l888
	xorlw	100^0	; case 100
	skipnz
	goto	l6891
	xorlw	102^100	; case 102
	skipnz
	goto	l6883
	xorlw	105^102	; case 105
	skipnz
	goto	l6891
	xorlw	117^105	; case 117
	skipnz
	goto	l6885
	goto	l7119

	line	822
	
l812:; BSR set to: 0

	line	825
	
l6891:; BSR set to: 0

	movlw	high(0700h)
	movlb	0	; () banked
	andwf	((printf@flag+1))&0ffh,w

	btfsc	status,2
	goto	u8701
	goto	u8700
u8701:
	goto	l817
u8700:
	line	829
	
l6893:; BSR set to: 0

	movlw	high(06h)
	movlb	0	; () banked
	movwf	((printf@prec+1))&0ffh
	movlw	low(06h)
	movwf	((printf@prec))&0ffh
	line	830
	
l6895:; BSR set to: 0

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,(printf@fval)
	movff	postinc2,(printf@fval+1)
	movff	postdec2,(printf@fval+2)
	
l6897:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	line	831
	
l6899:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@fval+2))&0ffh,7
	goto	u8710
	goto	u8711

u8711:
	goto	l6905
u8710:
	line	832
	
l6901:; BSR set to: 0

	movff	(printf@fval),(c:___ftneg@f1)
	movff	(printf@fval+1),(c:___ftneg@f1+1)
	movff	(printf@fval+2),(c:___ftneg@f1+2)
	call	___ftneg	;wreg free
	movff	0+?___ftneg,(printf@fval)
	movff	1+?___ftneg,(printf@fval+1)
	movff	2+?___ftneg,(printf@fval+2)
	line	833
	
l6903:
	movlw	03h
	movlb	0	; () banked
	iorwf	((printf@flag))&0ffh
	goto	l6905
	line	834
	
l818:; BSR set to: 0

	line	835
	
l6905:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@exp+1))&0ffh
	movlw	low(0)
	movwf	((printf@exp))&0ffh
	line	836
	
l6907:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@fval))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@fval+1))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@fval+2))&0ffh,w
	btfsc	status,2
	goto	u8721
	goto	u8720

u8721:
	goto	l6933
u8720:
	line	837
	
l6909:; BSR set to: 0

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
	goto	u8730
u8735:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_printf+2+3)&0ffh
	rrcf	(??_printf+2+2)&0ffh
	rrcf	(??_printf+2+1)&0ffh
	rrcf	(??_printf+2+0)&0ffh
u8730:
	decfsz	wreg
	goto	u8735
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
	
l6911:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	line	839
	
l6913:; BSR set to: 0

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
	
l6915:
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
	
l6917:
	movlb	0	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u8740
	goto	u8741

u8741:
	goto	l6921
u8740:
	line	842
	
l6919:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l6921
	
l820:; BSR set to: 0

	line	846
	
l6921:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@exp))&0ffh,w
	sublw	0
	
	call	_scale
	movff	0+?_scale,(printf@tmpval)
	movff	1+?_scale,(printf@tmpval+1)
	movff	2+?_scale,(printf@tmpval+2)
	line	847
	
l6923:
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
	
l6925:
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
	goto	u8751
	goto	u8750
u8751:
	goto	l6929
u8750:
	line	849
	
l6927:
	movlb	0	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l6933
	line	850
	
l821:; BSR set to: 0

	
l6929:
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
	goto	u8761
	goto	u8760
u8761:
	goto	l6933
u8760:
	line	851
	
l6931:
	movlb	0	; () banked
	infsnz	((printf@exp))&0ffh
	incf	((printf@exp+1))&0ffh
	goto	l6933
	
l823:; BSR set to: 0

	goto	l6933
	line	852
	
l822:; BSR set to: 0

	goto	l6933
	
l819:; BSR set to: 0

	line	1112
	
l6933:
	movlb	0	; () banked
	btfsc	((printf@prec+1))&0ffh,7
	goto	u8770
	movlb	0	; () banked
	movf	((printf@prec+1))&0ffh,w
	bnz	u8771
	movlw	13
	movlb	0	; () banked
	subwf	 ((printf@prec))&0ffh,w
	btfsc	status,0
	goto	u8771
	goto	u8770

u8771:
	goto	l6937
u8770:
	line	1113
	
l6935:; BSR set to: 0

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
	goto	l6937
	
l824:
	line	1116
	
l6937:
	movlb	0	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u8780
	movlb	0	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u8781
	movlw	10
	movlb	0	; () banked
	subwf	 ((printf@exp))&0ffh,w
	btfsc	status,0
	goto	u8781
	goto	u8780

u8781:
	goto	l6945
u8780:
	
l6939:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@fval))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@fval+1))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@fval+2))&0ffh,w
	btfsc	status,2
	goto	u8791
	goto	u8790

u8791:
	goto	l6959
u8790:
	
l6941:; BSR set to: 0

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
	goto	u8801
	goto	u8800

u8801:
	goto	l6959
u8800:
	
l6943:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u8811
	movlb	0	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u8810
	movlw	2
	movlb	0	; () banked
	subwf	 ((printf@exp))&0ffh,w
	btfss	status,0
	goto	u8811
	goto	u8810

u8811:
	goto	l6959
u8810:
	goto	l6945
	
l827:; BSR set to: 0

	line	1120
	
l6945:; BSR set to: 0

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
	goto	u8821
	goto	u8820
u8821:
	goto	l6949
u8820:
	line	1121
	
l6947:
	movlb	0	; () banked
	movlw	low(-9)
	addwf	((printf@exp))&0ffh
	movlw	high(-9)
	addwfc	((printf@exp+1))&0ffh
	line	1122
	goto	l6951
	
l828:; BSR set to: 0

	line	1123
	
l6949:
	movlb	0	; () banked
	movlw	low(-8)
	addwf	((printf@exp))&0ffh
	movlw	high(-8)
	addwfc	((printf@exp+1))&0ffh
	goto	l6951
	line	1124
	
l829:; BSR set to: 0

	line	1125
	
l6951:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@exp))&0ffh,w
	
	call	_scale
	movff	0+?_scale,(printf@tmpval)
	movff	1+?_scale,(printf@tmpval+1)
	movff	2+?_scale,(printf@tmpval+2)
	line	1126
	goto	l6955
	
l6953:
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
	
	goto	l6957
	
l831:
	
l6955:
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
	
	goto	l6957
	
l833:
	line	1129
	
l6957:
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
	goto	l6963
	
l825:; BSR set to: 0

	line	1131
	
l6959:; BSR set to: 0

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
	
l6961:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@exp+1))&0ffh
	movlw	low(0)
	movwf	((printf@exp))&0ffh
	goto	l6963
	line	1134
	
l834:; BSR set to: 0

	line	1136
	
l6963:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((printf@c))&0ffh
	
l6965:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8831
	goto	u8830

u8831:
	goto	l6969
u8830:
	goto	l6977
	
l6967:; BSR set to: 0

	goto	l6977
	line	1137
	
l835:; BSR set to: 0

	
l6969:; BSR set to: 0

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
	goto	u8841
	goto	u8840

u8841:
	goto	l6973
u8840:
	goto	l6977
	line	1138
	
l6971:; BSR set to: 0

	goto	l6977
	
l837:; BSR set to: 0

	line	1136
	
l6973:; BSR set to: 0

	movlb	0	; () banked
	incf	((printf@c))&0ffh
	
l6975:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8851
	goto	u8850

u8851:
	goto	l6969
u8850:
	goto	l6977
	
l836:; BSR set to: 0

	line	1142
	
l6977:; BSR set to: 0

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
	goto	u8861
	goto	u8860

u8861:
	goto	l6981
u8860:
	line	1148
	
l6979:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l6981
	
l838:; BSR set to: 0

	line	1149
	
l6981:; BSR set to: 0

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
	goto	u8871
	goto	u8870

u8871:
	goto	l6985
u8870:
	line	1150
	
l6983:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l6985
	
l839:; BSR set to: 0

	line	1153
	
l6985:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((printf@flag))&0ffh,(2)&7
	goto	u8881
	goto	u8880
u8881:
	goto	l7001
u8880:
	line	1157
	
l6987:; BSR set to: 0

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
	goto	u8891
	goto	u8890

u8891:
	goto	l6995
u8890:
	line	1159
	
l6989:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l6995
	
l841:
	line	1168
	goto	l6995
	
l843:
	line	1169
	
l6991:
	movlw	(030h)&0ffh
	
	call	_putch
	line	1170
	
l6993:
	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l6995
	line	1171
	
l842:; BSR set to: 0

	line	1168
	
l6995:
	movlb	0	; () banked
	btfsc	((printf@width+1))&0ffh,7
	goto	u8900
	movlb	0	; () banked
	movf	((printf@width+1))&0ffh,w
	bnz	u8901
	movlb	0	; () banked
	decf	((printf@width))&0ffh,w
	btfsc	status,0
	goto	u8901
	goto	u8900

u8901:
	goto	l6991
u8900:
	goto	l7013
	
l844:; BSR set to: 0

	line	1173
	goto	l7013
	
l840:; BSR set to: 0

	line	1180
	goto	l7001
	
l847:; BSR set to: 0

	line	1181
	
l6997:; BSR set to: 0

	movlw	(020h)&0ffh
	
	call	_putch
	line	1182
	
l6999:
	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l7001
	line	1183
	
l846:; BSR set to: 0

	line	1180
	
l7001:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@width+1))&0ffh,7
	goto	u8910
	movlb	0	; () banked
	movf	((printf@width+1))&0ffh,w
	bnz	u8911
	movlb	0	; () banked
	decf	((printf@width))&0ffh,w
	btfsc	status,0
	goto	u8911
	goto	u8910

u8911:
	goto	l6997
u8910:
	goto	l7003
	
l848:; BSR set to: 0

	line	1188
	
l7003:; BSR set to: 0

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
	goto	u8921
	goto	u8920

u8921:
	goto	l7013
u8920:
	line	1190
	
l7005:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l7013
	
l849:
	goto	l7013
	line	1195
	
l845:
	line	1196
	goto	l7013
	
l851:
	line	1201
	
l7007:
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
	
l7009:
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
	
l7011:
	movlb	0	; () banked
	movf	((printf@tmpval))&0ffh,w
	addlw	low(030h)
	
	call	_putch
	goto	l7013
	line	1206
	
l850:
	line	1196
	
l7013:
	movlb	0	; () banked
	decf	((printf@c))&0ffh
	movlb	0	; () banked
		incf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8931
	goto	u8930

u8931:
	goto	l7007
u8930:
	goto	l7019
	
l852:; BSR set to: 0

	line	1207
	goto	l7019
	
l854:; BSR set to: 0

	line	1208
	
l7015:; BSR set to: 0

	movlw	(030h)&0ffh
	
	call	_putch
	line	1209
	
l7017:
	movlb	0	; () banked
	decf	((printf@exp))&0ffh
	btfss	status,0
	decf	((printf@exp+1))&0ffh
	goto	l7019
	line	1210
	
l853:; BSR set to: 0

	line	1207
	
l7019:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@exp+1))&0ffh,7
	goto	u8940
	movlb	0	; () banked
	movf	((printf@exp+1))&0ffh,w
	bnz	u8941
	movlb	0	; () banked
	decf	((printf@exp))&0ffh,w
	btfsc	status,0
	goto	u8941
	goto	u8940

u8941:
	goto	l7015
u8940:
	goto	l7021
	
l855:; BSR set to: 0

	line	1211
	
l7021:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@prec+1))&0ffh,7
	goto	u8951
	movlb	0	; () banked
	movf	((printf@prec+1))&0ffh,w
	bnz	u8950
	movlw	9
	movlb	0	; () banked
	subwf	 ((printf@prec))&0ffh,w
	btfss	status,0
	goto	u8951
	goto	u8950

u8951:
	goto	l856
u8950:
	line	1212
	
l7023:; BSR set to: 0

	movlw	low(08h)
	movlb	0	; () banked
	movwf	((printf@c))&0ffh
	goto	l7025
	line	1213
	
l856:; BSR set to: 0

	line	1214
	movff	(printf@prec),(printf@c)
	goto	l7025
	
l857:; BSR set to: 0

	line	1215
	
l7025:; BSR set to: 0

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
	
l7027:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u8961
	goto	u8960
u8961:
	goto	l7031
u8960:
	line	1221
	
l7029:; BSR set to: 0

	movlw	(02Eh)&0ffh
	
	call	_putch
	goto	l7031
	
l858:
	line	1227
	
l7031:
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_scale
	movff	0+?_scale,(_printf$2480)
	movff	1+?_scale,(_printf$2480+1)
	movff	2+?_scale,(_printf$2480+2)
	
l7033:
	movff	(printf@fval),(c:___ftmul@f2)
	movff	(printf@fval+1),(c:___ftmul@f2+1)
	movff	(printf@fval+2),(c:___ftmul@f2+2)
	movff	(_printf$2480),(c:___ftmul@f1)
	movff	(_printf$2480+1),(c:___ftmul@f1+1)
	movff	(_printf$2480+2),(c:___ftmul@f1+2)
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
	goto	l7041
	
l860:
	line	1229
	
l7035:
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
	
l7037:
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
	
l7039:
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
	
	goto	l7041
	line	1233
	
l859:
	line	1228
	
l7041:
	movlb	0	; () banked
	decf	((printf@c))&0ffh
	movlb	0	; () banked
		incf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u8971
	goto	u8970

u8971:
	goto	l7035
u8970:
	goto	l7047
	
l861:; BSR set to: 0

	line	1235
	goto	l7047
	
l863:; BSR set to: 0

	line	1236
	
l7043:; BSR set to: 0

	movlw	(030h)&0ffh
	
	call	_putch
	line	1237
	
l7045:
	movlb	0	; () banked
	decf	((printf@prec))&0ffh
	btfss	status,0
	decf	((printf@prec+1))&0ffh
	goto	l7047
	line	1238
	
l862:; BSR set to: 0

	line	1235
	
l7047:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@prec))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@prec+1))&0ffh,w
	btfss	status,2
	goto	u8981
	goto	u8980

u8981:
	goto	l7043
u8980:
	goto	l7119
	
l864:; BSR set to: 0

	line	1245
	goto	l7119
	line	1246
	
l817:; BSR set to: 0

	line	1251
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((printf@flag))&0ffh,(6)&7
	goto	u8991
	goto	u8990
u8991:
	goto	l7059
u8990:
	line	1259
	
l7049:; BSR set to: 0

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
	
l7051:; BSR set to: 0

	movlw	02h
	movlb	0	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	line	1261
	
l7053:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((printf@val+3))&0ffh,7
	goto	u9000
	goto	u9001

u9001:
	goto	l7063
u9000:
	line	1262
	
l7055:; BSR set to: 0

	movlw	03h
	movlb	0	; () banked
	iorwf	((printf@flag))&0ffh
	line	1263
	
l7057:; BSR set to: 0

	movlb	0	; () banked
	comf	((printf@val+3))&0ffh
	comf	((printf@val+2))&0ffh
	comf	((printf@val+1))&0ffh
	negf	((printf@val))&0ffh
	movlw	0
	addwfc	((printf@val+1))&0ffh
	addwfc	((printf@val+2))&0ffh
	addwfc	((printf@val+3))&0ffh
	goto	l7063
	line	1264
	
l866:; BSR set to: 0

	line	1266
	goto	l7063
	line	1268
	
l865:; BSR set to: 0

	line	1286
	
l7059:; BSR set to: 0

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,??_printf+0+0
	movff	postdec2,??_printf+0+0+1
	movff	??_printf+0+0,(printf@val)
	movff	??_printf+0+1,(printf@val+1)
	movlb	0	; () banked
	clrf	((printf@val+2))&0ffh
	clrf	((printf@val+3))&0ffh

	
l7061:; BSR set to: 0

	movlw	02h
	movlb	0	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	goto	l7063
	line	1287
	
l867:; BSR set to: 0

	line	1305
	
l7063:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((printf@c))&0ffh
	
l7065:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u9011
	goto	u9010

u9011:
	goto	l7069
u9010:
	goto	l7077
	
l7067:; BSR set to: 0

	goto	l7077
	line	1306
	
l868:; BSR set to: 0

	
l7069:; BSR set to: 0

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
	goto	u9021
	goto	u9020

u9021:
	goto	l7073
u9020:
	goto	l7077
	line	1307
	
l7071:; BSR set to: 0

	goto	l7077
	
l870:; BSR set to: 0

	line	1305
	
l7073:; BSR set to: 0

	movlb	0	; () banked
	incf	((printf@c))&0ffh
	
l7075:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u9031
	goto	u9030

u9031:
	goto	l7069
u9030:
	goto	l7077
	
l869:; BSR set to: 0

	line	1345
	
l7077:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u9041
	goto	u9040

u9041:
	goto	l7083
u9040:
	
l7079:; BSR set to: 0

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
	goto	u9051
	goto	u9050

u9051:
	goto	l7083
u9050:
	line	1346
	
l7081:; BSR set to: 0

	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	goto	l7083
	
l871:; BSR set to: 0

	line	1381
	
l7083:; BSR set to: 0

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
	goto	u9061
	goto	u9060
u9061:
	goto	l7087
u9060:
	line	1382
	
l7085:; BSR set to: 0

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

	goto	l7089
	line	1383
	
l872:; BSR set to: 0

	line	1384
	
l7087:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l7089
	
l873:; BSR set to: 0

	line	1387
	
l7089:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((printf@flag))&0ffh,(2)&7
	goto	u9071
	goto	u9070
u9071:
	goto	l7101
u9070:
	line	1392
	
l7091:; BSR set to: 0

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
	goto	u9081
	goto	u9080

u9081:
	goto	l7095
u9080:
	line	1393
	
l7093:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l7095
	
l875:
	line	1415
	
l7095:
	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u9091
	goto	u9090

u9091:
	goto	l7111
u9090:
	goto	l7097
	line	1416
	
l877:; BSR set to: 0

	line	1417
	
l7097:; BSR set to: 0

	movlw	(030h)&0ffh
	
	call	_putch
	line	1418
	
l7099:
	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u9101
	goto	u9100

u9101:
	goto	l7097
u9100:
	goto	l7111
	
l878:; BSR set to: 0

	goto	l7111
	
l876:; BSR set to: 0

	line	1420
	goto	l7111
	
l874:; BSR set to: 0

	line	1428
	
l7101:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u9111
	goto	u9110

u9111:
	goto	l7107
u9110:
	goto	l7103
	line	1429
	
l881:; BSR set to: 0

	line	1430
	
l7103:; BSR set to: 0

	movlw	(020h)&0ffh
	
	call	_putch
	line	1431
	
l7105:
	movlb	0	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	0	; () banked
	movf	((printf@width))&0ffh,w
	movlb	0	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u9121
	goto	u9120

u9121:
	goto	l7103
u9120:
	goto	l7107
	
l882:; BSR set to: 0

	goto	l7107
	
l880:; BSR set to: 0

	line	1438
	
l7107:; BSR set to: 0

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
	goto	u9131
	goto	u9130

u9131:
	goto	l7111
u9130:
	line	1439
	
l7109:; BSR set to: 0

	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l7111
	
l883:
	goto	l7111
	line	1469
	
l879:
	line	1472
	
l7111:
	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	movlb	0	; () banked
	movwf	((printf@prec))&0ffh
	clrf	((printf@prec+1))&0ffh
	btfsc	((printf@prec))&0ffh,7
	decf	((printf@prec+1))&0ffh
	line	1474
	goto	l7117
	
l885:; BSR set to: 0

	line	1489
	
l7113:; BSR set to: 0

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
	
l7115:; BSR set to: 0

	movlb	0	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_putch
	goto	l7117
	line	1525
	
l884:
	line	1474
	
l7117:
	movlb	0	; () banked
	decf	((printf@prec))&0ffh
	btfss	status,0
	decf	((printf@prec+1))&0ffh
	movlb	0	; () banked
		incf	((printf@prec))&0ffh,w
	bnz	u9141
	movlb	0	; () banked
	incf	((printf@prec+1))&0ffh,w
	btfss	status,2
	goto	u9141
	goto	u9140

u9141:
	goto	l7113
u9140:
	goto	l7119
	
l886:; BSR set to: 0

	goto	l7119
	line	1533
	
l796:; BSR set to: 0

	line	536
	
l7119:
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
	goto	u9151
	goto	u9150
u9151:
	goto	l6859
u9150:
	goto	l888
	
l887:; BSR set to: 0

	goto	l888
	line	1535
	
l810:; BSR set to: 0

	line	1541
;	Return value of _printf is never used
	
l888:
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
	
l6053:
	btfsc	((c:scale@scl)),c,7
	goto	u7370
	goto	u7371

u7371:
	goto	l6073
u7370:
	line	429
	
l6055:
	negf	((c:scale@scl)),c
	line	430
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^06Eh)
	btfss	status,0
	goto	u7381
	goto	u7380

u7381:
	goto	l6063
u7380:
	line	431
	
l6057:
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
	movff	0+?___ftmul,(c:_scale$2479)
	movff	1+?___ftmul,(c:_scale$2479+1)
	movff	2+?___ftmul,(c:_scale$2479+2)
	movff	(c:_scale$2479),(c:___ftmul@f1)
	movff	(c:_scale$2479+1),(c:___ftmul@f1+1)
	movff	(c:_scale$2479+2),(c:___ftmul@f1+2)
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
	goto	l788
	
l6059:
	goto	l788
	
l6061:
	goto	l6069
	line	432
	
l787:
	
l6063:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^0Bh)
	btfss	status,0
	goto	u7391
	goto	u7390

u7391:
	goto	l6069
u7390:
	line	433
	
l6065:
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
	goto	l788
	
l6067:
	goto	l788
	
l790:
	goto	l6069
	line	434
	
l789:
	
l6069:
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

	goto	l788
	
l6071:
	goto	l788
	line	435
	
l786:
	line	436
	
l6073:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^06Eh)
	btfss	status,0
	goto	u7401
	goto	u7400

u7401:
	goto	l6081
u7400:
	line	437
	
l6075:
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
	movff	0+?___ftmul,(c:_scale$2479)
	movff	1+?___ftmul,(c:_scale$2479+1)
	movff	2+?___ftmul,(c:_scale$2479+2)
	movff	(c:_scale$2479),(c:___ftmul@f1)
	movff	(c:_scale$2479+1),(c:___ftmul@f1+1)
	movff	(c:_scale$2479+2),(c:___ftmul@f1+2)
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
	goto	l788
	
l6077:
	goto	l788
	
l6079:
	goto	l6087
	line	438
	
l791:
	
l6081:
		movf	((c:scale@scl)),c,w
	xorlw	80h
	addlw	-(80h^0Bh)
	btfss	status,0
	goto	u7411
	goto	u7410

u7411:
	goto	l6087
u7410:
	line	439
	
l6083:
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
	goto	l788
	
l6085:
	goto	l788
	
l793:
	goto	l6087
	line	440
	
l792:
	
l6087:
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

	goto	l788
	
l6089:
	line	441
	
l788:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
	signat	_scale,4219
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 209 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	209
global __ptext3
__ptext3:
psect	text3
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	209
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 28
	movwf	((c:putch@data)),c
	line	210
	
l5883:
	goto	l198
	
l199:
	line	211
	
l198:
	line	210
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u7241
	goto	u7240
u7241:
	goto	l198
u7240:
	goto	l5885
	
l200:
	line	212
	
l5885:
	movff	(c:putch@data),(c:4013)	;volatile
	line	213
	
l201:
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
	
l6091:
	movlw	low(0)
	movwf	((c:_isdigit$2082)),c
	
l6093:
		movlw	03Ah-0
	cpfslt	((c:isdigit@c)),c
	goto	u7421
	goto	u7420

u7421:
	goto	l6099
u7420:
	
l6095:
		movlw	030h-1
	cpfsgt	((c:isdigit@c)),c
	goto	u7431
	goto	u7430

u7431:
	goto	l6099
u7430:
	
l6097:
	movlw	low(01h)
	movwf	((c:_isdigit$2082)),c
	goto	l6099
	
l1252:
	
l6099:
	movff	(c:_isdigit$2082),??_isdigit+0+0
	rrcf	(??_isdigit+0+0),c,w
	goto	l1253
	
l6101:
	line	15
	
l1253:
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
	
l6031:
		movlw	06Eh-1
	cpfsgt	((c:fround@prec)),c
	goto	u7351
	goto	u7350

u7351:
	goto	l6041
u7350:
	line	414
	
l6033:
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
	movff	0+?___ftmul,(c:_fround$2477)
	movff	1+?___ftmul,(c:_fround$2477+1)
	movff	2+?___ftmul,(c:_fround$2477+2)
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

	movff	(c:_fround$2477),(c:___ftmul@f1)
	movff	(c:_fround$2477+1),(c:___ftmul@f1+1)
	movff	(c:_fround$2477+2),(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:_fround$2478)
	movff	1+?___ftmul,(c:_fround$2478+1)
	movff	2+?___ftmul,(c:_fround$2478+2)
	
l6035:
	movff	(c:_fround$2478),(c:___ftmul@f1)
	movff	(c:_fround$2478+1),(c:___ftmul@f1+1)
	movff	(c:_fround$2478+2),(c:___ftmul@f1+2)
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
	goto	l781
	
l6037:
	goto	l781
	
l6039:
	goto	l6049
	line	415
	
l780:
	
l6041:
		movlw	0Bh-1
	cpfsgt	((c:fround@prec)),c
	goto	u7361
	goto	u7360

u7361:
	goto	l6049
u7360:
	line	416
	
l6043:
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
	movff	0+?___ftmul,(c:_fround$2477)
	movff	1+?___ftmul,(c:_fround$2477+1)
	movff	2+?___ftmul,(c:_fround$2477+2)
	
l6045:
	movff	(c:_fround$2477),(c:___ftmul@f1)
	movff	(c:_fround$2477+1),(c:___ftmul@f1+1)
	movff	(c:_fround$2477+2),(c:___ftmul@f1+2)
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
	goto	l781
	
l6047:
	goto	l781
	
l783:
	goto	l6049
	line	417
	
l782:
	
l6049:
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
	goto	l781
	
l6051:
	line	418
	
l781:
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
;;		_Ponderado
;;		_LineFollow
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
	
l5679:
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
	
l5681:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l891
	
l5683:
	line	53
	
l891:
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
;;		_LineFollow
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
	
l5755:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u7061
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u7061:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u7071
	goto	u7070
u7071:
	goto	l5761
u7070:
	line	68
	
l5757:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l1217
	
l5759:
	goto	l1217
	
l1216:
	line	69
	
l5761:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u7081
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u7081:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u7091
	goto	u7090
u7091:
	goto	l5767
u7090:
	line	70
	
l5763:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l1217
	
l5765:
	goto	l1217
	
l1218:
	line	71
	
l5767:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l5769:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l5771:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l5773:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l5775:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l5777:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l5779:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l5781
	line	135
	
l1219:
	line	136
	
l5781:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u7101
	goto	u7100
u7101:
	goto	l5785
u7100:
	line	137
	
l5783:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l5785
	
l1220:
	line	138
	
l5785:
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
	
l5787:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l5781
	goto	l5789
	
l1221:
	line	143
	
l5789:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l5791
	line	144
	
l1222:
	line	145
	
l5791:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u7111
	goto	u7110
u7111:
	goto	l5795
u7110:
	line	146
	
l5793:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l5795
	
l1223:
	line	147
	
l5795:
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
	
l5797:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l5791
	goto	l5799
	
l1224:
	line	156
	
l5799:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l1217
	
l5801:
	line	157
	
l1217:
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
	
l5847:
	movlw	low(0)
	movwf	((c:___awmod@sign)),c
	line	14
	
l5849:
	btfsc	((c:___awmod@dividend+1)),c,7
	goto	u7180
	goto	u7181

u7181:
	goto	l5855
u7180:
	line	15
	
l5851:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	line	16
	
l5853:
	movlw	low(01h)
	movwf	((c:___awmod@sign)),c
	goto	l5855
	line	17
	
l1069:
	line	18
	
l5855:
	btfsc	((c:___awmod@divisor+1)),c,7
	goto	u7190
	goto	u7191

u7191:
	goto	l5859
u7190:
	line	19
	
l5857:
	negf	((c:___awmod@divisor)),c
	comf	((c:___awmod@divisor+1)),c
	btfsc	status,0
	incf	((c:___awmod@divisor+1)),c
	goto	l5859
	
l1070:
	line	20
	
l5859:
	movf	((c:___awmod@divisor)),c,w
iorwf	((c:___awmod@divisor+1)),c,w
	btfsc	status,2
	goto	u7201
	goto	u7200

u7201:
	goto	l5875
u7200:
	line	21
	
l5861:
	movlw	low(01h)
	movwf	((c:___awmod@counter)),c
	line	22
	goto	l5865
	
l1073:
	line	23
	
l5863:
	bcf	status,0
	rlcf	((c:___awmod@divisor)),c
	rlcf	((c:___awmod@divisor+1)),c
	line	24
	incf	((c:___awmod@counter)),c
	goto	l5865
	line	25
	
l1072:
	line	22
	
l5865:
	
	btfss	((c:___awmod@divisor+1)),c,(15)&7
	goto	u7211
	goto	u7210
u7211:
	goto	l5863
u7210:
	goto	l5867
	
l1074:
	goto	l5867
	line	26
	
l1075:
	line	27
	
l5867:
		movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c,w
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c,w
	btfss	status,0
	goto	u7221
	goto	u7220

u7221:
	goto	l5871
u7220:
	line	28
	
l5869:
	movf	((c:___awmod@divisor)),c,w
	subwf	((c:___awmod@dividend)),c
	movf	((c:___awmod@divisor+1)),c,w
	subwfb	((c:___awmod@dividend+1)),c

	goto	l5871
	
l1076:
	line	29
	
l5871:
	bcf	status,0
	rrcf	((c:___awmod@divisor+1)),c
	rrcf	((c:___awmod@divisor)),c
	line	30
	
l5873:
	decfsz	((c:___awmod@counter)),c
	
	goto	l5867
	goto	l5875
	
l1077:
	goto	l5875
	line	31
	
l1071:
	line	32
	
l5875:
	movf	((c:___awmod@sign)),c,w
	btfsc	status,2
	goto	u7231
	goto	u7230
u7231:
	goto	l5879
u7230:
	line	33
	
l5877:
	negf	((c:___awmod@dividend)),c
	comf	((c:___awmod@dividend+1)),c
	btfsc	status,0
	incf	((c:___awmod@dividend+1)),c
	goto	l5879
	
l1078:
	line	34
	
l5879:
	movff	(c:___awmod@dividend),(c:?___awmod)
	movff	(c:___awmod@dividend+1),(c:?___awmod+1)
	goto	l1079
	
l5881:
	line	35
	
l1079:
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
	
l6103:
	movff	(c:__tdiv_to_l_@f1+2),??__tdiv_to_l_+0+0
	clrf	(??__tdiv_to_l_+0+0+1)&0ffh,c
	clrf	(??__tdiv_to_l_+0+0+2)&0ffh,c
	rlcf	((c:__tdiv_to_l_@f1+1)),c,w
	rlcf	(??__tdiv_to_l_+0+0)&0ffh,c
	bnc	u7441
	bsf	(??__tdiv_to_l_+0+0+1)&0ffh,c,0
u7441:
	movf	(??__tdiv_to_l_+0+0),c,w
	movwf	((c:__tdiv_to_l_@exp1)),c
	movf	((c:__tdiv_to_l_@exp1)),c,w
	btfss	status,2
	goto	u7451
	goto	u7450
u7451:
	goto	l6109
u7450:
	line	67
	
l6105:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l1193
	
l6107:
	goto	l1193
	
l1192:
	line	68
	
l6109:
	movff	(c:__tdiv_to_l_@f2+2),??__tdiv_to_l_+0+0
	clrf	(??__tdiv_to_l_+0+0+1)&0ffh,c
	clrf	(??__tdiv_to_l_+0+0+2)&0ffh,c
	rlcf	((c:__tdiv_to_l_@f2+1)),c,w
	rlcf	(??__tdiv_to_l_+0+0)&0ffh,c
	bnc	u7461
	bsf	(??__tdiv_to_l_+0+0+1)&0ffh,c,0
u7461:
	movf	(??__tdiv_to_l_+0+0),c,w
	movwf	((c:__tdiv_to_l_@cntr)),c
	movf	((c:__tdiv_to_l_@cntr)),c,w
	btfss	status,2
	goto	u7471
	goto	u7470
u7471:
	goto	l6115
u7470:
	line	69
	
l6111:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l1193
	
l6113:
	goto	l1193
	
l1194:
	line	70
	
l6115:
	bsf	(0+(15/8)+(c:__tdiv_to_l_@f1)),c,(15)&7
	line	71
	
l6117:
	movlw	low(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:__tdiv_to_l_@f1+2)),c

	line	72
	bsf	(0+(15/8)+(c:__tdiv_to_l_@f2)),c,(15)&7
	line	73
	
l6119:
	movlw	low(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:__tdiv_to_l_@f2+2)),c

	line	74
	
l6121:
	movlw	low(0)
	movwf	((c:__tdiv_to_l_@quot)),c
	movlw	high(0)
	movwf	((c:__tdiv_to_l_@quot+1)),c
	movlw	low highword(0)
	movwf	((c:__tdiv_to_l_@quot+2)),c
	movlw	high highword(0)
	movwf	((c:__tdiv_to_l_@quot+3)),c
	line	75
	
l6123:
	movlw	(07Fh)&0ffh
	subwf	((c:__tdiv_to_l_@exp1)),c
	line	76
	
l6125:
	movf	((c:__tdiv_to_l_@cntr)),c,w
	addlw	low(098h)
	subwf	((c:__tdiv_to_l_@exp1)),c
	line	77
	
l6127:
	movlw	low(018h)
	movwf	((c:__tdiv_to_l_@cntr)),c
	line	78
	
l1195:
	line	79
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@quot)),c
	rlcf	((c:__tdiv_to_l_@quot+1)),c
	rlcf	((c:__tdiv_to_l_@quot+2)),c
	rlcf	((c:__tdiv_to_l_@quot+3)),c
	line	80
	
l6129:
		movf	((c:__tdiv_to_l_@f2)),c,w
	subwf	((c:__tdiv_to_l_@f1)),c,w
	movf	((c:__tdiv_to_l_@f2+1)),c,w
	subwfb	((c:__tdiv_to_l_@f1+1)),c,w
	movf	((c:__tdiv_to_l_@f2+2)),c,w
	subwfb	((c:__tdiv_to_l_@f1+2)),c,w
	btfss	status,0
	goto	u7481
	goto	u7480

u7481:
	goto	l1196
u7480:
	line	81
	
l6131:
	movf	((c:__tdiv_to_l_@f2)),c,w
	subwf	((c:__tdiv_to_l_@f1)),c
	movf	((c:__tdiv_to_l_@f2+1)),c,w
	subwfb	((c:__tdiv_to_l_@f1+1)),c
	movf	((c:__tdiv_to_l_@f2+2)),c,w
	subwfb	((c:__tdiv_to_l_@f1+2)),c

	line	82
	
l6133:
	bsf	(0+(0/8)+(c:__tdiv_to_l_@quot)),c,(0)&7
	line	83
	
l1196:
	line	84
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@f1)),c
	rlcf	((c:__tdiv_to_l_@f1+1)),c
	rlcf	((c:__tdiv_to_l_@f1+2)),c
	line	85
	
l6135:
	decfsz	((c:__tdiv_to_l_@cntr)),c
	
	goto	l1195
	goto	l6137
	
l1197:
	line	86
	
l6137:
	btfsc	((c:__tdiv_to_l_@exp1)),c,7
	goto	u7490
	goto	u7491

u7491:
	goto	l6149
u7490:
	line	87
	
l6139:
		movf	((c:__tdiv_to_l_@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u7501
	goto	u7500

u7501:
	goto	l6145
u7500:
	line	88
	
l6141:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l1193
	
l6143:
	goto	l1193
	
l1199:
	goto	l6145
	line	89
	
l1200:
	line	90
	
l6145:
	bcf	status,0
	rrcf	((c:__tdiv_to_l_@quot+3)),c
	rrcf	((c:__tdiv_to_l_@quot+2)),c
	rrcf	((c:__tdiv_to_l_@quot+1)),c
	rrcf	((c:__tdiv_to_l_@quot)),c
	line	91
	
l6147:
	incfsz	((c:__tdiv_to_l_@exp1)),c
	
	goto	l6145
	goto	l1202
	
l1201:
	line	92
	goto	l1202
	
l1198:
	line	93
	
l6149:
		movlw	018h-1
	cpfsgt	((c:__tdiv_to_l_@exp1)),c
	goto	u7511
	goto	u7510

u7511:
	goto	l6157
u7510:
	line	94
	
l6151:
	movlw	low(0)
	movwf	((c:?__tdiv_to_l_)),c
	movlw	high(0)
	movwf	((c:?__tdiv_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__tdiv_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__tdiv_to_l_+3)),c
	goto	l1193
	
l6153:
	goto	l1193
	
l1203:
	line	95
	goto	l6157
	
l1205:
	line	96
	
l6155:
	bcf	status,0
	rlcf	((c:__tdiv_to_l_@quot)),c
	rlcf	((c:__tdiv_to_l_@quot+1)),c
	rlcf	((c:__tdiv_to_l_@quot+2)),c
	rlcf	((c:__tdiv_to_l_@quot+3)),c
	line	97
	decf	((c:__tdiv_to_l_@exp1)),c
	goto	l6157
	line	98
	
l1204:
	line	95
	
l6157:
	movf	((c:__tdiv_to_l_@exp1)),c,w
	btfss	status,2
	goto	u7521
	goto	u7520
u7521:
	goto	l6155
u7520:
	goto	l1202
	
l1206:
	line	99
	
l1202:
	line	100
	movff	(c:__tdiv_to_l_@quot),(c:?__tdiv_to_l_)
	movff	(c:__tdiv_to_l_@quot+1),(c:?__tdiv_to_l_+1)
	movff	(c:__tdiv_to_l_@quot+2),(c:?__tdiv_to_l_+2)
	movff	(c:__tdiv_to_l_@quot+3),(c:?__tdiv_to_l_+3)
	line	101
	
l1193:
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
	
l6159:
	rlcf	(2+((c:__div_to_l_@f1))),c,w
	rlcf	(3+((c:__div_to_l_@f1))),c,w
	movwf	((c:__div_to_l_@exp1)),c
	movf	((c:__div_to_l_@exp1)),c,w
	btfss	status,2
	goto	u7531
	goto	u7530
u7531:
	goto	l6165
u7530:
	line	67
	
l6161:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l1089
	
l6163:
	goto	l1089
	
l1088:
	line	68
	
l6165:
	rlcf	(2+((c:__div_to_l_@f2))),c,w
	rlcf	(3+((c:__div_to_l_@f2))),c,w
	movwf	((c:__div_to_l_@cntr)),c
	movf	((c:__div_to_l_@cntr)),c,w
	btfss	status,2
	goto	u7541
	goto	u7540
u7541:
	goto	l6171
u7540:
	line	69
	
l6167:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l1089
	
l6169:
	goto	l1089
	
l1090:
	line	70
	
l6171:
	bsf	(0+(23/8)+0+((c:__div_to_l_@f1))),c,(23)&7
	line	71
	
l6173:
	movlw	0FFh
	andwf	(0+((c:__div_to_l_@f1))),c
	movlw	0FFh
	andwf	(1+((c:__div_to_l_@f1))),c
	movlw	0FFh
	andwf	(2+((c:__div_to_l_@f1))),c
	movlw	0
	andwf	(3+((c:__div_to_l_@f1))),c
	line	72
	
l6175:
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
	
l6177:
	movlw	low(0)
	movwf	((c:__div_to_l_@quot)),c
	movlw	high(0)
	movwf	((c:__div_to_l_@quot+1)),c
	movlw	low highword(0)
	movwf	((c:__div_to_l_@quot+2)),c
	movlw	high highword(0)
	movwf	((c:__div_to_l_@quot+3)),c
	line	75
	
l6179:
	movlw	(07Fh)&0ffh
	subwf	((c:__div_to_l_@exp1)),c
	line	76
	
l6181:
	movf	((c:__div_to_l_@cntr)),c,w
	addlw	low(0A0h)
	subwf	((c:__div_to_l_@exp1)),c
	line	77
	
l6183:
	movlw	low(020h)
	movwf	((c:__div_to_l_@cntr)),c
	goto	l6185
	line	78
	
l1091:
	line	79
	
l6185:
	bcf	status,0
	rlcf	((c:__div_to_l_@quot)),c
	rlcf	((c:__div_to_l_@quot+1)),c
	rlcf	((c:__div_to_l_@quot+2)),c
	rlcf	((c:__div_to_l_@quot+3)),c
	line	80
	
l6187:
		movf	(0+((c:__div_to_l_@f2))),c,w
	subwf	(0+((c:__div_to_l_@f1))),c,w
	movf	(1+((c:__div_to_l_@f2))),c,w
	subwfb	(1+((c:__div_to_l_@f1))),c,w
	movf	(2+((c:__div_to_l_@f2))),c,w
	subwfb	(2+((c:__div_to_l_@f1))),c,w
	movf	(3+((c:__div_to_l_@f2))),c,w
	subwfb	(3+((c:__div_to_l_@f1))),c,w
	btfss	status,0
	goto	u7551
	goto	u7550

u7551:
	goto	l6193
u7550:
	line	81
	
l6189:
	movf	(0+((c:__div_to_l_@f2))),c,w
	subwf	(0+((c:__div_to_l_@f1))),c
	movf	(1+((c:__div_to_l_@f2))),c,w
	subwfb	(1+((c:__div_to_l_@f1))),c
	movf	(2+((c:__div_to_l_@f2))),c,w
	subwfb	(2+((c:__div_to_l_@f1))),c
	movf	(3+((c:__div_to_l_@f2))),c,w
	subwfb	(3+((c:__div_to_l_@f1))),c
	line	82
	
l6191:
	bsf	(0+(0/8)+(c:__div_to_l_@quot)),c,(0)&7
	goto	l6193
	line	83
	
l1092:
	line	84
	
l6193:
	bcf	status,0
	rlcf	(0+((c:__div_to_l_@f1))),c
	rlcf	(1+((c:__div_to_l_@f1))),c
	rlcf	(2+((c:__div_to_l_@f1))),c
	rlcf	(3+((c:__div_to_l_@f1))),c
	line	85
	
l6195:
	decfsz	((c:__div_to_l_@cntr)),c
	
	goto	l6185
	goto	l6197
	
l1093:
	line	86
	
l6197:
	btfsc	((c:__div_to_l_@exp1)),c,7
	goto	u7560
	goto	u7561

u7561:
	goto	l6209
u7560:
	line	87
	
l6199:
		movf	((c:__div_to_l_@exp1)),c,w
	xorlw	80h
	addlw	-(80h^-31)
	btfsc	status,0
	goto	u7571
	goto	u7570

u7571:
	goto	l6205
u7570:
	line	88
	
l6201:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l1089
	
l6203:
	goto	l1089
	
l1095:
	goto	l6205
	line	89
	
l1096:
	line	90
	
l6205:
	bcf	status,0
	rrcf	((c:__div_to_l_@quot+3)),c
	rrcf	((c:__div_to_l_@quot+2)),c
	rrcf	((c:__div_to_l_@quot+1)),c
	rrcf	((c:__div_to_l_@quot)),c
	line	91
	
l6207:
	incfsz	((c:__div_to_l_@exp1)),c
	
	goto	l6205
	goto	l1098
	
l1097:
	line	92
	goto	l1098
	
l1094:
	line	93
	
l6209:
		movlw	020h-1
	cpfsgt	((c:__div_to_l_@exp1)),c
	goto	u7581
	goto	u7580

u7581:
	goto	l6217
u7580:
	line	94
	
l6211:
	movlw	low(0)
	movwf	((c:?__div_to_l_)),c
	movlw	high(0)
	movwf	((c:?__div_to_l_+1)),c
	movlw	low highword(0)
	movwf	((c:?__div_to_l_+2)),c
	movlw	high highword(0)
	movwf	((c:?__div_to_l_+3)),c
	goto	l1089
	
l6213:
	goto	l1089
	
l1099:
	line	95
	goto	l6217
	
l1101:
	line	96
	
l6215:
	bcf	status,0
	rlcf	((c:__div_to_l_@quot)),c
	rlcf	((c:__div_to_l_@quot+1)),c
	rlcf	((c:__div_to_l_@quot+2)),c
	rlcf	((c:__div_to_l_@quot+3)),c
	line	97
	decf	((c:__div_to_l_@exp1)),c
	goto	l6217
	line	98
	
l1100:
	line	95
	
l6217:
	movf	((c:__div_to_l_@exp1)),c,w
	btfss	status,2
	goto	u7591
	goto	u7590
u7591:
	goto	l6215
u7590:
	goto	l1098
	
l1102:
	line	99
	
l1098:
	line	100
	movff	(c:__div_to_l_@quot),(c:?__div_to_l_)
	movff	(c:__div_to_l_@quot+1),(c:?__div_to_l_+1)
	movff	(c:__div_to_l_@quot+2),(c:?__div_to_l_+2)
	movff	(c:__div_to_l_@quot+3),(c:?__div_to_l_+3)
	line	101
	
l1089:
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
	
l6387:
	movlw	low(08Eh)
	movwf	((c:___lltoft@exp)),c
	line	41
	goto	l6391
	
l1300:
	line	42
	
l6389:
	bcf	status,0
	rrcf	((c:___lltoft@c+3)),c
	rrcf	((c:___lltoft@c+2)),c
	rrcf	((c:___lltoft@c+1)),c
	rrcf	((c:___lltoft@c)),c
	line	43
	incf	((c:___lltoft@exp)),c
	goto	l6391
	line	44
	
l1299:
	line	41
	
l6391:
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
	goto	u7871
	goto	u7870

u7871:
	goto	l6389
u7870:
	goto	l6393
	
l1301:
	line	45
	
l6393:
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
	goto	l1302
	
l6395:
	line	46
	
l1302:
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
	
l6371:
	movf	((c:___llmod@divisor)),c,w
iorwf	((c:___llmod@divisor+1)),c,w
iorwf	((c:___llmod@divisor+2)),c,w
iorwf	((c:___llmod@divisor+3)),c,w
	btfsc	status,2
	goto	u7841
	goto	u7840

u7841:
	goto	l1287
u7840:
	line	14
	
l6373:
	movlw	low(01h)
	movwf	((c:___llmod@counter)),c
	line	15
	goto	l6377
	
l1289:
	line	16
	
l6375:
	bcf	status,0
	rlcf	((c:___llmod@divisor)),c
	rlcf	((c:___llmod@divisor+1)),c
	rlcf	((c:___llmod@divisor+2)),c
	rlcf	((c:___llmod@divisor+3)),c
	line	17
	incf	((c:___llmod@counter)),c
	goto	l6377
	line	18
	
l1288:
	line	15
	
l6377:
	
	btfss	((c:___llmod@divisor+3)),c,(31)&7
	goto	u7851
	goto	u7850
u7851:
	goto	l6375
u7850:
	goto	l6379
	
l1290:
	goto	l6379
	line	19
	
l1291:
	line	20
	
l6379:
		movf	((c:___llmod@divisor)),c,w
	subwf	((c:___llmod@dividend)),c,w
	movf	((c:___llmod@divisor+1)),c,w
	subwfb	((c:___llmod@dividend+1)),c,w
	movf	((c:___llmod@divisor+2)),c,w
	subwfb	((c:___llmod@dividend+2)),c,w
	movf	((c:___llmod@divisor+3)),c,w
	subwfb	((c:___llmod@dividend+3)),c,w
	btfss	status,0
	goto	u7861
	goto	u7860

u7861:
	goto	l6383
u7860:
	line	21
	
l6381:
	movf	((c:___llmod@divisor)),c,w
	subwf	((c:___llmod@dividend)),c
	movf	((c:___llmod@divisor+1)),c,w
	subwfb	((c:___llmod@dividend+1)),c
	movf	((c:___llmod@divisor+2)),c,w
	subwfb	((c:___llmod@dividend+2)),c
	movf	((c:___llmod@divisor+3)),c,w
	subwfb	((c:___llmod@dividend+3)),c
	goto	l6383
	
l1292:
	line	22
	
l6383:
	bcf	status,0
	rrcf	((c:___llmod@divisor+3)),c
	rrcf	((c:___llmod@divisor+2)),c
	rrcf	((c:___llmod@divisor+1)),c
	rrcf	((c:___llmod@divisor)),c
	line	23
	
l6385:
	decfsz	((c:___llmod@counter)),c
	
	goto	l6379
	goto	l1287
	
l1293:
	line	24
	
l1287:
	line	25
	movff	(c:___llmod@dividend),(c:?___llmod)
	movff	(c:___llmod@dividend+1),(c:?___llmod+1)
	movff	(c:___llmod@dividend+2),(c:?___llmod+2)
	movff	(c:___llmod@dividend+3),(c:?___llmod+3)
	line	26
	
l1294:
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
	
l6349:
	movlw	low(0)
	movwf	((c:___lldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3)),c
	line	15
	
l6351:
	movf	((c:___lldiv@divisor)),c,w
iorwf	((c:___lldiv@divisor+1)),c,w
iorwf	((c:___lldiv@divisor+2)),c,w
iorwf	((c:___lldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u7811
	goto	u7810

u7811:
	goto	l1277
u7810:
	line	16
	
l6353:
	movlw	low(01h)
	movwf	((c:___lldiv@counter)),c
	line	17
	goto	l6357
	
l1279:
	line	18
	
l6355:
	bcf	status,0
	rlcf	((c:___lldiv@divisor)),c
	rlcf	((c:___lldiv@divisor+1)),c
	rlcf	((c:___lldiv@divisor+2)),c
	rlcf	((c:___lldiv@divisor+3)),c
	line	19
	incf	((c:___lldiv@counter)),c
	goto	l6357
	line	20
	
l1278:
	line	17
	
l6357:
	
	btfss	((c:___lldiv@divisor+3)),c,(31)&7
	goto	u7821
	goto	u7820
u7821:
	goto	l6355
u7820:
	goto	l6359
	
l1280:
	goto	l6359
	line	21
	
l1281:
	line	22
	
l6359:
	bcf	status,0
	rlcf	((c:___lldiv@quotient)),c
	rlcf	((c:___lldiv@quotient+1)),c
	rlcf	((c:___lldiv@quotient+2)),c
	rlcf	((c:___lldiv@quotient+3)),c
	line	23
	
l6361:
		movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c,w
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c,w
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c,w
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c,w
	btfss	status,0
	goto	u7831
	goto	u7830

u7831:
	goto	l6367
u7830:
	line	24
	
l6363:
	movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c
	line	25
	
l6365:
	bsf	(0+(0/8)+(c:___lldiv@quotient)),c,(0)&7
	goto	l6367
	line	26
	
l1282:
	line	27
	
l6367:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3)),c
	rrcf	((c:___lldiv@divisor+2)),c
	rrcf	((c:___lldiv@divisor+1)),c
	rrcf	((c:___lldiv@divisor)),c
	line	28
	
l6369:
	decfsz	((c:___lldiv@counter)),c
	
	goto	l6359
	goto	l1277
	
l1283:
	line	29
	
l1277:
	line	30
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	31
	
l1284:
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
;;		_LineFollow
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
	
l6303:
	movff	(___fttol@f1+2),??___fttol+0+0
	movlb	0	; () banked
	clrf	(??___fttol+0+0+1)&0ffh
	clrf	(??___fttol+0+0+2)&0ffh
	movlb	0	; () banked
	rlcf	((___fttol@f1+1))&0ffh,w
	movlb	0	; () banked
	rlcf	(??___fttol+0+0)&0ffh
	bnc	u7731
	bsf	(??___fttol+0+0+1)&0ffh,0
u7731:
	movlb	0	; () banked
	movf	(??___fttol+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	btfss	status,2
	goto	u7741
	goto	u7740
u7741:
	goto	l6309
u7740:
	line	50
	
l6305:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l1238
	
l6307:; BSR set to: 0

	goto	l1238
	
l1237:; BSR set to: 0

	line	51
	
l6309:; BSR set to: 0

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
	goto	u7750
u7755:
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??___fttol+1+2)&0ffh
	rrcf	(??___fttol+1+1)&0ffh
	rrcf	(??___fttol+1+0)&0ffh
u7750:
	movlb	0	; () banked
	decfsz	(??___fttol+4+0)&0ffh
	goto	u7755
	movlb	0	; () banked
	movf	(??___fttol+1+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l6311:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(15/8)+(___fttol@f1))&0ffh,(15)&7
	line	53
	
l6313:; BSR set to: 0

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
	
l6315:; BSR set to: 0

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
	
l6317:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l6319:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___fttol@exp1))&0ffh,7
	goto	u7760
	goto	u7761

u7761:
	goto	l6331
u7760:
	line	57
	
l6321:; BSR set to: 0

	movlb	0	; () banked
		movf	((___fttol@exp1))&0ffh,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u7771
	goto	u7770

u7771:
	goto	l6327
u7770:
	line	58
	
l6323:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l1238
	
l6325:; BSR set to: 0

	goto	l1238
	
l1240:; BSR set to: 0

	goto	l6327
	line	59
	
l1241:; BSR set to: 0

	line	60
	
l6327:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___fttol@lval+3))&0ffh
	rrcf	((___fttol@lval+2))&0ffh
	rrcf	((___fttol@lval+1))&0ffh
	rrcf	((___fttol@lval))&0ffh
	line	61
	
l6329:; BSR set to: 0

	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l6327
	goto	l6341
	
l1242:; BSR set to: 0

	line	62
	goto	l6341
	
l1239:; BSR set to: 0

	line	63
	
l6331:; BSR set to: 0

		movlw	018h-1
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u7781
	goto	u7780

u7781:
	goto	l6339
u7780:
	line	64
	
l6333:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((?___fttol))&0ffh
	movlw	high(0)
	movwf	((?___fttol+1))&0ffh
	movlw	low highword(0)
	movwf	((?___fttol+2))&0ffh
	movlw	high highword(0)
	movwf	((?___fttol+3))&0ffh
	goto	l1238
	
l6335:; BSR set to: 0

	goto	l1238
	
l1244:; BSR set to: 0

	line	65
	goto	l6339
	
l1246:; BSR set to: 0

	line	66
	
l6337:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___fttol@lval))&0ffh
	rlcf	((___fttol@lval+1))&0ffh
	rlcf	((___fttol@lval+2))&0ffh
	rlcf	((___fttol@lval+3))&0ffh
	line	67
	movlb	0	; () banked
	decf	((___fttol@exp1))&0ffh
	goto	l6339
	line	68
	
l1245:; BSR set to: 0

	line	65
	
l6339:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u7791
	goto	u7790
u7791:
	goto	l6337
u7790:
	goto	l6341
	
l1247:; BSR set to: 0

	goto	l6341
	line	69
	
l1243:; BSR set to: 0

	line	70
	
l6341:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u7801
	goto	u7800
u7801:
	goto	l6345
u7800:
	line	71
	
l6343:; BSR set to: 0

	movlb	0	; () banked
	comf	((___fttol@lval+3))&0ffh
	comf	((___fttol@lval+2))&0ffh
	comf	((___fttol@lval+1))&0ffh
	negf	((___fttol@lval))&0ffh
	movlw	0
	addwfc	((___fttol@lval+1))&0ffh
	addwfc	((___fttol@lval+2))&0ffh
	addwfc	((___fttol@lval+3))&0ffh
	goto	l6345
	
l1248:; BSR set to: 0

	line	72
	
l6345:; BSR set to: 0

	movff	(___fttol@lval),(?___fttol)
	movff	(___fttol@lval+1),(?___fttol+1)
	movff	(___fttol@lval+2),(?___fttol+2)
	movff	(___fttol@lval+3),(?___fttol+3)
	goto	l1238
	
l6347:; BSR set to: 0

	line	73
	
l1238:; BSR set to: 0

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
	
l6273:
	movlb	0	; () banked
	movf	((___ftsub@f2))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftsub@f2+1))&0ffh,w
	movlb	0	; () banked
iorwf	((___ftsub@f2+2))&0ffh,w
	btfsc	status,2
	goto	u7681
	goto	u7680

u7681:
	goto	l6277
u7680:
	line	24
	
l6275:; BSR set to: 0

	movlw	low(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2))&0ffh
	movlw	high(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2+1))&0ffh
	movlw	low highword(0800000h)
	movlb	0	; () banked
	xorwf	((___ftsub@f2+2))&0ffh

	goto	l6277
	line	25
	
l1233:; BSR set to: 0

	line	26
	
l6277:; BSR set to: 0

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
	goto	l1234
	
l6279:
	line	27
	
l1234:
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
;;		_LineFollow
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
	
l5685:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	movlb	0	; () banked
	clrf	(??___ftadd+0+0+1)&0ffh
	clrf	(??___ftadd+0+0+2)&0ffh
	rlcf	((c:___ftadd@f1+1)),c,w
	movlb	0	; () banked
	rlcf	(??___ftadd+0+0)&0ffh
	bnc	u6851
	bsf	(??___ftadd+0+0+1)&0ffh,0
u6851:
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
	bnc	u6861
	bsf	(??___ftadd+0+0+1)&0ffh,0
u6861:
	movlb	0	; () banked
	movf	(??___ftadd+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((___ftadd@exp2))&0ffh
	line	92
	
l5687:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6871
	goto	u6870
u6871:
	goto	l1153
u6870:
	
l5689:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp1))&0ffh,w
	btfsc	status,0
	goto	u6881
	goto	u6880

u6881:
	goto	l5693
u6880:
	
l5691:; BSR set to: 0

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
	goto	u6891
	goto	u6890

u6891:
	goto	l5693
u6890:
	
l1153:; BSR set to: 0

	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l1154
	
l1151:; BSR set to: 0

	line	94
	
l5693:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6901
	goto	u6900
u6901:
	goto	l1157
u6900:
	
l5695:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,0
	goto	u6911
	goto	u6910

u6911:
	goto	l5699
u6910:
	
l5697:; BSR set to: 0

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
	goto	u6921
	goto	u6920

u6921:
	goto	l5699
u6920:
	
l1157:; BSR set to: 0

	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l1154
	
l1155:; BSR set to: 0

	line	96
	
l5699:; BSR set to: 0

	movlw	low(06h)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	line	97
	
l5701:; BSR set to: 0

	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u6931
	goto	u6930
u6931:
	goto	l5705
u6930:
	line	98
	
l5703:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(7/8)+(___ftadd@sign))&0ffh,(7)&7
	goto	l5705
	
l1158:; BSR set to: 0

	line	99
	
l5705:; BSR set to: 0

	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u6941
	goto	u6940
u6941:
	goto	l1159
u6940:
	line	100
	
l5707:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(6/8)+(___ftadd@sign))&0ffh,(6)&7
	
l1159:; BSR set to: 0

	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l5709:; BSR set to: 0

	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l5711:; BSR set to: 0

	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l5713:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp1))&0ffh,w
	btfsc	status,0
	goto	u6951
	goto	u6950

u6951:
	goto	l5725
u6950:
	goto	l5715
	line	109
	
l1161:; BSR set to: 0

	line	110
	
l5715:; BSR set to: 0

	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	movlb	0	; () banked
	decf	((___ftadd@exp2))&0ffh
	line	112
	
l5717:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,2
	goto	u6961
	goto	u6960

u6961:
	goto	l5723
u6960:
	
l5719:; BSR set to: 0

	movlb	0	; () banked
	decf	((___ftadd@sign))&0ffh
	movff	(___ftadd@sign),??___ftadd+0+0
	movlw	07h
	movlb	0	; () banked
	andwf	(??___ftadd+0+0)&0ffh
	btfss	status,2
	goto	u6971
	goto	u6970
u6971:
	goto	l5715
u6970:
	goto	l5723
	
l1163:; BSR set to: 0

	goto	l5723
	
l1164:; BSR set to: 0

	line	113
	goto	l5723
	
l1166:; BSR set to: 0

	line	114
	
l5721:; BSR set to: 0

	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	movlb	0	; () banked
	incf	((___ftadd@exp1))&0ffh
	goto	l5723
	line	116
	
l1165:; BSR set to: 0

	line	113
	
l5723:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp1))&0ffh,w
	btfss	status,2
	goto	u6981
	goto	u6980

u6981:
	goto	l5721
u6980:
	goto	l1168
	
l1167:; BSR set to: 0

	line	117
	goto	l1168
	
l1160:; BSR set to: 0

	
l5725:; BSR set to: 0

	movlb	0	; () banked
		movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
	subwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,0
	goto	u6991
	goto	u6990

u6991:
	goto	l1168
u6990:
	goto	l5727
	line	120
	
l1170:; BSR set to: 0

	line	121
	
l5727:; BSR set to: 0

	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	movlb	0	; () banked
	decf	((___ftadd@exp1))&0ffh
	line	123
	
l5729:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp1))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp2))&0ffh,w
	btfsc	status,2
	goto	u7001
	goto	u7000

u7001:
	goto	l5735
u7000:
	
l5731:; BSR set to: 0

	movlb	0	; () banked
	decf	((___ftadd@sign))&0ffh
	movff	(___ftadd@sign),??___ftadd+0+0
	movlw	07h
	movlb	0	; () banked
	andwf	(??___ftadd+0+0)&0ffh
	btfss	status,2
	goto	u7011
	goto	u7010
u7011:
	goto	l5727
u7010:
	goto	l5735
	
l1172:; BSR set to: 0

	goto	l5735
	
l1173:; BSR set to: 0

	line	124
	goto	l5735
	
l1175:; BSR set to: 0

	line	125
	
l5733:; BSR set to: 0

	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	movlb	0	; () banked
	incf	((___ftadd@exp2))&0ffh
	goto	l5735
	line	127
	
l1174:; BSR set to: 0

	line	124
	
l5735:; BSR set to: 0

	movlb	0	; () banked
	movf	((___ftadd@exp2))&0ffh,w
	movlb	0	; () banked
xorwf	((___ftadd@exp1))&0ffh,w
	btfss	status,2
	goto	u7021
	goto	u7020

u7021:
	goto	l5733
u7020:
	goto	l1168
	
l1176:; BSR set to: 0

	goto	l1168
	line	128
	
l1169:; BSR set to: 0

	line	129
	
l1168:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@sign))&0ffh,(7)&7
	goto	u7031
	goto	u7030
u7031:
	goto	l1177
u7030:
	line	131
	
l5737:; BSR set to: 0

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
	
l1177:; BSR set to: 0

	line	134
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___ftadd@sign))&0ffh,(6)&7
	goto	u7041
	goto	u7040
u7041:
	goto	l5741
u7040:
	line	136
	
l5739:; BSR set to: 0

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

	goto	l5741
	line	138
	
l1178:; BSR set to: 0

	line	139
	
l5741:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	line	140
	
l5743:; BSR set to: 0

	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l5745:; BSR set to: 0

	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u7051
	goto	u7050
u7051:
	goto	l5751
u7050:
	line	142
	
l5747:; BSR set to: 0

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
	
l5749:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___ftadd@sign))&0ffh
	goto	l5751
	line	145
	
l1179:; BSR set to: 0

	line	146
	
l5751:; BSR set to: 0

	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(___ftadd@exp1),(c:___ftpack@exp)
	movff	(___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l1154
	
l5753:
	line	148
	
l1154:
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
;;		_LineFollow
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
	
l6299:
	movf	((c:___ftneg@f1)),c,w
iorwf	((c:___ftneg@f1+1)),c,w
iorwf	((c:___ftneg@f1+2)),c,w
	btfsc	status,2
	goto	u7721
	goto	u7720

u7721:
	goto	l1227
u7720:
	line	18
	
l6301:
	movlw	low(0800000h)
	xorwf	((c:___ftneg@f1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftneg@f1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftneg@f1+2)),c

	
l1227:
	line	19
	movff	(c:___ftneg@f1),(c:?___ftneg)
	movff	(c:___ftneg@f1+1),(c:?___ftneg+1)
	movff	(c:___ftneg@f1+2),(c:?___ftneg+2)
	line	20
	
l1228:
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
;;		_LineFollow
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
	
l6281:
	
	btfss	((c:___ftge@ff1+2)),c,(23)&7
	goto	u7691
	goto	u7690
u7691:
	goto	l6285
u7690:
	line	7
	
l6283:
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
	goto	l6285
	
l1209:
	line	8
	
l6285:
	
	btfss	((c:___ftge@ff2+2)),c,(23)&7
	goto	u7701
	goto	u7700
u7701:
	goto	l6289
u7700:
	line	9
	
l6287:
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
	goto	l6289
	
l1210:
	line	10
	
l6289:
	movlw	low(0800000h)
	xorwf	((c:___ftge@ff1)),c
	movlw	high(0800000h)
	xorwf	((c:___ftge@ff1+1)),c
	movlw	low highword(0800000h)
	xorwf	((c:___ftge@ff1+2)),c

	line	11
	
l6291:
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
	goto	u7711
	goto	u7710

u7711:
	goto	l6295
u7710:
	
l6293:
	bcf	status,0
	goto	l1211
	
l5627:
	
l6295:
	bsf	status,0
	goto	l1211
	
l5629:
	goto	l1211
	
l6297:
	line	13
	
l1211:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_initYBOT

;; *************** function _initYBOT *****************
;; Defined at:
;;		line 339 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_InitSP
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
	line	339
global __ptext19
__ptext19:
psect	text19
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	339
	global	__size_of_initYBOT
	__size_of_initYBOT	equ	__end_of_initYBOT-_initYBOT
	
_initYBOT:
;incstack = 0
	opt	stack 27
	line	341
	
l6417:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	342
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_MS))&0ffh
	movlw	high(0)
	movwf	((_MS+1))&0ffh
	movlw	low highword(0)
	movwf	((_MS+2))&0ffh
	movlw	high highword(0)
	movwf	((_MS+3))&0ffh
	line	343
	
l6419:; BSR set to: 1

	call	_ResetCounter	;wreg free
	line	344
	
l6421:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_gstatus))&0ffh
	line	346
	call	_configurations_init	;wreg free
	line	347
	call	_InitAnalog	;wreg free
	line	348
	call	_InitTIMERS	;wreg free
	line	349
	
l6423:
	call	_InitSP	;wreg free
	line	350
	
l6425:
	call	_MotorsPWM	;wreg free
	line	353
	
l315:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initYBOT
	__end_of_initYBOT:
	signat	_initYBOT,89
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 267 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	267
global __ptext20
__ptext20:
psect	text20
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	267
	global	__size_of_configurations_init
	__size_of_configurations_init	equ	__end_of_configurations_init-_configurations_init
	
_configurations_init:
;incstack = 0
	opt	stack 28
	line	268
	
l5887:
		
	bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	271
	
l5889:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	274
	
l5891:
	bcf	((c:3949)),c,3	;volatile
	line	275
	
l5893:
	bsf	((c:3951)),c,3	;volatile
	line	276
	
l243:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,89
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 460 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	460
global __ptext21
__ptext21:
psect	text21
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	460
	global	__size_of_ResetCounter
	__size_of_ResetCounter	equ	__end_of_ResetCounter-_ResetCounter
	
_ResetCounter:
;incstack = 0
	opt	stack 28
	line	461
	
l5895:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	462
	
l336:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetCounter
	__end_of_ResetCounter:
	signat	_ResetCounter,89
	global	_MotorsPWM

;; *************** function _MotorsPWM *****************
;; Defined at:
;;		line 742 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	742
global __ptext22
__ptext22:
psect	text22
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	742
	global	__size_of_MotorsPWM
	__size_of_MotorsPWM	equ	__end_of_MotorsPWM-_MotorsPWM
	
_MotorsPWM:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	744
	
l5987:
	bcf	c:(32339/8),(32339)&7	;volatile
	line	745
	bcf	c:(32340/8),(32340)&7	;volatile
	line	746
	bcf	c:(32341/8),(32341)&7	;volatile
	line	747
	bcf	c:(32342/8),(32342)&7	;volatile
	line	749
	bsf	c:(32338/8),(32338)&7	;volatile
	line	750
	bcf	c:(32336/8),(32336)&7	;volatile
	line	751
	bcf	c:(32337/8),(32337)&7	;volatile
	line	753
	bsf	c:(32338/8),(32338)&7	;volatile
	line	756
	
l5989:
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<4)-1)<<3)
	iorlw	(0Bh & ((1<<4)-1))<<3
	movwf	((c:4042)),c	;volatile
	line	757
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	((c:4042)),c	;volatile
	line	758
	
l5991:
	bcf	((c:4042)),c,2	;volatile
	line	759
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	760
	
l5993:
	bsf	((c:4042)),c,2	;volatile
	line	763
	movf	((c:4029)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4029)),c	;volatile
	line	764
	movf	((c:4026)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4026)),c	;volatile
	line	765
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	767
	
l588:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsPWM
	__end_of_MotorsPWM:
	signat	_MotorsPWM,89
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 380 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	380
global __ptext23
__ptext23:
psect	text23
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	380
	global	__size_of_InitTIMERS
	__size_of_InitTIMERS	equ	__end_of_InitTIMERS-_InitTIMERS
	
_InitTIMERS:
;incstack = 0
	opt	stack 28
	line	381
	
l5907:
	bcf	((c:4053)),c,7	;volatile
	line	382
	bcf	((c:4053)),c,6	;volatile
	line	383
	bcf	((c:4053)),c,5	;volatile
	line	385
	bsf	((c:4053)),c,3	;volatile
	line	386
	
l5909:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	387
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	390
	
l5911:
	bsf	((c:4081)),c,2	;volatile
	line	391
	
l5913:
	bcf	((c:4048)),c,7	;volatile
	line	392
	
l5915:
	bsf	((c:4082)),c,5	;volatile
	line	396
	
l5917:
	bsf	((c:4082)),c,7	;volatile
	line	398
	
l5919:
	bsf	((c:4053)),c,7	;volatile
	line	400
	
l5921:
	bcf	((c:4045)),c,0	;volatile
	line	401
	
l5923:
	bcf	((c:4045)),c,7	;volatile
	line	402
	
l5925:
	bcf	((c:4045)),c,6	;volatile
	line	403
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	404
	
l5927:
	bcf	((c:4045)),c,3	;volatile
	line	405
	
l5929:
	bcf	((c:4045)),c,1	;volatile
	line	406
	
l5931:
	bsf	((c:4045)),c,0	;volatile
	line	408
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	409
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	417
	
l5933:
	bcf	((c:3987)),c,5	;volatile
	line	419
	
l5935:
	bcf	((c:3986)),c,4	;volatile
	line	420
	
l5937:
	bcf	((c:3987)),c,0	;volatile
	line	422
	
l5939:
	bsf	((c:3989)),c,4	;volatile
	line	423
	
l5941:
	bsf	((c:3989)),c,5	;volatile
	line	424
	
l5943:
	bsf	((c:3989)),c,6	;volatile
	line	427
	
l5945:
	bcf	((c:3989)),c,1	;volatile
	line	428
	
l5947:
	bcf	((c:3989)),c,2	;volatile
	line	429
	
l5949:
	bsf	((c:3989)),c,0	;volatile
	line	430
	
l5951:
	bcf	((c:3989)),c,3	;volatile
	line	433
	
l5953:
	bcf	((c:3988)),c,1	;volatile
	line	434
	
l5955:
	bcf	((c:3988)),c,2	;volatile
	line	437
	
l5957:
	bsf	((c:3986)),c,0	;volatile
	line	438
	
l5959:
	bsf	((c:3986)),c,1	;volatile
	line	439
	
l5961:
	bsf	((c:3986)),c,2	;volatile
	line	440
	
l5963:
	bsf	((c:3986)),c,3	;volatile
	line	441
	
l5965:
	bsf	((c:3986)),c,5	;volatile
	line	443
	
l5967:
	bsf	((c:3990)),c,0	;volatile
	line	444
	
l5969:
	bsf	((c:3990)),c,1	;volatile
	line	445
	
l5971:
	bsf	((c:3990)),c,2	;volatile
	line	446
	
l5973:
	bsf	((c:3987)),c,2	;volatile
	line	448
	
l5975:
	bsf	((c:3987)),c,1	;volatile
	line	453
	
l5977:
	bcf	((c:3988)),c,6	;volatile
	line	454
	
l5979:
	bsf	((c:3988)),c,7	;volatile
	line	456
	
l5981:
	bsf	((c:3972)),c,7	;volatile
	line	457
	
l333:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,89
	global	_InitSP

;; *************** function _InitSP *****************
;; Defined at:
;;		line 666 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text24,class=CODE,space=0,reloc=2
	line	666
global __ptext24
__ptext24:
psect	text24
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	666
	global	__size_of_InitSP
	__size_of_InitSP	equ	__end_of_InitSP-_InitSP
	
_InitSP:
;incstack = 0
	opt	stack 27
	line	667
	
l5983:
	movlw	low(0)
	movwf	((c:_PisoActual)),c
	line	668
	
l5985:
	movf	((c:_PisoActual)),c,w
	
	call	_ReadAnalog
	line	669
	
l532:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitSP
	__end_of_InitSP:
	signat	_InitSP,89
	global	_ReadAnalog

;; *************** function _ReadAnalog *****************
;; Defined at:
;;		line 670 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text25,class=CODE,space=0,reloc=2
	line	670
global __ptext25
__ptext25:
psect	text25
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	670
	global	__size_of_ReadAnalog
	__size_of_ReadAnalog	equ	__end_of_ReadAnalog-_ReadAnalog
	
_ReadAnalog:
;incstack = 0
	opt	stack 27
	movwf	((c:ReadAnalog@channel)),c
	line	671
	
l5667:
	
	btfsc	((c:ReadAnalog@channel)),c,(0)&7
	goto	u6771
	goto	u6770
u6771:
	bsf	c:(32274/8),(32274)&7	;volatile
	goto	u6785
u6770:
	bcf	c:(32274/8),(32274)&7	;volatile
u6785:
	line	672
	
l5669:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	03h
	andwf	(??_ReadAnalog+0+0),c
		movlw	02h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u6791
	goto	u6790

u6791:
	bsf	c:(32275/8),(32275)&7	;volatile
	goto	u6805
u6790:
	bcf	c:(32275/8),(32275)&7	;volatile
u6805:
	line	673
	
l5671:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	07h
	andwf	(??_ReadAnalog+0+0),c
		movlw	04h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u6811
	goto	u6810

u6811:
	bsf	c:(32276/8),(32276)&7	;volatile
	goto	u6825
u6810:
	bcf	c:(32276/8),(32276)&7	;volatile
u6825:
	line	674
	
l5673:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	0Fh
	andwf	(??_ReadAnalog+0+0),c
		movlw	08h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u6831
	goto	u6830

u6831:
	bsf	c:(32277/8),(32277)&7	;volatile
	goto	u6845
u6830:
	bcf	c:(32277/8),(32277)&7	;volatile
u6845:
	line	676
	
l5675:
	bsf	c:(32272/8),(32272)&7	;volatile
	line	677
	
l5677:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	678
	
l535:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadAnalog
	__end_of_ReadAnalog:
	signat	_ReadAnalog,4217
	global	_InitAnalog

;; *************** function _InitAnalog *****************
;; Defined at:
;;		line 648 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text26,class=CODE,space=0,reloc=2
	line	648
global __ptext26
__ptext26:
psect	text26
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	648
	global	__size_of_InitAnalog
	__size_of_InitAnalog	equ	__end_of_InitAnalog-_InitAnalog
	
_InitAnalog:
;incstack = 0
	opt	stack 28
	line	649
	
l5897:
	bcf	((c:4033)),c,5	;volatile
	line	650
	bcf	((c:4033)),c,4	;volatile
	line	652
	bcf	((c:4033)),c,3	;volatile
	line	653
	bsf	((c:4033)),c,2	;volatile
	line	654
	bcf	((c:4033)),c,1	;volatile
	line	655
	bcf	((c:4033)),c,0	;volatile
	line	659
	bcf	((c:4032)),c,7	;volatile
	line	660
		
	bsf	((c:4032)),c, 3+0	;volatile
	bsf	((c:4032)),c, 3+1	;volatile
	bsf	((c:4032)),c, 3+2	;volatile

	line	661
	
l5899:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	662
	
l5901:
		
	bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	663
	
l5903:
	bcf	((c:4034)),c,1	;volatile
	line	664
	
l5905:
	bsf	((c:4034)),c,0	;volatile
	line	665
	
l529:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,89
	global	_initLED

;; *************** function _initLED *****************
;; Defined at:
;;		line 790 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text27,class=CODE,space=0,reloc=2
	line	790
global __ptext27
__ptext27:
psect	text27
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	790
	global	__size_of_initLED
	__size_of_initLED	equ	__end_of_initLED-_initLED
	
_initLED:
;incstack = 0
	opt	stack 29
	line	791
	
l6761:
	movlw	high(0)
	movwf	((c:_x+1)),c
	movlw	low(0)
	movwf	((c:_x)),c
	
l6763:
	btfsc	((c:_x+1)),c,7
	goto	u8531
	movf	((c:_x+1)),c,w
	bnz	u8530
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u8531
	goto	u8530

u8531:
	goto	l6767
u8530:
	goto	l623
	
l6765:
	goto	l623
	
l621:
	line	792
	
l6767:
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
	line	793
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
	line	791
	
l6769:
	infsnz	((c:_x)),c
	incf	((c:_x+1)),c
	
l6771:
	btfsc	((c:_x+1)),c,7
	goto	u8541
	movf	((c:_x+1)),c,w
	bnz	u8540
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u8541
	goto	u8540

u8541:
	goto	l6767
u8540:
	goto	l623
	
l622:
	line	795
	
l623:
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
psect	text28,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/awtoft.c"
	line	32
global __ptext28
__ptext28:
psect	text28
	file	"/opt/microchip/xc8/v1.38/sources/common/awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 28
	line	36
	
l7157:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l7159:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u9220
	goto	u9221

u9221:
	goto	l7165
u9220:
	line	38
	
l7161:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l7163:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l7165
	line	40
	
l1084:
	line	41
	
l7165:
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
	goto	l1085
	
l7167:
	line	42
	
l1085:
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
;;		___altoft
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/float.c"
	line	62
global __ptext29
__ptext29:
psect	text29
	file	"/opt/microchip/xc8/v1.38/sources/common/float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 26
	line	64
	
l5631:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u6691
	goto	u6690
u6691:
	goto	l5635
u6690:
	
l5633:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u6701
	goto	u6700

u6701:
	goto	l5641
u6700:
	goto	l5635
	
l1118:
	line	65
	
l5635:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l1119
	
l5637:
	goto	l1119
	
l1116:
	line	66
	goto	l5641
	
l1121:
	line	67
	
l5639:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l5641
	line	69
	
l1120:
	line	66
	
l5641:
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
	goto	u6711
	goto	u6710

u6711:
	goto	l5639
u6710:
	goto	l5647
	
l1122:
	line	70
	goto	l5647
	
l1124:
	line	71
	
l5643:
	incf	((c:___ftpack@exp)),c
	line	72
	
l5645:
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
	goto	l5647
	line	74
	
l1123:
	line	70
	
l5647:
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
	goto	u6721
	goto	u6720

u6721:
	goto	l5643
u6720:
	goto	l5651
	
l1125:
	line	75
	goto	l5651
	
l1127:
	line	76
	
l5649:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l5651
	line	78
	
l1126:
	line	75
	
l5651:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u6731
	goto	u6730
u6731:
	goto	l1130
u6730:
	
l5653:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u6741
	goto	u6740

u6741:
	goto	l5649
u6740:
	goto	l1130
	
l1129:
	
l1130:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u6751
	goto	u6750
u6751:
	goto	l5657
u6750:
	line	80
	
l5655:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l5657
	
l1131:
	line	81
	
l5657:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l5659:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u6761
	goto	u6760
u6761:
	goto	l5663
u6760:
	line	84
	
l5661:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l5663
	
l1132:
	line	85
	
l5663:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l1119
	
l5665:
	line	86
	
l1119:
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
psect	text30,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/almod.c"
	line	8
global __ptext30
__ptext30:
psect	text30
	file	"/opt/microchip/xc8/v1.38/sources/common/almod.c"
	line	8
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:
;incstack = 0
	opt	stack 29
	line	13
	
l7121:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l7123:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u9160
	goto	u9161

u9161:
	goto	l7129
u9160:
	line	15
	
l7125:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l7127:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l7129
	line	17
	
l957:
	line	18
	
l7129:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u9170
	goto	u9171

u9171:
	goto	l7133
u9170:
	line	19
	
l7131:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l7133
	
l958:
	line	20
	
l7133:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u9181
	goto	u9180

u9181:
	goto	l7149
u9180:
	line	21
	
l7135:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l7139
	
l961:
	line	23
	
l7137:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l7139
	line	25
	
l960:
	line	22
	
l7139:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u9191
	goto	u9190
u9191:
	goto	l7137
u9190:
	goto	l7141
	
l962:
	goto	l7141
	line	26
	
l963:
	line	27
	
l7141:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u9201
	goto	u9200

u9201:
	goto	l7145
u9200:
	line	28
	
l7143:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l7145
	
l964:
	line	29
	
l7145:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l7147:
	decfsz	((c:___almod@counter)),c
	
	goto	l7141
	goto	l7149
	
l965:
	goto	l7149
	line	31
	
l959:
	line	32
	
l7149:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u9211
	goto	u9210
u9211:
	goto	l7153
u9210:
	line	33
	
l7151:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l7153
	
l966:
	line	34
	
l7153:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l967
	
l7155:
	line	35
	
l967:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	_Wixel

;; *************** function _Wixel *****************
;; Defined at:
;;		line 189 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text31,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	189
global __ptext31
__ptext31:
psect	text31
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	189
	global	__size_of_Wixel
	__size_of_Wixel	equ	__end_of_Wixel-_Wixel
	
_Wixel:
;incstack = 0
	opt	stack 29
	line	190
	
l6397:
	bcf	((c:4024)),c,5	;volatile
	line	191
	bcf	((c:4024)),c,4	;volatile
	line	192
	bsf	((c:4024)),c,3	;volatile
	line	194
	bcf	((c:4024)),c,1	;volatile
	line	195
	bcf	((c:4024)),c,0	;volatile
	line	196
	
l6399:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	197
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	198
	
l6401:
	bcf	((c:4012)),c,7	;volatile
	line	199
	
l6403:
	bcf	((c:4012)),c,6	;volatile
	line	200
	
l6405:
	bsf	((c:4012)),c,5	;volatile
	line	201
	
l6407:
	bcf	((c:4012)),c,4	;volatile
	line	203
	
l6409:
	bcf	((c:4012)),c,2	;volatile
	line	204
	
l6411:
	bcf	((c:4011)),c,6	;volatile
	line	205
	
l6413:
	bsf	((c:4011)),c,4	;volatile
	line	206
	
l6415:
	bsf	((c:4011)),c,7	;volatile
	line	208
	
l195:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,89
	global	_MotorsSpeed

;; *************** function _MotorsSpeed *****************
;; Defined at:
;;		line 725 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_LineFollow
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	line	725
global __ptext32
__ptext32:
psect	text32
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	725
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 27
	line	726
	
l6731:
	goto	l570
	
l6733:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1707)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1707+1)
	goto	l6735
	
l570:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1707)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1707+1)
	goto	l6735
	
l572:
	
l6735:
	movff	(c:_MotorsSpeed$1707),(c:MotorASpeed@S)
	movff	(c:_MotorsSpeed$1707+1),(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	727
	
l6737:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1708)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1708+1)
	goto	l6739
	
l574:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1708)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1708+1)
	goto	l6739
	
l576:
	
l6739:
	movff	(c:_MotorsSpeed$1708),(c:MotorBSpeed@S)
	movff	(c:_MotorsSpeed$1708+1),(c:MotorBSpeed@S+1)
	call	_MotorBSpeed	;wreg free
	line	728
	
l577:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8313
	global	_MotorBSpeed

;; *************** function _MotorBSpeed *****************
;; Defined at:
;;		line 779 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text33,class=CODE,space=0,reloc=2
	line	779
global __ptext33
__ptext33:
psect	text33
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	779
	global	__size_of_MotorBSpeed
	__size_of_MotorBSpeed	equ	__end_of_MotorBSpeed-_MotorBSpeed
	
_MotorBSpeed:
;incstack = 0
	opt	stack 27
	line	780
	
l6013:
	negf	((c:MotorBSpeed@S)),c
	comf	((c:MotorBSpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorBSpeed@S+1)),c
	line	781
	
l6015:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u7301
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u7301
	goto	u7300

u7301:
	goto	l6019
u7300:
	
l6017:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l6019
	
l607:
	goto	l6019
	
l609:
	line	782
	
l6019:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u7311
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u7311
	goto	u7310

u7311:
	goto	l6023
u7310:
	
l6021:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l6023
	
l611:
	goto	l6023
	
l613:
	line	784
	
l6023:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u7321
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u7320
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u7321
	goto	u7320

u7321:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u7338
u7320:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u7338:
	rlncf	(??_MotorBSpeed+0+0),c
	rlncf	(??_MotorBSpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	785
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u7340
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u7341
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u7341
	goto	u7340

u7341:
	goto	l6027
u7340:
	
l6025:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l6027
	
l615:
	goto	l6027
	
l617:
	line	787
	
l6027:
	movff	(c:MotorBSpeed@S),??_MotorBSpeed+0+0
	movlw	03h
	andwf	(??_MotorBSpeed+0+0),c
	swapf	(??_MotorBSpeed+0+0),c
	movf	((c:4026)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:4026)),c	;volatile
	line	788
	
l6029:
	movff	(c:MotorBSpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorBSpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4027)),c	;volatile
	line	789
	
l618:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorBSpeed
	__end_of_MotorBSpeed:
	signat	_MotorBSpeed,4217
	global	_MotorASpeed

;; *************** function _MotorASpeed *****************
;; Defined at:
;;		line 768 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text34,class=CODE,space=0,reloc=2
	line	768
global __ptext34
__ptext34:
psect	text34
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	768
	global	__size_of_MotorASpeed
	__size_of_MotorASpeed	equ	__end_of_MotorASpeed-_MotorASpeed
	
_MotorASpeed:
;incstack = 0
	opt	stack 27
	line	769
	
l5995:
	negf	((c:MotorASpeed@S)),c
	comf	((c:MotorASpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorASpeed@S+1)),c
	line	770
	
l5997:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u7251
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u7251
	goto	u7250

u7251:
	goto	l6001
u7250:
	
l5999:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l6001
	
l592:
	goto	l6001
	
l594:
	line	771
	
l6001:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u7261
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u7261
	goto	u7260

u7261:
	goto	l6005
u7260:
	
l6003:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l6005
	
l596:
	goto	l6005
	
l598:
	line	773
	
l6005:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u7271
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u7270
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u7271
	goto	u7270

u7271:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u7288
u7270:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u7288:
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	774
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u7290
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u7291
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u7291
	goto	u7290

u7291:
	goto	l6009
u7290:
	
l6007:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l6009
	
l600:
	goto	l6009
	
l602:
	line	776
	
l6009:
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
	line	777
	
l6011:
	movff	(c:MotorASpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorASpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4030)),c	;volatile
	line	778
	
l603:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorASpeed
	__end_of_MotorASpeed:
	signat	_MotorASpeed,4217
	global	_Line

;; *************** function _Line *****************
;; Defined at:
;;		line 846 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text35,class=CODE,space=0,reloc=2
	line	846
global __ptext35
__ptext35:
psect	text35
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	846
	global	__size_of_Line
	__size_of_Line	equ	__end_of_Line-_Line
	
_Line:
;incstack = 0
	opt	stack 28
	line	847
	
l6773:
	movlw	low(0)
	movwf	((c:Line@a)),c
	movlw	high(0)
	movwf	((c:Line@a+1)),c
	movlw	low highword(0)
	movwf	((c:Line@a+2)),c
	movlw	high highword(0)
	movwf	((c:Line@a+3)),c
	line	848
	movlw	low(0)
	movwf	((c:Line@b)),c
	movlw	high(0)
	movwf	((c:Line@b+1)),c
	movlw	low highword(0)
	movwf	((c:Line@b+2)),c
	movlw	high highword(0)
	movwf	((c:Line@b+3)),c
	line	849
	movlw	low(0)
	movwf	((c:Line@g)),c
	line	853
	movlw	high(0)
	movwf	((c:Line@j+1)),c
	movlw	low(0)
	movwf	((c:Line@j)),c
	
l6775:
	btfsc	((c:Line@j+1)),c,7
	goto	u8551
	movf	((c:Line@j+1)),c,w
	bnz	u8550
	movlw	5
	subwf	 ((c:Line@j)),c,w
	btfss	status,0
	goto	u8551
	goto	u8550

u8551:
	goto	l6779
u8550:
	goto	l6817
	
l6777:
	goto	l6817
	
l672:
	line	854
	
l6779:
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
	line	855
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

	line	856
	
l6781:
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
	goto	u8561
	goto	u8560

u8561:
	goto	l6785
u8560:
	line	857
	
l6783:
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

	goto	l6785
	line	858
	
l674:
	line	859
	
l6785:
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
	goto	u8571
	goto	u8570

u8571:
	goto	l6789
u8570:
	line	860
	
l6787:
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

	goto	l6789
	line	861
	
l675:
	line	862
	
l6789:
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

	line	863
	
l6791:
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
	
	line	864
	
l6793:
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
	
	line	865
	
l6795:
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
	line	866
	
l6797:
	btfsc	((c:Line@v+3)),c,7
	goto	u8580
	movf	((c:Line@v+3)),c,w
	iorwf	((c:Line@v+2)),c,w
	iorwf	((c:Line@v+1)),c,w
	bnz	u8581
	movlw	50
	subwf	 ((c:Line@v)),c,w
	btfsc	status,0
	goto	u8581
	goto	u8580

u8581:
	goto	l6801
u8580:
	line	867
	
l6799:
	movlw	low(0)
	movwf	((c:Line@v)),c
	movlw	high(0)
	movwf	((c:Line@v+1)),c
	movlw	low highword(0)
	movwf	((c:Line@v+2)),c
	movlw	high highword(0)
	movwf	((c:Line@v+3)),c
	goto	l6801
	line	868
	
l676:
	line	869
	
l6801:
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
	line	870
	
l6803:
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
	line	873
	
l6805:
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

	line	874
	
l6807:
	movf	((c:Line@v)),c,w
	addwf	((c:Line@b)),c
	movf	((c:Line@v+1)),c,w
	addwfc	((c:Line@b+1)),c
	movf	((c:Line@v+2)),c,w
	addwfc	((c:Line@b+2)),c
	movf	((c:Line@v+3)),c,w
	addwfc	((c:Line@b+3)),c
	line	875
	
l6809:
	btfsc	((c:Line@v+3)),c,7
	goto	u8591
	movf	((c:Line@v+3)),c,w
	iorwf	((c:Line@v+2)),c,w
	iorwf	((c:Line@v+1)),c,w
	bnz	u8590
	movlw	201
	subwf	 ((c:Line@v)),c,w
	btfss	status,0
	goto	u8591
	goto	u8590

u8591:
	goto	l6813
u8590:
	line	876
	
l6811:
	movlw	low(01h)
	movwf	((c:Line@g)),c
	goto	l6813
	line	877
	
l677:
	line	853
	
l6813:
	infsnz	((c:Line@j)),c
	incf	((c:Line@j+1)),c
	
l6815:
	btfsc	((c:Line@j+1)),c,7
	goto	u8601
	movf	((c:Line@j+1)),c,w
	bnz	u8600
	movlw	5
	subwf	 ((c:Line@j)),c,w
	btfss	status,0
	goto	u8601
	goto	u8600

u8601:
	goto	l6779
u8600:
	goto	l6817
	
l673:
	line	880
	
l6817:
	movlw	high(0)
	movwf	((c:Line@j_1773+1)),c
	movlw	low(0)
	movwf	((c:Line@j_1773)),c
	
l6819:
	btfsc	((c:Line@j_1773+1)),c,7
	goto	u8611
	movf	((c:Line@j_1773+1)),c,w
	bnz	u8610
	movlw	2
	subwf	 ((c:Line@j_1773)),c,w
	btfss	status,0
	goto	u8611
	goto	u8610

u8611:
	goto	l6823
u8610:
	goto	l6845
	
l6821:
	goto	l6845
	
l678:
	line	881
	
l6823:
	bcf	status,0
	rlcf	((c:Line@j_1773)),c,w
	movwf	fsr2l
	rlcf	((c:Line@j_1773+1)),c,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(c:Line@i_1774)
	movff	postdec2,(c:Line@i_1774+1)
	line	882
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
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

	line	883
	
l6825:
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
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
	goto	u8621
	goto	u8620

u8621:
	goto	l6829
u8620:
	
l6827:
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
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

	goto	l6829
	
l680:
	line	884
	
l6829:
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
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
	goto	u8631
	goto	u8630

u8631:
	goto	l6833
u8630:
	
l6831:
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
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

	goto	l6833
	
l681:
	line	885
	
l6833:
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
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

	
l6835:
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
	
	
l6837:
	movff	(c:Line@v),(c:___aldiv@dividend)
	movff	(c:Line@v+1),(c:___aldiv@dividend+1)
	movff	(c:Line@v+2),(c:___aldiv@dividend+2)
	movff	(c:Line@v+3),(c:___aldiv@dividend+3)
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
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
	
	
l6839:
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
	line	886
	bcf	status,0
	rlcf	((c:Line@i_1774)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_1774+1)),c,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	(c:Line@v),postinc2
	movff	(c:Line@v+1),postdec2
	line	880
	
l6841:
	infsnz	((c:Line@j_1773)),c
	incf	((c:Line@j_1773+1)),c
	
l6843:
	btfsc	((c:Line@j_1773+1)),c,7
	goto	u8641
	movf	((c:Line@j_1773+1)),c,w
	bnz	u8640
	movlw	2
	subwf	 ((c:Line@j_1773)),c,w
	btfss	status,0
	goto	u8641
	goto	u8640

u8641:
	goto	l6823
u8640:
	goto	l6845
	
l679:
	line	889
	
l6845:
	movf	((c:Line@g)),c,w
	btfss	status,2
	goto	u8651
	goto	u8650
u8651:
	goto	l6855
u8650:
	line	890
	
l6847:
	movlb	0	; () banked
	btfsc	((_line+1))&0ffh,7
	goto	u8660
	movlb	0	; () banked
	movf	((_line+1))&0ffh,w
	bnz	u8661
	movlb	0	; () banked
	decf	((_line))&0ffh,w
	btfsc	status,0
	goto	u8661
	goto	u8660

u8661:
	goto	l6851
u8660:
	
l6849:; BSR set to: 0

	movlw	high(-200)
	movlb	0	; () banked
	movwf	((_line+1))&0ffh
	movlw	low(-200)
	movwf	((_line))&0ffh
	goto	l687
	
l684:; BSR set to: 0

	
l6851:; BSR set to: 0

	movlw	high(0C8h)
	movlb	0	; () banked
	movwf	((_line+1))&0ffh
	movlw	low(0C8h)
	movwf	((_line))&0ffh
	goto	l687
	
l686:; BSR set to: 0

	goto	l687
	line	891
	
l6853:; BSR set to: 0

	goto	l687
	line	892
	
l682:; BSR set to: 0

	line	893
	
l6855:
	movff	(c:Line@a),(c:___aldiv@dividend)
	movff	(c:Line@a+1),(c:___aldiv@dividend+1)
	movff	(c:Line@a+2),(c:___aldiv@dividend+2)
	movff	(c:Line@a+3),(c:___aldiv@dividend+3)
	movff	(c:Line@b),(c:___aldiv@divisor)
	movff	(c:Line@b+1),(c:___aldiv@divisor+1)
	movff	(c:Line@b+2),(c:___aldiv@divisor+2)
	movff	(c:Line@b+3),(c:___aldiv@divisor+3)
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(_line)
	movff	1+?___aldiv,(_line+1)
	line	894
	
l687:
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
;;		_millis
;;		_Ponderado
;;		_LineFollow
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
	line	15
global __ptext36
__ptext36:
psect	text36
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
;incstack = 0
	opt	stack 28
	line	119
	
l6219:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l6221
	line	120
	
l900:
	line	121
	
l6221:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u7601
	goto	u7600
u7601:
	goto	l6225
u7600:
	line	122
	
l6223:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l6225
	
l901:
	line	123
	
l6225:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l6227:
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
	goto	u7611
	goto	u7610

u7611:
	goto	l6221
u7610:
	
l902:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l903:
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
;;		_Ponderado
;;		_LineFollow
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
	line	8
global __ptext37
__ptext37:
psect	text37
	file	"/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
	line	8
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	stack 28
	line	14
	
l6229:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l6231:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u7620
	goto	u7621

u7621:
	goto	l6237
u7620:
	line	16
	
l6233:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l6235:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l6237
	line	18
	
l944:
	line	19
	
l6237:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u7630
	goto	u7631

u7631:
	goto	l6243
u7630:
	line	20
	
l6239:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l6241:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l6243
	line	22
	
l945:
	line	23
	
l6243:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l6245:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u7641
	goto	u7640

u7641:
	goto	l6265
u7640:
	line	25
	
l6247:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l6251
	
l948:
	line	27
	
l6249:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l6251
	line	29
	
l947:
	line	26
	
l6251:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u7651
	goto	u7650
u7651:
	goto	l6249
u7650:
	goto	l6253
	
l949:
	goto	l6253
	line	30
	
l950:
	line	31
	
l6253:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l6255:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u7661
	goto	u7660

u7661:
	goto	l6261
u7660:
	line	33
	
l6257:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l6259:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l6261
	line	35
	
l951:
	line	36
	
l6261:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l6263:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l6253
	goto	l6265
	
l952:
	goto	l6265
	line	38
	
l946:
	line	39
	
l6265:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u7671
	goto	u7670
u7671:
	goto	l6269
u7670:
	line	40
	
l6267:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l6269
	
l953:
	line	41
	
l6269:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l954
	
l6271:
	line	42
	
l954:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_EnhancedRead

;; *************** function _EnhancedRead *****************
;; Defined at:
;;		line 729 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_LineUpdate
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	729
global __ptext38
__ptext38:
psect	text38
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	729
	global	__size_of_EnhancedRead
	__size_of_EnhancedRead	equ	__end_of_EnhancedRead-_EnhancedRead
	
_EnhancedRead:
;incstack = 0
	opt	stack 28
	line	732
	
l6741:
	movlw	low(0)
	movwf	((c:EnhancedRead@i)),c
	
l6743:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u8501
	goto	u8500

u8501:
	goto	l6747
u8500:
	goto	l585
	
l6745:
	goto	l585
	
l580:
	line	733
	
l6747:
	movff	(c:EnhancedRead@i),??_EnhancedRead+0+0
	rlncf	(??_EnhancedRead+0+0),c
	rlncf	(??_EnhancedRead+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_EnhancedRead+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_EnhancedRead+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	734
	
l6749:
	bsf	((c:4034)),c,1	;volatile
	line	735
	goto	l582
	
l583:
	
l582:
	btfsc	((c:4034)),c,1	;volatile
	goto	u8511
	goto	u8510
u8511:
	goto	l582
u8510:
	goto	l6751
	
l584:
	line	736
	
l6751:
	movf	((c:4036)),c,w	;volatile
	mullw	04h
	movff	prodl,(c:EnhancedRead@aux)
	movff	prodh,(c:EnhancedRead@aux+1)
	line	737
	
l6753:
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
	line	738
	
l6755:
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
	line	732
	
l6757:
	incf	((c:EnhancedRead@i)),c
	
l6759:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u8521
	goto	u8520

u8521:
	goto	l6747
u8520:
	goto	l585
	
l581:
	line	740
	
l585:
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
;;		_EnhancedRead
;;		_MotorASpeed
;;		_MotorBSpeed
;;		_fround
;;		_scale
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
	line	8
global __ptext39
__ptext39:
psect	text39
	file	"/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 27
	line	14
	
l5803:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l5805:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u7120
	goto	u7121

u7121:
	goto	l5811
u7120:
	line	16
	
l5807:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l5809:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l5811
	line	18
	
l1056:
	line	19
	
l5811:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u7130
	goto	u7131

u7131:
	goto	l5817
u7130:
	line	20
	
l5813:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l5815:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l5817
	line	22
	
l1057:
	line	23
	
l5817:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l5819:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u7141
	goto	u7140

u7141:
	goto	l5839
u7140:
	line	25
	
l5821:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l5825
	
l1060:
	line	27
	
l5823:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l5825
	line	29
	
l1059:
	line	26
	
l5825:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u7151
	goto	u7150
u7151:
	goto	l5823
u7150:
	goto	l5827
	
l1061:
	goto	l5827
	line	30
	
l1062:
	line	31
	
l5827:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l5829:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u7161
	goto	u7160

u7161:
	goto	l5835
u7160:
	line	33
	
l5831:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l5833:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l5835
	line	35
	
l1063:
	line	36
	
l5835:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l5837:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l5827
	goto	l5839
	
l1064:
	goto	l5839
	line	38
	
l1058:
	line	39
	
l5839:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u7171
	goto	u7170
u7171:
	goto	l5843
u7170:
	line	40
	
l5841:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l5843
	
l1065:
	line	41
	
l5843:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l1066
	
l5845:
	line	42
	
l1066:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 601 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	601
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
	line	602
	
i2l5225:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u597_41
	goto	i2u597_40
i2u597_41:
	goto	i2l513
i2u597_40:
	line	603
	
i2l5227:
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME))&0ffh
	movlw	0
	addwfc	((_TIME+1))&0ffh
	addwfc	((_TIME+2))&0ffh
	addwfc	((_TIME+3))&0ffh
	line	604
	
i2l5229:; BSR set to: 0

	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	605
	
i2l5231:; BSR set to: 0

	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	608
	
i2l5233:; BSR set to: 0

	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l513
	line	609
	
i2l512:; BSR set to: 0

	line	610
	
i2l513:
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
