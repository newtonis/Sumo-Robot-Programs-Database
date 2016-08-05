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
	FNCALL	_main,_AdvanceLow
	FNCALL	_main,_CheckMem
	FNCALL	_main,_EnhancedRead
	FNCALL	_main,_EreaseAll
	FNCALL	_main,_Line
	FNCALL	_main,_Load
	FNCALL	_main,_MotorsSpeed
	FNCALL	_main,_Save
	FNCALL	_main,_ShowMem
	FNCALL	_main,_Wixel
	FNCALL	_main,___aldiv
	FNCALL	_main,___almod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___wmul
	FNCALL	_main,_initLED
	FNCALL	_main,_initYBOT
	FNCALL	_main,_printf
	FNCALL	_initYBOT,_InitAnalog
	FNCALL	_initYBOT,_InitTIMERS
	FNCALL	_initYBOT,_MotorsPWM
	FNCALL	_initYBOT,_ResetCounter
	FNCALL	_initYBOT,_configurations_init
	FNCALL	_Save,_ShowMem
	FNCALL	_Save,_WriteMem
	FNCALL	_ShowMem,_printf
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_printf,___wmul
	FNCALL	_printf,_isdigit
	FNCALL	_printf,_putch
	FNCALL	_Load,_GetValue
	FNCALL	_Load,_Length
	FNCALL	_Length,_ReadMem
	FNCALL	_GetValue,_ReadMem
	FNCALL	_Line,___aldiv
	FNCALL	_Line,___lmul
	FNCALL	_EreaseAll,_WriteMem
	FNCALL	_EnhancedRead,___awdiv
	FNCALL	_CheckMem,_ReadMem
	FNCALL	_AdvanceLow,_MotorsSpeed
	FNCALL	_AdvanceLow,___awtoft
	FNCALL	_AdvanceLow,___ftadd
	FNCALL	_AdvanceLow,___ftmul
	FNCALL	_AdvanceLow,___fttol
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	_MotorsSpeed,_MotorASpeed
	FNCALL	_MotorsSpeed,_MotorBSpeed
	FNCALL	_MotorBSpeed,___awdiv
	FNCALL	_MotorASpeed,___awdiv
	FNROOT	_main
	FNCALL	intlevel2,_enc
	global	intlevel2
	FNROOT	intlevel2
	global	_sd
	global	_VKD
	global	_VKP
	global	_VEL
	global	_fw
	global	_pd
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	189

;initializer for _sd
	dw	(01h)&0ffffh
	dw	(07h)&0ffffh
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	line	177

;initializer for _test_kp
	db	low(float24(7.0000000000000000))
	db	high(float24(7.0000000000000000))
	db	low highword(float24(7.0000000000000000))
	line	176

;initializer for _LOW_SPEED
	dw	(0208h)&0ffffh
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	184

;initializer for _VKD
	db	low(float24(50.000000000000000))
	db	high(float24(50.000000000000000))
	db	low highword(float24(50.000000000000000))
	db	low(float24(70.000000000000000))
	db	high(float24(70.000000000000000))
	db	low highword(float24(70.000000000000000))
	db	low(float24(30.000000000000000))
	db	high(float24(30.000000000000000))
	db	low highword(float24(30.000000000000000))
	db	low(float24(50.000000000000000))
	db	high(float24(50.000000000000000))
	db	low highword(float24(50.000000000000000))
	db	low(float24(50.000000000000000))
	db	high(float24(50.000000000000000))
	db	low highword(float24(50.000000000000000))
	db	low(float24(50.000000000000000))
	db	high(float24(50.000000000000000))
	db	low highword(float24(50.000000000000000))
	line	183

;initializer for _VKP
	db	low(float24(5.0000000000000000))
	db	high(float24(5.0000000000000000))
	db	low highword(float24(5.0000000000000000))
	db	low(float24(6.0000000000000000))
	db	high(float24(6.0000000000000000))
	db	low highword(float24(6.0000000000000000))
	db	low(float24(6.0000000000000000))
	db	high(float24(6.0000000000000000))
	db	low highword(float24(6.0000000000000000))
	db	low(float24(6.0000000000000000))
	db	high(float24(6.0000000000000000))
	db	low highword(float24(6.0000000000000000))
	db	low(float24(6.0000000000000000))
	db	high(float24(6.0000000000000000))
	db	low highword(float24(6.0000000000000000))
	db	low(float24(6.0000000000000000))
	db	high(float24(6.0000000000000000))
	db	low highword(float24(6.0000000000000000))
	line	182

;initializer for _VEL
	dw	(01C2h)&0ffffh
	dw	(02DAh)&0ffffh
	dw	(01A4h)&0ffffh
	dw	(03E8h)&0ffffh
	dw	(-1000)&0ffffh
	dw	(0190h)&0ffffh
	line	187

;initializer for _fw
	dw	(06h)&0ffffh
	dw	(05h)&0ffffh
	dw	(04h)&0ffffh
	dw	(03h)&0ffffh
	dw	(02h)&0ffffh
	line	188

;initializer for _pd
	dw	(-200)&0ffffh
	dw	(-100)&0ffffh
	dw	(0)&0ffffh
	dw	(064h)&0ffffh
	dw	(0C8h)&0ffffh
	line	37

;initializer for _TIMEFRENO
	dw	(0C8h) & 0xffff
	dw	highword(0C8h)
	line	178

;initializer for _test_kd
	db	low(float24(20.000000000000000))
	db	high(float24(20.000000000000000))
	db	low highword(float24(20.000000000000000))
	global	_dpowers
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
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
	global	_der
	global	_formula
	global	_last
	global	_line
	global	_x
	global	_MF
	global	_TOTAL
	global	_TIME
	global	_TIME2
	global	_TIME3
	global	_TIME4
	global	_TIME5
	global	_fa
	global	_fb
	global	_flag_line
	global	_fns
	global	_gf
	global	_ma
	global	_mb
	global	_rcount
	global	_rf
	global	_RWM
	global	_actual
	global	_P
	global	_V
	global	_amax
	global	_amin
	global	_WAITIME
	global	_LEN
	global	_status
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
	global	_status
_status:
       ds      2
	global	_gstatus
psect	nvBANK1,class=BANK1,space=1,noexec
global __pnvBANK1
__pnvBANK1:
	global	_gstatus
_gstatus:
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
	
STR_27:
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
	db	114	;'r'
	db	101	;'e'
	db	99	;'c'
	db	116	;'t'
	db	32
	db	102	;'f'
	db	40
	db	37
	db	105	;'i'
	db	41
	db	32
	db	61	;'='
	db	32
	db	40
	db	37
	db	105	;'i'
	db	41
	db	32
	db	40
	db	37
	db	105	;'i'
	db	41
	db	32
	db	40
	db	37
	db	105	;'i'
	db	41
	db	39
	db	125
	db	10
	db	0
	
STR_16:
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
	
STR_32:
	db	123
	db	39
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	39
	db	58	;':'
	db	39
	db	83	;'S'
	db	101	;'e'
	db	116	;'t'
	db	116	;'t'
	db	108	;'l'
	db	101	;'e'
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
	db	65	;'A'
	db	114	;'r'
	db	101	;'e'
	db	97	;'a'
	db	32
	db	37
	db	105	;'i'
	db	39
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
	db	49	;'1'
	db	48	;'0'
	db	48	;'0'
	db	44
	db	49	;'1'
	db	48	;'0'
	db	48	;'0'
	db	44
	db	50	;'2'
	db	53	;'5'
	db	53	;'5'
	db	41
	db	125
	db	10
	db	0
	
STR_14:
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
	
STR_21:
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
	db	101	;'e'
	db	108	;'l'
	db	101	;'e'
	db	99	;'c'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	71	;'G'
	db	82	;'R'
	db	69	;'E'
	db	69	;'E'
	db	78	;'N'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	39
	db	125
	db	10
	db	0
	
STR_9:
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
	
STR_18:
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
	db	101	;'e'
	db	108	;'l'
	db	101	;'e'
	db	99	;'c'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	39
	db	125
	db	10
	db	0
	
STR_20:
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
	db	87	;'W'
	db	114	;'r'
	db	105	;'i'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	71	;'G'
	db	82	;'R'
	db	69	;'E'
	db	69	;'E'
	db	78	;'N'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	39
	db	125
	db	10
	db	0
	
STR_17:
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
	db	87	;'W'
	db	114	;'r'
	db	105	;'i'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	82	;'R'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	39
	db	125
	db	10
	db	0
	
STR_5:
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
	db	71	;'G'
	db	114	;'r'
	db	101	;'e'
	db	101	;'e'
	db	110	;'n'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	32
	db	101	;'e'
	db	109	;'m'
	db	112	;'p'
	db	116	;'t'
	db	121	;'y'
	db	39
	db	125
	db	10
	db	0
	
STR_12:
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
	db	82	;'R'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	32
	db	101	;'e'
	db	109	;'m'
	db	112	;'p'
	db	116	;'t'
	db	121	;'y'
	db	39
	db	125
	db	10
	db	0
	
STR_25:
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
	db	87	;'W'
	db	114	;'r'
	db	105	;'i'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	114	;'r'
	db	101	;'e'
	db	99	;'c'
	db	116	;'t'
	db	32
	db	37
	db	105	;'i'
	db	39
	db	125
	db	10
	db	0
	
STR_30:
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
	db	117	;'u'
	db	114	;'r'
	db	118	;'v'
	db	101	;'e'
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
	db	76	;'L'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	105	;'i'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	101	;'e'
	db	101	;'e'
	db	112	;'p'
	db	114	;'r'
	db	111	;'o'
	db	109	;'m'
	db	39
	db	125
	db	10
	db	0
	
STR_22:
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
	db	71	;'G'
	db	82	;'R'
	db	69	;'E'
	db	69	;'E'
	db	78	;'N'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	58	;':'
	db	39
	db	125
	db	10
	db	0
	
STR_24:
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
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	32
	db	101	;'e'
	db	114	;'r'
	db	97	;'a'
	db	115	;'s'
	db	101	;'e'
	db	100	;'d'
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
	db	71	;'G'
	db	114	;'r'
	db	101	;'e'
	db	101	;'e'
	db	110	;'n'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	39
	db	125
	db	10
	db	0
	
STR_19:
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
	db	69	;'E'
	db	68	;'D'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	58	;':'
	db	39
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
	db	82	;'R'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	109	;'m'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	58	;':'
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
	
STR_26:
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
	db	97	;'a'
	db	118	;'v'
	db	101	;'e'
	db	32
	db	100	;'d'
	db	97	;'a'
	db	116	;'t'
	db	97	;'a'
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
	db	91	;'['
	db	37
	db	105	;'i'
	db	93	;']'
	db	32
	db	61	;'='
	db	32
	db	37
	db	105	;'i'
	db	39
	db	125
	db	10
	db	0
	
STR_23:
	db	123
	db	39
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	39
	db	58	;':'
	db	39
	db	82	;'R'
	db	101	;'e'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	115	;'s'
	db	101	;'e'
	db	39
	db	125
	db	10
	db	0
	
STR_33:
	db	123
	db	39
	db	67	;'C'
	db	79	;'O'
	db	77	;'M'
	db	39
	db	58	;':'
	db	39
	db	72	;'H'
	db	111	;'o'
	db	108	;'l'
	db	100	;'d'
	db	39
	db	125
	db	10
	db	0
STR_11	equ	STR_10+0
STR_15	equ	STR_10+0
STR_29	equ	STR_10+0
STR_28	equ	STR_16+0
STR_31	equ	STR_27+0
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
	global	_der
_der:
       ds      2
	global	_formula
_formula:
       ds      2
	global	_last
_last:
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
	global	_TOTAL
_TOTAL:
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
	global	_TIME3
_TIME3:
       ds      4
	global	_TIME4
_TIME4:
       ds      4
	global	_TIME5
_TIME5:
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
	global	_gf
_gf:
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
	global	_RWM
_RWM:
       ds      1
	global	_actual
_actual:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	189
	global	_sd
_sd:
       ds      10
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	177
	global	_test_kp
	global	_test_kp
_test_kp:
       ds      3
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	176
	global	_LOW_SPEED
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
	global	_WAITIME
_WAITIME:
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
	line	184
	global	_VKD
_VKD:
       ds      18
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	183
	global	_VKP
_VKP:
       ds      18
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	182
	global	_VEL
_VEL:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	187
	global	_fw
_fw:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	188
	global	_pd
_pd:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	37
	global	_TIMEFRENO
	global	_TIMEFRENO
_TIMEFRENO:
       ds      4
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	178
	global	_test_kd
	global	_test_kd
_test_kd:
       ds      3
psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
	global	_LEN
_LEN:
       ds      200
	file	"main.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK1 (75 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,75
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (15 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,15
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
	line	#
; Clear objects allocated to BANK2 (200 bytes)
	global __pbssBANK2
lfsr	0,__pbssBANK2
movlw	200
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK1 (144 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	144
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (50 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	50
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (16 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	16
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
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	_main$2352
_main$2352:	; 4 bytes @ 0x0
	ds   4
	global	main@kp
main@kp:	; 3 bytes @ 0x4
	ds   3
	global	main@kd
main@kd:	; 3 bytes @ 0x7
	ds   3
	global	main@kp_445
main@kp_445:	; 3 bytes @ 0xA
	ds   3
	global	main@kd_446
main@kd_446:	; 3 bytes @ 0xD
	ds   3
	global	_main$429
_main$429:	; 2 bytes @ 0x10
	ds   2
	global	_main$430
_main$430:	; 2 bytes @ 0x12
	ds   2
	global	_main$438
_main$438:	; 2 bytes @ 0x14
	ds   2
	global	_main$439
_main$439:	; 2 bytes @ 0x16
	ds   2
	global	_main$448
_main$448:	; 2 bytes @ 0x18
	ds   2
	global	_main$449
_main$449:	; 2 bytes @ 0x1A
	ds   2
	global	main@old_415
main@old_415:	; 1 bytes @ 0x1C
	ds   1
	global	main@old_420
main@old_420:	; 1 bytes @ 0x1D
	ds   1
	global	_main$2356
_main$2356:	; 2 bytes @ 0x1E
	ds   2
	global	_main$2357
_main$2357:	; 2 bytes @ 0x20
	ds   2
	global	_main$2358
_main$2358:	; 2 bytes @ 0x22
	ds   2
	global	main@old_412
main@old_412:	; 1 bytes @ 0x24
	ds   1
	global	main@old_417
main@old_417:	; 1 bytes @ 0x25
	ds   1
	global	_main$400
_main$400:	; 2 bytes @ 0x26
	ds   2
	global	_main$406
_main$406:	; 2 bytes @ 0x28
	ds   2
	global	main@j_404
main@j_404:	; 2 bytes @ 0x2A
	ds   2
	global	main@i_403
main@i_403:	; 2 bytes @ 0x2C
	ds   2
	global	main@j_409
main@j_409:	; 2 bytes @ 0x2E
	ds   2
	global	main@mod_447
main@mod_447:	; 2 bytes @ 0x30
	ds   2
	global	main@mod
main@mod:	; 2 bytes @ 0x32
	ds   2
	global	main@speed
main@speed:	; 2 bytes @ 0x34
	ds   2
	global	main@speed_444
main@speed_444:	; 2 bytes @ 0x36
	ds   2
	global	main@old
main@old:	; 1 bytes @ 0x38
	ds   1
	global	_main$2346
_main$2346:	; 2 bytes @ 0x39
	ds   2
	global	_main$2347
_main$2347:	; 2 bytes @ 0x3B
	ds   2
	global	_main$2348
_main$2348:	; 2 bytes @ 0x3D
	ds   2
	global	_main$2349
_main$2349:	; 2 bytes @ 0x3F
	ds   2
	global	_main$2350
_main$2350:	; 2 bytes @ 0x41
	ds   2
	global	_main$2351
_main$2351:	; 2 bytes @ 0x43
	ds   2
	global	_main$2353
_main$2353:	; 2 bytes @ 0x45
	ds   2
	global	_main$2354
_main$2354:	; 2 bytes @ 0x47
	ds   2
	global	_main$2355
_main$2355:	; 2 bytes @ 0x49
	ds   2
	global	main@i_408
main@i_408:	; 2 bytes @ 0x4B
	ds   2
	global	main@j
main@j:	; 2 bytes @ 0x4D
	ds   2
	global	main@i
main@i:	; 2 bytes @ 0x4F
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x0
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x5
	ds   1
	global	AdvanceLow@kp
AdvanceLow@kp:	; 3 bytes @ 0x6
	ds   3
	global	AdvanceLow@kd
AdvanceLow@kd:	; 3 bytes @ 0x9
	ds   3
	global	AdvanceLow@speed
AdvanceLow@speed:	; 2 bytes @ 0xC
	ds   2
?_main:	; 2 bytes @ 0xE
main@argc:	; 2 bytes @ 0xE
	ds   2
main@argv:	; 3 bytes @ 0x10
	ds   3
??_main:	; 1 bytes @ 0x13
	ds   7
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
?_EreaseAll:	; 1 bytes @ 0x0
?_initYBOT:	; 1 bytes @ 0x0
?_enc:	; 1 bytes @ 0x0
??_enc:	; 1 bytes @ 0x0
?_initLED:	; 1 bytes @ 0x0
?_ShowMem:	; 1 bytes @ 0x0
?_Save:	; 1 bytes @ 0x0
?_Load:	; 1 bytes @ 0x0
?_Line:	; 1 bytes @ 0x0
?_AdvanceLow:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
	ds   14
?_WriteMem:	; 1 bytes @ 0xE
??_ResetCounter:	; 1 bytes @ 0xE
??_configurations_init:	; 1 bytes @ 0xE
??_InitAnalog:	; 1 bytes @ 0xE
??_InitTIMERS:	; 1 bytes @ 0xE
??_MotorsPWM:	; 1 bytes @ 0xE
?_ReadMem:	; 1 bytes @ 0xE
??_Wixel:	; 1 bytes @ 0xE
??_isdigit:	; 1 bytes @ 0xE
??_initYBOT:	; 1 bytes @ 0xE
??_initLED:	; 1 bytes @ 0xE
??_putch:	; 1 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0xE
	global	?___lmul
?___lmul:	; 4 bytes @ 0xE
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0xE
	global	?___almod
?___almod:	; 4 bytes @ 0xE
	global	putch@data
putch@data:	; 1 bytes @ 0xE
	global	WriteMem@data
WriteMem@data:	; 1 bytes @ 0xE
	global	ReadMem@data
ReadMem@data:	; 2 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xE
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0xE
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0xE
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0xE
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0xE
	ds   1
??_WriteMem:	; 1 bytes @ 0xF
	global	WriteMem@addr
WriteMem@addr:	; 1 bytes @ 0xF
	global	_isdigit$2006
_isdigit$2006:	; 1 bytes @ 0xF
	ds   1
??_ReadMem:	; 1 bytes @ 0x10
??_EreaseAll:	; 1 bytes @ 0x10
	global	ReadMem@addr
ReadMem@addr:	; 1 bytes @ 0x10
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	ds   1
?_GetValue:	; 1 bytes @ 0x11
?_CheckMem:	; 1 bytes @ 0x11
?_Length:	; 1 bytes @ 0x11
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x11
	global	CheckMem@data
CheckMem@data:	; 2 bytes @ 0x11
	global	Length@data
Length@data:	; 2 bytes @ 0x11
	global	GetValue@item
GetValue@item:	; 2 bytes @ 0x11
	ds   1
??___awdiv:	; 1 bytes @ 0x12
??___lwdiv:	; 1 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x12
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x12
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x12
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x12
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x12
	ds   1
??___ftpack:	; 1 bytes @ 0x13
??_CheckMem:	; 1 bytes @ 0x13
??_Length:	; 1 bytes @ 0x13
	global	_CheckMem$321
_CheckMem$321:	; 1 bytes @ 0x13
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	global	GetValue@data
GetValue@data:	; 2 bytes @ 0x13
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x13
	ds   1
	global	CheckMem@rta
CheckMem@rta:	; 1 bytes @ 0x14
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds   1
??_GetValue:	; 1 bytes @ 0x15
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x15
	global	Length@add
Length@add:	; 1 bytes @ 0x15
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x15
	ds   1
??_EnhancedRead:	; 1 bytes @ 0x16
?_MotorASpeed:	; 1 bytes @ 0x16
?_MotorBSpeed:	; 1 bytes @ 0x16
??___lmul:	; 1 bytes @ 0x16
??___aldiv:	; 1 bytes @ 0x16
??___almod:	; 1 bytes @ 0x16
	global	?___wmul
?___wmul:	; 2 bytes @ 0x16
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x16
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x16
	global	_Length$330
_Length$330:	; 2 bytes @ 0x16
	global	MotorASpeed@S
MotorASpeed@S:	; 2 bytes @ 0x16
	global	MotorBSpeed@S
MotorBSpeed@S:	; 2 bytes @ 0x16
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x16
	ds   1
	global	GetValue@add
GetValue@add:	; 1 bytes @ 0x17
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x17
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x17
	global	EnhancedRead@aux
EnhancedRead@aux:	; 2 bytes @ 0x17
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x17
	ds   1
??_MotorASpeed:	; 1 bytes @ 0x18
??_MotorBSpeed:	; 1 bytes @ 0x18
	global	Length@rta
Length@rta:	; 1 bytes @ 0x18
	global	_GetValue$340
_GetValue$340:	; 2 bytes @ 0x18
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x18
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x18
	ds   1
??___awtoft:	; 1 bytes @ 0x19
??___lwmod:	; 1 bytes @ 0x19
	global	EnhancedRead@i
EnhancedRead@i:	; 1 bytes @ 0x19
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x19
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x19
	ds   1
??___wmul:	; 1 bytes @ 0x1A
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1A
	global	GetValue@rta
GetValue@rta:	; 1 bytes @ 0x1A
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x1A
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1A
	ds   1
??_Load:	; 1 bytes @ 0x1B
	ds   1
?_MotorsSpeed:	; 1 bytes @ 0x1C
??_Line:	; 1 bytes @ 0x1C
	global	?_printf
?_printf:	; 2 bytes @ 0x1C
	global	MotorsSpeed@A
MotorsSpeed@A:	; 2 bytes @ 0x1C
	global	printf@f
printf@f:	; 2 bytes @ 0x1C
	ds   1
	global	Load@x
Load@x:	; 2 bytes @ 0x1D
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1D
	ds   1
	global	MotorsSpeed@B
MotorsSpeed@B:	; 2 bytes @ 0x1E
	ds   2
??_MotorsSpeed:	; 1 bytes @ 0x20
??___ftmul:	; 1 bytes @ 0x20
	global	_MotorsSpeed$1740
_MotorsSpeed$1740:	; 2 bytes @ 0x20
	ds   2
	global	_MotorsSpeed$1742
_MotorsSpeed$1742:	; 2 bytes @ 0x22
	ds   1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x23
	global	Line@w
Line@w:	; 4 bytes @ 0x23
	ds   1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x24
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x27
	global	Line@a
Line@a:	; 4 bytes @ 0x27
	ds   1
??_printf:	; 1 bytes @ 0x28
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x28
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x29
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x29
	ds   2
	global	Line@b
Line@b:	; 4 bytes @ 0x2B
	ds   1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x2C
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2C
	ds   1
	global	printf@ap
printf@ap:	; 2 bytes @ 0x2D
	ds   2
??___ftadd:	; 1 bytes @ 0x2F
	global	Line@g
Line@g:	; 1 bytes @ 0x2F
	global	printf@val
printf@val:	; 2 bytes @ 0x2F
	ds   1
	global	Line@j_350
Line@j_350:	; 2 bytes @ 0x30
	ds   1
	global	printf@flag
printf@flag:	; 1 bytes @ 0x31
	ds   1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x32
	global	Line@j
Line@j:	; 2 bytes @ 0x32
	global	printf@width
printf@width:	; 2 bytes @ 0x32
	ds   1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x33
	ds   1
	global	printf@c
printf@c:	; 1 bytes @ 0x34
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x34
	global	Line@i
Line@i:	; 2 bytes @ 0x34
	ds   1
??_ShowMem:	; 1 bytes @ 0x35
	global	?___fttol
?___fttol:	; 4 bytes @ 0x35
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x35
	ds   1
	global	ShowMem@x
ShowMem@x:	; 2 bytes @ 0x36
	global	Line@i_351
Line@i_351:	; 2 bytes @ 0x36
	ds   2
??_Save:	; 1 bytes @ 0x38
	global	Line@v
Line@v:	; 4 bytes @ 0x38
	ds   1
??___fttol:	; 1 bytes @ 0x39
	global	_Save$324
_Save$324:	; 2 bytes @ 0x39
	ds   2
	global	Save@sum
Save@sum:	; 1 bytes @ 0x3B
	ds   1
	global	Save@x
Save@x:	; 2 bytes @ 0x3C
	ds   2
??_AdvanceLow:	; 1 bytes @ 0x3E
	ds   2
;!
;!Data Sizes:
;!    Strings     1200
;!    Constant    10
;!    Data        90
;!    BSS         410
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     64      80
;!    BANK0           160     26      93
;!    BANK1           256      0     220
;!    BANK2           256      0     200
;!    BANK3           256     81      81
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 63
;!		 -> STR_33(CODE[16]), STR_32(CODE[57]), STR_31(CODE[63]), STR_30(CODE[41]), 
;!		 -> STR_29(CODE[60]), STR_28(CODE[61]), STR_27(CODE[63]), STR_26(CODE[36]), 
;!		 -> STR_25(CODE[42]), STR_24(CODE[40]), STR_23(CODE[19]), STR_22(CODE[40]), 
;!		 -> STR_21(CODE[49]), STR_20(CODE[47]), STR_19(CODE[38]), STR_18(CODE[47]), 
;!		 -> STR_17(CODE[45]), STR_16(CODE[61]), STR_15(CODE[60]), STR_14(CODE[53]), 
;!		 -> STR_13(CODE[39]), STR_12(CODE[44]), STR_11(CODE[60]), STR_10(CODE[60]), 
;!		 -> STR_9(CODE[47]), STR_8(CODE[38]), STR_7(CODE[43]), STR_6(CODE[39]), 
;!		 -> STR_5(CODE[45]), STR_4(CODE[41]), STR_3(CODE[37]), STR_2(CODE[37]), 
;!		 -> STR_1(CODE[36]), 
;!
;!    printf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_printf(COMRAM[2]), 
;!
;!    ReadMem@data	PTR unsigned char  size(2) Largest target is 1
;!		 -> GetValue@rta(COMRAM[1]), Length@rta(COMRAM[1]), CheckMem@rta(COMRAM[1]), 
;!
;!    GetValue@data	PTR int  size(2) Largest target is 2047
;!		 -> RAM(DATA[2047]), 
;!
;!    Length@data	PTR int  size(2) Largest target is 2
;!		 -> TOTAL(COMRAM[2]), 
;!
;!    CheckMem@data	PTR unsigned char  size(2) Largest target is 1
;!		 -> main@old_420(BANK3[1]), main@old_417(BANK3[1]), main@old_415(BANK3[1]), main@old_412(BANK3[1]), 
;!		 -> main@old(BANK3[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_AdvanceLow
;!    _Save->_ShowMem
;!    _ShowMem->_printf
;!    _printf->___wmul
;!    ___wmul->___awdiv
;!    ___lwmod->___lwdiv
;!    _Load->_GetValue
;!    _Length->_ReadMem
;!    _GetValue->_ReadMem
;!    _Line->___aldiv
;!    _EreaseAll->_WriteMem
;!    _EnhancedRead->___awdiv
;!    _CheckMem->_ReadMem
;!    _AdvanceLow->___fttol
;!    ___fttol->___ftadd
;!    ___ftmul->___awtoft
;!    ___ftadd->___ftmul
;!    ___awtoft->___ftpack
;!    _MotorsSpeed->___wmul
;!    _MotorBSpeed->___awdiv
;!    _MotorASpeed->___awdiv
;!
;!Critical Paths under _enc in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_AdvanceLow
;!    _AdvanceLow->___fttol
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
;;Main: autosize = 0, tempsize = 7, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                               197   192      5  137706
;!                                             14 BANK0     12     7      5
;!                                              0 BANK3     81    81      0
;!                         _AdvanceLow
;!                           _CheckMem
;!                       _EnhancedRead
;!                          _EreaseAll
;!                               _Line
;!                               _Load
;!                        _MotorsSpeed
;!                               _Save
;!                            _ShowMem
;!                              _Wixel
;!                            ___aldiv
;!                            ___almod
;!                            ___awdiv
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___fttol
;!                             ___wmul
;!                            _initLED
;!                           _initYBOT
;!                             _printf
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
;! (1) ___almod                                             10     2      8    1665
;!                                             14 COMRAM    10     2      8
;! ---------------------------------------------------------------------------------
;! (1) _Wixel                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _Save                                                 6     6      0   13060
;!                                             56 COMRAM     6     6      0
;!                            _ShowMem
;!                           _WriteMem
;! ---------------------------------------------------------------------------------
;! (1) _ShowMem                                              3     3      0   12489
;!                                             53 COMRAM     3     3      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (1) _printf                                              34    22     12   12390
;!                                             28 COMRAM    25    13     12
;!                            ___awdiv (ARG)
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (2) _putch                                                1     1      0      31
;!                                             14 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _isdigit                                              3     3      0      99
;!                                             14 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4    7778
;!                                             22 COMRAM     6     2      4
;!                            ___awdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     386
;!                                             21 COMRAM     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     395
;!                                             14 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _Load                                                 4     4      0    1441
;!                                             27 COMRAM     4     4      0
;!                           _GetValue
;!                             _Length
;! ---------------------------------------------------------------------------------
;! (2) _Length                                               8     6      2     617
;!                                             17 COMRAM     8     6      2
;!                            _ReadMem
;! ---------------------------------------------------------------------------------
;! (2) _GetValue                                            10     6      4     725
;!                                             17 COMRAM    10     6      4
;!                            _ReadMem
;! ---------------------------------------------------------------------------------
;! (1) _Line                                                32    32      0    3714
;!                                             28 COMRAM    32    32      0
;!                            ___aldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8     712
;!                                             14 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (1) ___aldiv                                             14     6      8    1523
;!                                             14 COMRAM    14     6      8
;! ---------------------------------------------------------------------------------
;! (1) _EreaseAll                                            0     0      0     370
;!                           _WriteMem
;! ---------------------------------------------------------------------------------
;! (2) _WriteMem                                             2     1      1     370
;!                                             14 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _EnhancedRead                                         4     4      0    7419
;!                                             22 COMRAM     4     4      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (1) _CheckMem                                             4     2      2    1030
;!                                             17 COMRAM     4     2      2
;!                            _ReadMem
;! ---------------------------------------------------------------------------------
;! (3) _ReadMem                                              3     1      2     370
;!                                             14 COMRAM     3     1      2
;! ---------------------------------------------------------------------------------
;! (1) _AdvanceLow                                          12    12      0   28899
;!                                             62 COMRAM     2     2      0
;!                                              6 BANK0      8     8      0
;!                        _MotorsSpeed
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (1) ___fttol                                             15    11      4     602
;!                                             53 COMRAM     9     5      4
;!                                              0 BANK0      6     6      0
;!                           ___awtoft (ARG)
;!                            ___ftadd (ARG)
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___ftmul                                             15     9      6    3930
;!                                             26 COMRAM    15     9      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___ftadd                                             12     6      6    4319
;!                                             41 COMRAM    12     6      6
;!                           ___awtoft (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___awtoft                                             4     1      3    2999
;!                                             22 COMRAM     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___ftpack                                             8     3      5    2404
;!                                             14 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _MotorsSpeed                                          8     4      4   16854
;!                                             28 COMRAM     8     4      4
;!                        _MotorASpeed
;!                        _MotorBSpeed
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _MotorBSpeed                                          3     1      2    7558
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (2) _MotorASpeed                                          3     1      2    7558
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              8     4      4    7221
;!                                             14 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
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
;!   _AdvanceLow
;!     _MotorsSpeed
;!       _MotorASpeed
;!         ___awdiv
;!       _MotorBSpeed
;!         ___awdiv
;!       ___wmul (ARG)
;!         ___awdiv (ARG)
;!     ___awtoft
;!       ___ftpack
;!     ___ftadd
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___fttol
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftadd (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!         ___ftpack (ARG)
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!   _CheckMem
;!     _ReadMem
;!   _EnhancedRead
;!     ___awdiv
;!   _EreaseAll
;!     _WriteMem
;!   _Line
;!     ___aldiv
;!     ___lmul
;!   _Load
;!     _GetValue
;!       _ReadMem
;!     _Length
;!       _ReadMem
;!   _MotorsSpeed
;!     _MotorASpeed
;!       ___awdiv
;!     _MotorBSpeed
;!       ___awdiv
;!     ___wmul (ARG)
;!       ___awdiv (ARG)
;!   _Save
;!     _ShowMem
;!       _printf
;!         ___awdiv (ARG)
;!         ___lwdiv (ARG)
;!         ___lwmod (ARG)
;!           ___lwdiv (ARG)
;!         ___wmul (ARG)
;!           ___awdiv (ARG)
;!         _isdigit (ARG)
;!         _putch (ARG)
;!     _WriteMem
;!   _ShowMem
;!     _printf
;!       ___awdiv (ARG)
;!       ___lwdiv (ARG)
;!       ___lwmod (ARG)
;!         ___lwdiv (ARG)
;!       ___wmul (ARG)
;!         ___awdiv (ARG)
;!       _isdigit (ARG)
;!       _putch (ARG)
;!   _Wixel
;!   ___aldiv
;!   ___almod
;!   ___awdiv
;!   ___awtoft
;!     ___ftpack
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___ftpack (ARG)
;!   ___ftmul
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!   ___fttol
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftadd (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftpack (ARG)
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!   ___wmul
;!     ___awdiv (ARG)
;!   _initLED
;!   _initYBOT
;!     _InitAnalog
;!     _InitTIMERS
;!     _MotorsPWM
;!     _ResetCounter
;!     _configurations_init
;!   _printf
;!     ___awdiv (ARG)
;!     ___lwdiv (ARG)
;!     ___lwmod (ARG)
;!       ___lwdiv (ARG)
;!     ___wmul (ARG)
;!       ___awdiv (ARG)
;!     _isdigit (ARG)
;!     _putch (ARG)
;!
;! _enc (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      21        0.0%
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
;!BANK3              100     51      51      11       31.6%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0      C8       9       78.1%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      DC       7       85.9%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     1A      5D       5       58.1%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     40      50       1       85.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     2A2      20        0.0%
;!DATA                 0      0     2A2       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 318 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   14[BANK0 ] int 
;;  argv            3   16[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  old             1   29[BANK3 ] unsigned char 
;;  old             1   28[BANK3 ] unsigned char 
;;  kd              3   13[BANK3 ] unsigned char 
;;  kp              3   10[BANK3 ] unsigned char 
;;  speed           2   54[BANK3 ] int 
;;  mod             2   48[BANK3 ] int 
;;  kd              3    7[BANK3 ] int 
;;  kp              3    4[BANK3 ] int 
;;  speed           2   52[BANK3 ] int 
;;  mod             2   50[BANK3 ] int 
;;  old             1   37[BANK3 ] unsigned char 
;;  old             1   36[BANK3 ] unsigned char 
;;  i               2   75[BANK3 ] int 
;;  j               2   46[BANK3 ] int 
;;  i               2   44[BANK3 ] int 
;;  j               2   42[BANK3 ] int 
;;  old             1   56[BANK3 ] unsigned char 
;;  i               2   79[BANK3 ] int 
;;  j               2   77[BANK3 ] int 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       5       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0      81       0       0       0       0
;;      Temps:          0       7       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0      81       0       0       0       0
;;Total ram usage:       93 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_AdvanceLow
;;		_CheckMem
;;		_EnhancedRead
;;		_EreaseAll
;;		_Line
;;		_Load
;;		_MotorsSpeed
;;		_Save
;;		_ShowMem
;;		_Wixel
;;		___aldiv
;;		___almod
;;		___awdiv
;;		___awtoft
;;		___ftadd
;;		___ftmul
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
	line	318
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	318
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 26
	line	319
	
l5569:
	call	_initYBOT	;wreg free
	line	321
	
l5571:
	movlb	1	; () banked
	setf	((_gstatus))&0ffh
	line	322
	
l5573:; BSR set to: 1

	movlw	low(0)
	movlb	1	; () banked
	movwf	((_WAITIME))&0ffh
	movlw	high(0)
	movwf	((_WAITIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_WAITIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_WAITIME+3))&0ffh
	line	323
	
l5575:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_actual))&0ffh
	line	324
	
l5577:; BSR set to: 0

	movlw	high(07h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	line	325
	
l5579:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	326
	call	_Wixel	;wreg free
	line	328
	
l5581:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	329
	
l5583:
	bsf	((c:3971)),c,3	;volatile
	line	331
	
l5585:
	movlw	high(07h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	line	332
	goto	l5589
	
l229:; BSR set to: 0

	line	337
	
l5587:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	goto	l5589
	
l228:; BSR set to: 0

	line	332
	
l5589:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6421
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6420
	movlw	136
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	19
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6421
	goto	u6420

u6421:
	goto	l5587
u6420:
	goto	l6227
	
l230:; BSR set to: 0

	goto	l6227
	line	338
	
l231:; BSR set to: 0

	line	343
	goto	l6227
	line	344
	
l233:; BSR set to: 0

	line	345
	
l5591:; BSR set to: 0

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
	goto	u6430
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6431
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6431
	goto	u6430

u6431:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6448
u6430:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6448:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	346
	
l5593:; BSR set to: 0

	movlb	0	; () banked
	movf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6451
	goto	u6450

u6451:
	goto	l5597
u6450:
	line	347
	
l5595:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	348
	goto	l5605
	
l234:; BSR set to: 0

	
l5597:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6461
	goto	u6460

u6461:
	goto	l5601
u6460:
	line	349
	
l5599:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	line	350
	goto	l5605
	
l236:; BSR set to: 0

	
l5601:; BSR set to: 0

	movlb	0	; () banked
		incf	((_ma))&0ffh,w
	bnz	u6471
	movlb	0	; () banked
	incf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6471
	goto	u6470

u6471:
	goto	l5605
u6470:
	line	351
	
l5603:; BSR set to: 0

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
	goto	u6480
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6481
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6481
	goto	u6480

u6481:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6498
u6480:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6498:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5605
	line	352
	
l238:; BSR set to: 0

	goto	l5605
	line	353
	
l237:; BSR set to: 0

	goto	l5605
	
l235:; BSR set to: 0

	
l5605:; BSR set to: 0

	movlb	0	; () banked
	movf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6501
	goto	u6500

u6501:
	goto	l5609
u6500:
	line	354
	
l5607:; BSR set to: 0

	bcf	((c:3969)),c,0	;volatile
	line	355
	goto	l5617
	
l239:; BSR set to: 0

	
l5609:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6511
	goto	u6510

u6511:
	goto	l5613
u6510:
	line	356
	
l5611:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	357
	goto	l5617
	
l241:; BSR set to: 0

	
l5613:; BSR set to: 0

	movlb	0	; () banked
		incf	((_mb))&0ffh,w
	bnz	u6521
	movlb	0	; () banked
	incf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6521
	goto	u6520

u6521:
	goto	l5617
u6520:
	line	358
	
l5615:; BSR set to: 0

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
	goto	u6530
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6531
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6531
	goto	u6530

u6531:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6548
u6530:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6548:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5617
	line	359
	
l243:; BSR set to: 0

	goto	l5617
	line	361
	
l242:; BSR set to: 0

	goto	l5617
	
l240:; BSR set to: 0

	
l5617:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6551
	goto	u6550

u6551:
	goto	l5623
u6550:
	line	362
	
l5619:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	363
	
l5621:; BSR set to: 0

		movlw	low(STR_2)
	movwf	((c:printf@f)),c
	movlw	high(STR_2)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	goto	l5623
	line	364
	
l244:
	line	366
	
l5623:
	btfsc	((c:3971)),c,6	;volatile
	goto	u6561
	goto	u6560
u6561:
	goto	l245
u6560:
	
l5625:
	movlb	0	; () banked
	movf	((_fa))&0ffh,w
	movlb	0	; () banked
iorwf	((_fa+1))&0ffh,w
	btfss	status,2
	goto	u6571
	goto	u6570

u6571:
	goto	l245
u6570:
	line	367
	
l5627:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(01h)
	movwf	((_fa))&0ffh
	line	368
	
l5629:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfsc	status,2
	goto	u6581
	goto	u6580

u6581:
	goto	l247
u6580:
	
l5631:; BSR set to: 0

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
	goto	l245
	
l247:; BSR set to: 0

	movlb	0	; () banked
	setf	((_ma))&0ffh
	setf	((_ma+1))&0ffh
	goto	l245
	
l249:; BSR set to: 0

	line	369
	
l245:
	line	370
	btfsc	((c:3971)),c,4	;volatile
	goto	u6591
	goto	u6590
u6591:
	goto	l250
u6590:
	
l5633:
	movlb	0	; () banked
	movf	((_fb))&0ffh,w
	movlb	0	; () banked
iorwf	((_fb+1))&0ffh,w
	btfss	status,2
	goto	u6601
	goto	u6600

u6601:
	goto	l250
u6600:
	line	371
	
l5635:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(01h)
	movwf	((_fb))&0ffh
	line	372
	
l5637:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfsc	status,2
	goto	u6611
	goto	u6610

u6611:
	goto	l252
u6610:
	
l5639:; BSR set to: 0

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
	goto	l250
	
l252:; BSR set to: 0

	movlb	0	; () banked
	setf	((_mb))&0ffh
	setf	((_mb+1))&0ffh
	goto	l250
	
l254:; BSR set to: 0

	line	373
	
l250:
	line	374
	btfss	((c:3971)),c,6	;volatile
	goto	u6621
	goto	u6620
u6621:
	goto	l5643
u6620:
	
l5641:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	goto	l5643
	
l255:; BSR set to: 0

	line	375
	
l5643:
	btfss	((c:3971)),c,4	;volatile
	goto	u6631
	goto	u6630
u6631:
	goto	l5647
u6630:
	
l5645:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	goto	l5647
	
l256:; BSR set to: 0

	line	377
	
l5647:
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
	line	378
	goto	l6227
	line	379
	
l258:
	line	380
	
l5649:
	call	_EnhancedRead	;wreg free
	line	381
	
l5651:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6641
	goto	u6640

u6641:
	goto	l5683
u6640:
	line	382
	
l5653:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	383
	
l5655:; BSR set to: 0

		movlw	low(STR_3)
	movwf	((c:printf@f)),c
	movlw	high(STR_3)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	384
	
l5657:
		movlw	low(STR_4)
	movwf	((c:printf@f)),c
	movlw	high(STR_4)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	385
	movlw	low(01h)
	movwf	((c:_MF)),c
	
l5659:
		movlw	low(main@old)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	386
	
l5661:
	movlb	3	; () banked
	movf	((main@old))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u6651
	goto	u6650
u6651:
	goto	l5665
u6650:
	line	387
	
l5663:; BSR set to: 3

		movlw	low(STR_5)
	movwf	((c:printf@f)),c
	movlw	high(STR_5)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	388
	goto	l5671
	
l260:
	line	389
	
l5665:
	call	_Load	;wreg free
	line	390
	
l5667:
		movlw	low(STR_6)
	movwf	((c:printf@f)),c
	movlw	high(STR_6)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	391
	
l5669:
	call	_ShowMem	;wreg free
	goto	l5671
	line	392
	
l261:
	line	393
	
l5671:
	movlw	low(0)
	movwf	((c:_MF)),c
	
l5673:
		movlw	low(main@old)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	394
	movlb	3	; () banked
	movf	((main@old))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u6661
	goto	u6660
u6661:
	goto	l5677
u6660:
	line	395
	
l5675:; BSR set to: 3

		movlw	low(STR_7)
	movwf	((c:printf@f)),c
	movlw	high(STR_7)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	396
	goto	l5683
	
l262:
	line	397
	
l5677:
	call	_Load	;wreg free
	line	398
	
l5679:
		movlw	low(STR_8)
	movwf	((c:printf@f)),c
	movlw	high(STR_8)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	399
	
l5681:
	call	_ShowMem	;wreg free
	goto	l5683
	line	400
	
l263:
	goto	l5683
	line	401
	
l259:
	line	402
	
l5683:
	bcf	((c:3969)),c,0	;volatile
	line	403
	
l5685:
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
	goto	u6670
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6671
	movlw	233
	subwf	 (0+?___almod),c,w
	movlw	3
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6671
	goto	u6670

u6671:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6688
u6670:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6688:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	404
	
l5687:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	405
	
l5689:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u6691
	goto	u6690
u6691:
	goto	l5699
u6690:
	line	406
	
l5691:; BSR set to: 0

		movlw	low(STR_9)
	movwf	((c:printf@f)),c
	movlw	high(STR_9)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	407
	
l5693:
	movlw	high(09h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(09h)
	movwf	((_status))&0ffh
	line	408
	
l5695:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	409
	
l5697:; BSR set to: 0

	call	_initLED	;wreg free
	goto	l5699
	line	410
	
l264:
	line	416
	
l5699:
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l5701:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6701
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6700
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6701
	goto	u6700

u6701:
	goto	l5705
u6700:
	goto	l6227
	
l5703:; BSR set to: 3

	goto	l6227
	
l265:; BSR set to: 3

	line	417
	
l5705:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i)
	movff	postdec2,(main@i+1)
	line	418
	
l5707:; BSR set to: 3

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
	movff	0+?___wmul,(_main$2346)
	movff	1+?___wmul,(_main$2346+1)
	
l5709:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2347)
	movff	1+?___wmul,(_main$2347+1)
	
l5711:
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
	movff	0+?___wmul,(_main$2348)
	movff	1+?___wmul,(_main$2348+1)
	
l5713:
	movff	(_main$2346),(c:___wmul@multiplier)
	movff	(_main$2346+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2349))&0ffh
	clrf	((_main$2349+1))&0ffh
	
l5715:; BSR set to: 3

	movff	(_main$2347),(c:___wmul@multiplier)
	movff	(_main$2347+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2350))&0ffh
	clrf	((_main$2350+1))&0ffh
	
l5717:; BSR set to: 3

	movff	(_main$2348),(c:___wmul@multiplier)
	movff	(_main$2348+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2351))&0ffh
	clrf	((_main$2351+1))&0ffh
	
l5719:; BSR set to: 3

		movlw	low(STR_10)
	movwf	((c:printf@f)),c
	movlw	high(STR_10)
	movwf	((c:printf@f+1)),c

	movff	(main@i),0+((c:?_printf)+02h)
	movff	(main@i+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	movff	(_main$2349),0+((c:?_printf)+06h)
	movff	(_main$2349+1),1+((c:?_printf)+06h)
	movff	(_main$2350),0+((c:?_printf)+08h)
	movff	(_main$2350+1),1+((c:?_printf)+08h)
	movff	(_main$2351),0+((c:?_printf)+0Ah)
	movff	(_main$2351+1),1+((c:?_printf)+0Ah)
	call	_printf	;wreg free
	line	416
	
l5721:
	movlb	3	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l5723:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6711
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6710
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6711
	goto	u6710

u6711:
	goto	l5705
u6710:
	goto	l6227
	
l266:; BSR set to: 3

	line	421
	goto	l6227
	line	422
	
l267:; BSR set to: 0

	line	423
	bsf	((c:3969)),c,5	;volatile
	line	424
	bcf	((c:3968)),c,4	;volatile
	line	425
	bcf	((c:3969)),c,0	;volatile
	line	426
	
l5725:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6721
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6720
	movlw	209
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	7
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6721
	goto	u6720

u6721:
	goto	l6227
u6720:
	
l5727:; BSR set to: 0

	movlw	high(07h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	goto	l6227
	
l268:; BSR set to: 0

	line	427
	goto	l6227
	line	428
	
l269:; BSR set to: 0

	line	429
	
l5729:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	435
	
l5731:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6731
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6730
	movlw	233
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6731
	goto	u6730

u6731:
	goto	l5759
u6730:
	line	436
	
l5733:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	437
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l5735:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6741
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6740
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6741
	goto	u6740

u6741:
	goto	l5739
u6740:
	goto	l5759
	
l5737:; BSR set to: 3

	goto	l5759
	
l271:; BSR set to: 3

	line	438
	
l5739:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i)
	movff	postdec2,(main@i+1)
	line	439
	
l5741:; BSR set to: 3

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
	movff	0+?___wmul,(_main$2346)
	movff	1+?___wmul,(_main$2346+1)
	
l5743:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2347)
	movff	1+?___wmul,(_main$2347+1)
	
l5745:
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
	movff	0+?___wmul,(_main$2348)
	movff	1+?___wmul,(_main$2348+1)
	
l5747:
	movff	(_main$2346),(c:___wmul@multiplier)
	movff	(_main$2346+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2349))&0ffh
	clrf	((_main$2349+1))&0ffh
	
l5749:; BSR set to: 3

	movff	(_main$2347),(c:___wmul@multiplier)
	movff	(_main$2347+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2350))&0ffh
	clrf	((_main$2350+1))&0ffh
	
l5751:; BSR set to: 3

	movff	(_main$2348),(c:___wmul@multiplier)
	movff	(_main$2348+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2351))&0ffh
	clrf	((_main$2351+1))&0ffh
	
l5753:; BSR set to: 3

		movlw	low(STR_11)
	movwf	((c:printf@f)),c
	movlw	high(STR_11)
	movwf	((c:printf@f+1)),c

	movff	(main@i),0+((c:?_printf)+02h)
	movff	(main@i+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	movff	(_main$2349),0+((c:?_printf)+06h)
	movff	(_main$2349+1),1+((c:?_printf)+06h)
	movff	(_main$2350),0+((c:?_printf)+08h)
	movff	(_main$2350+1),1+((c:?_printf)+08h)
	movff	(_main$2351),0+((c:?_printf)+0Ah)
	movff	(_main$2351+1),1+((c:?_printf)+0Ah)
	call	_printf	;wreg free
	line	437
	
l5755:
	movlb	3	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l5757:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6751
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6750
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6751
	goto	u6750

u6751:
	goto	l5739
u6750:
	goto	l5759
	
l272:; BSR set to: 3

	goto	l5759
	line	441
	
l270:; BSR set to: 3

	line	444
	
l5759:
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	
l5761:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u6761
	movlb	3	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u6760
	movlw	11
	movlb	3	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u6761
	goto	u6760

u6761:
	goto	l273
u6760:
	goto	l5777
	
l5763:; BSR set to: 3

	goto	l5777
	
l273:; BSR set to: 3

	line	447
	movff	(main@i),(main@j)
	movff	(main@i+1),(main@j+1)
	line	448
	
l5765:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	3	; () banked
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
	goto	u6771
	goto	u6770

u6771:
	goto	l5769
u6770:
	line	449
	
l5767:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_amax)
	addwf	fsr1l
	movlw	high(_amax)
	addwfc	fsr1h
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	goto	l5769
	line	450
	
l275:; BSR set to: 3

	line	451
	
l5769:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	3	; () banked
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
	goto	u6781
	goto	u6780

u6781:
	goto	l5773
u6780:
	line	452
	
l5771:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr1l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_amin)
	addwf	fsr1l
	movlw	high(_amin)
	addwfc	fsr1h
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	goto	l5773
	line	453
	
l276:; BSR set to: 3

	line	444
	
l5773:; BSR set to: 3

	movlb	3	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l5775:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u6791
	movlb	3	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u6790
	movlw	11
	movlb	3	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u6791
	goto	u6790

u6791:
	goto	l273
u6790:
	goto	l5777
	
l274:; BSR set to: 3

	line	456
	
l5777:; BSR set to: 3

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
	goto	u6800
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6801
	movlw	201
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u6801
	goto	u6800

u6801:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6818
u6800:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6818:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	457
	
l5779:; BSR set to: 0

	movlw	low(0)
	movlb	3	; () banked
	movwf	((_main$400))&0ffh
	
l5781:; BSR set to: 3

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
	goto	u6821
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6820
	movlw	101
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u6821
	goto	u6820

u6821:
	goto	l5787
u6820:
	
l5783:
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
	goto	u6830
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6831
	movlw	200
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u6831
	goto	u6830

u6831:
	goto	l5787
u6830:
	
l5785:
	movlw	low(01h)
	movlb	3	; () banked
	movwf	((_main$400))&0ffh
	goto	l5787
	
l278:; BSR set to: 3

	
l5787:
	movlb	3	; () banked
	btfsc	(_main$400)&0ffh,0
	bra	u6845
	bcf	((c:3969)),c,5	;volatile
	bra	u6846
	u6845:
	bsf	((c:3969)),c,5	;volatile
	u6846:

	line	458
	
l5789:
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
	goto	u6851
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6850
	movlw	100
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u6851
	goto	u6850

u6851:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6868
u6850:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6868:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	460
	
l5791:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u6871
	goto	u6870
u6871:
	goto	l5799
u6870:
	line	461
	
l5793:; BSR set to: 0

		movlw	low(STR_12)
	movwf	((c:printf@f)),c
	movlw	high(STR_12)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	462
	
l5795:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	463
	
l5797:; BSR set to: 0

	movlw	high(06h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(06h)
	movwf	((_status))&0ffh
	goto	l5799
	line	464
	
l279:; BSR set to: 0

	line	465
	
l5799:; BSR set to: 0

	btfsc	((c:3971)),c,4	;volatile
	goto	u6881
	goto	u6880
u6881:
	goto	l6227
u6880:
	line	466
	
l5801:; BSR set to: 0

		movlw	low(STR_13)
	movwf	((c:printf@f)),c
	movlw	high(STR_13)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	467
	
l5803:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	468
	
l5805:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	469
	
l5807:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(01h)
	movwf	((_status))&0ffh
	line	471
	
l5809:; BSR set to: 0

	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@i_403+1))&0ffh
	movlw	low(0)
	movwf	((main@i_403))&0ffh
	
l5811:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i_403+1))&0ffh,7
	goto	u6891
	movlb	3	; () banked
	movf	((main@i_403+1))&0ffh,w
	bnz	u6890
	movlw	5
	movlb	3	; () banked
	subwf	 ((main@i_403))&0ffh,w
	btfss	status,0
	goto	u6891
	goto	u6890

u6891:
	goto	l5815
u6890:
	goto	l6227
	
l5813:; BSR set to: 3

	goto	l6227
	
l281:; BSR set to: 3

	line	472
	
l5815:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i_403))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i_403+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(main@j_404)
	movff	postdec2,(main@j_404+1)
	line	473
	
l5817:; BSR set to: 3

		movlw	low(STR_14)
	movwf	((c:printf@f)),c
	movlw	high(STR_14)
	movwf	((c:printf@f+1)),c

	movff	(main@j_404),0+((c:?_printf)+02h)
	movff	(main@j_404+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_404))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_404+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_404))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_404+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+06h)
	movff	postdec2,1+((c:?_printf)+06h)
	call	_printf	;wreg free
	line	471
	
l5819:
	movlb	3	; () banked
	infsnz	((main@i_403))&0ffh
	incf	((main@i_403+1))&0ffh
	
l5821:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i_403+1))&0ffh,7
	goto	u6901
	movlb	3	; () banked
	movf	((main@i_403+1))&0ffh,w
	bnz	u6900
	movlw	5
	movlb	3	; () banked
	subwf	 ((main@i_403))&0ffh,w
	btfss	status,0
	goto	u6901
	goto	u6900

u6901:
	goto	l5815
u6900:
	goto	l6227
	
l282:; BSR set to: 3

	goto	l6227
	line	475
	
l280:; BSR set to: 3

	line	476
	goto	l6227
	line	477
	
l283:; BSR set to: 0

	line	478
	bsf	((c:3969)),c,0	;volatile
	line	479
	bcf	((c:3968)),c,4	;volatile
	line	480
	bcf	((c:3969)),c,5	;volatile
	line	481
	btfss	((c:3971)),c,4	;volatile
	goto	u6911
	goto	u6910
u6911:
	goto	l6227
u6910:
	line	482
	
l5823:; BSR set to: 0

	movlw	high(08h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6227
	line	483
	
l284:; BSR set to: 0

	line	484
	goto	l6227
	line	485
	
l285:; BSR set to: 0

	line	486
	
l5825:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6921
	goto	u6920

u6921:
	goto	l5829
u6920:
	line	487
	
l5827:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(01h)
	movwf	((_rf))&0ffh
	line	488
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(01h)
	movwf	((_gf))&0ffh
	line	489
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	goto	l5829
	line	490
	
l286:; BSR set to: 0

	line	491
	
l5829:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	492
	movlw	low(01h)
	movlb	3	; () banked
	movwf	((_main$406))&0ffh
	
l5831:; BSR set to: 3

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
	goto	u6931
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u6931
	goto	u6930

u6931:
	goto	l5839
u6930:
	
l5833:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u6940
	movf	((c:_line+1)),c,w
	bnz	u6941
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u6941
	goto	u6940

u6941:
	goto	l4631
u6940:
	
l5835:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$400)
	movff	??_main+0+1,(_main$400+1)
	goto	l5837
	
l4631:; BSR set to: 0

	movff	(c:_line),(_main$400)
	movff	(c:_line+1),(_main$400+1)
	goto	l5837
	
l4633:; BSR set to: 0

	
l5837:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$400+1))&0ffh,7
	goto	u6951
	movlb	3	; () banked
	movf	((_main$400+1))&0ffh,w
	bnz	u6950
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$400))&0ffh,w
	btfss	status,0
	goto	u6951
	goto	u6950

u6951:
	goto	l5849
u6950:
	goto	l5839
	
l4629:; BSR set to: 3

	
l5839:
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
	goto	u6961
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u6961
	goto	u6960

u6961:
	goto	l5847
u6960:
	
l5841:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u6970
	movf	((c:_line+1)),c,w
	bnz	u6971
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u6971
	goto	u6970

u6971:
	goto	l4637
u6970:
	
l5843:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$406)
	movff	??_main+0+1,(_main$406+1)
	goto	l5845
	
l4637:; BSR set to: 0

	movff	(c:_line),(_main$406)
	movff	(c:_line+1),(_main$406+1)
	goto	l5845
	
l4639:; BSR set to: 0

	
l5845:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$406+1))&0ffh,7
	goto	u6981
	movlb	3	; () banked
	movf	((_main$406+1))&0ffh,w
	bnz	u6980
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$406))&0ffh,w
	btfss	status,0
	goto	u6981
	goto	u6980

u6981:
	goto	l5849
u6980:
	goto	l5847
	
l4635:; BSR set to: 3

	
l5847:
	movlw	low(0)
	movlb	3	; () banked
	movwf	((_main$406))&0ffh
	goto	l5849
	
l288:; BSR set to: 3

	
l5849:; BSR set to: 3

	movlb	3	; () banked
	btfsc	(_main$406)&0ffh,0
	bra	u6995
	bcf	((c:3968)),c,4	;volatile
	bra	u6996
	u6995:
	bsf	((c:3968)),c,4	;volatile
	u6996:

	line	493
	
l5851:
	bcf	((c:3969)),c,5	;volatile
	line	496
	
l5853:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	498
	
l5855:
	call	_EnhancedRead	;wreg free
	line	499
	
l5857:
	call	_Line	;wreg free
	line	500
	
l5859:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7001
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7000
	movlw	245
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	1
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7001
	goto	u7000

u7001:
	goto	l5889
u7000:
	line	501
	
l5861:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	507
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@j_409+1))&0ffh
	movlw	low(0)
	movwf	((main@j_409))&0ffh
	
l5863:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j_409+1))&0ffh,7
	goto	u7011
	movlb	3	; () banked
	movf	((main@j_409+1))&0ffh,w
	bnz	u7010
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j_409))&0ffh,w
	btfss	status,0
	goto	u7011
	goto	u7010

u7011:
	goto	l5867
u7010:
	goto	l5887
	
l5865:; BSR set to: 3

	goto	l5887
	
l290:; BSR set to: 3

	line	508
	
l5867:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_409))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_409+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i_408)
	movff	postdec2,(main@i_408+1)
	line	509
	
l5869:; BSR set to: 3

	movff	(main@i_408),(c:___wmul@multiplier)
	movff	(main@i_408+1),(c:___wmul@multiplier+1)
	movff	(main@i_408),(c:___wmul@multiplicand)
	movff	(main@i_408+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2346)
	movff	1+?___wmul,(_main$2346+1)
	
l5871:
	movff	(main@i_408),(c:___wmul@multiplier)
	movff	(main@i_408+1),(c:___wmul@multiplier+1)
	movff	(main@i_408),(c:___wmul@multiplicand)
	movff	(main@i_408+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2347)
	movff	1+?___wmul,(_main$2347+1)
	
l5873:
	movff	(main@i_408),(c:___wmul@multiplier)
	movff	(main@i_408+1),(c:___wmul@multiplier+1)
	movff	(main@i_408),(c:___wmul@multiplicand)
	movff	(main@i_408+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2348)
	movff	1+?___wmul,(_main$2348+1)
	
l5875:
	movff	(_main$2346),(c:___wmul@multiplier)
	movff	(_main$2346+1),(c:___wmul@multiplier+1)
	movlw	high(0384h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0384h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2349))&0ffh
	clrf	((_main$2349+1))&0ffh
	
l5877:; BSR set to: 3

	movff	(_main$2347),(c:___wmul@multiplier)
	movff	(_main$2347+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2350))&0ffh
	clrf	((_main$2350+1))&0ffh
	
l5879:; BSR set to: 3

	movff	(_main$2348),(c:___wmul@multiplier)
	movff	(_main$2348+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2351))&0ffh
	clrf	((_main$2351+1))&0ffh
	
l5881:; BSR set to: 3

		movlw	low(STR_15)
	movwf	((c:printf@f)),c
	movlw	high(STR_15)
	movwf	((c:printf@f+1)),c

	movff	(main@i_408),0+((c:?_printf)+02h)
	movff	(main@i_408+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i_408))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i_408+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	movff	(_main$2349),0+((c:?_printf)+06h)
	movff	(_main$2349+1),1+((c:?_printf)+06h)
	movff	(_main$2350),0+((c:?_printf)+08h)
	movff	(_main$2350+1),1+((c:?_printf)+08h)
	movff	(_main$2351),0+((c:?_printf)+0Ah)
	movff	(_main$2351+1),1+((c:?_printf)+0Ah)
	call	_printf	;wreg free
	line	507
	
l5883:
	movlb	3	; () banked
	infsnz	((main@j_409))&0ffh
	incf	((main@j_409+1))&0ffh
	
l5885:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j_409+1))&0ffh,7
	goto	u7021
	movlb	3	; () banked
	movf	((main@j_409+1))&0ffh,w
	bnz	u7020
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j_409))&0ffh,w
	btfss	status,0
	goto	u7021
	goto	u7020

u7021:
	goto	l5867
u7020:
	goto	l5887
	
l291:; BSR set to: 3

	line	511
	
l5887:; BSR set to: 3

		movlw	low(STR_16)
	movwf	((c:printf@f)),c
	movlw	high(STR_16)
	movwf	((c:printf@f+1)),c

	movff	(c:_line),0+((c:?_printf)+02h)
	movff	(c:_line+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	goto	l5889
	line	512
	
l289:
	line	513
	
l5889:
	btfsc	((c:3971)),c,5	;volatile
	goto	u7031
	goto	u7030
u7031:
	goto	l5893
u7030:
	line	514
	
l5891:
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(0Ah)
	movwf	((_status))&0ffh
	goto	l5893
	line	515
	
l292:; BSR set to: 0

	line	516
	
l5893:
	btfsc	((c:3971)),c,6	;volatile
	goto	u7041
	goto	u7040
u7041:
	goto	l5917
u7040:
	line	517
	
l5895:
	movlw	low(0)
	movwf	((c:_MF)),c
	line	518
	
l5897:
		movlw	low(main@old_412)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_412)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	519
	
l5899:
	movlb	3	; () banked
	movf	((main@old_412))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u7051
	goto	u7050
u7051:
	goto	l5905
u7050:
	line	520
	
l5901:; BSR set to: 3

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_RWM))&0ffh
	line	521
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	522
	movlw	high(04h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	523
	
l5903:; BSR set to: 0

		movlw	low(STR_17)
	movwf	((c:printf@f)),c
	movlw	high(STR_17)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	524
	goto	l5917
	
l294:
	line	525
	
l5905:
		movlw	low(STR_18)
	movwf	((c:printf@f)),c
	movlw	high(STR_18)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	526
	
l5907:
	movlw	low(0)
	movwf	((c:_MF)),c
	
l5909:
		movlw	low(main@old_415)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_415)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	527
	
l5911:
	call	_Load	;wreg free
	line	528
	
l5913:
		movlw	low(STR_19)
	movwf	((c:printf@f)),c
	movlw	high(STR_19)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	529
	
l5915:
	call	_ShowMem	;wreg free
	goto	l5917
	line	530
	
l295:
	goto	l5917
	line	532
	
l293:
	line	533
	
l5917:
	btfsc	((c:3971)),c,4	;volatile
	goto	u7061
	goto	u7060
u7061:
	goto	l6227
u7060:
	line	534
	
l5919:
	movlw	low(01h)
	movwf	((c:_MF)),c
	line	535
	
l5921:
		movlw	low(main@old_417)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_417)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	536
	
l5923:
	movlb	3	; () banked
	movf	((main@old_417))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u7071
	goto	u7070
u7071:
	goto	l5929
u7070:
	line	537
	
l5925:; BSR set to: 3

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_RWM))&0ffh
	line	538
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	539
	movlw	high(04h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	540
	
l5927:; BSR set to: 0

		movlw	low(STR_20)
	movwf	((c:printf@f)),c
	movlw	high(STR_20)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	541
	goto	l6227
	
l297:
	line	542
	
l5929:
		movlw	low(STR_21)
	movwf	((c:printf@f)),c
	movlw	high(STR_21)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	543
	
l5931:
	movlw	low(01h)
	movwf	((c:_MF)),c
	
l5933:
		movlw	low(main@old_420)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_420)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	544
	
l5935:
	call	_Load	;wreg free
	line	545
	
l5937:
		movlw	low(STR_22)
	movwf	((c:printf@f)),c
	movlw	high(STR_22)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	546
	
l5939:
	call	_ShowMem	;wreg free
	goto	l6227
	line	547
	
l298:
	goto	l6227
	line	549
	
l296:
	line	562
	goto	l6227
	line	563
	
l299:; BSR set to: 0

	line	564
	bsf	((c:3969)),c,0	;volatile
	line	565
	bsf	((c:3968)),c,4	;volatile
	line	566
	bsf	((c:3969)),c,5	;volatile
	line	567
	btfss	((c:3971)),c,5	;volatile
	goto	u7081
	goto	u7080
u7081:
	goto	l5945
u7080:
	line	568
	
l5941:; BSR set to: 0

	movlw	high(02h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(02h)
	movwf	((_status))&0ffh
	line	569
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	570
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	571
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME2))&0ffh
	movlw	high(0)
	movwf	((_TIME2+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME2+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME2+3))&0ffh
	line	572
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	573
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	574
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME5))&0ffh
	movlw	high(0)
	movwf	((_TIME5+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME5+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME5+3))&0ffh
	line	575
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	576
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	line	578
	
l5943:; BSR set to: 0

		movlw	low(STR_23)
	movwf	((c:printf@f)),c
	movlw	high(STR_23)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	goto	l5945
	line	579
	
l300:
	line	580
	
l5945:
	btfsc	((c:3971)),c,4	;volatile
	goto	u7091
	goto	u7090
u7091:
	goto	l6227
u7090:
	line	581
	
l5947:
	call	_EreaseAll	;wreg free
	line	582
	
l5949:
		movlw	low(STR_24)
	movwf	((c:printf@f)),c
	movlw	high(STR_24)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	583
	
l5951:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(01h)
	movwf	((_status))&0ffh
	goto	l6227
	line	584
	
l301:; BSR set to: 0

	line	585
	goto	l6227
	line	586
	
l302:; BSR set to: 0

	line	587
	bsf	((c:3969)),c,0	;volatile
	line	588
	bcf	((c:3968)),c,4	;volatile
	line	589
	bcf	((c:3969)),c,5	;volatile
	line	590
	
l5953:; BSR set to: 0

	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	591
	
l5955:
	btfsc	((c:3971)),c,5	;volatile
	goto	u7101
	goto	u7100
u7101:
	goto	l5965
u7100:
	line	592
	
l5957:
		movlw	low(STR_25)
	movwf	((c:printf@f)),c
	movlw	high(STR_25)
	movwf	((c:printf@f+1)),c

	movff	(_rcount),0+((c:?_printf)+02h)
	movff	(_rcount+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	line	593
	
l5959:
	movlw	high(05h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(05h)
	movwf	((_status))&0ffh
	line	594
	
l5961:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	595
	
l5963:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	goto	l5965
	line	596
	
l303:; BSR set to: 0

	line	597
	
l5965:
	btfsc	((c:3971)),c,6	;volatile
	goto	u7111
	goto	u7110
u7111:
	goto	l6227
u7110:
	
l5967:
	movlb	0	; () banked
	btfsc	((_rcount+1))&0ffh,7
	goto	u7121
	movlb	0	; () banked
	movf	((_rcount+1))&0ffh,w
	bnz	u7120
	movlb	0	; () banked
	decf	((_rcount))&0ffh,w
	btfss	status,0
	goto	u7121
	goto	u7120

u7121:
	goto	l6227
u7120:
	line	598
	
l5969:; BSR set to: 0

		movlw	low(STR_26)
	movwf	((c:printf@f)),c
	movlw	high(STR_26)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	599
	
l5971:
	movff	(_rcount),(c:_TOTAL)
	movff	(_rcount+1),(c:_TOTAL+1)
	line	600
	call	_Save	;wreg free
	line	601
	
l5973:
	movlw	high(03h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(03h)
	movwf	((_status))&0ffh
	goto	l6227
	line	602
	
l304:; BSR set to: 0

	line	603
	goto	l6227
	line	604
	
l305:; BSR set to: 0

	line	605
	bsf	((c:3969)),c,0	;volatile
	line	606
	bsf	((c:3968)),c,4	;volatile
	line	607
	bsf	((c:3969)),c,5	;volatile
	line	608
	btfss	((c:3971)),c,6	;volatile
	goto	u7131
	goto	u7130
u7131:
	goto	l6227
u7130:
	line	609
	
l5975:; BSR set to: 0

	movlw	high(08h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6227
	line	610
	
l306:; BSR set to: 0

	line	611
	goto	l6227
	line	612
	
l307:; BSR set to: 0

	line	613
	bsf	((c:3969)),c,5	;volatile
	line	614
	bsf	((c:3968)),c,4	;volatile
	line	615
	bsf	((c:3969)),c,0	;volatile
	line	617
	
l5977:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7141
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7140
	movlw	6
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7141
	goto	u7140

u7141:
	goto	l6227
u7140:
	line	618
	
l5979:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	619
	
l5981:
	call	_Line	;wreg free
	line	620
	
l5983:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	621
	
l5985:; BSR set to: 0

	call	_AdvanceLow	;wreg free
	line	623
	
l5987:
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
	goto	u7151
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7151
	goto	u7150

u7151:
	goto	l5995
u7150:
	
l5989:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7160
	movf	((c:_line+1)),c,w
	bnz	u7161
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7161
	goto	u7160

u7161:
	goto	l315
u7160:
	
l5991:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$429)
	movff	??_main+0+1,(_main$429+1)
	goto	l5993
	
l315:; BSR set to: 0

	movff	(c:_line),(_main$429)
	movff	(c:_line+1),(_main$429+1)
	goto	l5993
	
l317:; BSR set to: 0

	
l5993:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$429+1))&0ffh,7
	goto	u7171
	movlb	3	; () banked
	movf	((_main$429+1))&0ffh,w
	bnz	u7170
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$429))&0ffh,w
	btfss	status,0
	goto	u7171
	goto	u7170

u7171:
	goto	l6003
u7170:
	goto	l5995
	
l313:; BSR set to: 3

	
l5995:
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
	goto	u7181
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7181
	goto	u7180

u7181:
	goto	l6227
u7180:
	
l5997:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7190
	movf	((c:_line+1)),c,w
	bnz	u7191
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7191
	goto	u7190

u7191:
	goto	l319
u7190:
	
l5999:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$430)
	movff	??_main+0+1,(_main$430+1)
	goto	l6001
	
l319:; BSR set to: 0

	movff	(c:_line),(_main$430)
	movff	(c:_line+1),(_main$430+1)
	goto	l6001
	
l321:; BSR set to: 0

	
l6001:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$430+1))&0ffh,7
	goto	u7200
	movlb	3	; () banked
	movf	((_main$430+1))&0ffh,w
	bnz	u7201
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$430))&0ffh,w
	btfsc	status,0
	goto	u7201
	goto	u7200

u7201:
	goto	l6227
u7200:
	goto	l6003
	
l311:; BSR set to: 3

	line	624
	
l6003:; BSR set to: 3

	movlw	high(04h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	625
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	626
	
l6005:; BSR set to: 0

	movlw	low(028h)
	movwf	((c:___aldiv@divisor)),c
	movlw	high(028h)
	movwf	((c:___aldiv@divisor+1)),c
	movlw	low highword(028h)
	movwf	((c:___aldiv@divisor+2)),c
	movlw	high highword(028h)
	movwf	((c:___aldiv@divisor+3)),c
	movff	(_TIME4),(c:___aldiv@dividend)
	movff	(_TIME4+1),(c:___aldiv@dividend+1)
	movff	(_TIME4+2),(c:___aldiv@dividend+2)
	movff	(_TIME4+3),(c:___aldiv@dividend+3)
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(_main$2352)
	movff	1+?___aldiv,(_main$2352+1)
	movff	2+?___aldiv,(_main$2352+2)
	movff	3+?___aldiv,(_main$2352+3)
	
	
l6007:
	movff	(_main$2352),(c:___aldiv@dividend)
	movff	(_main$2352+1),(c:___aldiv@dividend+1)
	movff	(_main$2352+2),(c:___aldiv@dividend+2)
	movff	(_main$2352+3),(c:___aldiv@dividend+3)
	movlw	low(06h)
	movwf	((c:___aldiv@divisor)),c
	movlw	high(06h)
	movwf	((c:___aldiv@divisor+1)),c
	movlw	low highword(06h)
	movwf	((c:___aldiv@divisor+2)),c
	movlw	high highword(06h)
	movwf	((c:___aldiv@divisor+3)),c
	call	___aldiv	;wreg free
	bcf	status,0
	movlb	0	; () banked
	rlcf	((_rcount))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((_rcount+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_LEN)
	addwf	fsr2l
	movlw	high(_LEN)
	addwfc	fsr2h
	movff	0+?___aldiv,postinc2
	movff	1+?___aldiv,postdec2

	line	627
	
l6009:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	goto	l6227
	line	629
	
l309:; BSR set to: 0

	goto	l6227
	line	630
	
l308:; BSR set to: 0

	line	631
	goto	l6227
	line	632
	
l322:; BSR set to: 0

	line	633
	
l6011:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u7211
	goto	u7210

u7211:
	goto	l6019
u7210:
	line	634
	
l6013:; BSR set to: 0

	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2353)
	movff	1+?___wmul,(_main$2353+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2354)
	movff	1+?___wmul,(_main$2354+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2355)
	movff	1+?___wmul,(_main$2355+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2356)
	movff	1+?___wmul,(_main$2356+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2357)
	movff	1+?___wmul,(_main$2357+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2358)
	movff	1+?___wmul,(_main$2358+1)
	
l6015:
		movlw	low(STR_27)
	movwf	((c:printf@f)),c
	movlw	high(STR_27)
	movwf	((c:printf@f+1)),c

	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,0+((c:?_printf)+02h)
	movff	1+?___awdiv,1+((c:?_printf)+02h)
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	movff	(_main$2355),(c:___awdiv@dividend)
	movff	(_main$2355+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2354),(c:___awdiv@dividend)
	movff	(_main$2354+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh
	movff	(_main$2353),(c:___awdiv@dividend)
	movff	(_main$2353+1),(c:___awdiv@dividend+1)
	movlw	high(010h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(010h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movwf	(0+((c:?_printf)+06h)),c
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movwf	1+(0+((c:?_printf)+06h)),c
	movff	(_main$2358),(c:___awdiv@dividend)
	movff	(_main$2358+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+2+0
	movff	1+?___awdiv,??_main+2+0+1
	movff	(_main$2357),(c:___awdiv@dividend)
	movff	(_main$2357+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh
	movff	(_main$2356),(c:___awdiv@dividend)
	movff	(_main$2356+1),(c:___awdiv@dividend+1)
	movlw	high(010h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(010h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh
	movlw	low(028h)
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh,w
	movwf	(0+((c:?_printf)+08h)),c
	movlw	high(028h)
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh,w
	movwf	1+(0+((c:?_printf)+08h)),c
	call	_printf	;wreg free
	line	635
	
l6017:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	goto	l6019
	line	636
	
l323:; BSR set to: 0

	line	637
	
l6019:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u7221
	goto	u7220
u7221:
	goto	l6023
u7220:
	line	638
	
l6021:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	639
	movlw	high(08h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6023
	line	640
	
l324:; BSR set to: 0

	line	641
	
l6023:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME5+3))&0ffh,7
	goto	u7231
	movlb	0	; () banked
	movf	((_TIME5+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME5+2))&0ffh,w
	bnz	u7230
	movlw	145
	movlb	0	; () banked
	subwf	 ((_TIME5))&0ffh,w
	movlw	1
	movlb	0	; () banked
	subwfb	((_TIME5+1))&0ffh,w
	btfss	status,0
	goto	u7231
	goto	u7230

u7231:
	goto	l6055
u7230:
	line	642
	
l6025:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME5))&0ffh
	movlw	high(0)
	movwf	((_TIME5+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME5+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME5+3))&0ffh
	line	643
	
l6027:; BSR set to: 0

		movlw	low(STR_28)
	movwf	((c:printf@f)),c
	movlw	high(STR_28)
	movwf	((c:printf@f+1)),c

	movff	(c:_line),0+((c:?_printf)+02h)
	movff	(c:_line+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	line	644
	
l6029:
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l6031:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u7241
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u7240
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u7241
	goto	u7240

u7241:
	goto	l6035
u7240:
	goto	l6055
	
l6033:; BSR set to: 3

	goto	l6055
	
l326:; BSR set to: 3

	line	645
	
l6035:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i)
	movff	postdec2,(main@i+1)
	line	646
	
l6037:; BSR set to: 3

	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2346)
	movff	1+?___wmul,(_main$2346+1)
	
l6039:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2347)
	movff	1+?___wmul,(_main$2347+1)
	
l6041:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2348)
	movff	1+?___wmul,(_main$2348+1)
	
l6043:
	movff	(_main$2346),(c:___wmul@multiplier)
	movff	(_main$2346+1),(c:___wmul@multiplier+1)
	movlw	high(0384h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0384h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2349))&0ffh
	clrf	((_main$2349+1))&0ffh
	
l6045:; BSR set to: 3

	movff	(_main$2347),(c:___wmul@multiplier)
	movff	(_main$2347+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2350))&0ffh
	clrf	((_main$2350+1))&0ffh
	
l6047:; BSR set to: 3

	movff	(_main$2348),(c:___wmul@multiplier)
	movff	(_main$2348+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2351))&0ffh
	clrf	((_main$2351+1))&0ffh
	
l6049:; BSR set to: 3

		movlw	low(STR_29)
	movwf	((c:printf@f)),c
	movlw	high(STR_29)
	movwf	((c:printf@f+1)),c

	movff	(main@i),0+((c:?_printf)+02h)
	movff	(main@i+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	movff	(_main$2349),0+((c:?_printf)+06h)
	movff	(_main$2349+1),1+((c:?_printf)+06h)
	movff	(_main$2350),0+((c:?_printf)+08h)
	movff	(_main$2350+1),1+((c:?_printf)+08h)
	movff	(_main$2351),0+((c:?_printf)+0Ah)
	movff	(_main$2351+1),1+((c:?_printf)+0Ah)
	call	_printf	;wreg free
	line	644
	
l6051:
	movlb	3	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l6053:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u7251
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u7250
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u7251
	goto	u7250

u7251:
	goto	l6035
u7250:
	goto	l6055
	
l327:; BSR set to: 3

	goto	l6055
	line	648
	
l325:; BSR set to: 3

	line	649
	
l6055:
	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7261
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7260
	movlw	11
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7261
	goto	u7260

u7261:
	goto	l6227
u7260:
	line	650
	
l6057:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	651
	
l6059:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	652
	
l6061:
	call	_Line	;wreg free
	line	657
	
l6063:
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((_rcount))&0ffh,(0)&7
	goto	u7271
	goto	u7270
u7271:
	goto	l6067
u7270:
	line	658
	
l6065:; BSR set to: 0

	movlw	high(01h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(01h)
	movwf	((main@mod))&0ffh
	line	659
	goto	l6083
	
l329:; BSR set to: 3

	line	660
	
l6067:
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2353)
	movff	1+?___wmul,(_main$2353+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2354)
	movff	1+?___wmul,(_main$2354+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2355)
	movff	1+?___wmul,(_main$2355+1)
	
l6069:
	movff	(_main$2355),(c:___awdiv@dividend)
	movff	(_main$2355+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2354),(c:___awdiv@dividend)
	movff	(_main$2354+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh
	movff	(_main$2353),(c:___awdiv@dividend)
	movff	(_main$2353+1),(c:___awdiv@dividend+1)
	movlw	high(010h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(010h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_main+2+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(??_main+2+0)&0ffh
	
	movlb	0	; () banked
	clrf	2+(??_main+2+0)&0ffh
	movlb	0	; () banked
	btfsc	1+(??_main+2+0)&0ffh,7
	decf	2+(??_main+2+0)&0ffh
	
	movlb	0	; () banked
	movf	2+(??_main+2+0)&0ffh,w
	movlb	0	; () banked
	movwf	3+(??_main+2+0)&0ffh
	movff	(_TIME4),(c:___aldiv@dividend)
	movff	(_TIME4+1),(c:___aldiv@dividend+1)
	movff	(_TIME4+2),(c:___aldiv@dividend+2)
	movff	(_TIME4+3),(c:___aldiv@dividend+3)
	movlw	low(06h)
	movwf	((c:___aldiv@divisor)),c
	movlw	high(06h)
	movwf	((c:___aldiv@divisor+1)),c
	movlw	low highword(06h)
	movwf	((c:___aldiv@divisor+2)),c
	movlw	high highword(06h)
	movwf	((c:___aldiv@divisor+3)),c
	call	___aldiv	;wreg free
	movlb	0	; () banked
		movf	(??_main+2+0)&0ffh,w
	subwf	(0+?___aldiv),c,w
	movlb	0	; () banked
	movf	(??_main+2+1)&0ffh,w
	subwfb	(1+?___aldiv),c,w
	movlb	0	; () banked
	movf	(??_main+2+2)&0ffh,w
	subwfb	(2+?___aldiv),c,w
	movf	(3+?___aldiv),c,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+6+0)&0ffh
	movlb	0	; () banked
	movf	(??_main+2+3)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+6+0)&0ffh,w
	btfsc	status,0
	goto	u7281
	goto	u7280

u7281:
	goto	l6073
u7280:
	line	661
	
l6071:; BSR set to: 0

	movlw	high(03h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(03h)
	movwf	((main@mod))&0ffh
	line	662
	goto	l6083
	
l331:; BSR set to: 3

	
l6073:
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2353)
	movff	1+?___wmul,(_main$2353+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2354)
	movff	1+?___wmul,(_main$2354+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2355)
	movff	1+?___wmul,(_main$2355+1)
	
l6075:
	movff	(_main$2355),(c:___awdiv@dividend)
	movff	(_main$2355+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2354),(c:___awdiv@dividend)
	movff	(_main$2354+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh
	movff	(_main$2353),(c:___awdiv@dividend)
	movff	(_main$2353+1),(c:___awdiv@dividend+1)
	movlw	high(010h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(010h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh
	movlw	low(028h)
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_main+2+0)&0ffh
	movlw	high(028h)
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	0	; () banked
	movwf	1+(??_main+2+0)&0ffh
	
	movlb	0	; () banked
	clrf	2+(??_main+2+0)&0ffh
	movlb	0	; () banked
	btfsc	1+(??_main+2+0)&0ffh,7
	decf	2+(??_main+2+0)&0ffh
	
	movlb	0	; () banked
	movf	2+(??_main+2+0)&0ffh,w
	movlb	0	; () banked
	movwf	3+(??_main+2+0)&0ffh
	movff	(_TIME4),(c:___aldiv@dividend)
	movff	(_TIME4+1),(c:___aldiv@dividend+1)
	movff	(_TIME4+2),(c:___aldiv@dividend+2)
	movff	(_TIME4+3),(c:___aldiv@dividend+3)
	movlw	low(06h)
	movwf	((c:___aldiv@divisor)),c
	movlw	high(06h)
	movwf	((c:___aldiv@divisor+1)),c
	movlw	low highword(06h)
	movwf	((c:___aldiv@divisor+2)),c
	movlw	high highword(06h)
	movwf	((c:___aldiv@divisor+3)),c
	call	___aldiv	;wreg free
	movlb	0	; () banked
		movf	(??_main+2+0)&0ffh,w
	subwf	(0+?___aldiv),c,w
	movlb	0	; () banked
	movf	(??_main+2+1)&0ffh,w
	subwfb	(1+?___aldiv),c,w
	movlb	0	; () banked
	movf	(??_main+2+2)&0ffh,w
	subwfb	(2+?___aldiv),c,w
	movf	(3+?___aldiv),c,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+6+0)&0ffh
	movlb	0	; () banked
	movf	(??_main+2+3)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+6+0)&0ffh,w
	btfsc	status,0
	goto	u7291
	goto	u7290

u7291:
	goto	l6081
u7290:
	
l6077:; BSR set to: 0

	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movlw	1
	btfsc	plusw2,7
	goto	u7301
	movlw	1
	movf	plusw2,w
	bnz	u7300
	movlw	21
	subwf	 postinc2,w
	btfss	status,0
	goto	u7301
	goto	u7300

u7301:
	goto	l6081
u7300:
	line	663
	
l6079:
	movlw	high(04h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(04h)
	movwf	((main@mod))&0ffh
	line	664
	goto	l6083
	
l333:; BSR set to: 3

	line	665
	
l6081:
	movlw	high(05h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(05h)
	movwf	((main@mod))&0ffh
	goto	l6083
	line	666
	
l334:; BSR set to: 3

	goto	l6083
	
l332:; BSR set to: 3

	goto	l6083
	line	667
	
l330:; BSR set to: 3

	line	668
	
l6083:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@mod))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@mod+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_VEL)
	addwf	fsr2l
	movlw	high(_VEL)
	addwfc	fsr2h
	movff	postinc2,(main@speed)
	movff	postdec2,(main@speed+1)
	line	669
	
l6085:; BSR set to: 3

	movff	(main@mod),(c:___wmul@multiplier)
	movff	(main@mod+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low(_VKP)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_VKP)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(main@kp)
	movff	postinc2,(main@kp+1)
	movff	postdec2,(main@kp+2)
	line	670
	
l6087:
	movff	(main@mod),(c:___wmul@multiplier)
	movff	(main@mod+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low(_VKD)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_VKD)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(main@kd)
	movff	postinc2,(main@kd+1)
	movff	postdec2,(main@kd+2)
	line	671
	
l6089:
	movff	(c:_last),??_main+0+0
	movff	(c:_last+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movf	((c:_line)),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movwf	((c:_der)),c
	movf	((c:_line+1)),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movwf	1+((c:_der)),c
	line	672
	
l6091:; BSR set to: 0

	movff	(main@kd),(c:___ftmul@f2)
	movff	(main@kd+1),(c:___ftmul@f2+1)
	movff	(main@kd+2),(c:___ftmul@f2+2)
	movff	(c:_der),(c:___awtoft@c)
	movff	(c:_der+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	movff	(main@kp),(c:___ftmul@f2)
	movff	(main@kp+1),(c:___ftmul@f2+1)
	movff	(main@kp+2),(c:___ftmul@f2+2)
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
	movff	0+?___ftadd,(c:___fttol@f1)
	movff	1+?___ftadd,(c:___fttol@f1+1)
	movff	2+?___ftadd,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_formula)
	movff	1+?___fttol,(c:_formula+1)
	line	674
	
l6093:
	btfsc	((c:_formula+1)),c,7
	goto	u7311
	movf	((c:_formula+1)),c,w
	bnz	u7310
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u7311
	goto	u7310

u7311:
	goto	l6097
u7310:
	line	675
	
l6095:
	movff	(c:_formula),??_main+0+0
	movff	(c:_formula+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movlb	3	; () banked
	movf	((main@speed))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movwf	((c:MotorsSpeed@A)),c
	movlb	3	; () banked
	movf	((main@speed+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movwf	1+((c:MotorsSpeed@A)),c
	movff	(main@speed),(c:MotorsSpeed@B)
	movff	(main@speed+1),(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	676
	goto	l6099
	
l335:
	line	677
	
l6097:
	movff	(main@speed),(c:MotorsSpeed@A)
	movff	(main@speed+1),(c:MotorsSpeed@A+1)
	movf	((c:_formula)),c,w
	movlb	3	; () banked
	addwf	((main@speed))&0ffh,w
	movwf	((c:MotorsSpeed@B)),c
	movf	((c:_formula+1)),c,w
	movlb	3	; () banked
	addwfc	((main@speed+1))&0ffh,w
	movwf	1+((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	goto	l6099
	line	678
	
l336:
	line	679
	
l6099:
	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	line	681
	
l6101:
	movlb	0	; () banked
	movf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7321
	goto	u7320

u7321:
	goto	l6135
u7320:
	line	682
	
l6103:; BSR set to: 0

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
	goto	u7331
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7331
	goto	u7330

u7331:
	goto	l6111
u7330:
	
l6105:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7340
	movf	((c:_line+1)),c,w
	bnz	u7341
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7341
	goto	u7340

u7341:
	goto	l344
u7340:
	
l6107:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$438)
	movff	??_main+0+1,(_main$438+1)
	goto	l6109
	
l344:; BSR set to: 0

	movff	(c:_line),(_main$438)
	movff	(c:_line+1),(_main$438+1)
	goto	l6109
	
l346:; BSR set to: 0

	
l6109:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$438+1))&0ffh,7
	goto	u7351
	movlb	3	; () banked
	movf	((_main$438+1))&0ffh,w
	bnz	u7350
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$438))&0ffh,w
	btfss	status,0
	goto	u7351
	goto	u7350

u7351:
	goto	l6119
u7350:
	goto	l6111
	
l342:; BSR set to: 3

	
l6111:
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
	goto	u7361
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7361
	goto	u7360

u7361:
	goto	l6135
u7360:
	
l6113:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7370
	movf	((c:_line+1)),c,w
	bnz	u7371
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7371
	goto	u7370

u7371:
	goto	l348
u7370:
	
l6115:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$439)
	movff	??_main+0+1,(_main$439+1)
	goto	l6117
	
l348:; BSR set to: 0

	movff	(c:_line),(_main$439)
	movff	(c:_line+1),(_main$439+1)
	goto	l6117
	
l350:; BSR set to: 0

	
l6117:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$439+1))&0ffh,7
	goto	u7380
	movlb	3	; () banked
	movf	((_main$439+1))&0ffh,w
	bnz	u7381
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$439))&0ffh,w
	btfsc	status,0
	goto	u7381
	goto	u7380

u7381:
	goto	l6135
u7380:
	goto	l6119
	
l340:; BSR set to: 3

	line	683
	
l6119:; BSR set to: 3

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(01h)
	movwf	((_flag_line))&0ffh
	line	684
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	685
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	686
	
l6121:; BSR set to: 0

	btfss	((c:3968)),c,4	;volatile
	goto	u7391
	goto	u7390
u7391:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7408
u7390:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7408:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	687
	
l6123:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	line	688
	
l6125:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((_rcount))&0ffh,(0)&7
	goto	u7411
	goto	u7410
u7411:
	goto	l6129
u7410:
	line	689
	
l6127:; BSR set to: 0

		movlw	low(STR_30)
	movwf	((c:printf@f)),c
	movlw	high(STR_30)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	690
	goto	l6133
	
l351:
	line	691
	
l6129:
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2353)
	movff	1+?___wmul,(_main$2353+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2354)
	movff	1+?___wmul,(_main$2354+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2355)
	movff	1+?___wmul,(_main$2355+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2356)
	movff	1+?___wmul,(_main$2356+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2357)
	movff	1+?___wmul,(_main$2357+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(028h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(028h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2358)
	movff	1+?___wmul,(_main$2358+1)
	
l6131:
		movlw	low(STR_31)
	movwf	((c:printf@f)),c
	movlw	high(STR_31)
	movwf	((c:printf@f+1)),c

	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,0+((c:?_printf)+02h)
	movff	1+?___awdiv,1+((c:?_printf)+02h)
	movff	(_rcount),(c:___awdiv@dividend)
	movff	(_rcount+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	bcf	status,0
	rlcf	(0+?___awdiv),c,f
	rlcf	(1+?___awdiv),c,f
	movlw	low(_LEN)
	addwf	(0+?___awdiv),c,w
	movwf	c:fsr2l
	movlw	high(_LEN)
	addwfc	(1+?___awdiv),c,w
	movwf	1+c:fsr2l
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	movff	(_main$2355),(c:___awdiv@dividend)
	movff	(_main$2355+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2354),(c:___awdiv@dividend)
	movff	(_main$2354+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh
	movff	(_main$2353),(c:___awdiv@dividend)
	movff	(_main$2353+1),(c:___awdiv@dividend+1)
	movlw	high(010h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(010h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movwf	(0+((c:?_printf)+06h)),c
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movwf	1+(0+((c:?_printf)+06h)),c
	movff	(_main$2358),(c:___awdiv@dividend)
	movff	(_main$2358+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+2+0
	movff	1+?___awdiv,??_main+2+0+1
	movff	(_main$2357),(c:___awdiv@dividend)
	movff	(_main$2357+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh
	movff	(_main$2356),(c:___awdiv@dividend)
	movff	(_main$2356+1),(c:___awdiv@dividend+1)
	movlw	high(010h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(010h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	comf	(0+?___awdiv),c
	comf	(1+?___awdiv),c
	infsnz	(0+?___awdiv),c
	incf	(1+?___awdiv),c
	movf	(0+?___awdiv),c,w
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh
	movf	(1+?___awdiv),c,w
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh
	movlw	low(028h)
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh,w
	movwf	(0+((c:?_printf)+08h)),c
	movlw	high(028h)
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh,w
	movwf	1+(0+((c:?_printf)+08h)),c
	call	_printf	;wreg free
	goto	l6133
	line	692
	
l352:
	line	693
	
l6133:
		movlw	low(STR_32)
	movwf	((c:printf@f)),c
	movlw	high(STR_32)
	movwf	((c:printf@f+1)),c

	movff	(_rcount),0+((c:?_printf)+02h)
	movff	(_rcount+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	goto	l6135
	line	694
	
l338:
	goto	l6135
	line	695
	
l337:
	line	696
	
l6135:
	movlb	0	; () banked
		decf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7421
	goto	u7420

u7421:
	goto	l6141
u7420:
	line	697
	
l6137:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7431
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7430
	movlw	177
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	4
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7431
	goto	u7430

u7431:
	goto	l6141
u7430:
	line	698
	
l6139:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	699
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	goto	l6141
	line	700
	
l354:; BSR set to: 0

	goto	l6141
	line	701
	
l353:; BSR set to: 0

	line	702
	
l6141:; BSR set to: 0

	movlw	low(-1)
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high(-1)
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	movff	(c:_TOTAL),??_main+2+0
	movff	(c:_TOTAL+1),??_main+2+0+1
	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_main+2+0)&0ffh,f
	rlcf	(??_main+2+1)&0ffh,f
	movlb	0	; () banked
	movf	(??_main+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh
	movlb	0	; () banked
	movf	((_rcount))&0ffh,w
	movlb	0	; () banked
xorwf	(??_main+2+0)&0ffh,w
	bnz	u7441
	movlb	0	; () banked
movf	((_rcount+1))&0ffh,w
	movlb	0	; () banked
xorwf	(??_main+2+1)&0ffh,w
	btfss	status,2
	goto	u7441
	goto	u7440

u7441:
	goto	l6227
u7440:
	line	703
	
l6143:; BSR set to: 0

		movlw	low(STR_33)
	movwf	((c:printf@f)),c
	movlw	high(STR_33)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	704
	
l6145:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	705
	
l6147:; BSR set to: 0

	movlw	high(08h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6227
	line	706
	
l355:; BSR set to: 0

	goto	l6227
	line	707
	
l328:; BSR set to: 0

	line	708
	goto	l6227
	line	711
	
l356:; BSR set to: 0

	line	712
	btfsc	((c:3971)),c,6	;volatile
	goto	u7451
	goto	u7450
u7451:
	goto	l6151
u7450:
	line	713
	
l6149:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	714
	movlw	high(08h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6151
	line	715
	
l357:; BSR set to: 0

	line	716
	
l6151:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	718
	
l6153:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	719
	
l6155:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7461
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7460
	movlw	6
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7461
	goto	u7460

u7461:
	goto	l6227
u7460:
	line	720
	
l6157:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	721
	
l6159:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	722
	
l6161:
	call	_Line	;wreg free
	goto	l359
	line	728
	
l6163:
	line	730
	
l359:
	line	731
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((_rcount))&0ffh,(0)&7
	goto	u7471
	goto	u7470
u7471:
	goto	l6167
u7470:
	line	732
	
l6165:; BSR set to: 0

	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@mod_447+1))&0ffh
	movlw	low(0)
	movwf	((main@mod_447))&0ffh
	line	733
	goto	l6169
	
l360:; BSR set to: 3

	line	734
	
l6167:
	movlw	high(01h)
	movlb	3	; () banked
	movwf	((main@mod_447+1))&0ffh
	movlw	low(01h)
	movwf	((main@mod_447))&0ffh
	goto	l6169
	line	735
	
l361:; BSR set to: 3

	line	736
	
l6169:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@mod_447))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@mod_447+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_VEL)
	addwf	fsr2l
	movlw	high(_VEL)
	addwfc	fsr2h
	movff	postinc2,(main@speed_444)
	movff	postdec2,(main@speed_444+1)
	line	737
	
l6171:; BSR set to: 3

	movff	(main@mod_447),(c:___wmul@multiplier)
	movff	(main@mod_447+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low(_VKP)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_VKP)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(main@kp_445)
	movff	postinc2,(main@kp_445+1)
	movff	postdec2,(main@kp_445+2)
	line	738
	
l6173:
	movff	(main@mod_447),(c:___wmul@multiplier)
	movff	(main@mod_447+1),(c:___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movlw	low(_VKD)
	addwf	(0+?___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_VKD)
	addwfc	(1+?___wmul),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(main@kd_446)
	movff	postinc2,(main@kd_446+1)
	movff	postdec2,(main@kd_446+2)
	line	740
	
l6175:
	movff	(c:_last),??_main+0+0
	movff	(c:_last+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movf	((c:_line)),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movwf	((c:_der)),c
	movf	((c:_line+1)),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movwf	1+((c:_der)),c
	line	741
	
l6177:; BSR set to: 0

	movff	(main@kd_446),(c:___ftmul@f2)
	movff	(main@kd_446+1),(c:___ftmul@f2+1)
	movff	(main@kd_446+2),(c:___ftmul@f2+2)
	movff	(c:_der),(c:___awtoft@c)
	movff	(c:_der+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	movff	(main@kp_445),(c:___ftmul@f2)
	movff	(main@kp_445+1),(c:___ftmul@f2+1)
	movff	(main@kp_445+2),(c:___ftmul@f2+2)
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
	movff	0+?___ftadd,(c:___fttol@f1)
	movff	1+?___ftadd,(c:___fttol@f1+1)
	movff	2+?___ftadd,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_formula)
	movff	1+?___fttol,(c:_formula+1)
	line	743
	
l6179:
	btfsc	((c:_formula+1)),c,7
	goto	u7481
	movf	((c:_formula+1)),c,w
	bnz	u7480
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u7481
	goto	u7480

u7481:
	goto	l6183
u7480:
	line	744
	
l6181:
	movff	(c:_formula),??_main+0+0
	movff	(c:_formula+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movlb	3	; () banked
	movf	((main@speed_444))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movwf	((c:MotorsSpeed@A)),c
	movlb	3	; () banked
	movf	((main@speed_444+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movwf	1+((c:MotorsSpeed@A)),c
	movff	(main@speed_444),(c:MotorsSpeed@B)
	movff	(main@speed_444+1),(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	745
	goto	l6185
	
l362:
	line	746
	
l6183:
	movff	(main@speed_444),(c:MotorsSpeed@A)
	movff	(main@speed_444+1),(c:MotorsSpeed@A+1)
	movf	((c:_formula)),c,w
	movlb	3	; () banked
	addwf	((main@speed_444))&0ffh,w
	movwf	((c:MotorsSpeed@B)),c
	movf	((c:_formula+1)),c,w
	movlb	3	; () banked
	addwfc	((main@speed_444+1))&0ffh,w
	movwf	1+((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	goto	l6185
	line	747
	
l363:
	line	748
	
l6185:
	movlb	0	; () banked
	movf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7491
	goto	u7490

u7491:
	goto	l6209
u7490:
	line	749
	
l6187:; BSR set to: 0

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
	goto	u7501
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7501
	goto	u7500

u7501:
	goto	l6195
u7500:
	
l6189:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7510
	movf	((c:_line+1)),c,w
	bnz	u7511
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7511
	goto	u7510

u7511:
	goto	l371
u7510:
	
l6191:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$448)
	movff	??_main+0+1,(_main$448+1)
	goto	l6193
	
l371:; BSR set to: 0

	movff	(c:_line),(_main$448)
	movff	(c:_line+1),(_main$448+1)
	goto	l6193
	
l373:; BSR set to: 0

	
l6193:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$448+1))&0ffh,7
	goto	u7521
	movlb	3	; () banked
	movf	((_main$448+1))&0ffh,w
	bnz	u7520
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$448))&0ffh,w
	btfss	status,0
	goto	u7521
	goto	u7520

u7521:
	goto	l6203
u7520:
	goto	l6195
	
l369:; BSR set to: 3

	
l6195:
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
	goto	u7531
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7531
	goto	u7530

u7531:
	goto	l6209
u7530:
	
l6197:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7540
	movf	((c:_line+1)),c,w
	bnz	u7541
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7541
	goto	u7540

u7541:
	goto	l375
u7540:
	
l6199:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$449)
	movff	??_main+0+1,(_main$449+1)
	goto	l6201
	
l375:; BSR set to: 0

	movff	(c:_line),(_main$449)
	movff	(c:_line+1),(_main$449+1)
	goto	l6201
	
l377:; BSR set to: 0

	
l6201:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$449+1))&0ffh,7
	goto	u7550
	movlb	3	; () banked
	movf	((_main$449+1))&0ffh,w
	bnz	u7551
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$449))&0ffh,w
	btfsc	status,0
	goto	u7551
	goto	u7550

u7551:
	goto	l6209
u7550:
	goto	l6203
	
l367:; BSR set to: 3

	line	750
	
l6203:; BSR set to: 3

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(01h)
	movwf	((_flag_line))&0ffh
	line	751
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	752
	
l6205:; BSR set to: 0

	btfss	((c:3968)),c,4	;volatile
	goto	u7561
	goto	u7560
u7561:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7578
u7560:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7578:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	753
	
l6207:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	goto	l6209
	line	755
	
l365:; BSR set to: 0

	goto	l6209
	line	756
	
l364:; BSR set to: 0

	line	757
	
l6209:
	movlb	0	; () banked
		decf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7581
	goto	u7580

u7581:
	goto	l6215
u7580:
	line	758
	
l6211:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7591
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7590
	movlw	185
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	11
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7591
	goto	u7590

u7591:
	goto	l6215
u7590:
	line	759
	
l6213:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	760
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	goto	l6215
	line	761
	
l379:; BSR set to: 0

	goto	l6215
	line	762
	
l378:; BSR set to: 0

	line	763
	
l6215:; BSR set to: 0

		movlw	7
	movlb	0	; () banked
	xorwf	((_rcount))&0ffh,w
	movlb	0	; () banked
iorwf	((_rcount+1))&0ffh,w
	btfss	status,2
	goto	u7601
	goto	u7600

u7601:
	goto	l6219
u7600:
	line	764
	
l6217:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	765
	movlw	high(08h)
	movlb	0	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6219
	line	766
	
l380:; BSR set to: 0

	line	767
	
l6219:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME2+3))&0ffh,7
	goto	u7611
	movlb	0	; () banked
	movf	((_TIME2+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME2+2))&0ffh,w
	bnz	u7610
	movlw	233
	movlb	0	; () banked
	subwf	 ((_TIME2))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((_TIME2+1))&0ffh,w
	btfss	status,0
	goto	u7611
	goto	u7610

u7611:
	goto	l6223
u7610:
	line	771
	
l6221:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME2))&0ffh
	movlw	high(0)
	movwf	((_TIME2+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME2+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME2+3))&0ffh
	goto	l6223
	line	772
	
l381:; BSR set to: 0

	line	773
	
l6223:; BSR set to: 0

	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	goto	l6227
	line	774
	
l358:; BSR set to: 0

	line	776
	goto	l6227
	line	777
	
l6225:; BSR set to: 0

	goto	l6227
	line	343
	
l232:; BSR set to: 0

	
l6227:
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
	goto	l6265
	goto	l6227
	
l6265:; BSR set to: 0

; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 11
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
;	Chosen strategy is simple_byte

	movlb	0	; () banked
	movf ??_main+0+0&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5591
	xorlw	1^0	; case 1
	skipnz
	goto	l283
	xorlw	2^1	; case 2
	skipnz
	goto	l6011
	xorlw	3^2	; case 3
	skipnz
	goto	l305
	xorlw	4^3	; case 4
	skipnz
	goto	l302
	xorlw	5^4	; case 5
	skipnz
	goto	l307
	xorlw	6^5	; case 6
	skipnz
	goto	l267
	xorlw	7^6	; case 7
	skipnz
	goto	l5649
	xorlw	8^7	; case 8
	skipnz
	goto	l5825
	xorlw	9^8	; case 9
	skipnz
	goto	l5729
	xorlw	10^9	; case 10
	skipnz
	goto	l299
	xorlw	11^10	; case 11
	skipnz
	goto	l356
	goto	l6227

	line	777
	
l257:; BSR set to: 0

	goto	l6227
	line	778
	
l382:; BSR set to: 0

	line	338
	goto	l6227
	
l383:; BSR set to: 0

	line	779
	
l384:; BSR set to: 0

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_initYBOT

;; *************** function _initYBOT *****************
;; Defined at:
;;		line 112 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text1,class=CODE,space=0,reloc=2
	line	112
global __ptext1
__ptext1:
psect	text1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	112
	global	__size_of_initYBOT
	__size_of_initYBOT	equ	__end_of_initYBOT-_initYBOT
	
_initYBOT:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	113
	
l5329:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	114
	
l5331:; BSR set to: 0

	call	_ResetCounter	;wreg free
	line	115
	
l5333:
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_gstatus))&0ffh
	line	116
	call	_configurations_init	;wreg free
	line	117
	call	_InitAnalog	;wreg free
	line	118
	call	_InitTIMERS	;wreg free
	line	119
	call	_MotorsPWM	;wreg free
	line	120
	
l94:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initYBOT
	__end_of_initYBOT:
	signat	_initYBOT,89
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 35 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text2,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	35
global __ptext2
__ptext2:
psect	text2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	35
	global	__size_of_configurations_init
	__size_of_configurations_init	equ	__end_of_configurations_init-_configurations_init
	
_configurations_init:
;incstack = 0
	opt	stack 28
	line	36
	
l4953:
		
	bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	39
	
l4955:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	42
	
l4957:
	bcf	((c:3949)),c,3	;volatile
	line	43
	
l4959:
	bsf	((c:3951)),c,3	;volatile
	line	44
	
l496:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,89
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 122 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text3,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	122
global __ptext3
__ptext3:
psect	text3
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	122
	global	__size_of_ResetCounter
	__size_of_ResetCounter	equ	__end_of_ResetCounter-_ResetCounter
	
_ResetCounter:
;incstack = 0
	opt	stack 28
	line	123
	
l4951:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	124
	
l97:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetCounter
	__end_of_ResetCounter:
	signat	_ResetCounter,89
	global	_MotorsPWM

;; *************** function _MotorsPWM *****************
;; Defined at:
;;		line 144 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text4,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	144
global __ptext4
__ptext4:
psect	text4
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	144
	global	__size_of_MotorsPWM
	__size_of_MotorsPWM	equ	__end_of_MotorsPWM-_MotorsPWM
	
_MotorsPWM:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	146
	
l5047:
	bcf	c:(32339/8),(32339)&7	;volatile
	line	147
	bcf	c:(32340/8),(32340)&7	;volatile
	line	148
	bcf	c:(32341/8),(32341)&7	;volatile
	line	149
	bcf	c:(32342/8),(32342)&7	;volatile
	line	151
	bsf	c:(32338/8),(32338)&7	;volatile
	line	152
	bcf	c:(32336/8),(32336)&7	;volatile
	line	153
	bcf	c:(32337/8),(32337)&7	;volatile
	line	155
	bsf	c:(32338/8),(32338)&7	;volatile
	line	158
	
l5049:
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<4)-1)<<3)
	iorlw	(0Bh & ((1<<4)-1))<<3
	movwf	((c:4042)),c	;volatile
	line	159
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	((c:4042)),c	;volatile
	line	160
	
l5051:
	bcf	((c:4042)),c,2	;volatile
	line	161
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	162
	
l5053:
	bsf	((c:4042)),c,2	;volatile
	line	165
	movf	((c:4029)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4029)),c	;volatile
	line	166
	movf	((c:4026)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4026)),c	;volatile
	line	167
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	169
	
l505:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsPWM
	__end_of_MotorsPWM:
	signat	_MotorsPWM,89
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 46 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text5,class=CODE,space=0,reloc=2
	line	46
global __ptext5
__ptext5:
psect	text5
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	46
	global	__size_of_InitTIMERS
	__size_of_InitTIMERS	equ	__end_of_InitTIMERS-_InitTIMERS
	
_InitTIMERS:
;incstack = 0
	opt	stack 28
	line	47
	
l4971:
	bcf	((c:4053)),c,7	;volatile
	line	48
	bcf	((c:4053)),c,6	;volatile
	line	49
	bcf	((c:4053)),c,5	;volatile
	line	51
	bsf	((c:4053)),c,3	;volatile
	line	52
	
l4973:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	53
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	56
	
l4975:
	bsf	((c:4081)),c,2	;volatile
	line	57
	
l4977:
	bcf	((c:4048)),c,7	;volatile
	line	58
	
l4979:
	bsf	((c:4082)),c,5	;volatile
	line	62
	
l4981:
	bsf	((c:4082)),c,7	;volatile
	line	64
	
l4983:
	bsf	((c:4053)),c,7	;volatile
	line	66
	
l4985:
	bcf	((c:4045)),c,0	;volatile
	line	67
	
l4987:
	bcf	((c:4045)),c,7	;volatile
	line	68
	
l4989:
	bcf	((c:4045)),c,6	;volatile
	line	69
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	70
	
l4991:
	bcf	((c:4045)),c,3	;volatile
	line	71
	
l4993:
	bcf	((c:4045)),c,1	;volatile
	line	72
	
l4995:
	bsf	((c:4045)),c,0	;volatile
	line	74
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	75
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	83
	
l4997:
	bcf	((c:3987)),c,5	;volatile
	line	85
	
l4999:
	bcf	((c:3986)),c,4	;volatile
	line	86
	
l5001:
	bcf	((c:3987)),c,0	;volatile
	line	88
	
l5003:
	bsf	((c:3989)),c,4	;volatile
	line	89
	
l5005:
	bsf	((c:3989)),c,5	;volatile
	line	90
	
l5007:
	bsf	((c:3989)),c,6	;volatile
	line	93
	
l5009:
	bcf	((c:3989)),c,1	;volatile
	line	94
	
l5011:
	bcf	((c:3989)),c,2	;volatile
	line	95
	
l5013:
	bsf	((c:3989)),c,0	;volatile
	line	96
	
l5015:
	bcf	((c:3989)),c,3	;volatile
	line	99
	
l5017:
	bcf	((c:3988)),c,1	;volatile
	line	100
	
l5019:
	bcf	((c:3988)),c,2	;volatile
	line	103
	
l5021:
	bsf	((c:3986)),c,0	;volatile
	line	104
	
l5023:
	bsf	((c:3986)),c,1	;volatile
	line	105
	
l5025:
	bsf	((c:3986)),c,2	;volatile
	line	106
	
l5027:
	bsf	((c:3986)),c,3	;volatile
	line	107
	
l5029:
	bsf	((c:3986)),c,5	;volatile
	line	109
	
l5031:
	bsf	((c:3990)),c,0	;volatile
	line	110
	
l5033:
	bsf	((c:3990)),c,1	;volatile
	line	111
	
l5035:
	bsf	((c:3990)),c,2	;volatile
	line	112
	
l5037:
	bsf	((c:3987)),c,2	;volatile
	line	114
	
l5039:
	bsf	((c:3987)),c,1	;volatile
	line	119
	
l5041:
	bcf	((c:3988)),c,6	;volatile
	line	120
	
l5043:
	bsf	((c:3988)),c,7	;volatile
	line	122
	
l5045:
	bsf	((c:3972)),c,7	;volatile
	line	123
	
l499:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,89
	global	_InitAnalog

;; *************** function _InitAnalog *****************
;; Defined at:
;;		line 125 in file "/home/newtonis/Robots/Rayito2/config.c"
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
	line	125
global __ptext6
__ptext6:
psect	text6
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	125
	global	__size_of_InitAnalog
	__size_of_InitAnalog	equ	__end_of_InitAnalog-_InitAnalog
	
_InitAnalog:
;incstack = 0
	opt	stack 28
	line	126
	
l4961:
	bcf	((c:4033)),c,5	;volatile
	line	127
	bcf	((c:4033)),c,4	;volatile
	line	129
	bcf	((c:4033)),c,3	;volatile
	line	130
	bsf	((c:4033)),c,2	;volatile
	line	131
	bcf	((c:4033)),c,1	;volatile
	line	132
	bcf	((c:4033)),c,0	;volatile
	line	136
	bcf	((c:4032)),c,7	;volatile
	line	137
		
	bsf	((c:4032)),c, 3+0	;volatile
	bsf	((c:4032)),c, 3+1	;volatile
	bsf	((c:4032)),c, 3+2	;volatile

	line	138
	
l4963:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	139
	
l4965:
		
	bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	140
	
l4967:
	bcf	((c:4034)),c,1	;volatile
	line	141
	
l4969:
	bsf	((c:4034)),c,0	;volatile
	line	142
	
l502:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,89
	global	_initLED

;; *************** function _initLED *****************
;; Defined at:
;;		line 145 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text7,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	145
global __ptext7
__ptext7:
psect	text7
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	145
	global	__size_of_initLED
	__size_of_initLED	equ	__end_of_initLED-_initLED
	
_initLED:
;incstack = 0
	opt	stack 29
	line	146
	
l5335:
	movlw	high(0)
	movwf	((c:_x+1)),c
	movlw	low(0)
	movwf	((c:_x)),c
	
l5337:
	btfsc	((c:_x+1)),c,7
	goto	u6111
	movf	((c:_x+1)),c,w
	bnz	u6110
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6111
	goto	u6110

u6111:
	goto	l5341
u6110:
	goto	l106
	
l5339:
	goto	l106
	
l104:
	line	147
	
l5341:
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
	line	148
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
	line	146
	
l5343:
	infsnz	((c:_x)),c
	incf	((c:_x+1)),c
	
l5345:
	btfsc	((c:_x+1)),c,7
	goto	u6121
	movf	((c:_x+1)),c,w
	bnz	u6120
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6121
	goto	u6120

u6121:
	goto	l5341
u6120:
	goto	l106
	
l105:
	line	150
	
l106:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initLED
	__end_of_initLED:
	signat	_initLED,89
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
psect	text8,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/almod.c"
	line	8
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v1.38/sources/common/almod.c"
	line	8
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:
;incstack = 0
	opt	stack 29
	line	13
	
l5533:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l5535:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u6360
	goto	u6361

u6361:
	goto	l5541
u6360:
	line	15
	
l5537:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l5539:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l5541
	line	17
	
l691:
	line	18
	
l5541:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u6370
	goto	u6371

u6371:
	goto	l5545
u6370:
	line	19
	
l5543:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l5545
	
l692:
	line	20
	
l5545:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u6381
	goto	u6380

u6381:
	goto	l5561
u6380:
	line	21
	
l5547:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l5551
	
l695:
	line	23
	
l5549:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l5551
	line	25
	
l694:
	line	22
	
l5551:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u6391
	goto	u6390
u6391:
	goto	l5549
u6390:
	goto	l5553
	
l696:
	goto	l5553
	line	26
	
l697:
	line	27
	
l5553:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u6401
	goto	u6400

u6401:
	goto	l5557
u6400:
	line	28
	
l5555:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l5557
	
l698:
	line	29
	
l5557:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l5559:
	decfsz	((c:___almod@counter)),c
	
	goto	l5553
	goto	l5561
	
l699:
	goto	l5561
	line	31
	
l693:
	line	32
	
l5561:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u6411
	goto	u6410
u6411:
	goto	l5565
u6410:
	line	33
	
l5563:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l5565
	
l700:
	line	34
	
l5565:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l701
	
l5567:
	line	35
	
l701:
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
psect	text9,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	9
global __ptext9
__ptext9:
psect	text9
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	9
	global	__size_of_Wixel
	__size_of_Wixel	equ	__end_of_Wixel-_Wixel
	
_Wixel:
;incstack = 0
	opt	stack 29
	line	10
	
l5493:
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
	
l5495:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	17
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	18
	
l5497:
	bcf	((c:4012)),c,7	;volatile
	line	19
	
l5499:
	bcf	((c:4012)),c,6	;volatile
	line	20
	
l5501:
	bsf	((c:4012)),c,5	;volatile
	line	21
	
l5503:
	bcf	((c:4012)),c,4	;volatile
	line	23
	
l5505:
	bcf	((c:4012)),c,2	;volatile
	line	24
	
l5507:
	bcf	((c:4011)),c,6	;volatile
	line	25
	
l5509:
	bsf	((c:4011)),c,4	;volatile
	line	26
	
l5511:
	bsf	((c:4011)),c,7	;volatile
	line	28
	
l487:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,89
	global	_Save

;; *************** function _Save *****************
;; Defined at:
;;		line 215 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   60[COMRAM] int 
;;  sum             1   59[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ShowMem
;;		_WriteMem
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	215
global __ptext10
__ptext10:
psect	text10
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	215
	global	__size_of_Save
	__size_of_Save	equ	__end_of_Save-_Save
	
_Save:
;incstack = 0
	opt	stack 26
	line	216
	
l5365:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u6171
	goto	u6170
u6171:
	goto	l5369
u6170:
	
l5367:
	movlw	high(0)
	movwf	((c:_Save$324+1)),c
	movlw	low(0)
	movwf	((c:_Save$324)),c
	goto	l5371
	
l176:
	
l5369:
	movlw	high(080h)
	movwf	((c:_Save$324+1)),c
	movlw	low(080h)
	movwf	((c:_Save$324)),c
	goto	l5371
	
l178:
	
l5371:
	movff	(c:_Save$324),(c:Save@sum)
	line	217
	
l5373:
	movff	(c:_TOTAL),(c:WriteMem@data)
	movf	((c:Save@sum)),c,w
	
	call	_WriteMem
	line	219
	
l5375:
	movlw	high(0)
	movwf	((c:Save@x+1)),c
	movlw	low(0)
	movwf	((c:Save@x)),c
	goto	l5381
	
l180:
	line	220
	
l5377:
	bcf	status,0
	rlcf	((c:Save@x)),c,w
	movwf	fsr2l
	rlcf	((c:Save@x+1)),c,w
	movwf	fsr2h
	movlw	low(_LEN)
	addwf	fsr2l
	movlw	high(_LEN)
	addwfc	fsr2h
	movf	indf2,w
	movwf	((c:WriteMem@data)),c
	movf	((c:Save@sum)),c,w
	addwf	((c:Save@x)),c,w
	movwf	(??_Save+0+0)&0ffh,c
	incf	((??_Save+0+0)),c,w
	
	call	_WriteMem
	line	219
	
l5379:
	infsnz	((c:Save@x)),c
	incf	((c:Save@x+1)),c
	goto	l5381
	
l179:
	
l5381:
		movf	((c:_TOTAL)),c,w
	subwf	((c:Save@x)),c,w
	movf	((c:Save@x+1)),c,w
	xorlw	80h
	movwf	(??_Save+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_Save+0+0)&0ffh,c,w
	btfss	status,0
	goto	u6181
	goto	u6180

u6181:
	goto	l5377
u6180:
	goto	l5383
	
l181:
	line	222
	
l5383:
	call	_ShowMem	;wreg free
	line	223
	
l182:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Save
	__end_of_Save:
	signat	_Save,89
	global	_ShowMem

;; *************** function _ShowMem *****************
;; Defined at:
;;		line 202 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   54[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_printf
;; This function is called by:
;;		_Save
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	202
global __ptext11
__ptext11:
psect	text11
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	202
	global	__size_of_ShowMem
	__size_of_ShowMem	equ	__end_of_ShowMem-_ShowMem
	
_ShowMem:
;incstack = 0
	opt	stack 27
	line	204
	
l5055:
	movlw	high(0)
	movwf	((c:ShowMem@x+1)),c
	movlw	low(0)
	movwf	((c:ShowMem@x)),c
	goto	l5061
	
l162:
	
l5057:
		movlw	low(STR_1)
	movwf	((c:printf@f)),c
	movlw	high(STR_1)
	movwf	((c:printf@f+1)),c

	movlw	low(01h)
	addwf	((c:ShowMem@x)),c,w
	movwf	(0+((c:?_printf)+02h)),c
	movlw	high(01h)
	addwfc	((c:ShowMem@x+1)),c,w
	movwf	1+(0+((c:?_printf)+02h)),c
	bcf	status,0
	rlcf	((c:ShowMem@x)),c,w
	movwf	fsr2l
	rlcf	((c:ShowMem@x+1)),c,w
	movwf	fsr2h
	movlw	low(_LEN)
	addwf	fsr2l
	movlw	high(_LEN)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	call	_printf	;wreg free
	
l5059:
	infsnz	((c:ShowMem@x)),c
	incf	((c:ShowMem@x+1)),c
	goto	l5061
	
l161:
	
l5061:
		movf	((c:_TOTAL)),c,w
	subwf	((c:ShowMem@x)),c,w
	movf	((c:ShowMem@x+1)),c,w
	xorlw	80h
	movwf	(??_ShowMem+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_ShowMem+0+0)&0ffh,c,w
	btfss	status,0
	goto	u5641
	goto	u5640

u5641:
	goto	l5057
u5640:
	goto	l164
	
l163:
	line	205
	
l164:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ShowMem
	__end_of_ShowMem:
	signat	_ShowMem,89
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 464 in file "/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2   28[COMRAM] PTR const unsigned char 
;;		 -> STR_33(16), STR_32(57), STR_31(63), STR_30(41), 
;;		 -> STR_29(60), STR_28(61), STR_27(63), STR_26(36), 
;;		 -> STR_25(42), STR_24(40), STR_23(19), STR_22(40), 
;;		 -> STR_21(49), STR_20(47), STR_19(38), STR_18(47), 
;;		 -> STR_17(45), STR_16(61), STR_15(60), STR_14(53), 
;;		 -> STR_13(39), STR_12(44), STR_11(60), STR_10(60), 
;;		 -> STR_9(47), STR_8(38), STR_7(43), STR_6(39), 
;;		 -> STR_5(45), STR_4(41), STR_3(37), STR_2(37), 
;;		 -> STR_1(36), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  cp              3    0        PTR const unsigned char 
;;  width           2   50[COMRAM] int 
;;  val             2   47[COMRAM] unsigned int 
;;  ap              2   45[COMRAM] PTR void [1]
;;		 -> ?_printf(2), 
;;  len             2    0        unsigned int 
;;  c               1   52[COMRAM] char 
;;  flag            1   49[COMRAM] unsigned char 
;;  prec            1   44[COMRAM] char 
;; Return value:  Size  Location     Type
;;                  2   28[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:        12       0       0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;;		_putch
;; This function is called by:
;;		_ShowMem
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	464
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v1.38/sources/common/doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:
;incstack = 0
	opt	stack 28
	line	533
	
l4745:
		movlw	low(?_printf+02h)
	movwf	((c:printf@ap)),c
	movlw	high(?_printf+02h)
	movwf	((c:printf@ap+1)),c

	line	536
	goto	l4847
	
l580:
	line	538
	
l4747:
		movlw	37
	xorwf	((c:printf@c)),c,w
	btfsc	status,2
	goto	u5241
	goto	u5240

u5241:
	goto	l4751
u5240:
	line	541
	
l4749:
	movf	((c:printf@c)),c,w
	
	call	_putch
	line	542
	goto	l4847
	line	543
	
l581:
	line	546
	
l4751:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	line	548
	movlw	low(0)
	movwf	((c:printf@flag)),c
	goto	l4757
	line	550
	
l582:
	line	551
	goto	l4757
	line	579
	
l584:
	line	580
	
l4753:
	bsf	(0+(2/8)+(c:printf@flag)),c,(2)&7
	line	581
	infsnz	((c:printf@f)),c
	incf	((c:printf@f+1)),c
	line	582
	goto	l4757
	line	584
	
l4755:
	goto	l4759
	line	551
	
l583:
	
l4757:
	movff	(c:printf@f),tblptrl
	movff	(c:printf@f+1),tblptrh
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
	goto	l4753
	goto	l4759

	line	584
	
l586:
	line	585
	goto	l4759
	line	586
	
l585:
	goto	l4757
	
l587:
	line	597
	
l4759:
	movff	(c:printf@f),tblptrl
	movff	(c:printf@f+1),tblptrh
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
	goto	u5251
	goto	u5250
u5251:
	goto	l4775
u5250:
	line	598
	
l4761:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	goto	l4763
	line	599
	
l589:
	line	600
	
l4763:
	movff	(c:printf@width),(c:___wmul@multiplier)
	movff	(c:printf@width+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:printf@width)
	movff	1+?___wmul,(c:printf@width+1)
	line	601
	
l4765:
	movlw	low(-48)
	movwf	(??_printf+0+0)&0ffh,c
	movlw	high(-48)
	movwf	1+(??_printf+0+0)&0ffh,c
	movff	(c:printf@f),tblptrl
	movff	(c:printf@f+1),tblptrh
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
	movwf	(??_printf+2+0)&0ffh,c
	clrf	(??_printf+2+0+1)&0ffh,c

	movf	(??_printf+0+0),c,w
	addwf	(??_printf+2+0),c
	movf	(??_printf+0+1),c,w
	addwfc	(??_printf+2+1),c
	movf	(??_printf+2+0),c,w
	addwf	((c:printf@width)),c
	movf	(??_printf+2+1),c,w
	addwfc	((c:printf@width+1)),c

	
l4767:
	infsnz	((c:printf@f)),c
	incf	((c:printf@f+1)),c
	line	602
	
l4769:
	movff	(c:printf@f),tblptrl
	movff	(c:printf@f+1),tblptrh
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
	goto	u5261
	goto	u5260
u5261:
	goto	l4763
u5260:
	goto	l4775
	
l590:
	goto	l4775
	line	608
	
l588:
	line	635
	goto	l4775
	line	637
	
l592:
	line	638
	goto	l622
	line	697
	
l594:
	goto	l596
	line	698
	
l595:
	line	699
	goto	l596
	line	802
	
l597:
	line	813
	goto	l4847
	line	817
	
l598:
	line	818
	
l4771:
	bsf	(0+(6/8)+(c:printf@flag)),c,(6)&7
	line	819
	goto	l596
	line	822
	
l4773:
	goto	l596
	line	635
	
l591:
	
l4775:
	movff	(c:printf@f),tblptrl
	movff	(c:printf@f+1),tblptrh
	infsnz	((c:printf@f)),c
	incf	((c:printf@f+1)),c
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
; Number of cases is 4, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l622
	xorlw	100^0	; case 100
	skipnz
	goto	l596
	xorlw	105^100	; case 105
	skipnz
	goto	l596
	xorlw	117^105	; case 117
	skipnz
	goto	l4771
	goto	l4847

	line	822
	
l596:
	line	1251
	
	btfsc	((c:printf@flag)),c,(6)&7
	goto	u5271
	goto	u5270
u5271:
	goto	l4787
u5270:
	line	1259
	
l4777:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4779:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	line	1261
	
l4781:
	btfsc	((c:printf@val+1)),c,7
	goto	u5280
	goto	u5281

u5281:
	goto	l4791
u5280:
	line	1262
	
l4783:
	movlw	(03h)&0ffh
	iorwf	((c:printf@flag)),c
	line	1263
	
l4785:
	negf	((c:printf@val)),c
	comf	((c:printf@val+1)),c
	btfsc	status,0
	incf	((c:printf@val+1)),c
	goto	l4791
	line	1264
	
l600:
	line	1266
	goto	l4791
	line	1268
	
l599:
	line	1286
	
l4787:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4789:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	goto	l4791
	line	1287
	
l601:
	line	1305
	
l4791:
	movlw	low(01h)
	movwf	((c:printf@c)),c
	
l4793:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5291
	goto	u5290

u5291:
	goto	l4797
u5290:
	goto	l4805
	
l4795:
	goto	l4805
	line	1306
	
l602:
	
l4797:
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
	goto	u5301
	goto	u5300

u5301:
	goto	l4801
u5300:
	goto	l4805
	line	1307
	
l4799:
	goto	l4805
	
l604:
	line	1305
	
l4801:
	incf	((c:printf@c)),c
	
l4803:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5311
	goto	u5310

u5311:
	goto	l4797
u5310:
	goto	l4805
	
l603:
	line	1345
	
l4805:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5321
	goto	u5320

u5321:
	goto	l4811
u5320:
	
l4807:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5331
	goto	u5330
u5331:
	goto	l4811
u5330:
	line	1346
	
l4809:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	goto	l4811
	
l605:
	line	1381
	
l4811:
	movlw	080h
	btfsc	((c:printf@c)),c,7
	movlw	07fh
	movwf	(??_printf+0+0)&0ffh,c
	movf	((c:printf@width)),c,w
	subwf	((c:printf@c)),c,w
	movf	((c:printf@width+1)),c,w
	xorlw	80h
	subwfb	(??_printf+0+0)&0ffh,c,w
	btfsc	status,0
	goto	u5341
	goto	u5340
u5341:
	goto	l4815
u5340:
	line	1382
	
l4813:
	movf	((c:printf@c)),c,w
	subwf	((c:printf@width)),c
	movlw	0
	btfsc	((c:printf@c)),c,7
	movlw	0ffh
	subwfb	((c:printf@width+1)),c

	goto	l4817
	line	1383
	
l606:
	line	1384
	
l4815:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	goto	l4817
	
l607:
	line	1387
	
l4817:
	
	btfss	((c:printf@flag)),c,(2)&7
	goto	u5351
	goto	u5350
u5351:
	goto	l4829
u5350:
	line	1392
	
l4819:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5361
	goto	u5360
u5361:
	goto	l4823
u5360:
	line	1393
	
l4821:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4823
	
l609:
	line	1415
	
l4823:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5371
	goto	u5370

u5371:
	goto	l4839
u5370:
	goto	l4825
	line	1416
	
l611:
	line	1417
	
l4825:
	movlw	(030h)&0ffh
	
	call	_putch
	line	1418
	
l4827:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfss	status,2
	goto	u5381
	goto	u5380

u5381:
	goto	l4825
u5380:
	goto	l4839
	
l612:
	goto	l4839
	
l610:
	line	1420
	goto	l4839
	
l608:
	line	1428
	
l4829:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5391
	goto	u5390

u5391:
	goto	l4835
u5390:
	goto	l4831
	line	1429
	
l615:
	line	1430
	
l4831:
	movlw	(020h)&0ffh
	
	call	_putch
	line	1431
	
l4833:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfss	status,2
	goto	u5401
	goto	u5400

u5401:
	goto	l4831
u5400:
	goto	l4835
	
l616:
	goto	l4835
	
l614:
	line	1438
	
l4835:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5411
	goto	u5410
u5411:
	goto	l4839
u5410:
	line	1439
	
l4837:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4839
	
l617:
	goto	l4839
	line	1469
	
l613:
	line	1472
	
l4839:
	movff	(c:printf@c),(c:printf@prec)
	line	1474
	goto	l4845
	
l619:
	line	1489
	
l4841:
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
	
l4843:
	movf	((c:printf@c)),c,w
	
	call	_putch
	goto	l4845
	line	1525
	
l618:
	line	1474
	
l4845:
	decf	((c:printf@prec)),c
		incf	((c:printf@prec)),c,w
	btfss	status,2
	goto	u5421
	goto	u5420

u5421:
	goto	l4841
u5420:
	goto	l4847
	
l620:
	goto	l4847
	line	1533
	
l579:
	line	536
	
l4847:
	movff	(c:printf@f),tblptrl
	movff	(c:printf@f+1),tblptrh
	infsnz	((c:printf@f)),c
	incf	((c:printf@f+1)),c
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
	goto	u5431
	goto	u5430
u5431:
	goto	l4747
u5430:
	goto	l622
	
l621:
	goto	l622
	line	1535
	
l593:
	line	1541
;	Return value of _printf is never used
	
l622:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 29 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text13,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	29
global __ptext13
__ptext13:
psect	text13
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	29
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 28
	movwf	((c:putch@data)),c
	line	30
	
l4641:
	goto	l490
	
l491:
	line	31
	
l490:
	line	30
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u5091
	goto	u5090
u5091:
	goto	l490
u5090:
	goto	l4643
	
l492:
	line	32
	
l4643:
	movff	(c:putch@data),(c:4013)	;volatile
	line	33
	
l493:
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
psect	text14,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/isdigit.c"
	line	8
global __ptext14
__ptext14:
psect	text14
	file	"/opt/microchip/xc8/v1.38/sources/common/isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:
;incstack = 0
	opt	stack 28
	movwf	((c:isdigit@c)),c
	line	14
	
l4645:
	movlw	low(0)
	movwf	((c:_isdigit$2006)),c
	
l4647:
		movlw	03Ah-0
	cpfslt	((c:isdigit@c)),c
	goto	u5101
	goto	u5100

u5101:
	goto	l4653
u5100:
	
l4649:
		movlw	030h-1
	cpfsgt	((c:isdigit@c)),c
	goto	u5111
	goto	u5110

u5111:
	goto	l4653
u5110:
	
l4651:
	movlw	low(01h)
	movwf	((c:_isdigit$2006)),c
	goto	l4653
	
l952:
	
l4653:
	movff	(c:_isdigit$2006),??_isdigit+0+0
	rrcf	(??_isdigit+0+0),c,w
	goto	l953
	
l4655:
	line	15
	
l953:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.38/sources/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   22[COMRAM] unsigned int 
;;  multiplicand    2   24[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   26[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   22[COMRAM] unsigned int 
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
;;		_printf
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
	opt	stack 28
	line	37
	
l4657:
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
	
l4659:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l625
	
l4661:
	line	53
	
l625:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
psect	text16,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/lwmod.c"
	line	8
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v1.38/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 28
	line	13
	
l4729:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u5211
	goto	u5210

u5211:
	goto	l1040
u5210:
	line	14
	
l4731:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l4735
	
l1042:
	line	16
	
l4733:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l4735
	line	18
	
l1041:
	line	15
	
l4735:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u5221
	goto	u5220
u5221:
	goto	l4733
u5220:
	goto	l4737
	
l1043:
	goto	l4737
	line	19
	
l1044:
	line	20
	
l4737:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u5231
	goto	u5230

u5231:
	goto	l4741
u5230:
	line	21
	
l4739:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l4741
	
l1045:
	line	22
	
l4741:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l4743:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l4737
	goto	l1040
	
l1046:
	line	24
	
l1040:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1047:
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
psect	text17,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/lwdiv.c"
	line	8
global __ptext17
__ptext17:
psect	text17
	file	"/opt/microchip/xc8/v1.38/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 28
	line	14
	
l4707:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l4709:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u5181
	goto	u5180

u5181:
	goto	l1030
u5180:
	line	16
	
l4711:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l4715
	
l1032:
	line	18
	
l4713:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l4715
	line	20
	
l1031:
	line	17
	
l4715:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u5191
	goto	u5190
u5191:
	goto	l4713
u5190:
	goto	l4717
	
l1033:
	goto	l4717
	line	21
	
l1034:
	line	22
	
l4717:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l4719:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u5201
	goto	u5200

u5201:
	goto	l4725
u5200:
	line	24
	
l4721:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l4723:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l4725
	line	26
	
l1035:
	line	27
	
l4725:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l4727:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l4717
	goto	l1030
	
l1036:
	line	29
	
l1030:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1037:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Load

;; *************** function _Load *****************
;; Defined at:
;;		line 231 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   29[COMRAM] int 
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
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_GetValue
;;		_Length
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	231
global __ptext18
__ptext18:
psect	text18
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	231
	global	__size_of_Load
	__size_of_Load	equ	__end_of_Load-_Load
	
_Load:
;incstack = 0
	opt	stack 27
	line	232
	
l5385:
		movlw	low(_TOTAL)
	movwf	((c:Length@data)),c
	movlw	high(_TOTAL)
	movwf	((c:Length@data+1)),c

	call	_Length	;wreg free
	line	234
	
l5387:
	movlw	high(0)
	movwf	((c:Load@x+1)),c
	movlw	low(0)
	movwf	((c:Load@x)),c
	goto	l5393
	
l193:
	
l5389:
	movff	(c:Load@x),(c:GetValue@item)
	movff	(c:Load@x+1),(c:GetValue@item+1)
	movff	(c:Load@x),??_Load+0+0
	movff	(c:Load@x+1),??_Load+0+0+1
	bcf	status,0
	rlcf	(??_Load+0+0),c,f
	rlcf	(??_Load+0+1),c,f
	movlw	low(_LEN)
	addwf	(??_Load+0+0),c,w
	movwf	((c:GetValue@data)),c
	movlw	high(_LEN)
	addwfc	(??_Load+0+1),c,w
	movwf	1+((c:GetValue@data)),c
	call	_GetValue	;wreg free
	
l5391:
	infsnz	((c:Load@x)),c
	incf	((c:Load@x+1)),c
	goto	l5393
	
l192:
	
l5393:
		movf	((c:_TOTAL)),c,w
	subwf	((c:Load@x)),c,w
	movf	((c:Load@x+1)),c,w
	xorlw	80h
	movwf	(??_Load+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_Load+0+0)&0ffh,c,w
	btfss	status,0
	goto	u6191
	goto	u6190

u6191:
	goto	l5389
u6190:
	goto	l195
	
l194:
	line	235
	
l195:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Load
	__end_of_Load:
	signat	_Load,89
	global	_Length

;; *************** function _Length *****************
;; Defined at:
;;		line 225 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  data            2   17[COMRAM] PTR int 
;;		 -> TOTAL(2), 
;; Auto vars:     Size  Location     Type
;;  rta             1   24[COMRAM] unsigned char 
;;  add             1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadMem
;; This function is called by:
;;		_Load
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	225
global __ptext19
__ptext19:
psect	text19
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	225
	global	__size_of_Length
	__size_of_Length	equ	__end_of_Length-_Length
	
_Length:
;incstack = 0
	opt	stack 27
	line	226
	
l5063:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u5651
	goto	u5650
u5651:
	goto	l5067
u5650:
	
l5065:
	movlw	high(0)
	movwf	((c:_Length$330+1)),c
	movlw	low(0)
	movwf	((c:_Length$330)),c
	goto	l5069
	
l186:
	
l5067:
	movlw	high(080h)
	movwf	((c:_Length$330+1)),c
	movlw	low(080h)
	movwf	((c:_Length$330)),c
	goto	l5069
	
l188:
	
l5069:
	movff	(c:_Length$330),(c:Length@add)
	line	228
	
l5071:
		movlw	low(Length@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(Length@rta)
	movwf	((c:ReadMem@data+1)),c

	movf	((c:Length@add)),c,w
	
	call	_ReadMem
	line	229
	
l5073:
	movf	((c:Length@rta)),c,w
	movwf	(??_Length+0+0)&0ffh,c
	clrf	(??_Length+0+0+1)&0ffh,c

	movff	(c:Length@data),fsr2l
	movff	(c:Length@data+1),fsr2h
	movff	??_Length+0+0,postinc2
	movff	??_Length+0+1,postdec2

	line	230
	
l189:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Length
	__end_of_Length:
	signat	_Length,4217
	global	_GetValue

;; *************** function _GetValue *****************
;; Defined at:
;;		line 236 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  item            2   17[COMRAM] int 
;;  data            2   19[COMRAM] PTR int 
;;		 -> RAM(2047), 
;; Auto vars:     Size  Location     Type
;;  rta             1   26[COMRAM] unsigned char 
;;  add             1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadMem
;; This function is called by:
;;		_Load
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	236
global __ptext20
__ptext20:
psect	text20
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	236
	global	__size_of_GetValue
	__size_of_GetValue	equ	__end_of_GetValue-_GetValue
	
_GetValue:
;incstack = 0
	opt	stack 27
	line	237
	
l5075:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u5661
	goto	u5660
u5661:
	goto	l5079
u5660:
	
l5077:
	movlw	high(0)
	movwf	((c:_GetValue$340+1)),c
	movlw	low(0)
	movwf	((c:_GetValue$340)),c
	goto	l5081
	
l199:
	
l5079:
	movlw	high(080h)
	movwf	((c:_GetValue$340+1)),c
	movlw	low(080h)
	movwf	((c:_GetValue$340)),c
	goto	l5081
	
l201:
	
l5081:
	movff	(c:_GetValue$340),(c:GetValue@add)
	line	239
	
l5083:
		movlw	low(GetValue@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(GetValue@rta)
	movwf	((c:ReadMem@data+1)),c

	movf	((c:GetValue@add)),c,w
	addwf	((c:GetValue@item)),c,w
	movwf	(??_GetValue+0+0)&0ffh,c
	incf	((??_GetValue+0+0)),c,w
	
	call	_ReadMem
	line	240
	
l5085:
	movf	((c:GetValue@rta)),c,w
	movwf	(??_GetValue+0+0)&0ffh,c
	clrf	(??_GetValue+0+0+1)&0ffh,c

	movff	(c:GetValue@data),fsr2l
	movff	(c:GetValue@data+1),fsr2h
	movff	??_GetValue+0+0,postinc2
	movff	??_GetValue+0+1,postdec2

	line	241
	
l202:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_GetValue
	__end_of_GetValue:
	signat	_GetValue,8313
	global	_Line

;; *************** function _Line *****************
;; Defined at:
;;		line 246 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text21,class=CODE,space=0,reloc=2
	line	246
global __ptext21
__ptext21:
psect	text21
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	246
	global	__size_of_Line
	__size_of_Line	equ	__end_of_Line-_Line
	
_Line:
;incstack = 0
	opt	stack 28
	line	247
	
l5395:
	movlw	low(0)
	movwf	((c:Line@a)),c
	movlw	high(0)
	movwf	((c:Line@a+1)),c
	movlw	low highword(0)
	movwf	((c:Line@a+2)),c
	movlw	high highword(0)
	movwf	((c:Line@a+3)),c
	line	248
	movlw	low(0)
	movwf	((c:Line@b)),c
	movlw	high(0)
	movwf	((c:Line@b+1)),c
	movlw	low highword(0)
	movwf	((c:Line@b+2)),c
	movlw	high highword(0)
	movwf	((c:Line@b+3)),c
	line	249
	movlw	low(0)
	movwf	((c:Line@g)),c
	line	253
	movlw	high(0)
	movwf	((c:Line@j+1)),c
	movlw	low(0)
	movwf	((c:Line@j)),c
	
l5397:
	btfsc	((c:Line@j+1)),c,7
	goto	u6201
	movf	((c:Line@j+1)),c,w
	bnz	u6200
	movlw	5
	subwf	 ((c:Line@j)),c,w
	btfss	status,0
	goto	u6201
	goto	u6200

u6201:
	goto	l5401
u6200:
	goto	l5439
	
l5399:
	goto	l5439
	
l205:
	line	254
	
l5401:
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
	line	255
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

	line	256
	
l5403:
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
	goto	u6211
	goto	u6210

u6211:
	goto	l5407
u6210:
	line	257
	
l5405:
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

	goto	l5407
	line	258
	
l207:
	line	259
	
l5407:
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
	goto	u6221
	goto	u6220

u6221:
	goto	l5411
u6220:
	line	260
	
l5409:
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

	goto	l5411
	line	261
	
l208:
	line	262
	
l5411:
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

	line	263
	
l5413:
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
	
	line	264
	
l5415:
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
	
	line	265
	
l5417:
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
	line	266
	
l5419:
	btfsc	((c:Line@v+3)),c,7
	goto	u6230
	movf	((c:Line@v+3)),c,w
	iorwf	((c:Line@v+2)),c,w
	iorwf	((c:Line@v+1)),c,w
	bnz	u6231
	movlw	50
	subwf	 ((c:Line@v)),c,w
	btfsc	status,0
	goto	u6231
	goto	u6230

u6231:
	goto	l5423
u6230:
	line	267
	
l5421:
	movlw	low(0)
	movwf	((c:Line@v)),c
	movlw	high(0)
	movwf	((c:Line@v+1)),c
	movlw	low highword(0)
	movwf	((c:Line@v+2)),c
	movlw	high highword(0)
	movwf	((c:Line@v+3)),c
	goto	l5423
	line	268
	
l209:
	line	269
	
l5423:
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
	line	270
	
l5425:
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
	line	273
	
l5427:
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

	line	274
	
l5429:
	movf	((c:Line@v)),c,w
	addwf	((c:Line@b)),c
	movf	((c:Line@v+1)),c,w
	addwfc	((c:Line@b+1)),c
	movf	((c:Line@v+2)),c,w
	addwfc	((c:Line@b+2)),c
	movf	((c:Line@v+3)),c,w
	addwfc	((c:Line@b+3)),c
	line	275
	
l5431:
	btfsc	((c:Line@v+3)),c,7
	goto	u6241
	movf	((c:Line@v+3)),c,w
	iorwf	((c:Line@v+2)),c,w
	iorwf	((c:Line@v+1)),c,w
	bnz	u6240
	movlw	201
	subwf	 ((c:Line@v)),c,w
	btfss	status,0
	goto	u6241
	goto	u6240

u6241:
	goto	l5435
u6240:
	line	276
	
l5433:
	movlw	low(01h)
	movwf	((c:Line@g)),c
	goto	l5435
	line	277
	
l210:
	line	253
	
l5435:
	infsnz	((c:Line@j)),c
	incf	((c:Line@j+1)),c
	
l5437:
	btfsc	((c:Line@j+1)),c,7
	goto	u6251
	movf	((c:Line@j+1)),c,w
	bnz	u6250
	movlw	5
	subwf	 ((c:Line@j)),c,w
	btfss	status,0
	goto	u6251
	goto	u6250

u6251:
	goto	l5401
u6250:
	goto	l5439
	
l206:
	line	280
	
l5439:
	movlw	high(0)
	movwf	((c:Line@j_350+1)),c
	movlw	low(0)
	movwf	((c:Line@j_350)),c
	
l5441:
	btfsc	((c:Line@j_350+1)),c,7
	goto	u6261
	movf	((c:Line@j_350+1)),c,w
	bnz	u6260
	movlw	2
	subwf	 ((c:Line@j_350)),c,w
	btfss	status,0
	goto	u6261
	goto	u6260

u6261:
	goto	l5445
u6260:
	goto	l5467
	
l5443:
	goto	l5467
	
l211:
	line	281
	
l5445:
	bcf	status,0
	rlcf	((c:Line@j_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@j_350+1)),c,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(c:Line@i_351)
	movff	postdec2,(c:Line@i_351+1)
	line	282
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
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

	line	283
	
l5447:
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
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
	goto	u6271
	goto	u6270

u6271:
	goto	l5451
u6270:
	
l5449:
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
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

	goto	l5451
	
l213:
	line	284
	
l5451:
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
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
	goto	u6281
	goto	u6280

u6281:
	goto	l5455
u6280:
	
l5453:
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
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

	goto	l5455
	
l214:
	line	285
	
l5455:
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
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

	
l5457:
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
	
	
l5459:
	movff	(c:Line@v),(c:___aldiv@dividend)
	movff	(c:Line@v+1),(c:___aldiv@dividend+1)
	movff	(c:Line@v+2),(c:___aldiv@dividend+2)
	movff	(c:Line@v+3),(c:___aldiv@dividend+3)
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
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
	
	
l5461:
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
	line	286
	bcf	status,0
	rlcf	((c:Line@i_351)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_351+1)),c,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	(c:Line@v),postinc2
	movff	(c:Line@v+1),postdec2
	line	280
	
l5463:
	infsnz	((c:Line@j_350)),c
	incf	((c:Line@j_350+1)),c
	
l5465:
	btfsc	((c:Line@j_350+1)),c,7
	goto	u6291
	movf	((c:Line@j_350+1)),c,w
	bnz	u6290
	movlw	2
	subwf	 ((c:Line@j_350)),c,w
	btfss	status,0
	goto	u6291
	goto	u6290

u6291:
	goto	l5445
u6290:
	goto	l5467
	
l212:
	line	289
	
l5467:
	movf	((c:Line@g)),c,w
	btfss	status,2
	goto	u6301
	goto	u6300
u6301:
	goto	l5477
u6300:
	line	290
	
l5469:
	btfsc	((c:_line+1)),c,7
	goto	u6310
	movf	((c:_line+1)),c,w
	bnz	u6311
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u6311
	goto	u6310

u6311:
	goto	l5473
u6310:
	
l5471:
	movlw	high(-200)
	movwf	((c:_line+1)),c
	movlw	low(-200)
	movwf	((c:_line)),c
	goto	l220
	
l217:
	
l5473:
	movlw	high(0C8h)
	movwf	((c:_line+1)),c
	movlw	low(0C8h)
	movwf	((c:_line)),c
	goto	l220
	
l219:
	goto	l220
	line	291
	
l5475:
	goto	l220
	line	292
	
l215:
	line	293
	
l5477:
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
	line	294
	
l220:
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
psect	text22,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
	line	15
global __ptext22
__ptext22:
psect	text22
	file	"/opt/microchip/xc8/v1.38/sources/common/Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
;incstack = 0
	opt	stack 28
	line	119
	
l5097:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l5099
	line	120
	
l634:
	line	121
	
l5099:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u5671
	goto	u5670
u5671:
	goto	l5103
u5670:
	line	122
	
l5101:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l5103
	
l635:
	line	123
	
l5103:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l5105:
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
	goto	u5681
	goto	u5680

u5681:
	goto	l5099
u5680:
	
l636:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l637:
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
	line	8
global __ptext23
__ptext23:
psect	text23
	file	"/opt/microchip/xc8/v1.38/sources/common/aldiv.c"
	line	8
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	stack 29
	line	14
	
l5107:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l5109:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u5690
	goto	u5691

u5691:
	goto	l5115
u5690:
	line	16
	
l5111:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l5113:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l5115
	line	18
	
l678:
	line	19
	
l5115:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u5700
	goto	u5701

u5701:
	goto	l5121
u5700:
	line	20
	
l5117:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l5119:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l5121
	line	22
	
l679:
	line	23
	
l5121:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l5123:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u5711
	goto	u5710

u5711:
	goto	l5143
u5710:
	line	25
	
l5125:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l5129
	
l682:
	line	27
	
l5127:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l5129
	line	29
	
l681:
	line	26
	
l5129:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u5721
	goto	u5720
u5721:
	goto	l5127
u5720:
	goto	l5131
	
l683:
	goto	l5131
	line	30
	
l684:
	line	31
	
l5131:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l5133:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u5731
	goto	u5730

u5731:
	goto	l5139
u5730:
	line	33
	
l5135:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l5137:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l5139
	line	35
	
l685:
	line	36
	
l5139:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l5141:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l5131
	goto	l5143
	
l686:
	goto	l5143
	line	38
	
l680:
	line	39
	
l5143:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u5741
	goto	u5740
u5741:
	goto	l5147
u5740:
	line	40
	
l5145:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l5147
	
l687:
	line	41
	
l5147:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l688
	
l5149:
	line	42
	
l688:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_EreaseAll

;; *************** function _EreaseAll *****************
;; Defined at:
;;		line 72 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_WriteMem
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	72
global __ptext24
__ptext24:
psect	text24
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	72
	global	__size_of_EreaseAll
	__size_of_EreaseAll	equ	__end_of_EreaseAll-_EreaseAll
	
_EreaseAll:
;incstack = 0
	opt	stack 28
	line	75
	
l5327:
	movlw	low(0)
	movwf	((c:WriteMem@data)),c
	movlw	(0)&0ffh
	
	call	_WriteMem
	line	76
	movlw	low(0)
	movwf	((c:WriteMem@data)),c
	movlw	(080h)&0ffh
	
	call	_WriteMem
	line	77
	
l61:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_EreaseAll
	__end_of_EreaseAll:
	signat	_EreaseAll,89
	global	_WriteMem

;; *************** function _WriteMem *****************
;; Defined at:
;;		line 210 in file "/home/newtonis/Robots/Rayito2/config.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            1   14[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         1       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_EreaseAll
;;		_Save
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	210
global __ptext25
__ptext25:
psect	text25
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	210
	global	__size_of_WriteMem
	__size_of_WriteMem	equ	__end_of_WriteMem-_WriteMem
	
_WriteMem:
;incstack = 0
	opt	stack 28
	movwf	((c:WriteMem@addr)),c
	line	211
	
l4931:
	movff	(c:WriteMem@addr),(c:4009)	;volatile
	line	212
	
l4933:
	movff	(c:WriteMem@data),(c:4008)	;volatile
	line	213
	
l4935:
	bcf	((c:4006)),c,7	;volatile
	line	214
	
l4937:
	bcf	((c:4006)),c,6	;volatile
	line	215
	
l4939:
	bsf	((c:4006)),c,2	;volatile
	line	216
	
l4941:
	bcf	((c:4082)),c,7	;volatile
	line	217
	
l4943:
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	218
	
l4945:
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	219
	
l4947:
	bsf	((c:4006)),c,1	;volatile
	line	220
	
l4949:
	bsf	((c:4082)),c,7	;volatile
	line	221
	goto	l557
	
l558:
	
l557:
	btfsc	((c:4006)),c,1	;volatile
	goto	u5631
	goto	u5630
u5631:
	goto	l557
u5630:
	
l559:
	line	222
	bcf	((c:4006)),c,2	;volatile
	line	223
	
l560:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_WriteMem
	__end_of_WriteMem:
	signat	_WriteMem,8313
	global	_EnhancedRead

;; *************** function _EnhancedRead *****************
;; Defined at:
;;		line 198 in file "/home/newtonis/Robots/Rayito2/config.c"
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
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	line	198
global __ptext26
__ptext26:
psect	text26
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	198
	global	__size_of_EnhancedRead
	__size_of_EnhancedRead	equ	__end_of_EnhancedRead-_EnhancedRead
	
_EnhancedRead:
;incstack = 0
	opt	stack 28
	line	201
	
l5513:
	movlw	low(0)
	movwf	((c:EnhancedRead@i)),c
	
l5515:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u6331
	goto	u6330

u6331:
	goto	l5519
u6330:
	goto	l554
	
l5517:
	goto	l554
	
l549:
	line	202
	
l5519:
	movff	(c:EnhancedRead@i),??_EnhancedRead+0+0
	rlncf	(??_EnhancedRead+0+0),c
	rlncf	(??_EnhancedRead+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_EnhancedRead+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_EnhancedRead+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	203
	
l5521:
	bsf	((c:4034)),c,1	;volatile
	line	204
	goto	l551
	
l552:
	
l551:
	btfsc	((c:4034)),c,1	;volatile
	goto	u6341
	goto	u6340
u6341:
	goto	l551
u6340:
	goto	l5523
	
l553:
	line	205
	
l5523:
	movf	((c:4036)),c,w	;volatile
	mullw	04h
	movff	prodl,(c:EnhancedRead@aux)
	movff	prodh,(c:EnhancedRead@aux+1)
	line	206
	
l5525:
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
	line	207
	
l5527:
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
	line	201
	
l5529:
	incf	((c:EnhancedRead@i)),c
	
l5531:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u6351
	goto	u6350

u6351:
	goto	l5519
u6350:
	goto	l554
	
l550:
	line	209
	
l554:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_EnhancedRead
	__end_of_EnhancedRead:
	signat	_EnhancedRead,89
	global	_CheckMem

;; *************** function _CheckMem *****************
;; Defined at:
;;		line 206 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  data            2   17[COMRAM] PTR unsigned char 
;;		 -> main@old_420(1), main@old_417(1), main@old_415(1), main@old_412(1), 
;;		 -> main@old(1), 
;; Auto vars:     Size  Location     Type
;;  rta             1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_ReadMem
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	206
global __ptext27
__ptext27:
psect	text27
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	206
	global	__size_of_CheckMem
	__size_of_CheckMem	equ	__end_of_CheckMem-_CheckMem
	
_CheckMem:
;incstack = 0
	opt	stack 28
	line	208
	
l5347:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u6131
	goto	u6130
u6131:
	goto	l5351
u6130:
	line	209
	
l5349:
		movlw	low(CheckMem@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(CheckMem@rta)
	movwf	((c:ReadMem@data+1)),c

	movlw	(0)&0ffh
	
	call	_ReadMem
	line	210
	goto	l5355
	
l167:
	
l5351:
		decf	((c:_MF)),c,w
	btfss	status,2
	goto	u6141
	goto	u6140

u6141:
	goto	l5355
u6140:
	line	211
	
l5353:
		movlw	low(CheckMem@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(CheckMem@rta)
	movwf	((c:ReadMem@data+1)),c

	movlw	(080h)&0ffh
	
	call	_ReadMem
	goto	l5355
	line	212
	
l169:
	goto	l5355
	line	213
	
l168:
	
l5355:
	movlw	low(0)
	movwf	((c:_CheckMem$321)),c
	
l5357:
	movf	((c:CheckMem@rta)),c,w
	btfsc	status,2
	goto	u6151
	goto	u6150
u6151:
	goto	l5363
u6150:
	
l5359:
		incf	((c:CheckMem@rta)),c,w
	btfsc	status,2
	goto	u6161
	goto	u6160

u6161:
	goto	l5363
u6160:
	
l5361:
	movlw	low(01h)
	movwf	((c:_CheckMem$321)),c
	goto	l5363
	
l171:
	
l5363:
	movff	(c:CheckMem@data),fsr2l
	movff	(c:CheckMem@data+1),fsr2h
	movff	(c:_CheckMem$321),indf2

	line	214
	
l172:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_CheckMem
	__end_of_CheckMem:
	signat	_CheckMem,4217
	global	_ReadMem

;; *************** function _ReadMem *****************
;; Defined at:
;;		line 224 in file "/home/newtonis/Robots/Rayito2/config.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  data            2   14[COMRAM] PTR unsigned char 
;;		 -> GetValue@rta(1), Length@rta(1), CheckMem@rta(1), 
;; Auto vars:     Size  Location     Type
;;  addr            1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_CheckMem
;;		_Length
;;		_GetValue
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	224
global __ptext28
__ptext28:
psect	text28
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	224
	global	__size_of_ReadMem
	__size_of_ReadMem	equ	__end_of_ReadMem-_ReadMem
	
_ReadMem:
;incstack = 0
	opt	stack 27
	movwf	((c:ReadMem@addr)),c
	line	225
	
l4849:
	movff	(c:ReadMem@addr),(c:4009)	;volatile
	line	226
	
l4851:
	bcf	((c:4006)),c,7	;volatile
	line	227
	
l4853:
	bcf	((c:4006)),c,6	;volatile
	line	228
	
l4855:
	bsf	((c:4006)),c,0	;volatile
	line	229
	goto	l563
	
l564:
	
l563:
	btfsc	((c:4006)),c,0	;volatile
	goto	u5441
	goto	u5440
u5441:
	goto	l563
u5440:
	goto	l4857
	
l565:
	line	230
	
l4857:
	movff	(c:ReadMem@data),fsr2l
	movff	(c:ReadMem@data+1),fsr2h
	movff	(c:4008),indf2	;volatile

	line	231
	
l566:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadMem
	__end_of_ReadMem:
	signat	_ReadMem,8313
	global	_AdvanceLow

;; *************** function _AdvanceLow *****************
;; Defined at:
;;		line 296 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kd              3    9[BANK0 ] void 
;;  kp              3    6[BANK0 ] void 
;;  speed           2   12[BANK0 ] int 
;;  mod             2    0        int 
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
;;      Locals:         0       8       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       8       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MotorsSpeed
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	296
global __ptext29
__ptext29:
psect	text29
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	296
	global	__size_of_AdvanceLow
	__size_of_AdvanceLow	equ	__end_of_AdvanceLow-_AdvanceLow
	
_AdvanceLow:
;incstack = 0
	opt	stack 26
	line	300
	
l5479:
	movff	0+(_VEL+04h),(AdvanceLow@speed)
	movff	1+(_VEL+04h),(AdvanceLow@speed+1)
	line	301
	movff	0+(_VKP+06h),(AdvanceLow@kp)
	movff	1+(_VKP+06h),(AdvanceLow@kp+1)
	movff	2+(_VKP+06h),(AdvanceLow@kp+2)
	line	302
	movff	0+(_VKD+06h),(AdvanceLow@kd)
	movff	1+(_VKD+06h),(AdvanceLow@kd+1)
	movff	2+(_VKD+06h),(AdvanceLow@kd+2)
	line	304
	
l5481:
	movff	(c:_last),??_AdvanceLow+0+0
	movff	(c:_last+1),??_AdvanceLow+0+0+1
	comf	(??_AdvanceLow+0+0),c
	comf	(??_AdvanceLow+0+1),c
	infsnz	(??_AdvanceLow+0+0),c
	incf	(??_AdvanceLow+0+1),c
	movf	((c:_line)),c,w
	addwf	(??_AdvanceLow+0+0),c,w
	movwf	((c:_der)),c
	movf	((c:_line+1)),c,w
	addwfc	(??_AdvanceLow+0+1),c,w
	movwf	1+((c:_der)),c
	line	305
	
l5483:
	movff	(AdvanceLow@kd),(c:___ftmul@f2)
	movff	(AdvanceLow@kd+1),(c:___ftmul@f2+1)
	movff	(AdvanceLow@kd+2),(c:___ftmul@f2+2)
	movff	(c:_der),(c:___awtoft@c)
	movff	(c:_der+1),(c:___awtoft@c+1)
	call	___awtoft	;wreg free
	movff	0+?___awtoft,(c:___ftmul@f1)
	movff	1+?___awtoft,(c:___ftmul@f1+1)
	movff	2+?___awtoft,(c:___ftmul@f1+2)
	call	___ftmul	;wreg free
	movff	0+?___ftmul,(c:___ftadd@f2)
	movff	1+?___ftmul,(c:___ftadd@f2+1)
	movff	2+?___ftmul,(c:___ftadd@f2+2)
	movff	(AdvanceLow@kp),(c:___ftmul@f2)
	movff	(AdvanceLow@kp+1),(c:___ftmul@f2+1)
	movff	(AdvanceLow@kp+2),(c:___ftmul@f2+2)
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
	movff	0+?___ftadd,(c:___fttol@f1)
	movff	1+?___ftadd,(c:___fttol@f1+1)
	movff	2+?___ftadd,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_formula)
	movff	1+?___fttol,(c:_formula+1)
	line	306
	
l5485:
	btfsc	((c:_formula+1)),c,7
	goto	u6321
	movf	((c:_formula+1)),c,w
	bnz	u6320
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u6321
	goto	u6320

u6321:
	goto	l5489
u6320:
	line	307
	
l5487:
	movff	(c:_formula),??_AdvanceLow+0+0
	movff	(c:_formula+1),??_AdvanceLow+0+0+1
	comf	(??_AdvanceLow+0+0),c
	comf	(??_AdvanceLow+0+1),c
	infsnz	(??_AdvanceLow+0+0),c
	incf	(??_AdvanceLow+0+1),c
	movlb	0	; () banked
	movf	((AdvanceLow@speed))&0ffh,w
	addwf	(??_AdvanceLow+0+0),c,w
	movwf	((c:MotorsSpeed@A)),c
	movlb	0	; () banked
	movf	((AdvanceLow@speed+1))&0ffh,w
	addwfc	(??_AdvanceLow+0+1),c,w
	movwf	1+((c:MotorsSpeed@A)),c
	movff	(AdvanceLow@speed),(c:MotorsSpeed@B)
	movff	(AdvanceLow@speed+1),(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	308
	goto	l5491
	
l223:
	line	309
	
l5489:
	movff	(AdvanceLow@speed),(c:MotorsSpeed@A)
	movff	(AdvanceLow@speed+1),(c:MotorsSpeed@A+1)
	movf	((c:_formula)),c,w
	movlb	0	; () banked
	addwf	((AdvanceLow@speed))&0ffh,w
	movwf	((c:MotorsSpeed@B)),c
	movf	((c:_formula+1)),c,w
	movlb	0	; () banked
	addwfc	((AdvanceLow@speed+1))&0ffh,w
	movwf	1+((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	goto	l5491
	line	310
	
l224:
	line	311
	
l5491:
	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	line	312
	
l225:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_AdvanceLow
	__end_of_AdvanceLow:
	signat	_AdvanceLow,89
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "/opt/microchip/xc8/v1.38/sources/common/fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   53[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    1[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  sign1           1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   53[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         9       6       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/fttol.c"
	line	44
global __ptext30
__ptext30:
psect	text30
	file	"/opt/microchip/xc8/v1.38/sources/common/fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 29
	line	49
	
l5281:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u6031
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u6031:
	movf	(??___fttol+0+0),c,w
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	btfss	status,2
	goto	u6041
	goto	u6040
u6041:
	goto	l5287
u6040:
	line	50
	
l5283:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l938
	
l5285:; BSR set to: 0

	goto	l938
	
l937:; BSR set to: 0

	line	51
	
l5287:; BSR set to: 0

	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u6050
u6055:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u6050:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u6055
	movf	(??___fttol+1+0),c,w
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l5289:; BSR set to: 0

	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l5291:; BSR set to: 0

	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l5293:; BSR set to: 0

	movf	((c:___fttol@f1)),c,w
	movlb	0	; () banked
	movwf	((___fttol@lval))&0ffh
	movf	((c:___fttol@f1+1)),c,w
	movlb	0	; () banked
	movwf	1+((___fttol@lval))&0ffh
	
	movf	((c:___fttol@f1+2)),c,w
	movlb	0	; () banked
	movwf	2+((___fttol@lval))&0ffh
	
	movlb	0	; () banked
	clrf	3+((___fttol@lval))&0ffh
	line	55
	
l5295:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l5297:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___fttol@exp1))&0ffh,7
	goto	u6060
	goto	u6061

u6061:
	goto	l5309
u6060:
	line	57
	
l5299:; BSR set to: 0

	movlb	0	; () banked
		movf	((___fttol@exp1))&0ffh,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u6071
	goto	u6070

u6071:
	goto	l5305
u6070:
	line	58
	
l5301:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l938
	
l5303:; BSR set to: 0

	goto	l938
	
l940:; BSR set to: 0

	goto	l5305
	line	59
	
l941:; BSR set to: 0

	line	60
	
l5305:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___fttol@lval+3))&0ffh
	rrcf	((___fttol@lval+2))&0ffh
	rrcf	((___fttol@lval+1))&0ffh
	rrcf	((___fttol@lval))&0ffh
	line	61
	
l5307:; BSR set to: 0

	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l5305
	goto	l5319
	
l942:; BSR set to: 0

	line	62
	goto	l5319
	
l939:; BSR set to: 0

	line	63
	
l5309:; BSR set to: 0

		movlw	018h-1
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u6081
	goto	u6080

u6081:
	goto	l5317
u6080:
	line	64
	
l5311:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l938
	
l5313:; BSR set to: 0

	goto	l938
	
l944:; BSR set to: 0

	line	65
	goto	l5317
	
l946:; BSR set to: 0

	line	66
	
l5315:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___fttol@lval))&0ffh
	rlcf	((___fttol@lval+1))&0ffh
	rlcf	((___fttol@lval+2))&0ffh
	rlcf	((___fttol@lval+3))&0ffh
	line	67
	movlb	0	; () banked
	decf	((___fttol@exp1))&0ffh
	goto	l5317
	line	68
	
l945:; BSR set to: 0

	line	65
	
l5317:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6091
	goto	u6090
u6091:
	goto	l5315
u6090:
	goto	l5319
	
l947:; BSR set to: 0

	goto	l5319
	line	69
	
l943:; BSR set to: 0

	line	70
	
l5319:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6101
	goto	u6100
u6101:
	goto	l5323
u6100:
	line	71
	
l5321:; BSR set to: 0

	movlb	0	; () banked
	comf	((___fttol@lval+3))&0ffh
	comf	((___fttol@lval+2))&0ffh
	comf	((___fttol@lval+1))&0ffh
	negf	((___fttol@lval))&0ffh
	movlw	0
	addwfc	((___fttol@lval+1))&0ffh
	addwfc	((___fttol@lval+2))&0ffh
	addwfc	((___fttol@lval+3))&0ffh
	goto	l5323
	
l948:; BSR set to: 0

	line	72
	
l5323:; BSR set to: 0

	movff	(___fttol@lval),(c:?___fttol)
	movff	(___fttol@lval+1),(c:?___fttol+1)
	movff	(___fttol@lval+2),(c:?___fttol+2)
	movff	(___fttol@lval+3),(c:?___fttol+3)
	goto	l938
	
l5325:; BSR set to: 0

	line	73
	
l938:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.38/sources/common/ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;;  f2              3   29[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   36[COMRAM] unsigned um
;;  sign            1   40[COMRAM] unsigned char 
;;  cntr            1   39[COMRAM] unsigned char 
;;  exp             1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[COMRAM] float 
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
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/ftmul.c"
	line	62
global __ptext31
__ptext31:
psect	text31
	file	"/opt/microchip/xc8/v1.38/sources/common/ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	67
	
l5221:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u5961
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u5961:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u5971
	goto	u5970
u5971:
	goto	l5227
u5970:
	line	68
	
l5223:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l917
	
l5225:
	goto	l917
	
l916:
	line	69
	
l5227:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u5981
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u5981:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u5991
	goto	u5990
u5991:
	goto	l5233
u5990:
	line	70
	
l5229:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l917
	
l5231:
	goto	l917
	
l918:
	line	71
	
l5233:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l5235:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l5237:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l5239:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l5241:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l5243:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l5245:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l5247
	line	135
	
l919:
	line	136
	
l5247:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u6001
	goto	u6000
u6001:
	goto	l5251
u6000:
	line	137
	
l5249:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l5251
	
l920:
	line	138
	
l5251:
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
	
l5253:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l5247
	goto	l5255
	
l921:
	line	143
	
l5255:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l5257
	line	144
	
l922:
	line	145
	
l5257:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u6011
	goto	u6010
u6011:
	goto	l5261
u6010:
	line	146
	
l5259:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l5261
	
l923:
	line	147
	
l5261:
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
	
l5263:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l5257
	goto	l5265
	
l924:
	line	156
	
l5265:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l917
	
l5267:
	line	157
	
l917:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "/opt/microchip/xc8/v1.38/sources/common/ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   41[COMRAM] float 
;;  f2              3   44[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   52[COMRAM] unsigned char 
;;  exp2            1   51[COMRAM] unsigned char 
;;  sign            1   50[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   41[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/ftadd.c"
	line	86
global __ptext32
__ptext32:
psect	text32
	file	"/opt/microchip/xc8/v1.38/sources/common/ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 28
	line	90
	
l5151:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u5751
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u5751:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u5761
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u5761:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l5153:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u5771
	goto	u5770
u5771:
	goto	l870
u5770:
	
l5155:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u5781
	goto	u5780

u5781:
	goto	l5159
u5780:
	
l5157:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u5791
	goto	u5790

u5791:
	goto	l5159
u5790:
	
l870:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l871
	
l868:
	line	94
	
l5159:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u5801
	goto	u5800
u5801:
	goto	l874
u5800:
	
l5161:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u5811
	goto	u5810

u5811:
	goto	l5165
u5810:
	
l5163:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u5821
	goto	u5820

u5821:
	goto	l5165
u5820:
	
l874:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l871
	
l872:
	line	96
	
l5165:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l5167:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u5831
	goto	u5830
u5831:
	goto	l5171
u5830:
	line	98
	
l5169:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l5171
	
l875:
	line	99
	
l5171:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u5841
	goto	u5840
u5841:
	goto	l876
u5840:
	line	100
	
l5173:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l876:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l5175:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l5177:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l5179:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u5851
	goto	u5850

u5851:
	goto	l5191
u5850:
	goto	l5181
	line	109
	
l878:
	line	110
	
l5181:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l5183:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u5861
	goto	u5860

u5861:
	goto	l5189
u5860:
	
l5185:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u5871
	goto	u5870
u5871:
	goto	l5181
u5870:
	goto	l5189
	
l880:
	goto	l5189
	
l881:
	line	113
	goto	l5189
	
l883:
	line	114
	
l5187:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l5189
	line	116
	
l882:
	line	113
	
l5189:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u5881
	goto	u5880

u5881:
	goto	l5187
u5880:
	goto	l885
	
l884:
	line	117
	goto	l885
	
l877:
	
l5191:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u5891
	goto	u5890

u5891:
	goto	l885
u5890:
	goto	l5193
	line	120
	
l887:
	line	121
	
l5193:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l5195:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u5901
	goto	u5900

u5901:
	goto	l5201
u5900:
	
l5197:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u5911
	goto	u5910
u5911:
	goto	l5193
u5910:
	goto	l5201
	
l889:
	goto	l5201
	
l890:
	line	124
	goto	l5201
	
l892:
	line	125
	
l5199:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l5201
	line	127
	
l891:
	line	124
	
l5201:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u5921
	goto	u5920

u5921:
	goto	l5199
u5920:
	goto	l885
	
l893:
	goto	l885
	line	128
	
l886:
	line	129
	
l885:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u5931
	goto	u5930
u5931:
	goto	l894
u5930:
	line	131
	
l5203:
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
	
l894:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u5941
	goto	u5940
u5941:
	goto	l5207
u5940:
	line	136
	
l5205:
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

	goto	l5207
	line	138
	
l895:
	line	139
	
l5207:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l5209:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l5211:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u5951
	goto	u5950
u5951:
	goto	l5217
u5950:
	line	142
	
l5213:
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
	
l5215:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l5217
	line	145
	
l896:
	line	146
	
l5217:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l871
	
l5219:
	line	148
	
l871:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
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
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/awtoft.c"
	line	32
global __ptext33
__ptext33:
psect	text33
	file	"/opt/microchip/xc8/v1.38/sources/common/awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 28
	line	36
	
l5269:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l5271:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u6020
	goto	u6021

u6021:
	goto	l5277
u6020:
	line	38
	
l5273:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l5275:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l5277
	line	40
	
l818:
	line	41
	
l5277:
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
	goto	l819
	
l5279:
	line	42
	
l819:
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
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/float.c"
	line	62
global __ptext34
__ptext34:
psect	text34
	file	"/opt/microchip/xc8/v1.38/sources/common/float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 28
	line	64
	
l4895:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u5551
	goto	u5550
u5551:
	goto	l4899
u5550:
	
l4897:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u5561
	goto	u5560

u5561:
	goto	l4905
u5560:
	goto	l4899
	
l835:
	line	65
	
l4899:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l836
	
l4901:
	goto	l836
	
l833:
	line	66
	goto	l4905
	
l838:
	line	67
	
l4903:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l4905
	line	69
	
l837:
	line	66
	
l4905:
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
	goto	u5571
	goto	u5570

u5571:
	goto	l4903
u5570:
	goto	l4911
	
l839:
	line	70
	goto	l4911
	
l841:
	line	71
	
l4907:
	incf	((c:___ftpack@exp)),c
	line	72
	
l4909:
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
	goto	l4911
	line	74
	
l840:
	line	70
	
l4911:
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
	goto	u5581
	goto	u5580

u5581:
	goto	l4907
u5580:
	goto	l4915
	
l842:
	line	75
	goto	l4915
	
l844:
	line	76
	
l4913:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l4915
	line	78
	
l843:
	line	75
	
l4915:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u5591
	goto	u5590
u5591:
	goto	l847
u5590:
	
l4917:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u5601
	goto	u5600

u5601:
	goto	l4913
u5600:
	goto	l847
	
l846:
	
l847:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u5611
	goto	u5610
u5611:
	goto	l4921
u5610:
	line	80
	
l4919:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l4921
	
l848:
	line	81
	
l4921:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l4923:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l4927
u5620:
	line	84
	
l4925:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l4927
	
l849:
	line	85
	
l4927:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l836
	
l4929:
	line	86
	
l836:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_MotorsSpeed

;; *************** function _MotorsSpeed *****************
;; Defined at:
;;		line 193 in file "/home/newtonis/Robots/Rayito2/config.c"
;; Parameters:    Size  Location     Type
;;  A               2   28[COMRAM] int 
;;  B               2   30[COMRAM] int 
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
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	193
global __ptext35
__ptext35:
psect	text35
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	193
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 27
	line	194
	
l5087:
	goto	l539
	
l5089:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1740)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1740+1)
	goto	l5091
	
l539:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1740)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1740+1)
	goto	l5091
	
l541:
	
l5091:
	movff	(c:_MotorsSpeed$1740),(c:MotorASpeed@S)
	movff	(c:_MotorsSpeed$1740+1),(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	195
	
l5093:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1742)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1742+1)
	goto	l5095
	
l543:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1742)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1742+1)
	goto	l5095
	
l545:
	
l5095:
	movff	(c:_MotorsSpeed$1742),(c:MotorBSpeed@S)
	movff	(c:_MotorsSpeed$1742+1),(c:MotorBSpeed@S+1)
	call	_MotorBSpeed	;wreg free
	line	196
	
l546:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8313
	global	_MotorBSpeed

;; *************** function _MotorBSpeed *****************
;; Defined at:
;;		line 181 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text36,class=CODE,space=0,reloc=2
	line	181
global __ptext36
__ptext36:
psect	text36
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	181
	global	__size_of_MotorBSpeed
	__size_of_MotorBSpeed	equ	__end_of_MotorBSpeed-_MotorBSpeed
	
_MotorBSpeed:
;incstack = 0
	opt	stack 27
	line	182
	
l4877:
	negf	((c:MotorBSpeed@S)),c
	comf	((c:MotorBSpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorBSpeed@S+1)),c
	line	183
	
l4879:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5501
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u5501
	goto	u5500

u5501:
	goto	l4883
u5500:
	
l4881:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4883
	
l524:
	goto	l4883
	
l526:
	line	184
	
l4883:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u5511
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u5511
	goto	u5510

u5511:
	goto	l4887
u5510:
	
l4885:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4887
	
l528:
	goto	l4887
	
l530:
	line	186
	
l4887:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5521
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u5520
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u5521
	goto	u5520

u5521:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u5538
u5520:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u5538:
	rlncf	(??_MotorBSpeed+0+0),c
	rlncf	(??_MotorBSpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	187
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5540
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u5541
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u5541
	goto	u5540

u5541:
	goto	l4891
u5540:
	
l4889:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l4891
	
l532:
	goto	l4891
	
l534:
	line	189
	
l4891:
	movff	(c:MotorBSpeed@S),??_MotorBSpeed+0+0
	movlw	03h
	andwf	(??_MotorBSpeed+0+0),c
	swapf	(??_MotorBSpeed+0+0),c
	movf	((c:4026)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:4026)),c	;volatile
	line	190
	
l4893:
	movff	(c:MotorBSpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorBSpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4027)),c	;volatile
	line	191
	
l535:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorBSpeed
	__end_of_MotorBSpeed:
	signat	_MotorBSpeed,4217
	global	_MotorASpeed

;; *************** function _MotorASpeed *****************
;; Defined at:
;;		line 170 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text37,class=CODE,space=0,reloc=2
	line	170
global __ptext37
__ptext37:
psect	text37
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	170
	global	__size_of_MotorASpeed
	__size_of_MotorASpeed	equ	__end_of_MotorASpeed-_MotorASpeed
	
_MotorASpeed:
;incstack = 0
	opt	stack 27
	line	171
	
l4859:
	negf	((c:MotorASpeed@S)),c
	comf	((c:MotorASpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorASpeed@S+1)),c
	line	172
	
l4861:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5451
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u5451
	goto	u5450

u5451:
	goto	l4865
u5450:
	
l4863:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l4865
	
l509:
	goto	l4865
	
l511:
	line	173
	
l4865:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u5461
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u5461
	goto	u5460

u5461:
	goto	l4869
u5460:
	
l4867:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l4869
	
l513:
	goto	l4869
	
l515:
	line	175
	
l4869:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5471
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u5470
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u5471
	goto	u5470

u5471:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u5488
u5470:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u5488:
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	176
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5490
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u5491
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u5491
	goto	u5490

u5491:
	goto	l4873
u5490:
	
l4871:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l4873
	
l517:
	goto	l4873
	
l519:
	line	178
	
l4873:
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
	line	179
	
l4875:
	movff	(c:MotorASpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorASpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4030)),c	;volatile
	line	180
	
l520:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorASpeed
	__end_of_MotorASpeed:
	signat	_MotorASpeed,4217
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
;;		_main
;;		_MotorASpeed
;;		_MotorBSpeed
;;		_EnhancedRead
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
	line	8
global __ptext38
__ptext38:
psect	text38
	file	"/opt/microchip/xc8/v1.38/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 29
	line	14
	
l4663:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l4665:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u5120
	goto	u5121

u5121:
	goto	l4671
u5120:
	line	16
	
l4667:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l4669:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l4671
	line	18
	
l790:
	line	19
	
l4671:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u5130
	goto	u5131

u5131:
	goto	l4677
u5130:
	line	20
	
l4673:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l4675:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l4677
	line	22
	
l791:
	line	23
	
l4677:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l4679:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u5141
	goto	u5140

u5141:
	goto	l4699
u5140:
	line	25
	
l4681:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l4685
	
l794:
	line	27
	
l4683:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l4685
	line	29
	
l793:
	line	26
	
l4685:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u5151
	goto	u5150
u5151:
	goto	l4683
u5150:
	goto	l4687
	
l795:
	goto	l4687
	line	30
	
l796:
	line	31
	
l4687:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l4689:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u5161
	goto	u5160

u5161:
	goto	l4695
u5160:
	line	33
	
l4691:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l4693:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l4695
	line	35
	
l797:
	line	36
	
l4695:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l4697:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l4687
	goto	l4699
	
l798:
	goto	l4699
	line	38
	
l792:
	line	39
	
l4699:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u5171
	goto	u5170
u5171:
	goto	l4703
u5170:
	line	40
	
l4701:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l4703
	
l799:
	line	41
	
l4703:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l800
	
l4705:
	line	42
	
l800:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 126 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	126
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
	line	127
	
i2l3923:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u388_41
	goto	i2u388_40
i2u388_41:
	goto	i2l101
i2u388_40:
	line	128
	
i2l3925:
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME))&0ffh
	movlw	0
	addwfc	((_TIME+1))&0ffh
	addwfc	((_TIME+2))&0ffh
	addwfc	((_TIME+3))&0ffh
	line	129
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME2))&0ffh
	movlw	0
	addwfc	((_TIME2+1))&0ffh
	addwfc	((_TIME2+2))&0ffh
	addwfc	((_TIME2+3))&0ffh
	line	130
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME3))&0ffh
	movlw	0
	addwfc	((_TIME3+1))&0ffh
	addwfc	((_TIME3+2))&0ffh
	addwfc	((_TIME3+3))&0ffh
	line	131
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME4))&0ffh
	movlw	0
	addwfc	((_TIME4+1))&0ffh
	addwfc	((_TIME4+2))&0ffh
	addwfc	((_TIME4+3))&0ffh
	line	132
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME5))&0ffh
	movlw	0
	addwfc	((_TIME5+1))&0ffh
	addwfc	((_TIME5+2))&0ffh
	addwfc	((_TIME5+3))&0ffh
	line	133
	
i2l3927:; BSR set to: 0

	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	134
	
i2l3929:; BSR set to: 0

	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	135
	
i2l3931:; BSR set to: 0

	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l101
	line	136
	
i2l100:; BSR set to: 0

	line	137
	
i2l101:
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
