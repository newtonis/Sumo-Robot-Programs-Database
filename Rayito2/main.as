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
	line	187

;initializer for _sd
	dw	(01h)&0ffffh
	dw	(07h)&0ffffh
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	line	37

;initializer for _TIMEFRENO
	dw	(0C8h) & 0xffff
	dw	highword(0C8h)
	line	176

;initializer for _test_kd
	db	low(float24(20.000000000000000))
	db	high(float24(20.000000000000000))
	db	low highword(float24(20.000000000000000))
	line	175

;initializer for _test_kp
	db	low(float24(7.0000000000000000))
	db	high(float24(7.0000000000000000))
	db	low highword(float24(7.0000000000000000))
	line	174

;initializer for _LOW_SPEED
	dw	(0208h)&0ffffh
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	182

;initializer for _VKD
	db	low(float24(20.000000000000000))
	db	high(float24(20.000000000000000))
	db	low highword(float24(20.000000000000000))
	db	low(float24(50.000000000000000))
	db	high(float24(50.000000000000000))
	db	low highword(float24(50.000000000000000))
	db	low(float24(30.000000000000000))
	db	high(float24(30.000000000000000))
	db	low highword(float24(30.000000000000000))
	db	low(float24(80.000000000000000))
	db	high(float24(80.000000000000000))
	db	low highword(float24(80.000000000000000))
	db	low(float24(50.000000000000000))
	db	high(float24(50.000000000000000))
	db	low highword(float24(50.000000000000000))
	db	low(float24(50.000000000000000))
	db	high(float24(50.000000000000000))
	db	low highword(float24(50.000000000000000))
	line	181

;initializer for _VKP
	db	low(float24(7.0000000000000000))
	db	high(float24(7.0000000000000000))
	db	low highword(float24(7.0000000000000000))
	db	low(float24(6.2999999999999998))
	db	high(float24(6.2999999999999998))
	db	low highword(float24(6.2999999999999998))
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
	line	180

;initializer for _VEL
	dw	(01C2h)&0ffffh
	dw	(02BCh)&0ffffh
	dw	(0190h)&0ffffh
	dw	(03E8h)&0ffffh
	dw	(-1000)&0ffffh
	dw	(0190h)&0ffffh
	line	185

;initializer for _fw
	dw	(06h)&0ffffh
	dw	(05h)&0ffffh
	dw	(04h)&0ffffh
	dw	(03h)&0ffffh
	dw	(02h)&0ffffh
	line	186

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
	
STR_23:
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
STR_11	equ	STR_10+0
STR_15	equ	STR_10+0
STR_28	equ	STR_26+0
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
	line	187
	global	_sd
_sd:
       ds      10
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	37
	global	_TIMEFRENO
	global	_TIMEFRENO
_TIMEFRENO:
       ds      4
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	176
	global	_test_kd
	global	_test_kd
_test_kd:
       ds      3
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	175
	global	_test_kp
	global	_test_kp
_test_kp:
       ds      3
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	174
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
	line	182
	global	_VKD
_VKD:
       ds      18
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	181
	global	_VKP
_VKP:
       ds      18
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	180
	global	_VEL
_VEL:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	185
	global	_fw
_fw:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	186
	global	_pd
_pd:
       ds      10
psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
	global	_LEN
_LEN:
       ds      200
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
; Clear objects allocated to BANK0 (46 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	46
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
	global	main@kp_439
main@kp_439:	; 3 bytes @ 0x0
	ds   3
	global	main@kd_440
main@kd_440:	; 3 bytes @ 0x3
	ds   3
	global	_main$2346
_main$2346:	; 4 bytes @ 0x6
	ds   4
	global	main@kp
main@kp:	; 3 bytes @ 0xA
	ds   3
	global	main@kd
main@kd:	; 3 bytes @ 0xD
	ds   3
	global	_main$427
_main$427:	; 2 bytes @ 0x10
	ds   2
	global	_main$428
_main$428:	; 2 bytes @ 0x12
	ds   2
	global	_main$434
_main$434:	; 2 bytes @ 0x14
	ds   2
	global	_main$435
_main$435:	; 2 bytes @ 0x16
	ds   2
	global	_main$442
_main$442:	; 2 bytes @ 0x18
	ds   2
	global	_main$443
_main$443:	; 2 bytes @ 0x1A
	ds   2
	global	main@old_414
main@old_414:	; 1 bytes @ 0x1C
	ds   1
	global	main@old_419
main@old_419:	; 1 bytes @ 0x1D
	ds   1
	global	_main$2350
_main$2350:	; 2 bytes @ 0x1E
	ds   2
	global	_main$2351
_main$2351:	; 2 bytes @ 0x20
	ds   2
	global	_main$2352
_main$2352:	; 2 bytes @ 0x22
	ds   2
	global	main@old_411
main@old_411:	; 1 bytes @ 0x24
	ds   1
	global	main@old_416
main@old_416:	; 1 bytes @ 0x25
	ds   1
	global	_main$399
_main$399:	; 2 bytes @ 0x26
	ds   2
	global	_main$405
_main$405:	; 2 bytes @ 0x28
	ds   2
	global	main@j_403
main@j_403:	; 2 bytes @ 0x2A
	ds   2
	global	main@i_402
main@i_402:	; 2 bytes @ 0x2C
	ds   2
	global	main@j_408
main@j_408:	; 2 bytes @ 0x2E
	ds   2
	global	_main$2340
_main$2340:	; 2 bytes @ 0x30
	ds   2
	global	_main$2341
_main$2341:	; 2 bytes @ 0x32
	ds   2
	global	_main$2342
_main$2342:	; 2 bytes @ 0x34
	ds   2
	global	_main$2343
_main$2343:	; 2 bytes @ 0x36
	ds   2
	global	_main$2344
_main$2344:	; 2 bytes @ 0x38
	ds   2
	global	_main$2345
_main$2345:	; 2 bytes @ 0x3A
	ds   2
	global	main@speed_438
main@speed_438:	; 2 bytes @ 0x3C
	ds   2
	global	main@mod
main@mod:	; 2 bytes @ 0x3E
	ds   2
	global	main@speed
main@speed:	; 2 bytes @ 0x40
	ds   2
	global	main@old
main@old:	; 1 bytes @ 0x42
	ds   1
	global	_main$2347
_main$2347:	; 2 bytes @ 0x43
	ds   2
	global	_main$2348
_main$2348:	; 2 bytes @ 0x45
	ds   2
	global	_main$2349
_main$2349:	; 2 bytes @ 0x47
	ds   2
	global	main@i_407
main@i_407:	; 2 bytes @ 0x49
	ds   2
	global	main@j
main@j:	; 2 bytes @ 0x4B
	ds   2
	global	main@i
main@i:	; 2 bytes @ 0x4D
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
	global	_isdigit$2000
_isdigit$2000:	; 1 bytes @ 0xF
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
	global	_CheckMem$320
_CheckMem$320:	; 1 bytes @ 0x13
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
	global	_Length$329
_Length$329:	; 2 bytes @ 0x16
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
	global	_GetValue$339
_GetValue$339:	; 2 bytes @ 0x18
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
	global	_MotorsSpeed$1734
_MotorsSpeed$1734:	; 2 bytes @ 0x20
	ds   2
	global	_MotorsSpeed$1736
_MotorsSpeed$1736:	; 2 bytes @ 0x22
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
	global	Line@j_349
Line@j_349:	; 2 bytes @ 0x30
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
	global	Line@i_350
Line@i_350:	; 2 bytes @ 0x36
	ds   2
??_Save:	; 1 bytes @ 0x38
	global	Line@v
Line@v:	; 4 bytes @ 0x38
	ds   1
??___fttol:	; 1 bytes @ 0x39
	global	_Save$323
_Save$323:	; 2 bytes @ 0x39
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
;!    Strings     1108
;!    Constant    10
;!    Data        90
;!    BSS         406
;!    Persistent  3
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     64      80
;!    BANK0           160     26      95
;!    BANK1           256      0     214
;!    BANK2           256      0     200
;!    BANK3           256     79      79
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 63
;!		 -> STR_28(CODE[63]), STR_27(CODE[41]), STR_26(CODE[63]), STR_25(CODE[36]), 
;!		 -> STR_24(CODE[42]), STR_23(CODE[40]), STR_22(CODE[40]), STR_21(CODE[49]), 
;!		 -> STR_20(CODE[47]), STR_19(CODE[38]), STR_18(CODE[47]), STR_17(CODE[45]), 
;!		 -> STR_16(CODE[61]), STR_15(CODE[60]), STR_14(CODE[53]), STR_13(CODE[39]), 
;!		 -> STR_12(CODE[44]), STR_11(CODE[60]), STR_10(CODE[60]), STR_9(CODE[47]), 
;!		 -> STR_8(CODE[38]), STR_7(CODE[43]), STR_6(CODE[39]), STR_5(CODE[45]), 
;!		 -> STR_4(CODE[41]), STR_3(CODE[37]), STR_2(CODE[37]), STR_1(CODE[36]), 
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
;!		 -> main@old_419(BANK3[1]), main@old_416(BANK3[1]), main@old_414(BANK3[1]), main@old_411(BANK3[1]), 
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
;! (0) _main                                               185   180      5  129737
;!                                             14 BANK0     12     7      5
;!                                              0 BANK3     79    79      0
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
;! (1) _Save                                                 6     6      0   11443
;!                                             56 COMRAM     6     6      0
;!                            _ShowMem
;!                           _WriteMem
;! ---------------------------------------------------------------------------------
;! (1) _ShowMem                                              3     3      0   10872
;!                                             53 COMRAM     3     3      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (1) _printf                                              34    22     12   10773
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
;! (2) ___wmul                                               6     2      4    6546
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
;!BANK3              100     4F      4F      11       30.9%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0      C8       9       78.1%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      D6       7       83.6%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     1A      5F       5       59.4%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     40      50       1       85.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     29C      20        0.0%
;!DATA                 0      0     29C       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 316 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   14[BANK0 ] int 
;;  argv            3   16[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  old             1   29[BANK3 ] unsigned char 
;;  old             1   28[BANK3 ] unsigned char 
;;  kd              3    3[BANK3 ] unsigned char 
;;  kp              3    0[BANK3 ] unsigned char 
;;  speed           2   60[BANK3 ] int 
;;  mod             2    0        int 
;;  kd              3   13[BANK3 ] int 
;;  kp              3   10[BANK3 ] int 
;;  speed           2   64[BANK3 ] int 
;;  mod             2   62[BANK3 ] int 
;;  old             1   37[BANK3 ] unsigned char 
;;  old             1   36[BANK3 ] unsigned char 
;;  i               2   73[BANK3 ] int 
;;  j               2   46[BANK3 ] int 
;;  i               2   44[BANK3 ] int 
;;  j               2   42[BANK3 ] int 
;;  old             1   66[BANK3 ] unsigned char 
;;  i               2   77[BANK3 ] int 
;;  j               2   75[BANK3 ] int 
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
;;      Locals:         0       0       0       0      79       0       0       0       0
;;      Temps:          0       7       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0      79       0       0       0       0
;;Total ram usage:       91 bytes
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
	line	316
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	316
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 26
	line	317
	
l5462:
	call	_initYBOT	;wreg free
	line	319
	
l5464:
	movlb	0	; () banked
	setf	((_gstatus))&0ffh
	line	320
	
l5466:; BSR set to: 0

	movlw	low(0)
	movlb	1	; () banked
	movwf	((_WAITIME))&0ffh
	movlw	high(0)
	movwf	((_WAITIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_WAITIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_WAITIME+3))&0ffh
	line	321
	
l5468:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_actual))&0ffh
	line	322
	
l5470:; BSR set to: 0

	movlw	high(07h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	line	323
	
l5472:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	324
	call	_Wixel	;wreg free
	line	326
	
l5474:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	327
	
l5476:
	bsf	((c:3971)),c,3	;volatile
	line	329
	
l5478:
	movlw	high(07h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	line	330
	goto	l5482
	
l227:; BSR set to: 1

	line	335
	
l5480:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	goto	l5482
	
l226:; BSR set to: 0

	line	330
	
l5482:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6341
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6340
	movlw	136
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	19
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6341
	goto	u6340

u6341:
	goto	l5480
u6340:
	goto	l6070
	
l228:; BSR set to: 0

	goto	l6070
	line	336
	
l229:; BSR set to: 0

	line	341
	goto	l6070
	line	342
	
l231:; BSR set to: 0

	line	343
	
l5484:; BSR set to: 0

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
	goto	u6350
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6351
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6351
	goto	u6350

u6351:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6368
u6350:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6368:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	344
	
l5486:; BSR set to: 0

	movlb	0	; () banked
	movf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6371
	goto	u6370

u6371:
	goto	l5490
u6370:
	line	345
	
l5488:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	346
	goto	l5498
	
l232:; BSR set to: 0

	
l5490:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6381
	goto	u6380

u6381:
	goto	l5494
u6380:
	line	347
	
l5492:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	line	348
	goto	l5498
	
l234:; BSR set to: 0

	
l5494:; BSR set to: 0

	movlb	0	; () banked
		incf	((_ma))&0ffh,w
	bnz	u6391
	movlb	0	; () banked
	incf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6391
	goto	u6390

u6391:
	goto	l5498
u6390:
	line	349
	
l5496:; BSR set to: 0

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
	goto	u6400
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6401
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6401
	goto	u6400

u6401:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6418
u6400:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6418:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5498
	line	350
	
l236:; BSR set to: 0

	goto	l5498
	line	351
	
l235:; BSR set to: 0

	goto	l5498
	
l233:; BSR set to: 0

	
l5498:; BSR set to: 0

	movlb	0	; () banked
	movf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6421
	goto	u6420

u6421:
	goto	l5502
u6420:
	line	352
	
l5500:; BSR set to: 0

	bcf	((c:3969)),c,0	;volatile
	line	353
	goto	l5510
	
l237:; BSR set to: 0

	
l5502:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6431
	goto	u6430

u6431:
	goto	l5506
u6430:
	line	354
	
l5504:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	355
	goto	l5510
	
l239:; BSR set to: 0

	
l5506:; BSR set to: 0

	movlb	0	; () banked
		incf	((_mb))&0ffh,w
	bnz	u6441
	movlb	0	; () banked
	incf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6441
	goto	u6440

u6441:
	goto	l5510
u6440:
	line	356
	
l5508:; BSR set to: 0

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
	goto	u6450
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6451
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6451
	goto	u6450

u6451:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6468
u6450:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6468:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5510
	line	357
	
l241:; BSR set to: 0

	goto	l5510
	line	359
	
l240:; BSR set to: 0

	goto	l5510
	
l238:; BSR set to: 0

	
l5510:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6471
	goto	u6470

u6471:
	goto	l5516
u6470:
	line	360
	
l5512:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	361
	
l5514:; BSR set to: 0

		movlw	low(STR_2)
	movwf	((c:printf@f)),c
	movlw	high(STR_2)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	goto	l5516
	line	362
	
l242:
	line	364
	
l5516:
	btfsc	((c:3971)),c,6	;volatile
	goto	u6481
	goto	u6480
u6481:
	goto	l243
u6480:
	
l5518:
	movlb	0	; () banked
	movf	((_fa))&0ffh,w
	movlb	0	; () banked
iorwf	((_fa+1))&0ffh,w
	btfss	status,2
	goto	u6491
	goto	u6490

u6491:
	goto	l243
u6490:
	line	365
	
l5520:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(01h)
	movwf	((_fa))&0ffh
	line	366
	
l5522:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfsc	status,2
	goto	u6501
	goto	u6500

u6501:
	goto	l245
u6500:
	
l5524:; BSR set to: 0

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
	goto	l243
	
l245:; BSR set to: 0

	movlb	0	; () banked
	setf	((_ma))&0ffh
	setf	((_ma+1))&0ffh
	goto	l243
	
l247:; BSR set to: 0

	line	367
	
l243:
	line	368
	btfsc	((c:3971)),c,4	;volatile
	goto	u6511
	goto	u6510
u6511:
	goto	l248
u6510:
	
l5526:
	movlb	0	; () banked
	movf	((_fb))&0ffh,w
	movlb	0	; () banked
iorwf	((_fb+1))&0ffh,w
	btfss	status,2
	goto	u6521
	goto	u6520

u6521:
	goto	l248
u6520:
	line	369
	
l5528:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(01h)
	movwf	((_fb))&0ffh
	line	370
	
l5530:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfsc	status,2
	goto	u6531
	goto	u6530

u6531:
	goto	l250
u6530:
	
l5532:; BSR set to: 0

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
	goto	l248
	
l250:; BSR set to: 0

	movlb	0	; () banked
	setf	((_mb))&0ffh
	setf	((_mb+1))&0ffh
	goto	l248
	
l252:; BSR set to: 0

	line	371
	
l248:
	line	372
	btfss	((c:3971)),c,6	;volatile
	goto	u6541
	goto	u6540
u6541:
	goto	l5536
u6540:
	
l5534:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	goto	l5536
	
l253:; BSR set to: 0

	line	373
	
l5536:
	btfss	((c:3971)),c,4	;volatile
	goto	u6551
	goto	u6550
u6551:
	goto	l5540
u6550:
	
l5538:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	goto	l5540
	
l254:; BSR set to: 0

	line	375
	
l5540:
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
	line	376
	goto	l6070
	line	377
	
l256:
	line	378
	
l5542:
	call	_EnhancedRead	;wreg free
	line	379
	
l5544:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6561
	goto	u6560

u6561:
	goto	l5576
u6560:
	line	380
	
l5546:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	381
	
l5548:; BSR set to: 0

		movlw	low(STR_3)
	movwf	((c:printf@f)),c
	movlw	high(STR_3)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	382
	
l5550:
		movlw	low(STR_4)
	movwf	((c:printf@f)),c
	movlw	high(STR_4)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	383
	movlw	low(01h)
	movwf	((c:_MF)),c
	
l5552:
		movlw	low(main@old)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	384
	
l5554:
	movlb	3	; () banked
	movf	((main@old))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u6571
	goto	u6570
u6571:
	goto	l5558
u6570:
	line	385
	
l5556:; BSR set to: 3

		movlw	low(STR_5)
	movwf	((c:printf@f)),c
	movlw	high(STR_5)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	386
	goto	l5564
	
l258:
	line	387
	
l5558:
	call	_Load	;wreg free
	line	388
	
l5560:
		movlw	low(STR_6)
	movwf	((c:printf@f)),c
	movlw	high(STR_6)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	389
	
l5562:
	call	_ShowMem	;wreg free
	goto	l5564
	line	390
	
l259:
	line	391
	
l5564:
	movlw	low(0)
	movwf	((c:_MF)),c
	
l5566:
		movlw	low(main@old)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	392
	movlb	3	; () banked
	movf	((main@old))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u6581
	goto	u6580
u6581:
	goto	l5570
u6580:
	line	393
	
l5568:; BSR set to: 3

		movlw	low(STR_7)
	movwf	((c:printf@f)),c
	movlw	high(STR_7)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	394
	goto	l5576
	
l260:
	line	395
	
l5570:
	call	_Load	;wreg free
	line	396
	
l5572:
		movlw	low(STR_8)
	movwf	((c:printf@f)),c
	movlw	high(STR_8)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	397
	
l5574:
	call	_ShowMem	;wreg free
	goto	l5576
	line	398
	
l261:
	goto	l5576
	line	399
	
l257:
	line	400
	
l5576:
	bcf	((c:3969)),c,0	;volatile
	line	401
	
l5578:
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
	goto	u6590
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6591
	movlw	233
	subwf	 (0+?___almod),c,w
	movlw	3
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6591
	goto	u6590

u6591:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6608
u6590:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6608:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	402
	
l5580:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	403
	
l5582:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u6611
	goto	u6610
u6611:
	goto	l5592
u6610:
	line	404
	
l5584:; BSR set to: 0

		movlw	low(STR_9)
	movwf	((c:printf@f)),c
	movlw	high(STR_9)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	405
	
l5586:
	movlw	high(09h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(09h)
	movwf	((_status))&0ffh
	line	406
	
l5588:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	407
	
l5590:; BSR set to: 0

	call	_initLED	;wreg free
	goto	l5592
	line	408
	
l262:
	line	414
	
l5592:
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l5594:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6621
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6620
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6621
	goto	u6620

u6621:
	goto	l5598
u6620:
	goto	l6070
	
l5596:; BSR set to: 3

	goto	l6070
	
l263:; BSR set to: 3

	line	415
	
l5598:; BSR set to: 3

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
	line	416
	
l5600:; BSR set to: 3

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
	movff	0+?___wmul,(_main$2340)
	movff	1+?___wmul,(_main$2340+1)
	
l5602:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2341)
	movff	1+?___wmul,(_main$2341+1)
	
l5604:
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
	movff	0+?___wmul,(_main$2342)
	movff	1+?___wmul,(_main$2342+1)
	
l5606:
	movff	(_main$2340),(c:___wmul@multiplier)
	movff	(_main$2340+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2343))&0ffh
	clrf	((_main$2343+1))&0ffh
	
l5608:; BSR set to: 3

	movff	(_main$2341),(c:___wmul@multiplier)
	movff	(_main$2341+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2344))&0ffh
	clrf	((_main$2344+1))&0ffh
	
l5610:; BSR set to: 3

	movff	(_main$2342),(c:___wmul@multiplier)
	movff	(_main$2342+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2345))&0ffh
	clrf	((_main$2345+1))&0ffh
	
l5612:; BSR set to: 3

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
	movff	(_main$2343),0+((c:?_printf)+06h)
	movff	(_main$2343+1),1+((c:?_printf)+06h)
	movff	(_main$2344),0+((c:?_printf)+08h)
	movff	(_main$2344+1),1+((c:?_printf)+08h)
	movff	(_main$2345),0+((c:?_printf)+0Ah)
	movff	(_main$2345+1),1+((c:?_printf)+0Ah)
	call	_printf	;wreg free
	line	414
	
l5614:
	movlb	3	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l5616:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6631
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6630
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6631
	goto	u6630

u6631:
	goto	l5598
u6630:
	goto	l6070
	
l264:; BSR set to: 3

	line	419
	goto	l6070
	line	420
	
l265:; BSR set to: 0

	line	421
	bsf	((c:3969)),c,5	;volatile
	line	422
	bcf	((c:3968)),c,4	;volatile
	line	423
	bcf	((c:3969)),c,0	;volatile
	line	424
	
l5618:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6641
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6640
	movlw	209
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	7
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6641
	goto	u6640

u6641:
	goto	l6070
u6640:
	
l5620:; BSR set to: 0

	movlw	high(07h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	goto	l6070
	
l266:; BSR set to: 1

	line	425
	goto	l6070
	line	426
	
l267:; BSR set to: 1

	line	427
	
l5622:
	call	_EnhancedRead	;wreg free
	line	433
	
l5624:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6651
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6650
	movlw	233
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6651
	goto	u6650

u6651:
	goto	l5652
u6650:
	line	434
	
l5626:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	435
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l5628:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6661
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6660
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6661
	goto	u6660

u6661:
	goto	l5632
u6660:
	goto	l5652
	
l5630:; BSR set to: 3

	goto	l5652
	
l269:; BSR set to: 3

	line	436
	
l5632:; BSR set to: 3

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
	line	437
	
l5634:; BSR set to: 3

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
	movff	0+?___wmul,(_main$2340)
	movff	1+?___wmul,(_main$2340+1)
	
l5636:
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movff	(main@i),(c:___wmul@multiplicand)
	movff	(main@i+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2341)
	movff	1+?___wmul,(_main$2341+1)
	
l5638:
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
	movff	0+?___wmul,(_main$2342)
	movff	1+?___wmul,(_main$2342+1)
	
l5640:
	movff	(_main$2340),(c:___wmul@multiplier)
	movff	(_main$2340+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2343))&0ffh
	clrf	((_main$2343+1))&0ffh
	
l5642:; BSR set to: 3

	movff	(_main$2341),(c:___wmul@multiplier)
	movff	(_main$2341+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2344))&0ffh
	clrf	((_main$2344+1))&0ffh
	
l5644:; BSR set to: 3

	movff	(_main$2342),(c:___wmul@multiplier)
	movff	(_main$2342+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2345))&0ffh
	clrf	((_main$2345+1))&0ffh
	
l5646:; BSR set to: 3

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
	movff	(_main$2343),0+((c:?_printf)+06h)
	movff	(_main$2343+1),1+((c:?_printf)+06h)
	movff	(_main$2344),0+((c:?_printf)+08h)
	movff	(_main$2344+1),1+((c:?_printf)+08h)
	movff	(_main$2345),0+((c:?_printf)+0Ah)
	movff	(_main$2345+1),1+((c:?_printf)+0Ah)
	call	_printf	;wreg free
	line	435
	
l5648:
	movlb	3	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l5650:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6671
	movlb	3	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6670
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6671
	goto	u6670

u6671:
	goto	l5632
u6670:
	goto	l5652
	
l270:; BSR set to: 3

	goto	l5652
	line	439
	
l268:; BSR set to: 3

	line	442
	
l5652:
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	
l5654:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u6681
	movlb	3	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u6680
	movlw	11
	movlb	3	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u6681
	goto	u6680

u6681:
	goto	l271
u6680:
	goto	l5670
	
l5656:; BSR set to: 3

	goto	l5670
	
l271:; BSR set to: 3

	line	445
	movff	(main@i),(main@j)
	movff	(main@i+1),(main@j+1)
	line	446
	
l5658:; BSR set to: 3

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
	goto	u6691
	goto	u6690

u6691:
	goto	l5662
u6690:
	line	447
	
l5660:; BSR set to: 3

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
	goto	l5662
	line	448
	
l273:; BSR set to: 3

	line	449
	
l5662:; BSR set to: 3

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
	goto	u6701
	goto	u6700

u6701:
	goto	l5666
u6700:
	line	450
	
l5664:; BSR set to: 3

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
	goto	l5666
	line	451
	
l274:; BSR set to: 3

	line	442
	
l5666:; BSR set to: 3

	movlb	3	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l5668:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u6711
	movlb	3	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u6710
	movlw	11
	movlb	3	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u6711
	goto	u6710

u6711:
	goto	l271
u6710:
	goto	l5670
	
l272:; BSR set to: 3

	line	454
	
l5670:; BSR set to: 3

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
	goto	u6720
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6721
	movlw	201
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u6721
	goto	u6720

u6721:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6738
u6720:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6738:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	455
	
l5672:; BSR set to: 0

	movlw	low(0)
	movlb	3	; () banked
	movwf	((_main$399))&0ffh
	
l5674:; BSR set to: 3

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
	goto	u6741
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6740
	movlw	101
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u6741
	goto	u6740

u6741:
	goto	l5680
u6740:
	
l5676:
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
	goto	u6750
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6751
	movlw	200
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u6751
	goto	u6750

u6751:
	goto	l5680
u6750:
	
l5678:
	movlw	low(01h)
	movlb	3	; () banked
	movwf	((_main$399))&0ffh
	goto	l5680
	
l276:; BSR set to: 3

	
l5680:
	movlb	3	; () banked
	btfsc	(_main$399)&0ffh,0
	bra	u6765
	bcf	((c:3969)),c,5	;volatile
	bra	u6766
	u6765:
	bsf	((c:3969)),c,5	;volatile
	u6766:

	line	456
	
l5682:
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
	goto	u6771
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6770
	movlw	100
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u6771
	goto	u6770

u6771:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6788
u6770:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6788:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	458
	
l5684:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u6791
	goto	u6790
u6791:
	goto	l5692
u6790:
	line	459
	
l5686:; BSR set to: 0

		movlw	low(STR_12)
	movwf	((c:printf@f)),c
	movlw	high(STR_12)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	460
	
l5688:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	461
	
l5690:; BSR set to: 0

	movlw	high(06h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(06h)
	movwf	((_status))&0ffh
	goto	l5692
	line	462
	
l277:; BSR set to: 1

	line	463
	
l5692:
	btfsc	((c:3971)),c,4	;volatile
	goto	u6801
	goto	u6800
u6801:
	goto	l6070
u6800:
	line	464
	
l5694:
		movlw	low(STR_13)
	movwf	((c:printf@f)),c
	movlw	high(STR_13)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	465
	
l5696:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	466
	
l5698:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	467
	
l5700:; BSR set to: 0

	movlw	high(01h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(01h)
	movwf	((_status))&0ffh
	line	469
	
l5702:; BSR set to: 1

	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@i_402+1))&0ffh
	movlw	low(0)
	movwf	((main@i_402))&0ffh
	
l5704:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i_402+1))&0ffh,7
	goto	u6811
	movlb	3	; () banked
	movf	((main@i_402+1))&0ffh,w
	bnz	u6810
	movlw	5
	movlb	3	; () banked
	subwf	 ((main@i_402))&0ffh,w
	btfss	status,0
	goto	u6811
	goto	u6810

u6811:
	goto	l5708
u6810:
	goto	l6070
	
l5706:; BSR set to: 3

	goto	l6070
	
l279:; BSR set to: 3

	line	470
	
l5708:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i_402))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i_402+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(main@j_403)
	movff	postdec2,(main@j_403+1)
	line	471
	
l5710:; BSR set to: 3

		movlw	low(STR_14)
	movwf	((c:printf@f)),c
	movlw	high(STR_14)
	movwf	((c:printf@f+1)),c

	movff	(main@j_403),0+((c:?_printf)+02h)
	movff	(main@j_403+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_403))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_403+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_403))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_403+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+06h)
	movff	postdec2,1+((c:?_printf)+06h)
	call	_printf	;wreg free
	line	469
	
l5712:
	movlb	3	; () banked
	infsnz	((main@i_402))&0ffh
	incf	((main@i_402+1))&0ffh
	
l5714:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i_402+1))&0ffh,7
	goto	u6821
	movlb	3	; () banked
	movf	((main@i_402+1))&0ffh,w
	bnz	u6820
	movlw	5
	movlb	3	; () banked
	subwf	 ((main@i_402))&0ffh,w
	btfss	status,0
	goto	u6821
	goto	u6820

u6821:
	goto	l5708
u6820:
	goto	l6070
	
l280:; BSR set to: 3

	goto	l6070
	line	473
	
l278:; BSR set to: 3

	line	474
	goto	l6070
	line	475
	
l281:; BSR set to: 0

	line	476
	bsf	((c:3969)),c,0	;volatile
	line	477
	bcf	((c:3968)),c,4	;volatile
	line	478
	bcf	((c:3969)),c,5	;volatile
	line	479
	btfss	((c:3971)),c,4	;volatile
	goto	u6831
	goto	u6830
u6831:
	goto	l6070
u6830:
	line	480
	
l5716:; BSR set to: 0

	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6070
	line	481
	
l282:; BSR set to: 1

	line	482
	goto	l6070
	line	483
	
l283:; BSR set to: 1

	line	484
	
l5718:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6841
	goto	u6840

u6841:
	goto	l5722
u6840:
	line	485
	
l5720:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(01h)
	movwf	((_rf))&0ffh
	line	486
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(01h)
	movwf	((_gf))&0ffh
	line	487
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	goto	l5722
	line	488
	
l284:; BSR set to: 0

	line	489
	
l5722:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	490
	movlw	low(01h)
	movlb	3	; () banked
	movwf	((_main$405))&0ffh
	
l5724:; BSR set to: 3

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
	goto	u6851
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u6851
	goto	u6850

u6851:
	goto	l5732
u6850:
	
l5726:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u6860
	movf	((c:_line+1)),c,w
	bnz	u6861
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u6861
	goto	u6860

u6861:
	goto	l4524
u6860:
	
l5728:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$399)
	movff	??_main+0+1,(_main$399+1)
	goto	l5730
	
l4524:; BSR set to: 0

	movff	(c:_line),(_main$399)
	movff	(c:_line+1),(_main$399+1)
	goto	l5730
	
l4526:; BSR set to: 0

	
l5730:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$399+1))&0ffh,7
	goto	u6871
	movlb	3	; () banked
	movf	((_main$399+1))&0ffh,w
	bnz	u6870
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$399))&0ffh,w
	btfss	status,0
	goto	u6871
	goto	u6870

u6871:
	goto	l5742
u6870:
	goto	l5732
	
l4522:; BSR set to: 3

	
l5732:
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
	goto	u6881
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u6881
	goto	u6880

u6881:
	goto	l5740
u6880:
	
l5734:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u6890
	movf	((c:_line+1)),c,w
	bnz	u6891
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u6891
	goto	u6890

u6891:
	goto	l4530
u6890:
	
l5736:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$405)
	movff	??_main+0+1,(_main$405+1)
	goto	l5738
	
l4530:; BSR set to: 0

	movff	(c:_line),(_main$405)
	movff	(c:_line+1),(_main$405+1)
	goto	l5738
	
l4532:; BSR set to: 0

	
l5738:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$405+1))&0ffh,7
	goto	u6901
	movlb	3	; () banked
	movf	((_main$405+1))&0ffh,w
	bnz	u6900
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$405))&0ffh,w
	btfss	status,0
	goto	u6901
	goto	u6900

u6901:
	goto	l5742
u6900:
	goto	l5740
	
l4528:; BSR set to: 3

	
l5740:
	movlw	low(0)
	movlb	3	; () banked
	movwf	((_main$405))&0ffh
	goto	l5742
	
l286:; BSR set to: 3

	
l5742:; BSR set to: 3

	movlb	3	; () banked
	btfsc	(_main$405)&0ffh,0
	bra	u6915
	bcf	((c:3968)),c,4	;volatile
	bra	u6916
	u6915:
	bsf	((c:3968)),c,4	;volatile
	u6916:

	line	491
	
l5744:
	bcf	((c:3969)),c,5	;volatile
	line	494
	
l5746:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	496
	
l5748:
	call	_EnhancedRead	;wreg free
	line	497
	
l5750:
	call	_Line	;wreg free
	line	498
	
l5752:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6921
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6920
	movlw	245
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	1
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6921
	goto	u6920

u6921:
	goto	l5782
u6920:
	line	499
	
l5754:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	505
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@j_408+1))&0ffh
	movlw	low(0)
	movwf	((main@j_408))&0ffh
	
l5756:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j_408+1))&0ffh,7
	goto	u6931
	movlb	3	; () banked
	movf	((main@j_408+1))&0ffh,w
	bnz	u6930
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j_408))&0ffh,w
	btfss	status,0
	goto	u6931
	goto	u6930

u6931:
	goto	l5760
u6930:
	goto	l5780
	
l5758:; BSR set to: 3

	goto	l5780
	
l288:; BSR set to: 3

	line	506
	
l5760:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_408))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_408+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i_407)
	movff	postdec2,(main@i_407+1)
	line	507
	
l5762:; BSR set to: 3

	movff	(main@i_407),(c:___wmul@multiplier)
	movff	(main@i_407+1),(c:___wmul@multiplier+1)
	movff	(main@i_407),(c:___wmul@multiplicand)
	movff	(main@i_407+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2340)
	movff	1+?___wmul,(_main$2340+1)
	
l5764:
	movff	(main@i_407),(c:___wmul@multiplier)
	movff	(main@i_407+1),(c:___wmul@multiplier+1)
	movff	(main@i_407),(c:___wmul@multiplicand)
	movff	(main@i_407+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2341)
	movff	1+?___wmul,(_main$2341+1)
	
l5766:
	movff	(main@i_407),(c:___wmul@multiplier)
	movff	(main@i_407+1),(c:___wmul@multiplier+1)
	movff	(main@i_407),(c:___wmul@multiplicand)
	movff	(main@i_407+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2342)
	movff	1+?___wmul,(_main$2342+1)
	
l5768:
	movff	(_main$2340),(c:___wmul@multiplier)
	movff	(_main$2340+1),(c:___wmul@multiplier+1)
	movlw	high(0384h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0384h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2343))&0ffh
	clrf	((_main$2343+1))&0ffh
	
l5770:; BSR set to: 3

	movff	(_main$2341),(c:___wmul@multiplier)
	movff	(_main$2341+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2344))&0ffh
	clrf	((_main$2344+1))&0ffh
	
l5772:; BSR set to: 3

	movff	(_main$2342),(c:___wmul@multiplier)
	movff	(_main$2342+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2345))&0ffh
	clrf	((_main$2345+1))&0ffh
	
l5774:; BSR set to: 3

		movlw	low(STR_15)
	movwf	((c:printf@f)),c
	movlw	high(STR_15)
	movwf	((c:printf@f+1)),c

	movff	(main@i_407),0+((c:?_printf)+02h)
	movff	(main@i_407+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i_407))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i_407+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	movff	(_main$2343),0+((c:?_printf)+06h)
	movff	(_main$2343+1),1+((c:?_printf)+06h)
	movff	(_main$2344),0+((c:?_printf)+08h)
	movff	(_main$2344+1),1+((c:?_printf)+08h)
	movff	(_main$2345),0+((c:?_printf)+0Ah)
	movff	(_main$2345+1),1+((c:?_printf)+0Ah)
	call	_printf	;wreg free
	line	505
	
l5776:
	movlb	3	; () banked
	infsnz	((main@j_408))&0ffh
	incf	((main@j_408+1))&0ffh
	
l5778:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j_408+1))&0ffh,7
	goto	u6941
	movlb	3	; () banked
	movf	((main@j_408+1))&0ffh,w
	bnz	u6940
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j_408))&0ffh,w
	btfss	status,0
	goto	u6941
	goto	u6940

u6941:
	goto	l5760
u6940:
	goto	l5780
	
l289:; BSR set to: 3

	line	509
	
l5780:; BSR set to: 3

		movlw	low(STR_16)
	movwf	((c:printf@f)),c
	movlw	high(STR_16)
	movwf	((c:printf@f+1)),c

	movff	(c:_line),0+((c:?_printf)+02h)
	movff	(c:_line+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	goto	l5782
	line	510
	
l287:
	line	511
	
l5782:
	btfsc	((c:3971)),c,5	;volatile
	goto	u6951
	goto	u6950
u6951:
	goto	l5786
u6950:
	line	512
	
l5784:
	movlw	high(0Ah)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(0Ah)
	movwf	((_status))&0ffh
	goto	l5786
	line	513
	
l290:; BSR set to: 1

	line	514
	
l5786:
	btfsc	((c:3971)),c,6	;volatile
	goto	u6961
	goto	u6960
u6961:
	goto	l5810
u6960:
	line	515
	
l5788:
	movlw	low(0)
	movwf	((c:_MF)),c
	line	516
	
l5790:
		movlw	low(main@old_411)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_411)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	517
	
l5792:
	movlb	3	; () banked
	movf	((main@old_411))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u6971
	goto	u6970
u6971:
	goto	l5798
u6970:
	line	518
	
l5794:; BSR set to: 3

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_RWM))&0ffh
	line	519
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	520
	movlw	high(04h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	521
	
l5796:; BSR set to: 1

		movlw	low(STR_17)
	movwf	((c:printf@f)),c
	movlw	high(STR_17)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	522
	goto	l5810
	
l292:
	line	523
	
l5798:
		movlw	low(STR_18)
	movwf	((c:printf@f)),c
	movlw	high(STR_18)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	524
	
l5800:
	movlw	low(0)
	movwf	((c:_MF)),c
	
l5802:
		movlw	low(main@old_414)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_414)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	525
	
l5804:
	call	_Load	;wreg free
	line	526
	
l5806:
		movlw	low(STR_19)
	movwf	((c:printf@f)),c
	movlw	high(STR_19)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	527
	
l5808:
	call	_ShowMem	;wreg free
	goto	l5810
	line	528
	
l293:
	goto	l5810
	line	530
	
l291:
	line	531
	
l5810:
	btfsc	((c:3971)),c,4	;volatile
	goto	u6981
	goto	u6980
u6981:
	goto	l6070
u6980:
	line	532
	
l5812:
	movlw	low(01h)
	movwf	((c:_MF)),c
	line	533
	
l5814:
		movlw	low(main@old_416)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_416)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	534
	
l5816:
	movlb	3	; () banked
	movf	((main@old_416))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u6991
	goto	u6990
u6991:
	goto	l5822
u6990:
	line	535
	
l5818:; BSR set to: 3

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_RWM))&0ffh
	line	536
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	537
	movlw	high(04h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	538
	
l5820:; BSR set to: 1

		movlw	low(STR_20)
	movwf	((c:printf@f)),c
	movlw	high(STR_20)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	539
	goto	l6070
	
l295:
	line	540
	
l5822:
		movlw	low(STR_21)
	movwf	((c:printf@f)),c
	movlw	high(STR_21)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	541
	
l5824:
	movlw	low(01h)
	movwf	((c:_MF)),c
	
l5826:
		movlw	low(main@old_419)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_419)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	542
	
l5828:
	call	_Load	;wreg free
	line	543
	
l5830:
		movlw	low(STR_22)
	movwf	((c:printf@f)),c
	movlw	high(STR_22)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	544
	
l5832:
	call	_ShowMem	;wreg free
	goto	l6070
	line	545
	
l296:
	goto	l6070
	line	547
	
l294:
	line	560
	goto	l6070
	line	561
	
l297:; BSR set to: 0

	line	562
	bsf	((c:3969)),c,0	;volatile
	line	563
	bsf	((c:3968)),c,4	;volatile
	line	564
	bsf	((c:3969)),c,5	;volatile
	line	565
	btfss	((c:3971)),c,5	;volatile
	goto	u7001
	goto	u7000
u7001:
	goto	l5836
u7000:
	line	566
	
l5834:; BSR set to: 0

	movlw	high(02h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(02h)
	movwf	((_status))&0ffh
	line	567
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	568
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	569
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME2))&0ffh
	movlw	high(0)
	movwf	((_TIME2+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME2+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME2+3))&0ffh
	line	570
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	571
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	572
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	573
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	goto	l5836
	line	574
	
l298:; BSR set to: 0

	line	575
	
l5836:; BSR set to: 0

	btfsc	((c:3971)),c,4	;volatile
	goto	u7011
	goto	u7010
u7011:
	goto	l6070
u7010:
	line	576
	
l5838:; BSR set to: 0

	call	_EreaseAll	;wreg free
	line	577
	
l5840:
		movlw	low(STR_23)
	movwf	((c:printf@f)),c
	movlw	high(STR_23)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	578
	
l5842:
	movlw	high(01h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(01h)
	movwf	((_status))&0ffh
	goto	l6070
	line	579
	
l299:; BSR set to: 1

	line	580
	goto	l6070
	line	581
	
l300:; BSR set to: 0

	line	582
	bsf	((c:3969)),c,0	;volatile
	line	583
	bcf	((c:3968)),c,4	;volatile
	line	584
	bcf	((c:3969)),c,5	;volatile
	line	585
	
l5844:; BSR set to: 0

	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	586
	
l5846:
	btfsc	((c:3971)),c,5	;volatile
	goto	u7021
	goto	u7020
u7021:
	goto	l5856
u7020:
	line	587
	
l5848:
		movlw	low(STR_24)
	movwf	((c:printf@f)),c
	movlw	high(STR_24)
	movwf	((c:printf@f+1)),c

	movff	(_rcount),0+((c:?_printf)+02h)
	movff	(_rcount+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	line	588
	
l5850:
	movlw	high(05h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(05h)
	movwf	((_status))&0ffh
	line	589
	
l5852:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	590
	
l5854:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	goto	l5856
	line	591
	
l301:; BSR set to: 0

	line	592
	
l5856:
	btfsc	((c:3971)),c,6	;volatile
	goto	u7031
	goto	u7030
u7031:
	goto	l6070
u7030:
	
l5858:
	movlb	0	; () banked
	btfsc	((_rcount+1))&0ffh,7
	goto	u7041
	movlb	0	; () banked
	movf	((_rcount+1))&0ffh,w
	bnz	u7040
	movlb	0	; () banked
	decf	((_rcount))&0ffh,w
	btfss	status,0
	goto	u7041
	goto	u7040

u7041:
	goto	l6070
u7040:
	line	593
	
l5860:; BSR set to: 0

		movlw	low(STR_25)
	movwf	((c:printf@f)),c
	movlw	high(STR_25)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	594
	
l5862:
	movff	(_rcount),(c:_TOTAL)
	movff	(_rcount+1),(c:_TOTAL+1)
	line	595
	call	_Save	;wreg free
	line	596
	
l5864:
	movlw	high(03h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(03h)
	movwf	((_status))&0ffh
	goto	l6070
	line	597
	
l302:; BSR set to: 1

	line	598
	goto	l6070
	line	599
	
l303:; BSR set to: 0

	line	600
	bsf	((c:3969)),c,0	;volatile
	line	601
	bsf	((c:3968)),c,4	;volatile
	line	602
	bsf	((c:3969)),c,5	;volatile
	line	603
	btfss	((c:3971)),c,6	;volatile
	goto	u7051
	goto	u7050
u7051:
	goto	l6070
u7050:
	line	604
	
l5866:; BSR set to: 0

	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6070
	line	605
	
l304:; BSR set to: 1

	line	606
	goto	l6070
	line	607
	
l305:; BSR set to: 0

	line	608
	bsf	((c:3969)),c,5	;volatile
	line	609
	bsf	((c:3968)),c,4	;volatile
	line	610
	bsf	((c:3969)),c,0	;volatile
	line	612
	
l5868:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7061
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7060
	movlw	6
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7061
	goto	u7060

u7061:
	goto	l6070
u7060:
	line	613
	
l5870:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	614
	
l5872:
	call	_Line	;wreg free
	line	615
	
l5874:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	616
	
l5876:; BSR set to: 0

	call	_AdvanceLow	;wreg free
	line	618
	
l5878:
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
	goto	u7071
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7071
	goto	u7070

u7071:
	goto	l5886
u7070:
	
l5880:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7080
	movf	((c:_line+1)),c,w
	bnz	u7081
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7081
	goto	u7080

u7081:
	goto	l313
u7080:
	
l5882:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$427)
	movff	??_main+0+1,(_main$427+1)
	goto	l5884
	
l313:; BSR set to: 0

	movff	(c:_line),(_main$427)
	movff	(c:_line+1),(_main$427+1)
	goto	l5884
	
l315:; BSR set to: 0

	
l5884:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$427+1))&0ffh,7
	goto	u7091
	movlb	3	; () banked
	movf	((_main$427+1))&0ffh,w
	bnz	u7090
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$427))&0ffh,w
	btfss	status,0
	goto	u7091
	goto	u7090

u7091:
	goto	l5894
u7090:
	goto	l5886
	
l311:; BSR set to: 3

	
l5886:
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
	goto	u7101
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7101
	goto	u7100

u7101:
	goto	l6070
u7100:
	
l5888:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7110
	movf	((c:_line+1)),c,w
	bnz	u7111
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7111
	goto	u7110

u7111:
	goto	l317
u7110:
	
l5890:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$428)
	movff	??_main+0+1,(_main$428+1)
	goto	l5892
	
l317:; BSR set to: 0

	movff	(c:_line),(_main$428)
	movff	(c:_line+1),(_main$428+1)
	goto	l5892
	
l319:; BSR set to: 0

	
l5892:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$428+1))&0ffh,7
	goto	u7120
	movlb	3	; () banked
	movf	((_main$428+1))&0ffh,w
	bnz	u7121
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$428))&0ffh,w
	btfsc	status,0
	goto	u7121
	goto	u7120

u7121:
	goto	l6070
u7120:
	goto	l5894
	
l309:; BSR set to: 3

	line	619
	
l5894:; BSR set to: 3

	movlw	high(04h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	620
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	621
	
l5896:; BSR set to: 0

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
	movff	0+?___aldiv,(_main$2346)
	movff	1+?___aldiv,(_main$2346+1)
	movff	2+?___aldiv,(_main$2346+2)
	movff	3+?___aldiv,(_main$2346+3)
	
	
l5898:
	movff	(_main$2346),(c:___aldiv@dividend)
	movff	(_main$2346+1),(c:___aldiv@dividend+1)
	movff	(_main$2346+2),(c:___aldiv@dividend+2)
	movff	(_main$2346+3),(c:___aldiv@dividend+3)
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

	line	622
	
l5900:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	goto	l6070
	line	624
	
l307:; BSR set to: 0

	goto	l6070
	line	625
	
l306:; BSR set to: 0

	line	626
	goto	l6070
	line	627
	
l320:; BSR set to: 0

	line	628
	
l5902:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u7131
	goto	u7130

u7131:
	goto	l5910
u7130:
	line	629
	
l5904:; BSR set to: 0

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
	movff	0+?___wmul,(_main$2347)
	movff	1+?___wmul,(_main$2347+1)
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
	movff	0+?___wmul,(_main$2348)
	movff	1+?___wmul,(_main$2348+1)
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
	movff	0+?___wmul,(_main$2349)
	movff	1+?___wmul,(_main$2349+1)
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
	movff	0+?___wmul,(_main$2350)
	movff	1+?___wmul,(_main$2350+1)
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
	movff	0+?___wmul,(_main$2351)
	movff	1+?___wmul,(_main$2351+1)
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
	movff	0+?___wmul,(_main$2352)
	movff	1+?___wmul,(_main$2352+1)
	
l5906:
		movlw	low(STR_26)
	movwf	((c:printf@f)),c
	movlw	high(STR_26)
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
	movff	(_main$2349),(c:___awdiv@dividend)
	movff	(_main$2349+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2348),(c:___awdiv@dividend)
	movff	(_main$2348+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2347),(c:___awdiv@dividend)
	movff	(_main$2347+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2352),(c:___awdiv@dividend)
	movff	(_main$2352+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+2+0
	movff	1+?___awdiv,??_main+2+0+1
	movff	(_main$2351),(c:___awdiv@dividend)
	movff	(_main$2351+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2350),(c:___awdiv@dividend)
	movff	(_main$2350+1),(c:___awdiv@dividend+1)
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
	movlw	low(046h)
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh,w
	movwf	(0+((c:?_printf)+08h)),c
	movlw	high(046h)
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh,w
	movwf	1+(0+((c:?_printf)+08h)),c
	call	_printf	;wreg free
	line	630
	
l5908:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	goto	l5910
	line	631
	
l321:; BSR set to: 0

	line	632
	
l5910:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u7141
	goto	u7140
u7141:
	goto	l5914
u7140:
	line	633
	
l5912:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	634
	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l5914
	line	635
	
l322:; BSR set to: 1

	line	637
	
l5914:
	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7151
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7150
	movlw	6
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7151
	goto	u7150

u7151:
	goto	l6070
u7150:
	line	638
	
l5916:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	639
	
l5918:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	640
	
l5920:
	call	_Line	;wreg free
	line	645
	
l5922:
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((_rcount))&0ffh,(0)&7
	goto	u7161
	goto	u7160
u7161:
	goto	l5926
u7160:
	line	646
	
l5924:; BSR set to: 0

	movlw	high(01h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(01h)
	movwf	((main@mod))&0ffh
	line	647
	goto	l5942
	
l324:; BSR set to: 3

	line	648
	
l5926:
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
	movff	0+?___wmul,(_main$2347)
	movff	1+?___wmul,(_main$2347+1)
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
	movff	0+?___wmul,(_main$2348)
	movff	1+?___wmul,(_main$2348+1)
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
	movff	0+?___wmul,(_main$2349)
	movff	1+?___wmul,(_main$2349+1)
	
l5928:
	movff	(_main$2349),(c:___awdiv@dividend)
	movff	(_main$2349+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2348),(c:___awdiv@dividend)
	movff	(_main$2348+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2347),(c:___awdiv@dividend)
	movff	(_main$2347+1),(c:___awdiv@dividend+1)
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
	goto	u7171
	goto	u7170

u7171:
	goto	l5932
u7170:
	line	649
	
l5930:; BSR set to: 0

	movlw	high(03h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(03h)
	movwf	((main@mod))&0ffh
	line	650
	goto	l5942
	
l326:; BSR set to: 3

	
l5932:
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
	movff	0+?___wmul,(_main$2347)
	movff	1+?___wmul,(_main$2347+1)
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
	movff	0+?___wmul,(_main$2348)
	movff	1+?___wmul,(_main$2348+1)
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
	movff	0+?___wmul,(_main$2349)
	movff	1+?___wmul,(_main$2349+1)
	
l5934:
	movff	(_main$2349),(c:___awdiv@dividend)
	movff	(_main$2349+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2348),(c:___awdiv@dividend)
	movff	(_main$2348+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2347),(c:___awdiv@dividend)
	movff	(_main$2347+1),(c:___awdiv@dividend+1)
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
	movlw	low(046h)
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	(??_main+2+0)&0ffh
	movlw	high(046h)
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
	goto	u7181
	goto	u7180

u7181:
	goto	l5940
u7180:
	
l5936:; BSR set to: 0

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
	goto	u7191
	movlw	1
	movf	plusw2,w
	bnz	u7190
	movlw	21
	subwf	 postinc2,w
	btfss	status,0
	goto	u7191
	goto	u7190

u7191:
	goto	l5940
u7190:
	line	651
	
l5938:
	movlw	high(04h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(04h)
	movwf	((main@mod))&0ffh
	line	652
	goto	l5942
	
l328:; BSR set to: 3

	line	653
	
l5940:
	movlw	high(05h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(05h)
	movwf	((main@mod))&0ffh
	goto	l5942
	line	654
	
l329:; BSR set to: 3

	goto	l5942
	
l327:; BSR set to: 3

	goto	l5942
	line	655
	
l325:; BSR set to: 3

	line	656
	
l5942:; BSR set to: 3

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
	line	657
	
l5944:; BSR set to: 3

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
	line	658
	
l5946:
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
	line	659
	
l5948:
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
	line	660
	
l5950:; BSR set to: 0

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
	line	662
	
l5952:
	btfsc	((c:_formula+1)),c,7
	goto	u7201
	movf	((c:_formula+1)),c,w
	bnz	u7200
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u7201
	goto	u7200

u7201:
	goto	l5956
u7200:
	line	663
	
l5954:
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
	line	664
	goto	l5958
	
l330:
	line	665
	
l5956:
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
	goto	l5958
	line	666
	
l331:
	line	667
	
l5958:
	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	line	669
	
l5960:
	movlb	0	; () banked
	movf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7211
	goto	u7210

u7211:
	goto	l5992
u7210:
	line	670
	
l5962:; BSR set to: 0

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
	goto	u7221
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7221
	goto	u7220

u7221:
	goto	l5970
u7220:
	
l5964:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7230
	movf	((c:_line+1)),c,w
	bnz	u7231
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7231
	goto	u7230

u7231:
	goto	l339
u7230:
	
l5966:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$434)
	movff	??_main+0+1,(_main$434+1)
	goto	l5968
	
l339:; BSR set to: 0

	movff	(c:_line),(_main$434)
	movff	(c:_line+1),(_main$434+1)
	goto	l5968
	
l341:; BSR set to: 0

	
l5968:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$434+1))&0ffh,7
	goto	u7241
	movlb	3	; () banked
	movf	((_main$434+1))&0ffh,w
	bnz	u7240
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$434))&0ffh,w
	btfss	status,0
	goto	u7241
	goto	u7240

u7241:
	goto	l5978
u7240:
	goto	l5970
	
l337:; BSR set to: 3

	
l5970:
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
	goto	u7251
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7251
	goto	u7250

u7251:
	goto	l5992
u7250:
	
l5972:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7260
	movf	((c:_line+1)),c,w
	bnz	u7261
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7261
	goto	u7260

u7261:
	goto	l343
u7260:
	
l5974:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$435)
	movff	??_main+0+1,(_main$435+1)
	goto	l5976
	
l343:; BSR set to: 0

	movff	(c:_line),(_main$435)
	movff	(c:_line+1),(_main$435+1)
	goto	l5976
	
l345:; BSR set to: 0

	
l5976:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$435+1))&0ffh,7
	goto	u7270
	movlb	3	; () banked
	movf	((_main$435+1))&0ffh,w
	bnz	u7271
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$435))&0ffh,w
	btfsc	status,0
	goto	u7271
	goto	u7270

u7271:
	goto	l5992
u7270:
	goto	l5978
	
l335:; BSR set to: 3

	line	671
	
l5978:; BSR set to: 3

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(01h)
	movwf	((_flag_line))&0ffh
	line	672
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	673
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	674
	
l5980:; BSR set to: 0

	btfss	((c:3968)),c,4	;volatile
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
	line	675
	
l5982:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	line	676
	
l5984:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((_rcount))&0ffh,(0)&7
	goto	u7301
	goto	u7300
u7301:
	goto	l5988
u7300:
	line	677
	
l5986:; BSR set to: 0

		movlw	low(STR_27)
	movwf	((c:printf@f)),c
	movlw	high(STR_27)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	678
	goto	l5992
	
l346:
	line	679
	
l5988:
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
	movff	0+?___wmul,(_main$2347)
	movff	1+?___wmul,(_main$2347+1)
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
	movff	0+?___wmul,(_main$2348)
	movff	1+?___wmul,(_main$2348+1)
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
	movff	0+?___wmul,(_main$2349)
	movff	1+?___wmul,(_main$2349+1)
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
	movff	0+?___wmul,(_main$2350)
	movff	1+?___wmul,(_main$2350+1)
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
	movff	0+?___wmul,(_main$2351)
	movff	1+?___wmul,(_main$2351+1)
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
	movff	0+?___wmul,(_main$2352)
	movff	1+?___wmul,(_main$2352+1)
	
l5990:
		movlw	low(STR_28)
	movwf	((c:printf@f)),c
	movlw	high(STR_28)
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
	movff	(_main$2349),(c:___awdiv@dividend)
	movff	(_main$2349+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2348),(c:___awdiv@dividend)
	movff	(_main$2348+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2347),(c:___awdiv@dividend)
	movff	(_main$2347+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2352),(c:___awdiv@dividend)
	movff	(_main$2352+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+2+0
	movff	1+?___awdiv,??_main+2+0+1
	movff	(_main$2351),(c:___awdiv@dividend)
	movff	(_main$2351+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2350),(c:___awdiv@dividend)
	movff	(_main$2350+1),(c:___awdiv@dividend+1)
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
	movlw	low(046h)
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh,w
	movwf	(0+((c:?_printf)+08h)),c
	movlw	high(046h)
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh,w
	movwf	1+(0+((c:?_printf)+08h)),c
	call	_printf	;wreg free
	goto	l5992
	line	680
	
l347:
	goto	l5992
	line	682
	
l333:
	goto	l5992
	line	683
	
l332:
	line	684
	
l5992:
	movlb	0	; () banked
		decf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7311
	goto	u7310

u7311:
	goto	l5998
u7310:
	line	685
	
l5994:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7321
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7320
	movlw	177
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	4
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7321
	goto	u7320

u7321:
	goto	l5998
u7320:
	line	686
	
l5996:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	687
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	goto	l5998
	line	688
	
l349:; BSR set to: 0

	goto	l5998
	line	689
	
l348:; BSR set to: 0

	line	690
	
l5998:; BSR set to: 0

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
	bnz	u7331
	movlb	0	; () banked
movf	((_rcount+1))&0ffh,w
	movlb	0	; () banked
xorwf	(??_main+2+1)&0ffh,w
	btfss	status,2
	goto	u7331
	goto	u7330

u7331:
	goto	l6070
u7330:
	line	691
	
l6000:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	692
	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6070
	line	693
	
l350:; BSR set to: 1

	goto	l6070
	line	694
	
l323:; BSR set to: 1

	line	695
	goto	l6070
	line	698
	
l351:; BSR set to: 0

	line	699
	btfsc	((c:3971)),c,6	;volatile
	goto	u7341
	goto	u7340
u7341:
	goto	l6004
u7340:
	line	700
	
l6002:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	701
	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6004
	line	702
	
l352:; BSR set to: 1

	line	703
	
l6004:
	bsf	((c:3969)),c,0	;volatile
	line	705
	
l6006:
	bcf	((c:3969)),c,5	;volatile
	line	706
	
l6008:
	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7351
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7350
	movlw	6
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7351
	goto	u7350

u7351:
	goto	l6070
u7350:
	line	707
	
l6010:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	708
	
l6012:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	709
	
l6014:
	call	_Line	;wreg free
	goto	l6018
	line	715
	
l6016:
	goto	l6018
	line	717
	
l354:
	line	728
	
l6018:
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
	line	729
	
l6020:; BSR set to: 0

	movff	(main@kd_440),(c:___ftmul@f2)
	movff	(main@kd_440+1),(c:___ftmul@f2+1)
	movff	(main@kd_440+2),(c:___ftmul@f2+2)
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
	movff	(main@kp_439),(c:___ftmul@f2)
	movff	(main@kp_439+1),(c:___ftmul@f2+1)
	movff	(main@kp_439+2),(c:___ftmul@f2+2)
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
	line	731
	
l6022:
	btfsc	((c:_formula+1)),c,7
	goto	u7361
	movf	((c:_formula+1)),c,w
	bnz	u7360
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u7361
	goto	u7360

u7361:
	goto	l6026
u7360:
	line	732
	
l6024:
	movff	(c:_formula),??_main+0+0
	movff	(c:_formula+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movlb	3	; () banked
	movf	((main@speed_438))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movwf	((c:MotorsSpeed@A)),c
	movlb	3	; () banked
	movf	((main@speed_438+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movwf	1+((c:MotorsSpeed@A)),c
	movff	(main@speed_438),(c:MotorsSpeed@B)
	movff	(main@speed_438+1),(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	733
	goto	l6028
	
l355:
	line	734
	
l6026:
	movff	(main@speed_438),(c:MotorsSpeed@A)
	movff	(main@speed_438+1),(c:MotorsSpeed@A+1)
	movf	((c:_formula)),c,w
	movlb	3	; () banked
	addwf	((main@speed_438))&0ffh,w
	movwf	((c:MotorsSpeed@B)),c
	movf	((c:_formula+1)),c,w
	movlb	3	; () banked
	addwfc	((main@speed_438+1))&0ffh,w
	movwf	1+((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	goto	l6028
	line	735
	
l356:
	line	736
	
l6028:
	movlb	0	; () banked
	movf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7371
	goto	u7370

u7371:
	goto	l6052
u7370:
	line	737
	
l6030:; BSR set to: 0

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
	goto	u7381
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7381
	goto	u7380

u7381:
	goto	l6038
u7380:
	
l6032:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7390
	movf	((c:_line+1)),c,w
	bnz	u7391
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7391
	goto	u7390

u7391:
	goto	l364
u7390:
	
l6034:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$442)
	movff	??_main+0+1,(_main$442+1)
	goto	l6036
	
l364:; BSR set to: 0

	movff	(c:_line),(_main$442)
	movff	(c:_line+1),(_main$442+1)
	goto	l6036
	
l366:; BSR set to: 0

	
l6036:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$442+1))&0ffh,7
	goto	u7401
	movlb	3	; () banked
	movf	((_main$442+1))&0ffh,w
	bnz	u7400
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$442))&0ffh,w
	btfss	status,0
	goto	u7401
	goto	u7400

u7401:
	goto	l6046
u7400:
	goto	l6038
	
l362:; BSR set to: 3

	
l6038:
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
	goto	u7411
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7411
	goto	u7410

u7411:
	goto	l6052
u7410:
	
l6040:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7420
	movf	((c:_line+1)),c,w
	bnz	u7421
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7421
	goto	u7420

u7421:
	goto	l368
u7420:
	
l6042:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$443)
	movff	??_main+0+1,(_main$443+1)
	goto	l6044
	
l368:; BSR set to: 0

	movff	(c:_line),(_main$443)
	movff	(c:_line+1),(_main$443+1)
	goto	l6044
	
l370:; BSR set to: 0

	
l6044:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$443+1))&0ffh,7
	goto	u7430
	movlb	3	; () banked
	movf	((_main$443+1))&0ffh,w
	bnz	u7431
	movlw	150
	movlb	3	; () banked
	subwf	 ((_main$443))&0ffh,w
	btfsc	status,0
	goto	u7431
	goto	u7430

u7431:
	goto	l6052
u7430:
	goto	l6046
	
l360:; BSR set to: 3

	line	738
	
l6046:; BSR set to: 3

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(01h)
	movwf	((_flag_line))&0ffh
	line	739
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	740
	
l6048:; BSR set to: 0

	btfss	((c:3968)),c,4	;volatile
	goto	u7441
	goto	u7440
u7441:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7458
u7440:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7458:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	741
	
l6050:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	goto	l6052
	line	743
	
l358:; BSR set to: 0

	goto	l6052
	line	744
	
l357:; BSR set to: 0

	line	745
	
l6052:
	movlb	0	; () banked
		decf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7461
	goto	u7460

u7461:
	goto	l6058
u7460:
	line	746
	
l6054:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7471
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7470
	movlw	185
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	11
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7471
	goto	u7470

u7471:
	goto	l6058
u7470:
	line	747
	
l6056:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	748
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	goto	l6058
	line	749
	
l372:; BSR set to: 0

	goto	l6058
	line	750
	
l371:; BSR set to: 0

	line	751
	
l6058:; BSR set to: 0

		movlw	7
	movlb	0	; () banked
	xorwf	((_rcount))&0ffh,w
	movlb	0	; () banked
iorwf	((_rcount+1))&0ffh,w
	btfss	status,2
	goto	u7481
	goto	u7480

u7481:
	goto	l6062
u7480:
	line	752
	
l6060:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	753
	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6062
	line	754
	
l373:; BSR set to: 1

	line	755
	
l6062:
	movlb	0	; () banked
	btfsc	((_TIME2+3))&0ffh,7
	goto	u7491
	movlb	0	; () banked
	movf	((_TIME2+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME2+2))&0ffh,w
	bnz	u7490
	movlw	233
	movlb	0	; () banked
	subwf	 ((_TIME2))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((_TIME2+1))&0ffh,w
	btfss	status,0
	goto	u7491
	goto	u7490

u7491:
	goto	l6066
u7490:
	line	759
	
l6064:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME2))&0ffh
	movlw	high(0)
	movwf	((_TIME2+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME2+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME2+3))&0ffh
	goto	l6066
	line	760
	
l374:; BSR set to: 0

	line	761
	
l6066:; BSR set to: 0

	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	goto	l6070
	line	762
	
l353:; BSR set to: 0

	line	764
	goto	l6070
	line	765
	
l6068:; BSR set to: 0

	goto	l6070
	line	341
	
l230:; BSR set to: 0

	
l6070:
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
	goto	l6108
	goto	l6070
	
l6108:; BSR set to: 0

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
	goto	l5484
	xorlw	1^0	; case 1
	skipnz
	goto	l281
	xorlw	2^1	; case 2
	skipnz
	goto	l5902
	xorlw	3^2	; case 3
	skipnz
	goto	l303
	xorlw	4^3	; case 4
	skipnz
	goto	l300
	xorlw	5^4	; case 5
	skipnz
	goto	l305
	xorlw	6^5	; case 6
	skipnz
	goto	l265
	xorlw	7^6	; case 7
	skipnz
	goto	l5542
	xorlw	8^7	; case 8
	skipnz
	goto	l5718
	xorlw	9^8	; case 9
	skipnz
	goto	l5622
	xorlw	10^9	; case 10
	skipnz
	goto	l297
	xorlw	11^10	; case 11
	skipnz
	goto	l351
	goto	l6070

	line	765
	
l255:; BSR set to: 0

	goto	l6070
	line	766
	
l375:; BSR set to: 0

	line	336
	goto	l6070
	
l376:; BSR set to: 0

	line	767
	
l377:; BSR set to: 0

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_initYBOT

;; *************** function _initYBOT *****************
;; Defined at:
;;		line 111 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	111
global __ptext1
__ptext1:
psect	text1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	111
	global	__size_of_initYBOT
	__size_of_initYBOT	equ	__end_of_initYBOT-_initYBOT
	
_initYBOT:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	112
	
l5222:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	113
	
l5224:; BSR set to: 0

	call	_ResetCounter	;wreg free
	line	114
	
l5226:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_gstatus))&0ffh
	line	115
	call	_configurations_init	;wreg free
	line	116
	call	_InitAnalog	;wreg free
	line	117
	call	_InitTIMERS	;wreg free
	line	118
	call	_MotorsPWM	;wreg free
	line	119
	
l92:
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
	
l4846:
		
	bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	39
	
l4848:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	42
	
l4850:
	bcf	((c:3949)),c,3	;volatile
	line	43
	
l4852:
	bsf	((c:3951)),c,3	;volatile
	line	44
	
l489:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,89
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 121 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	121
global __ptext3
__ptext3:
psect	text3
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	121
	global	__size_of_ResetCounter
	__size_of_ResetCounter	equ	__end_of_ResetCounter-_ResetCounter
	
_ResetCounter:
;incstack = 0
	opt	stack 28
	line	122
	
l4844:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	123
	
l95:; BSR set to: 0

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
	
l4940:
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
	
l4942:
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
	
l4944:
	bcf	((c:4042)),c,2	;volatile
	line	161
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	162
	
l4946:
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
	
l498:
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
	
l4864:
	bcf	((c:4053)),c,7	;volatile
	line	48
	bcf	((c:4053)),c,6	;volatile
	line	49
	bcf	((c:4053)),c,5	;volatile
	line	51
	bsf	((c:4053)),c,3	;volatile
	line	52
	
l4866:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	53
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	56
	
l4868:
	bsf	((c:4081)),c,2	;volatile
	line	57
	
l4870:
	bcf	((c:4048)),c,7	;volatile
	line	58
	
l4872:
	bsf	((c:4082)),c,5	;volatile
	line	62
	
l4874:
	bsf	((c:4082)),c,7	;volatile
	line	64
	
l4876:
	bsf	((c:4053)),c,7	;volatile
	line	66
	
l4878:
	bcf	((c:4045)),c,0	;volatile
	line	67
	
l4880:
	bcf	((c:4045)),c,7	;volatile
	line	68
	
l4882:
	bcf	((c:4045)),c,6	;volatile
	line	69
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	70
	
l4884:
	bcf	((c:4045)),c,3	;volatile
	line	71
	
l4886:
	bcf	((c:4045)),c,1	;volatile
	line	72
	
l4888:
	bsf	((c:4045)),c,0	;volatile
	line	74
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	75
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	83
	
l4890:
	bcf	((c:3987)),c,5	;volatile
	line	85
	
l4892:
	bcf	((c:3986)),c,4	;volatile
	line	86
	
l4894:
	bcf	((c:3987)),c,0	;volatile
	line	88
	
l4896:
	bsf	((c:3989)),c,4	;volatile
	line	89
	
l4898:
	bsf	((c:3989)),c,5	;volatile
	line	90
	
l4900:
	bsf	((c:3989)),c,6	;volatile
	line	93
	
l4902:
	bcf	((c:3989)),c,1	;volatile
	line	94
	
l4904:
	bcf	((c:3989)),c,2	;volatile
	line	95
	
l4906:
	bsf	((c:3989)),c,0	;volatile
	line	96
	
l4908:
	bcf	((c:3989)),c,3	;volatile
	line	99
	
l4910:
	bcf	((c:3988)),c,1	;volatile
	line	100
	
l4912:
	bcf	((c:3988)),c,2	;volatile
	line	103
	
l4914:
	bsf	((c:3986)),c,0	;volatile
	line	104
	
l4916:
	bsf	((c:3986)),c,1	;volatile
	line	105
	
l4918:
	bsf	((c:3986)),c,2	;volatile
	line	106
	
l4920:
	bsf	((c:3986)),c,3	;volatile
	line	107
	
l4922:
	bsf	((c:3986)),c,5	;volatile
	line	109
	
l4924:
	bsf	((c:3990)),c,0	;volatile
	line	110
	
l4926:
	bsf	((c:3990)),c,1	;volatile
	line	111
	
l4928:
	bsf	((c:3990)),c,2	;volatile
	line	112
	
l4930:
	bsf	((c:3987)),c,2	;volatile
	line	114
	
l4932:
	bsf	((c:3987)),c,1	;volatile
	line	119
	
l4934:
	bcf	((c:3988)),c,6	;volatile
	line	120
	
l4936:
	bsf	((c:3988)),c,7	;volatile
	line	122
	
l4938:
	bsf	((c:3972)),c,7	;volatile
	line	123
	
l492:
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
	
l4854:
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
	
l4856:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	139
	
l4858:
		
	bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	140
	
l4860:
	bcf	((c:4034)),c,1	;volatile
	line	141
	
l4862:
	bsf	((c:4034)),c,0	;volatile
	line	142
	
l495:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,89
	global	_initLED

;; *************** function _initLED *****************
;; Defined at:
;;		line 143 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	143
global __ptext7
__ptext7:
psect	text7
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	143
	global	__size_of_initLED
	__size_of_initLED	equ	__end_of_initLED-_initLED
	
_initLED:
;incstack = 0
	opt	stack 29
	line	144
	
l5228:
	movlw	high(0)
	movwf	((c:_x+1)),c
	movlw	low(0)
	movwf	((c:_x)),c
	
l5230:
	btfsc	((c:_x+1)),c,7
	goto	u6031
	movf	((c:_x+1)),c,w
	bnz	u6030
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6031
	goto	u6030

u6031:
	goto	l5234
u6030:
	goto	l104
	
l5232:
	goto	l104
	
l102:
	line	145
	
l5234:
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
	line	146
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
	line	144
	
l5236:
	infsnz	((c:_x)),c
	incf	((c:_x+1)),c
	
l5238:
	btfsc	((c:_x+1)),c,7
	goto	u6041
	movf	((c:_x+1)),c,w
	bnz	u6040
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6041
	goto	u6040

u6041:
	goto	l5234
u6040:
	goto	l104
	
l103:
	line	148
	
l104:
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
	
l5426:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l5428:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u6280
	goto	u6281

u6281:
	goto	l5434
u6280:
	line	15
	
l5430:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l5432:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l5434
	line	17
	
l684:
	line	18
	
l5434:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u6290
	goto	u6291

u6291:
	goto	l5438
u6290:
	line	19
	
l5436:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l5438
	
l685:
	line	20
	
l5438:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u6301
	goto	u6300

u6301:
	goto	l5454
u6300:
	line	21
	
l5440:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l5444
	
l688:
	line	23
	
l5442:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l5444
	line	25
	
l687:
	line	22
	
l5444:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u6311
	goto	u6310
u6311:
	goto	l5442
u6310:
	goto	l5446
	
l689:
	goto	l5446
	line	26
	
l690:
	line	27
	
l5446:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u6321
	goto	u6320

u6321:
	goto	l5450
u6320:
	line	28
	
l5448:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l5450
	
l691:
	line	29
	
l5450:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l5452:
	decfsz	((c:___almod@counter)),c
	
	goto	l5446
	goto	l5454
	
l692:
	goto	l5454
	line	31
	
l686:
	line	32
	
l5454:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u6331
	goto	u6330
u6331:
	goto	l5458
u6330:
	line	33
	
l5456:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l5458
	
l693:
	line	34
	
l5458:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l694
	
l5460:
	line	35
	
l694:
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
	
l5386:
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
	
l5388:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	17
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	18
	
l5390:
	bcf	((c:4012)),c,7	;volatile
	line	19
	
l5392:
	bcf	((c:4012)),c,6	;volatile
	line	20
	
l5394:
	bsf	((c:4012)),c,5	;volatile
	line	21
	
l5396:
	bcf	((c:4012)),c,4	;volatile
	line	23
	
l5398:
	bcf	((c:4012)),c,2	;volatile
	line	24
	
l5400:
	bcf	((c:4011)),c,6	;volatile
	line	25
	
l5402:
	bsf	((c:4011)),c,4	;volatile
	line	26
	
l5404:
	bsf	((c:4011)),c,7	;volatile
	line	28
	
l480:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,89
	global	_Save

;; *************** function _Save *****************
;; Defined at:
;;		line 213 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	213
global __ptext10
__ptext10:
psect	text10
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	213
	global	__size_of_Save
	__size_of_Save	equ	__end_of_Save-_Save
	
_Save:
;incstack = 0
	opt	stack 26
	line	214
	
l5258:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u6091
	goto	u6090
u6091:
	goto	l5262
u6090:
	
l5260:
	movlw	high(0)
	movwf	((c:_Save$323+1)),c
	movlw	low(0)
	movwf	((c:_Save$323)),c
	goto	l5264
	
l174:
	
l5262:
	movlw	high(080h)
	movwf	((c:_Save$323+1)),c
	movlw	low(080h)
	movwf	((c:_Save$323)),c
	goto	l5264
	
l176:
	
l5264:
	movff	(c:_Save$323),(c:Save@sum)
	line	215
	
l5266:
	movff	(c:_TOTAL),(c:WriteMem@data)
	movf	((c:Save@sum)),c,w
	
	call	_WriteMem
	line	217
	
l5268:
	movlw	high(0)
	movwf	((c:Save@x+1)),c
	movlw	low(0)
	movwf	((c:Save@x)),c
	goto	l5274
	
l178:
	line	218
	
l5270:
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
	line	217
	
l5272:
	infsnz	((c:Save@x)),c
	incf	((c:Save@x+1)),c
	goto	l5274
	
l177:
	
l5274:
		movf	((c:_TOTAL)),c,w
	subwf	((c:Save@x)),c,w
	movf	((c:Save@x+1)),c,w
	xorlw	80h
	movwf	(??_Save+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_Save+0+0)&0ffh,c,w
	btfss	status,0
	goto	u6101
	goto	u6100

u6101:
	goto	l5270
u6100:
	goto	l5276
	
l179:
	line	220
	
l5276:
	call	_ShowMem	;wreg free
	line	221
	
l180:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Save
	__end_of_Save:
	signat	_Save,89
	global	_ShowMem

;; *************** function _ShowMem *****************
;; Defined at:
;;		line 200 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	200
global __ptext11
__ptext11:
psect	text11
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	200
	global	__size_of_ShowMem
	__size_of_ShowMem	equ	__end_of_ShowMem-_ShowMem
	
_ShowMem:
;incstack = 0
	opt	stack 27
	line	202
	
l4948:
	movlw	high(0)
	movwf	((c:ShowMem@x+1)),c
	movlw	low(0)
	movwf	((c:ShowMem@x)),c
	goto	l4954
	
l160:
	
l4950:
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
	
l4952:
	infsnz	((c:ShowMem@x)),c
	incf	((c:ShowMem@x+1)),c
	goto	l4954
	
l159:
	
l4954:
		movf	((c:_TOTAL)),c,w
	subwf	((c:ShowMem@x)),c,w
	movf	((c:ShowMem@x+1)),c,w
	xorlw	80h
	movwf	(??_ShowMem+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_ShowMem+0+0)&0ffh,c,w
	btfss	status,0
	goto	u5561
	goto	u5560

u5561:
	goto	l4950
u5560:
	goto	l162
	
l161:
	line	203
	
l162:
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
;;		 -> STR_28(63), STR_27(41), STR_26(63), STR_25(36), 
;;		 -> STR_24(42), STR_23(40), STR_22(40), STR_21(49), 
;;		 -> STR_20(47), STR_19(38), STR_18(47), STR_17(45), 
;;		 -> STR_16(61), STR_15(60), STR_14(53), STR_13(39), 
;;		 -> STR_12(44), STR_11(60), STR_10(60), STR_9(47), 
;;		 -> STR_8(38), STR_7(43), STR_6(39), STR_5(45), 
;;		 -> STR_4(41), STR_3(37), STR_2(37), STR_1(36), 
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
	
l4638:
		movlw	low(?_printf+02h)
	movwf	((c:printf@ap)),c
	movlw	high(?_printf+02h)
	movwf	((c:printf@ap+1)),c

	line	536
	goto	l4740
	
l573:
	line	538
	
l4640:
		movlw	37
	xorwf	((c:printf@c)),c,w
	btfsc	status,2
	goto	u5161
	goto	u5160

u5161:
	goto	l4644
u5160:
	line	541
	
l4642:
	movf	((c:printf@c)),c,w
	
	call	_putch
	line	542
	goto	l4740
	line	543
	
l574:
	line	546
	
l4644:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	line	548
	movlw	low(0)
	movwf	((c:printf@flag)),c
	goto	l4650
	line	550
	
l575:
	line	551
	goto	l4650
	line	579
	
l577:
	line	580
	
l4646:
	bsf	(0+(2/8)+(c:printf@flag)),c,(2)&7
	line	581
	infsnz	((c:printf@f)),c
	incf	((c:printf@f+1)),c
	line	582
	goto	l4650
	line	584
	
l4648:
	goto	l4652
	line	551
	
l576:
	
l4650:
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
	goto	l4646
	goto	l4652

	line	584
	
l579:
	line	585
	goto	l4652
	line	586
	
l578:
	goto	l4650
	
l580:
	line	597
	
l4652:
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
	goto	u5171
	goto	u5170
u5171:
	goto	l4668
u5170:
	line	598
	
l4654:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	goto	l4656
	line	599
	
l582:
	line	600
	
l4656:
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
	
l4658:
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

	
l4660:
	infsnz	((c:printf@f)),c
	incf	((c:printf@f+1)),c
	line	602
	
l4662:
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
	goto	u5181
	goto	u5180
u5181:
	goto	l4656
u5180:
	goto	l4668
	
l583:
	goto	l4668
	line	608
	
l581:
	line	635
	goto	l4668
	line	637
	
l585:
	line	638
	goto	l615
	line	697
	
l587:
	goto	l589
	line	698
	
l588:
	line	699
	goto	l589
	line	802
	
l590:
	line	813
	goto	l4740
	line	817
	
l591:
	line	818
	
l4664:
	bsf	(0+(6/8)+(c:printf@flag)),c,(6)&7
	line	819
	goto	l589
	line	822
	
l4666:
	goto	l589
	line	635
	
l584:
	
l4668:
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
	goto	l615
	xorlw	100^0	; case 100
	skipnz
	goto	l589
	xorlw	105^100	; case 105
	skipnz
	goto	l589
	xorlw	117^105	; case 117
	skipnz
	goto	l4664
	goto	l4740

	line	822
	
l589:
	line	1251
	
	btfsc	((c:printf@flag)),c,(6)&7
	goto	u5191
	goto	u5190
u5191:
	goto	l4680
u5190:
	line	1259
	
l4670:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4672:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	line	1261
	
l4674:
	btfsc	((c:printf@val+1)),c,7
	goto	u5200
	goto	u5201

u5201:
	goto	l4684
u5200:
	line	1262
	
l4676:
	movlw	(03h)&0ffh
	iorwf	((c:printf@flag)),c
	line	1263
	
l4678:
	negf	((c:printf@val)),c
	comf	((c:printf@val+1)),c
	btfsc	status,0
	incf	((c:printf@val+1)),c
	goto	l4684
	line	1264
	
l593:
	line	1266
	goto	l4684
	line	1268
	
l592:
	line	1286
	
l4680:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4682:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	goto	l4684
	line	1287
	
l594:
	line	1305
	
l4684:
	movlw	low(01h)
	movwf	((c:printf@c)),c
	
l4686:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5211
	goto	u5210

u5211:
	goto	l4690
u5210:
	goto	l4698
	
l4688:
	goto	l4698
	line	1306
	
l595:
	
l4690:
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
	goto	u5221
	goto	u5220

u5221:
	goto	l4694
u5220:
	goto	l4698
	line	1307
	
l4692:
	goto	l4698
	
l597:
	line	1305
	
l4694:
	incf	((c:printf@c)),c
	
l4696:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5231
	goto	u5230

u5231:
	goto	l4690
u5230:
	goto	l4698
	
l596:
	line	1345
	
l4698:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5241
	goto	u5240

u5241:
	goto	l4704
u5240:
	
l4700:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5251
	goto	u5250
u5251:
	goto	l4704
u5250:
	line	1346
	
l4702:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	goto	l4704
	
l598:
	line	1381
	
l4704:
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
	goto	u5261
	goto	u5260
u5261:
	goto	l4708
u5260:
	line	1382
	
l4706:
	movf	((c:printf@c)),c,w
	subwf	((c:printf@width)),c
	movlw	0
	btfsc	((c:printf@c)),c,7
	movlw	0ffh
	subwfb	((c:printf@width+1)),c

	goto	l4710
	line	1383
	
l599:
	line	1384
	
l4708:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	goto	l4710
	
l600:
	line	1387
	
l4710:
	
	btfss	((c:printf@flag)),c,(2)&7
	goto	u5271
	goto	u5270
u5271:
	goto	l4722
u5270:
	line	1392
	
l4712:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5281
	goto	u5280
u5281:
	goto	l4716
u5280:
	line	1393
	
l4714:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4716
	
l602:
	line	1415
	
l4716:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5291
	goto	u5290

u5291:
	goto	l4732
u5290:
	goto	l4718
	line	1416
	
l604:
	line	1417
	
l4718:
	movlw	(030h)&0ffh
	
	call	_putch
	line	1418
	
l4720:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfss	status,2
	goto	u5301
	goto	u5300

u5301:
	goto	l4718
u5300:
	goto	l4732
	
l605:
	goto	l4732
	
l603:
	line	1420
	goto	l4732
	
l601:
	line	1428
	
l4722:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5311
	goto	u5310

u5311:
	goto	l4728
u5310:
	goto	l4724
	line	1429
	
l608:
	line	1430
	
l4724:
	movlw	(020h)&0ffh
	
	call	_putch
	line	1431
	
l4726:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfss	status,2
	goto	u5321
	goto	u5320

u5321:
	goto	l4724
u5320:
	goto	l4728
	
l609:
	goto	l4728
	
l607:
	line	1438
	
l4728:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5331
	goto	u5330
u5331:
	goto	l4732
u5330:
	line	1439
	
l4730:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4732
	
l610:
	goto	l4732
	line	1469
	
l606:
	line	1472
	
l4732:
	movff	(c:printf@c),(c:printf@prec)
	line	1474
	goto	l4738
	
l612:
	line	1489
	
l4734:
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
	
l4736:
	movf	((c:printf@c)),c,w
	
	call	_putch
	goto	l4738
	line	1525
	
l611:
	line	1474
	
l4738:
	decf	((c:printf@prec)),c
		incf	((c:printf@prec)),c,w
	btfss	status,2
	goto	u5341
	goto	u5340

u5341:
	goto	l4734
u5340:
	goto	l4740
	
l613:
	goto	l4740
	line	1533
	
l572:
	line	536
	
l4740:
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
	goto	u5351
	goto	u5350
u5351:
	goto	l4640
u5350:
	goto	l615
	
l614:
	goto	l615
	line	1535
	
l586:
	line	1541
;	Return value of _printf is never used
	
l615:
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
	
l4534:
	goto	l483
	
l484:
	line	31
	
l483:
	line	30
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u5011
	goto	u5010
u5011:
	goto	l483
u5010:
	goto	l4536
	
l485:
	line	32
	
l4536:
	movff	(c:putch@data),(c:4013)	;volatile
	line	33
	
l486:
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
	
l4538:
	movlw	low(0)
	movwf	((c:_isdigit$2000)),c
	
l4540:
		movlw	03Ah-0
	cpfslt	((c:isdigit@c)),c
	goto	u5021
	goto	u5020

u5021:
	goto	l4546
u5020:
	
l4542:
		movlw	030h-1
	cpfsgt	((c:isdigit@c)),c
	goto	u5031
	goto	u5030

u5031:
	goto	l4546
u5030:
	
l4544:
	movlw	low(01h)
	movwf	((c:_isdigit$2000)),c
	goto	l4546
	
l945:
	
l4546:
	movff	(c:_isdigit$2000),??_isdigit+0+0
	rrcf	(??_isdigit+0+0),c,w
	goto	l946
	
l4548:
	line	15
	
l946:
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
	goto	l618
	
l4554:
	line	53
	
l618:
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
	
l4622:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u5131
	goto	u5130

u5131:
	goto	l1033
u5130:
	line	14
	
l4624:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l4628
	
l1035:
	line	16
	
l4626:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l4628
	line	18
	
l1034:
	line	15
	
l4628:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u5141
	goto	u5140
u5141:
	goto	l4626
u5140:
	goto	l4630
	
l1036:
	goto	l4630
	line	19
	
l1037:
	line	20
	
l4630:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u5151
	goto	u5150

u5151:
	goto	l4634
u5150:
	line	21
	
l4632:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l4634
	
l1038:
	line	22
	
l4634:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l4636:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l4630
	goto	l1033
	
l1039:
	line	24
	
l1033:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1040:
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
	
l4600:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l4602:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u5101
	goto	u5100

u5101:
	goto	l1023
u5100:
	line	16
	
l4604:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l4608
	
l1025:
	line	18
	
l4606:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l4608
	line	20
	
l1024:
	line	17
	
l4608:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u5111
	goto	u5110
u5111:
	goto	l4606
u5110:
	goto	l4610
	
l1026:
	goto	l4610
	line	21
	
l1027:
	line	22
	
l4610:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l4612:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u5121
	goto	u5120

u5121:
	goto	l4618
u5120:
	line	24
	
l4614:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l4616:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l4618
	line	26
	
l1028:
	line	27
	
l4618:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l4620:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l4610
	goto	l1023
	
l1029:
	line	29
	
l1023:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1030:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Load

;; *************** function _Load *****************
;; Defined at:
;;		line 229 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	229
global __ptext18
__ptext18:
psect	text18
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	229
	global	__size_of_Load
	__size_of_Load	equ	__end_of_Load-_Load
	
_Load:
;incstack = 0
	opt	stack 27
	line	230
	
l5278:
		movlw	low(_TOTAL)
	movwf	((c:Length@data)),c
	movlw	high(_TOTAL)
	movwf	((c:Length@data+1)),c

	call	_Length	;wreg free
	line	232
	
l5280:
	movlw	high(0)
	movwf	((c:Load@x+1)),c
	movlw	low(0)
	movwf	((c:Load@x)),c
	goto	l5286
	
l191:
	
l5282:
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
	
l5284:
	infsnz	((c:Load@x)),c
	incf	((c:Load@x+1)),c
	goto	l5286
	
l190:
	
l5286:
		movf	((c:_TOTAL)),c,w
	subwf	((c:Load@x)),c,w
	movf	((c:Load@x+1)),c,w
	xorlw	80h
	movwf	(??_Load+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_Load+0+0)&0ffh,c,w
	btfss	status,0
	goto	u6111
	goto	u6110

u6111:
	goto	l5282
u6110:
	goto	l193
	
l192:
	line	233
	
l193:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Load
	__end_of_Load:
	signat	_Load,89
	global	_Length

;; *************** function _Length *****************
;; Defined at:
;;		line 223 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	223
global __ptext19
__ptext19:
psect	text19
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	223
	global	__size_of_Length
	__size_of_Length	equ	__end_of_Length-_Length
	
_Length:
;incstack = 0
	opt	stack 27
	line	224
	
l4956:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u5571
	goto	u5570
u5571:
	goto	l4960
u5570:
	
l4958:
	movlw	high(0)
	movwf	((c:_Length$329+1)),c
	movlw	low(0)
	movwf	((c:_Length$329)),c
	goto	l4962
	
l184:
	
l4960:
	movlw	high(080h)
	movwf	((c:_Length$329+1)),c
	movlw	low(080h)
	movwf	((c:_Length$329)),c
	goto	l4962
	
l186:
	
l4962:
	movff	(c:_Length$329),(c:Length@add)
	line	226
	
l4964:
		movlw	low(Length@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(Length@rta)
	movwf	((c:ReadMem@data+1)),c

	movf	((c:Length@add)),c,w
	
	call	_ReadMem
	line	227
	
l4966:
	movf	((c:Length@rta)),c,w
	movwf	(??_Length+0+0)&0ffh,c
	clrf	(??_Length+0+0+1)&0ffh,c

	movff	(c:Length@data),fsr2l
	movff	(c:Length@data+1),fsr2h
	movff	??_Length+0+0,postinc2
	movff	??_Length+0+1,postdec2

	line	228
	
l187:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Length
	__end_of_Length:
	signat	_Length,4217
	global	_GetValue

;; *************** function _GetValue *****************
;; Defined at:
;;		line 234 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	234
global __ptext20
__ptext20:
psect	text20
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	234
	global	__size_of_GetValue
	__size_of_GetValue	equ	__end_of_GetValue-_GetValue
	
_GetValue:
;incstack = 0
	opt	stack 27
	line	235
	
l4968:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u5581
	goto	u5580
u5581:
	goto	l4972
u5580:
	
l4970:
	movlw	high(0)
	movwf	((c:_GetValue$339+1)),c
	movlw	low(0)
	movwf	((c:_GetValue$339)),c
	goto	l4974
	
l197:
	
l4972:
	movlw	high(080h)
	movwf	((c:_GetValue$339+1)),c
	movlw	low(080h)
	movwf	((c:_GetValue$339)),c
	goto	l4974
	
l199:
	
l4974:
	movff	(c:_GetValue$339),(c:GetValue@add)
	line	237
	
l4976:
		movlw	low(GetValue@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(GetValue@rta)
	movwf	((c:ReadMem@data+1)),c

	movf	((c:GetValue@add)),c,w
	addwf	((c:GetValue@item)),c,w
	movwf	(??_GetValue+0+0)&0ffh,c
	incf	((??_GetValue+0+0)),c,w
	
	call	_ReadMem
	line	238
	
l4978:
	movf	((c:GetValue@rta)),c,w
	movwf	(??_GetValue+0+0)&0ffh,c
	clrf	(??_GetValue+0+0+1)&0ffh,c

	movff	(c:GetValue@data),fsr2l
	movff	(c:GetValue@data+1),fsr2h
	movff	??_GetValue+0+0,postinc2
	movff	??_GetValue+0+1,postdec2

	line	239
	
l200:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_GetValue
	__end_of_GetValue:
	signat	_GetValue,8313
	global	_Line

;; *************** function _Line *****************
;; Defined at:
;;		line 244 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	244
global __ptext21
__ptext21:
psect	text21
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	244
	global	__size_of_Line
	__size_of_Line	equ	__end_of_Line-_Line
	
_Line:
;incstack = 0
	opt	stack 28
	line	245
	
l5288:
	movlw	low(0)
	movwf	((c:Line@a)),c
	movlw	high(0)
	movwf	((c:Line@a+1)),c
	movlw	low highword(0)
	movwf	((c:Line@a+2)),c
	movlw	high highword(0)
	movwf	((c:Line@a+3)),c
	line	246
	movlw	low(0)
	movwf	((c:Line@b)),c
	movlw	high(0)
	movwf	((c:Line@b+1)),c
	movlw	low highword(0)
	movwf	((c:Line@b+2)),c
	movlw	high highword(0)
	movwf	((c:Line@b+3)),c
	line	247
	movlw	low(0)
	movwf	((c:Line@g)),c
	line	251
	movlw	high(0)
	movwf	((c:Line@j+1)),c
	movlw	low(0)
	movwf	((c:Line@j)),c
	
l5290:
	btfsc	((c:Line@j+1)),c,7
	goto	u6121
	movf	((c:Line@j+1)),c,w
	bnz	u6120
	movlw	5
	subwf	 ((c:Line@j)),c,w
	btfss	status,0
	goto	u6121
	goto	u6120

u6121:
	goto	l5294
u6120:
	goto	l5332
	
l5292:
	goto	l5332
	
l203:
	line	252
	
l5294:
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
	line	253
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

	line	254
	
l5296:
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
	goto	u6131
	goto	u6130

u6131:
	goto	l5300
u6130:
	line	255
	
l5298:
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

	goto	l5300
	line	256
	
l205:
	line	257
	
l5300:
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
	goto	u6141
	goto	u6140

u6141:
	goto	l5304
u6140:
	line	258
	
l5302:
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

	goto	l5304
	line	259
	
l206:
	line	260
	
l5304:
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

	line	261
	
l5306:
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
	
	line	262
	
l5308:
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
	
	line	263
	
l5310:
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
	line	264
	
l5312:
	btfsc	((c:Line@v+3)),c,7
	goto	u6150
	movf	((c:Line@v+3)),c,w
	iorwf	((c:Line@v+2)),c,w
	iorwf	((c:Line@v+1)),c,w
	bnz	u6151
	movlw	50
	subwf	 ((c:Line@v)),c,w
	btfsc	status,0
	goto	u6151
	goto	u6150

u6151:
	goto	l5316
u6150:
	line	265
	
l5314:
	movlw	low(0)
	movwf	((c:Line@v)),c
	movlw	high(0)
	movwf	((c:Line@v+1)),c
	movlw	low highword(0)
	movwf	((c:Line@v+2)),c
	movlw	high highword(0)
	movwf	((c:Line@v+3)),c
	goto	l5316
	line	266
	
l207:
	line	267
	
l5316:
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
	line	268
	
l5318:
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
	line	271
	
l5320:
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

	line	272
	
l5322:
	movf	((c:Line@v)),c,w
	addwf	((c:Line@b)),c
	movf	((c:Line@v+1)),c,w
	addwfc	((c:Line@b+1)),c
	movf	((c:Line@v+2)),c,w
	addwfc	((c:Line@b+2)),c
	movf	((c:Line@v+3)),c,w
	addwfc	((c:Line@b+3)),c
	line	273
	
l5324:
	btfsc	((c:Line@v+3)),c,7
	goto	u6161
	movf	((c:Line@v+3)),c,w
	iorwf	((c:Line@v+2)),c,w
	iorwf	((c:Line@v+1)),c,w
	bnz	u6160
	movlw	201
	subwf	 ((c:Line@v)),c,w
	btfss	status,0
	goto	u6161
	goto	u6160

u6161:
	goto	l5328
u6160:
	line	274
	
l5326:
	movlw	low(01h)
	movwf	((c:Line@g)),c
	goto	l5328
	line	275
	
l208:
	line	251
	
l5328:
	infsnz	((c:Line@j)),c
	incf	((c:Line@j+1)),c
	
l5330:
	btfsc	((c:Line@j+1)),c,7
	goto	u6171
	movf	((c:Line@j+1)),c,w
	bnz	u6170
	movlw	5
	subwf	 ((c:Line@j)),c,w
	btfss	status,0
	goto	u6171
	goto	u6170

u6171:
	goto	l5294
u6170:
	goto	l5332
	
l204:
	line	278
	
l5332:
	movlw	high(0)
	movwf	((c:Line@j_349+1)),c
	movlw	low(0)
	movwf	((c:Line@j_349)),c
	
l5334:
	btfsc	((c:Line@j_349+1)),c,7
	goto	u6181
	movf	((c:Line@j_349+1)),c,w
	bnz	u6180
	movlw	2
	subwf	 ((c:Line@j_349)),c,w
	btfss	status,0
	goto	u6181
	goto	u6180

u6181:
	goto	l5338
u6180:
	goto	l5360
	
l5336:
	goto	l5360
	
l209:
	line	279
	
l5338:
	bcf	status,0
	rlcf	((c:Line@j_349)),c,w
	movwf	fsr2l
	rlcf	((c:Line@j_349+1)),c,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(c:Line@i_350)
	movff	postdec2,(c:Line@i_350+1)
	line	280
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
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

	line	281
	
l5340:
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
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
	goto	u6191
	goto	u6190

u6191:
	goto	l5344
u6190:
	
l5342:
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
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

	goto	l5344
	
l211:
	line	282
	
l5344:
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
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
	goto	u6201
	goto	u6200

u6201:
	goto	l5348
u6200:
	
l5346:
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
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

	goto	l5348
	
l212:
	line	283
	
l5348:
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
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

	
l5350:
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
	
	
l5352:
	movff	(c:Line@v),(c:___aldiv@dividend)
	movff	(c:Line@v+1),(c:___aldiv@dividend+1)
	movff	(c:Line@v+2),(c:___aldiv@dividend+2)
	movff	(c:Line@v+3),(c:___aldiv@dividend+3)
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
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
	
	
l5354:
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
	line	284
	bcf	status,0
	rlcf	((c:Line@i_350)),c,w
	movwf	fsr2l
	rlcf	((c:Line@i_350+1)),c,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	(c:Line@v),postinc2
	movff	(c:Line@v+1),postdec2
	line	278
	
l5356:
	infsnz	((c:Line@j_349)),c
	incf	((c:Line@j_349+1)),c
	
l5358:
	btfsc	((c:Line@j_349+1)),c,7
	goto	u6211
	movf	((c:Line@j_349+1)),c,w
	bnz	u6210
	movlw	2
	subwf	 ((c:Line@j_349)),c,w
	btfss	status,0
	goto	u6211
	goto	u6210

u6211:
	goto	l5338
u6210:
	goto	l5360
	
l210:
	line	287
	
l5360:
	movf	((c:Line@g)),c,w
	btfss	status,2
	goto	u6221
	goto	u6220
u6221:
	goto	l5370
u6220:
	line	288
	
l5362:
	btfsc	((c:_line+1)),c,7
	goto	u6230
	movf	((c:_line+1)),c,w
	bnz	u6231
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u6231
	goto	u6230

u6231:
	goto	l5366
u6230:
	
l5364:
	movlw	high(-200)
	movwf	((c:_line+1)),c
	movlw	low(-200)
	movwf	((c:_line)),c
	goto	l218
	
l215:
	
l5366:
	movlw	high(0C8h)
	movwf	((c:_line+1)),c
	movlw	low(0C8h)
	movwf	((c:_line)),c
	goto	l218
	
l217:
	goto	l218
	line	289
	
l5368:
	goto	l218
	line	290
	
l213:
	line	291
	
l5370:
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
	line	292
	
l218:
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
	
l4990:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l4992
	line	120
	
l627:
	line	121
	
l4992:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u5591
	goto	u5590
u5591:
	goto	l4996
u5590:
	line	122
	
l4994:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l4996
	
l628:
	line	123
	
l4996:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l4998:
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
	goto	u5601
	goto	u5600

u5601:
	goto	l4992
u5600:
	
l629:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l630:
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
	
l5000:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l5002:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u5610
	goto	u5611

u5611:
	goto	l5008
u5610:
	line	16
	
l5004:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l5006:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l5008
	line	18
	
l671:
	line	19
	
l5008:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u5620
	goto	u5621

u5621:
	goto	l5014
u5620:
	line	20
	
l5010:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l5012:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l5014
	line	22
	
l672:
	line	23
	
l5014:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l5016:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u5631
	goto	u5630

u5631:
	goto	l5036
u5630:
	line	25
	
l5018:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l5022
	
l675:
	line	27
	
l5020:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l5022
	line	29
	
l674:
	line	26
	
l5022:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u5641
	goto	u5640
u5641:
	goto	l5020
u5640:
	goto	l5024
	
l676:
	goto	l5024
	line	30
	
l677:
	line	31
	
l5024:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l5026:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u5651
	goto	u5650

u5651:
	goto	l5032
u5650:
	line	33
	
l5028:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l5030:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l5032
	line	35
	
l678:
	line	36
	
l5032:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l5034:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l5024
	goto	l5036
	
l679:
	goto	l5036
	line	38
	
l673:
	line	39
	
l5036:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u5661
	goto	u5660
u5661:
	goto	l5040
u5660:
	line	40
	
l5038:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l5040
	
l680:
	line	41
	
l5040:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l681
	
l5042:
	line	42
	
l681:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_EreaseAll

;; *************** function _EreaseAll *****************
;; Defined at:
;;		line 71 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	71
global __ptext24
__ptext24:
psect	text24
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	71
	global	__size_of_EreaseAll
	__size_of_EreaseAll	equ	__end_of_EreaseAll-_EreaseAll
	
_EreaseAll:
;incstack = 0
	opt	stack 28
	line	74
	
l5220:
	movlw	low(0)
	movwf	((c:WriteMem@data)),c
	movlw	(0)&0ffh
	
	call	_WriteMem
	line	75
	movlw	low(0)
	movwf	((c:WriteMem@data)),c
	movlw	(080h)&0ffh
	
	call	_WriteMem
	line	76
	
l59:
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
	
l4824:
	movff	(c:WriteMem@addr),(c:4009)	;volatile
	line	212
	
l4826:
	movff	(c:WriteMem@data),(c:4008)	;volatile
	line	213
	
l4828:
	bcf	((c:4006)),c,7	;volatile
	line	214
	
l4830:
	bcf	((c:4006)),c,6	;volatile
	line	215
	
l4832:
	bsf	((c:4006)),c,2	;volatile
	line	216
	
l4834:
	bcf	((c:4082)),c,7	;volatile
	line	217
	
l4836:
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	218
	
l4838:
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	219
	
l4840:
	bsf	((c:4006)),c,1	;volatile
	line	220
	
l4842:
	bsf	((c:4082)),c,7	;volatile
	line	221
	goto	l550
	
l551:
	
l550:
	btfsc	((c:4006)),c,1	;volatile
	goto	u5551
	goto	u5550
u5551:
	goto	l550
u5550:
	
l552:
	line	222
	bcf	((c:4006)),c,2	;volatile
	line	223
	
l553:
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
	
l5406:
	movlw	low(0)
	movwf	((c:EnhancedRead@i)),c
	
l5408:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u6251
	goto	u6250

u6251:
	goto	l5412
u6250:
	goto	l547
	
l5410:
	goto	l547
	
l542:
	line	202
	
l5412:
	movff	(c:EnhancedRead@i),??_EnhancedRead+0+0
	rlncf	(??_EnhancedRead+0+0),c
	rlncf	(??_EnhancedRead+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_EnhancedRead+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_EnhancedRead+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	203
	
l5414:
	bsf	((c:4034)),c,1	;volatile
	line	204
	goto	l544
	
l545:
	
l544:
	btfsc	((c:4034)),c,1	;volatile
	goto	u6261
	goto	u6260
u6261:
	goto	l544
u6260:
	goto	l5416
	
l546:
	line	205
	
l5416:
	movf	((c:4036)),c,w	;volatile
	mullw	04h
	movff	prodl,(c:EnhancedRead@aux)
	movff	prodh,(c:EnhancedRead@aux+1)
	line	206
	
l5418:
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
	
l5420:
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
	
l5422:
	incf	((c:EnhancedRead@i)),c
	
l5424:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u6271
	goto	u6270

u6271:
	goto	l5412
u6270:
	goto	l547
	
l543:
	line	209
	
l547:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_EnhancedRead
	__end_of_EnhancedRead:
	signat	_EnhancedRead,89
	global	_CheckMem

;; *************** function _CheckMem *****************
;; Defined at:
;;		line 204 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  data            2   17[COMRAM] PTR unsigned char 
;;		 -> main@old_419(1), main@old_416(1), main@old_414(1), main@old_411(1), 
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
	line	204
global __ptext27
__ptext27:
psect	text27
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	204
	global	__size_of_CheckMem
	__size_of_CheckMem	equ	__end_of_CheckMem-_CheckMem
	
_CheckMem:
;incstack = 0
	opt	stack 28
	line	206
	
l5240:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u6051
	goto	u6050
u6051:
	goto	l5244
u6050:
	line	207
	
l5242:
		movlw	low(CheckMem@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(CheckMem@rta)
	movwf	((c:ReadMem@data+1)),c

	movlw	(0)&0ffh
	
	call	_ReadMem
	line	208
	goto	l5248
	
l165:
	
l5244:
		decf	((c:_MF)),c,w
	btfss	status,2
	goto	u6061
	goto	u6060

u6061:
	goto	l5248
u6060:
	line	209
	
l5246:
		movlw	low(CheckMem@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(CheckMem@rta)
	movwf	((c:ReadMem@data+1)),c

	movlw	(080h)&0ffh
	
	call	_ReadMem
	goto	l5248
	line	210
	
l167:
	goto	l5248
	line	211
	
l166:
	
l5248:
	movlw	low(0)
	movwf	((c:_CheckMem$320)),c
	
l5250:
	movf	((c:CheckMem@rta)),c,w
	btfsc	status,2
	goto	u6071
	goto	u6070
u6071:
	goto	l5256
u6070:
	
l5252:
		incf	((c:CheckMem@rta)),c,w
	btfsc	status,2
	goto	u6081
	goto	u6080

u6081:
	goto	l5256
u6080:
	
l5254:
	movlw	low(01h)
	movwf	((c:_CheckMem$320)),c
	goto	l5256
	
l169:
	
l5256:
	movff	(c:CheckMem@data),fsr2l
	movff	(c:CheckMem@data+1),fsr2h
	movff	(c:_CheckMem$320),indf2

	line	212
	
l170:
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
	
l4742:
	movff	(c:ReadMem@addr),(c:4009)	;volatile
	line	226
	
l4744:
	bcf	((c:4006)),c,7	;volatile
	line	227
	
l4746:
	bcf	((c:4006)),c,6	;volatile
	line	228
	
l4748:
	bsf	((c:4006)),c,0	;volatile
	line	229
	goto	l556
	
l557:
	
l556:
	btfsc	((c:4006)),c,0	;volatile
	goto	u5361
	goto	u5360
u5361:
	goto	l556
u5360:
	goto	l4750
	
l558:
	line	230
	
l4750:
	movff	(c:ReadMem@data),fsr2l
	movff	(c:ReadMem@data+1),fsr2h
	movff	(c:4008),indf2	;volatile

	line	231
	
l559:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadMem
	__end_of_ReadMem:
	signat	_ReadMem,8313
	global	_AdvanceLow

;; *************** function _AdvanceLow *****************
;; Defined at:
;;		line 294 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	294
global __ptext29
__ptext29:
psect	text29
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	294
	global	__size_of_AdvanceLow
	__size_of_AdvanceLow	equ	__end_of_AdvanceLow-_AdvanceLow
	
_AdvanceLow:
;incstack = 0
	opt	stack 26
	line	298
	
l5372:
	movff	0+(_VEL+04h),(AdvanceLow@speed)
	movff	1+(_VEL+04h),(AdvanceLow@speed+1)
	line	299
	movff	0+(_VKP+06h),(AdvanceLow@kp)
	movff	1+(_VKP+06h),(AdvanceLow@kp+1)
	movff	2+(_VKP+06h),(AdvanceLow@kp+2)
	line	300
	movff	0+(_VKD+06h),(AdvanceLow@kd)
	movff	1+(_VKD+06h),(AdvanceLow@kd+1)
	movff	2+(_VKD+06h),(AdvanceLow@kd+2)
	line	302
	
l5374:
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
	line	303
	
l5376:
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
	line	304
	
l5378:
	btfsc	((c:_formula+1)),c,7
	goto	u6241
	movf	((c:_formula+1)),c,w
	bnz	u6240
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u6241
	goto	u6240

u6241:
	goto	l5382
u6240:
	line	305
	
l5380:
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
	line	306
	goto	l5384
	
l221:
	line	307
	
l5382:
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
	goto	l5384
	line	308
	
l222:
	line	309
	
l5384:
	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	line	310
	
l223:
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
	
l5174:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u5951
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u5951:
	movf	(??___fttol+0+0),c,w
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	btfss	status,2
	goto	u5961
	goto	u5960
u5961:
	goto	l5180
u5960:
	line	50
	
l5176:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l931
	
l5178:; BSR set to: 0

	goto	l931
	
l930:; BSR set to: 0

	line	51
	
l5180:; BSR set to: 0

	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u5970
u5975:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u5970:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u5975
	movf	(??___fttol+1+0),c,w
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l5182:; BSR set to: 0

	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l5184:; BSR set to: 0

	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l5186:; BSR set to: 0

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
	
l5188:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l5190:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___fttol@exp1))&0ffh,7
	goto	u5980
	goto	u5981

u5981:
	goto	l5202
u5980:
	line	57
	
l5192:; BSR set to: 0

	movlb	0	; () banked
		movf	((___fttol@exp1))&0ffh,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u5991
	goto	u5990

u5991:
	goto	l5198
u5990:
	line	58
	
l5194:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l931
	
l5196:; BSR set to: 0

	goto	l931
	
l933:; BSR set to: 0

	goto	l5198
	line	59
	
l934:; BSR set to: 0

	line	60
	
l5198:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___fttol@lval+3))&0ffh
	rrcf	((___fttol@lval+2))&0ffh
	rrcf	((___fttol@lval+1))&0ffh
	rrcf	((___fttol@lval))&0ffh
	line	61
	
l5200:; BSR set to: 0

	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l5198
	goto	l5212
	
l935:; BSR set to: 0

	line	62
	goto	l5212
	
l932:; BSR set to: 0

	line	63
	
l5202:; BSR set to: 0

		movlw	018h-1
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u6001
	goto	u6000

u6001:
	goto	l5210
u6000:
	line	64
	
l5204:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l931
	
l5206:; BSR set to: 0

	goto	l931
	
l937:; BSR set to: 0

	line	65
	goto	l5210
	
l939:; BSR set to: 0

	line	66
	
l5208:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___fttol@lval))&0ffh
	rlcf	((___fttol@lval+1))&0ffh
	rlcf	((___fttol@lval+2))&0ffh
	rlcf	((___fttol@lval+3))&0ffh
	line	67
	movlb	0	; () banked
	decf	((___fttol@exp1))&0ffh
	goto	l5210
	line	68
	
l938:; BSR set to: 0

	line	65
	
l5210:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6011
	goto	u6010
u6011:
	goto	l5208
u6010:
	goto	l5212
	
l940:; BSR set to: 0

	goto	l5212
	line	69
	
l936:; BSR set to: 0

	line	70
	
l5212:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6021
	goto	u6020
u6021:
	goto	l5216
u6020:
	line	71
	
l5214:; BSR set to: 0

	movlb	0	; () banked
	comf	((___fttol@lval+3))&0ffh
	comf	((___fttol@lval+2))&0ffh
	comf	((___fttol@lval+1))&0ffh
	negf	((___fttol@lval))&0ffh
	movlw	0
	addwfc	((___fttol@lval+1))&0ffh
	addwfc	((___fttol@lval+2))&0ffh
	addwfc	((___fttol@lval+3))&0ffh
	goto	l5216
	
l941:; BSR set to: 0

	line	72
	
l5216:; BSR set to: 0

	movff	(___fttol@lval),(c:?___fttol)
	movff	(___fttol@lval+1),(c:?___fttol+1)
	movff	(___fttol@lval+2),(c:?___fttol+2)
	movff	(___fttol@lval+3),(c:?___fttol+3)
	goto	l931
	
l5218:; BSR set to: 0

	line	73
	
l931:; BSR set to: 0

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
	
l5114:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u5881
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u5881:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u5891
	goto	u5890
u5891:
	goto	l5120
u5890:
	line	68
	
l5116:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l910
	
l5118:
	goto	l910
	
l909:
	line	69
	
l5120:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u5901
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u5901:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u5911
	goto	u5910
u5911:
	goto	l5126
u5910:
	line	70
	
l5122:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l910
	
l5124:
	goto	l910
	
l911:
	line	71
	
l5126:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l5128:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l5130:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l5132:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l5134:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l5136:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l5138:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l5140
	line	135
	
l912:
	line	136
	
l5140:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u5921
	goto	u5920
u5921:
	goto	l5144
u5920:
	line	137
	
l5142:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l5144
	
l913:
	line	138
	
l5144:
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
	
l5146:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l5140
	goto	l5148
	
l914:
	line	143
	
l5148:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l5150
	line	144
	
l915:
	line	145
	
l5150:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u5931
	goto	u5930
u5931:
	goto	l5154
u5930:
	line	146
	
l5152:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l5154
	
l916:
	line	147
	
l5154:
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
	
l5156:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l5150
	goto	l5158
	
l917:
	line	156
	
l5158:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l910
	
l5160:
	line	157
	
l910:
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
	
l5044:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u5671
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u5671:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u5681
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u5681:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l5046:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u5691
	goto	u5690
u5691:
	goto	l863
u5690:
	
l5048:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u5701
	goto	u5700

u5701:
	goto	l5052
u5700:
	
l5050:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u5711
	goto	u5710

u5711:
	goto	l5052
u5710:
	
l863:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l864
	
l861:
	line	94
	
l5052:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u5721
	goto	u5720
u5721:
	goto	l867
u5720:
	
l5054:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u5731
	goto	u5730

u5731:
	goto	l5058
u5730:
	
l5056:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u5741
	goto	u5740

u5741:
	goto	l5058
u5740:
	
l867:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l864
	
l865:
	line	96
	
l5058:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l5060:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u5751
	goto	u5750
u5751:
	goto	l5064
u5750:
	line	98
	
l5062:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l5064
	
l868:
	line	99
	
l5064:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u5761
	goto	u5760
u5761:
	goto	l869
u5760:
	line	100
	
l5066:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l869:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l5068:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l5070:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l5072:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u5771
	goto	u5770

u5771:
	goto	l5084
u5770:
	goto	l5074
	line	109
	
l871:
	line	110
	
l5074:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l5076:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u5781
	goto	u5780

u5781:
	goto	l5082
u5780:
	
l5078:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u5791
	goto	u5790
u5791:
	goto	l5074
u5790:
	goto	l5082
	
l873:
	goto	l5082
	
l874:
	line	113
	goto	l5082
	
l876:
	line	114
	
l5080:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l5082
	line	116
	
l875:
	line	113
	
l5082:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u5801
	goto	u5800

u5801:
	goto	l5080
u5800:
	goto	l878
	
l877:
	line	117
	goto	l878
	
l870:
	
l5084:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u5811
	goto	u5810

u5811:
	goto	l878
u5810:
	goto	l5086
	line	120
	
l880:
	line	121
	
l5086:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l5088:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u5821
	goto	u5820

u5821:
	goto	l5094
u5820:
	
l5090:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u5831
	goto	u5830
u5831:
	goto	l5086
u5830:
	goto	l5094
	
l882:
	goto	l5094
	
l883:
	line	124
	goto	l5094
	
l885:
	line	125
	
l5092:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l5094
	line	127
	
l884:
	line	124
	
l5094:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u5841
	goto	u5840

u5841:
	goto	l5092
u5840:
	goto	l878
	
l886:
	goto	l878
	line	128
	
l879:
	line	129
	
l878:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u5851
	goto	u5850
u5851:
	goto	l887
u5850:
	line	131
	
l5096:
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
	
l887:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u5861
	goto	u5860
u5861:
	goto	l5100
u5860:
	line	136
	
l5098:
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

	goto	l5100
	line	138
	
l888:
	line	139
	
l5100:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l5102:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l5104:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u5871
	goto	u5870
u5871:
	goto	l5110
u5870:
	line	142
	
l5106:
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
	
l5108:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l5110
	line	145
	
l889:
	line	146
	
l5110:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l864
	
l5112:
	line	148
	
l864:
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
	
l5162:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l5164:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u5940
	goto	u5941

u5941:
	goto	l5170
u5940:
	line	38
	
l5166:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l5168:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l5170
	line	40
	
l811:
	line	41
	
l5170:
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
	goto	l812
	
l5172:
	line	42
	
l812:
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
	
l4788:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u5471
	goto	u5470
u5471:
	goto	l4792
u5470:
	
l4790:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u5481
	goto	u5480

u5481:
	goto	l4798
u5480:
	goto	l4792
	
l828:
	line	65
	
l4792:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l829
	
l4794:
	goto	l829
	
l826:
	line	66
	goto	l4798
	
l831:
	line	67
	
l4796:
	incf	((c:___ftpack@exp)),c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2)),c
	rrcf	((c:___ftpack@arg+1)),c
	rrcf	((c:___ftpack@arg)),c
	goto	l4798
	line	69
	
l830:
	line	66
	
l4798:
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
	goto	u5491
	goto	u5490

u5491:
	goto	l4796
u5490:
	goto	l4804
	
l832:
	line	70
	goto	l4804
	
l834:
	line	71
	
l4800:
	incf	((c:___ftpack@exp)),c
	line	72
	
l4802:
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
	goto	l4804
	line	74
	
l833:
	line	70
	
l4804:
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
	goto	u5501
	goto	u5500

u5501:
	goto	l4800
u5500:
	goto	l4808
	
l835:
	line	75
	goto	l4808
	
l837:
	line	76
	
l4806:
	decf	((c:___ftpack@exp)),c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg)),c
	rlcf	((c:___ftpack@arg+1)),c
	rlcf	((c:___ftpack@arg+2)),c
	goto	l4808
	line	78
	
l836:
	line	75
	
l4808:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u5511
	goto	u5510
u5511:
	goto	l840
u5510:
	
l4810:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u5521
	goto	u5520

u5521:
	goto	l4806
u5520:
	goto	l840
	
l839:
	
l840:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u5531
	goto	u5530
u5531:
	goto	l4814
u5530:
	line	80
	
l4812:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l4814
	
l841:
	line	81
	
l4814:
	bcf status,0
	rrcf	((c:___ftpack@exp)),c

	line	82
	movf	((c:___ftpack@exp)),c,w
	iorwf	((c:___ftpack@arg+2)),c

	line	83
	
l4816:
	movf	((c:___ftpack@sign)),c,w
	btfsc	status,2
	goto	u5541
	goto	u5540
u5541:
	goto	l4820
u5540:
	line	84
	
l4818:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l4820
	
l842:
	line	85
	
l4820:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l829
	
l4822:
	line	86
	
l829:
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
	
l4980:
	goto	l532
	
l4982:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1734)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1734+1)
	goto	l4984
	
l532:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1734)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1734+1)
	goto	l4984
	
l534:
	
l4984:
	movff	(c:_MotorsSpeed$1734),(c:MotorASpeed@S)
	movff	(c:_MotorsSpeed$1734+1),(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	195
	
l4986:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1736)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1736+1)
	goto	l4988
	
l536:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1736)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1736+1)
	goto	l4988
	
l538:
	
l4988:
	movff	(c:_MotorsSpeed$1736),(c:MotorBSpeed@S)
	movff	(c:_MotorsSpeed$1736+1),(c:MotorBSpeed@S+1)
	call	_MotorBSpeed	;wreg free
	line	196
	
l539:
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
	
l4770:
	negf	((c:MotorBSpeed@S)),c
	comf	((c:MotorBSpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorBSpeed@S+1)),c
	line	183
	
l4772:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5421
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u5421
	goto	u5420

u5421:
	goto	l4776
u5420:
	
l4774:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4776
	
l517:
	goto	l4776
	
l519:
	line	184
	
l4776:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u5431
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u5431
	goto	u5430

u5431:
	goto	l4780
u5430:
	
l4778:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4780
	
l521:
	goto	l4780
	
l523:
	line	186
	
l4780:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5441
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u5440
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u5441
	goto	u5440

u5441:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u5458
u5440:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u5458:
	rlncf	(??_MotorBSpeed+0+0),c
	rlncf	(??_MotorBSpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	187
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5460
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u5461
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u5461
	goto	u5460

u5461:
	goto	l4784
u5460:
	
l4782:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l4784
	
l525:
	goto	l4784
	
l527:
	line	189
	
l4784:
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
	
l4786:
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
	
l528:
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
	
l4752:
	negf	((c:MotorASpeed@S)),c
	comf	((c:MotorASpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorASpeed@S+1)),c
	line	172
	
l4754:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5371
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u5371
	goto	u5370

u5371:
	goto	l4758
u5370:
	
l4756:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l4758
	
l502:
	goto	l4758
	
l504:
	line	173
	
l4758:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u5381
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u5381
	goto	u5380

u5381:
	goto	l4762
u5380:
	
l4760:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l4762
	
l506:
	goto	l4762
	
l508:
	line	175
	
l4762:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5391
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u5390
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u5391
	goto	u5390

u5391:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u5408
u5390:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u5408:
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	176
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5410
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u5411
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u5411
	goto	u5410

u5411:
	goto	l4766
u5410:
	
l4764:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l4766
	
l510:
	goto	l4766
	
l512:
	line	178
	
l4766:
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
	
l4768:
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
	
l513:
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
	
l4556:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l4558:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u5040
	goto	u5041

u5041:
	goto	l4564
u5040:
	line	16
	
l4560:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l4562:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l4564
	line	18
	
l783:
	line	19
	
l4564:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u5050
	goto	u5051

u5051:
	goto	l4570
u5050:
	line	20
	
l4566:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l4568:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l4570
	line	22
	
l784:
	line	23
	
l4570:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l4572:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u5061
	goto	u5060

u5061:
	goto	l4592
u5060:
	line	25
	
l4574:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l4578
	
l787:
	line	27
	
l4576:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l4578
	line	29
	
l786:
	line	26
	
l4578:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u5071
	goto	u5070
u5071:
	goto	l4576
u5070:
	goto	l4580
	
l788:
	goto	l4580
	line	30
	
l789:
	line	31
	
l4580:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l4582:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u5081
	goto	u5080

u5081:
	goto	l4588
u5080:
	line	33
	
l4584:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l4586:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l4588
	line	35
	
l790:
	line	36
	
l4588:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l4590:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l4580
	goto	l4592
	
l791:
	goto	l4592
	line	38
	
l785:
	line	39
	
l4592:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u5091
	goto	u5090
u5091:
	goto	l4596
u5090:
	line	40
	
l4594:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l4596
	
l792:
	line	41
	
l4596:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l793
	
l4598:
	line	42
	
l793:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 125 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	125
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
	line	126
	
i2l3866:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u384_41
	goto	i2u384_40
i2u384_41:
	goto	i2l99
i2u384_40:
	line	127
	
i2l3868:
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME))&0ffh
	movlw	0
	addwfc	((_TIME+1))&0ffh
	addwfc	((_TIME+2))&0ffh
	addwfc	((_TIME+3))&0ffh
	line	128
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME2))&0ffh
	movlw	0
	addwfc	((_TIME2+1))&0ffh
	addwfc	((_TIME2+2))&0ffh
	addwfc	((_TIME2+3))&0ffh
	line	129
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME3))&0ffh
	movlw	0
	addwfc	((_TIME3+1))&0ffh
	addwfc	((_TIME3+2))&0ffh
	addwfc	((_TIME3+3))&0ffh
	line	130
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME4))&0ffh
	movlw	0
	addwfc	((_TIME4+1))&0ffh
	addwfc	((_TIME4+2))&0ffh
	addwfc	((_TIME4+3))&0ffh
	line	131
	
i2l3870:; BSR set to: 0

	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	132
	
i2l3872:; BSR set to: 0

	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	133
	
i2l3874:; BSR set to: 0

	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l99
	line	134
	
i2l98:; BSR set to: 0

	line	135
	
i2l99:
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
