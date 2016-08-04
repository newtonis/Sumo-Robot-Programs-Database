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
	FNCALL	_main,_MotorUpdate
	FNCALL	_main,_MotorsSpeed
	FNCALL	_main,_Wixel
	FNCALL	_main,___almod
	FNCALL	_main,_initYBOT
	FNCALL	_initYBOT,_InitAnalog
	FNCALL	_initYBOT,_InitSP
	FNCALL	_initYBOT,_InitTIMERS
	FNCALL	_initYBOT,_ResetCounter
	FNCALL	_initYBOT,_configurations_init
	FNCALL	_InitSP,_ReadAnalog
	FNROOT	_main
	FNCALL	intlevel2,_enc
	global	intlevel2
	FNROOT	intlevel2
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	108

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
	line	107

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
	line	109

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
	line	110

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
	line	129

;initializer for _TIMEFRENO
	dw	(0C8h) & 0xffff
	dw	highword(0C8h)
	global	_TIME
	global	_CURRENT
	global	_a
	global	_fca
	global	_fns
	global	_loop
	global	_ma
	global	_mb
	global	_mode
	global	_sa
	global	_sd
	global	_speedA
	global	_speedB
	global	_MF
	global	_PisoActual
	global	_actual
	global	_high
	global	_low
	global	_AMOUNT
	global	_SIZES
	global	_V
	global	_MS
	global	_WAITIME
	global	_d1
	global	_d2
	global	_fa
	global	_fb
	global	_fc
	global	_amax
	global	_amin
	global	_status
psect	nvCOMRAM,class=COMRAM,space=1,noexec
global __pnvCOMRAM
__pnvCOMRAM:
	global	_status
_status:
       ds      1
	global	_gstatus
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
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
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_PORTCbits
_PORTCbits	set	0xF82
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
	global	_TIME
_TIME:
       ds      4
	global	_CURRENT
_CURRENT:
       ds      2
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
	global	_fca
_fca:
       ds      2
	global	_fns
_fns:
       ds      2
	global	_giro
	global	_giro
_giro:
       ds      2
	global	_loop
_loop:
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
	global	_sa
_sa:
       ds      2
	global	_sd
_sd:
       ds      2
	global	_speedA
_speedA:
       ds      2
	global	_speedB
_speedB:
       ds      2
	global	_speedMode
	global	_speedMode
_speedMode:
       ds      2
	global	_x
	global	_x
_x:
       ds      2
	global	_MF
_MF:
       ds      1
	global	_PisoActual
_PisoActual:
       ds      1
	global	_RWM
	global	_RWM
_RWM:
       ds      1
	global	_ST_B_AMARILLO
	global	_ST_B_AMARILLO
_ST_B_AMARILLO:
       ds      1
	global	_ST_B_ROJO
	global	_ST_B_ROJO
_ST_B_ROJO:
       ds      1
	global	_ST_B_VERDE
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
	global	_nove
_nove:
       ds      1
	global	_AMOUNT
_AMOUNT:
       ds      2
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_V
_V:
       ds      32
	global	_suma
	global	_suma
_suma:
       ds      8
	global	_DER
	global	_DER
_DER:
       ds      4
	global	_LP
	global	_LP
_LP:
       ds      4
	global	_MS
_MS:
       ds      4
	global	_PIDf
	global	_PIDf
_PIDf:
       ds      4
	global	_POSICION
	global	_POSICION
_POSICION:
       ds      4
	global	_WAITFRENAR
	global	_WAITFRENAR
_WAITFRENAR:
       ds      4
	global	_WAITIME
_WAITIME:
       ds      4
	global	_division
	global	_division
_division:
       ds      4
	global	_sum
	global	_sum
_sum:
       ds      4
	global	_v
	global	_v
_v:
       ds      4
	global	_value
	global	_value
_value:
       ds      4
	global	_w
	global	_w
_w:
       ds      4
	global	_d1
_d1:
       ds      2
	global	_d2
_d2:
       ds      2
	global	_fa
_fa:
       ds      2
	global	_fb
_fb:
       ds      2
	global	_fc
_fc:
       ds      2
	global	_mc
	global	_mc
_mc:
       ds      2
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	108
	global	_KD
	global	_KD
_KD:
       ds      12
psect	dataBANK0
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	107
	global	_KP
	global	_KP
_KP:
       ds      12
psect	dataBANK0
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	109
	global	_KR
	global	_KR
_KR:
       ds      12
psect	dataBANK0
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	110
	global	_SP
	global	_SP
_SP:
       ds      12
psect	dataBANK0
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	129
	global	_TIMEFRENO
	global	_TIMEFRENO
_TIMEFRENO:
       ds      4
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_amax
_amax:
       ds      44
	global	_amin
_amin:
       ds      44
psect	bssBIGRAM,class=BIGRAM,space=1,noexec
global __pbssBIGRAM
__pbssBIGRAM:
	global	_SIZES
_SIZES:
       ds      1020
	file	"main.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK0 (52 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
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
; Clear objects allocated to BANK1 (88 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	88
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (100 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	100
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (62 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	62
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
	global	?___almod
?___almod:	; 4 bytes @ 0x0
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x0
	ds   4
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x4
	ds   4
?_main:	; 2 bytes @ 0x8
main@argc:	; 2 bytes @ 0x8
	ds   2
main@argv:	; 3 bytes @ 0xA
	ds   3
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_MotorsSpeed:	; 1 bytes @ 0x0
	global	MotorsSpeed@b
MotorsSpeed@b:	; 2 bytes @ 0x0
	global	_MotorUpdate$1665
_MotorUpdate$1665:	; 2 bytes @ 0x0
	ds   2
	global	MotorsSpeed@a
MotorsSpeed@a:	; 2 bytes @ 0x2
	global	_MotorUpdate$1674
_MotorUpdate$1674:	; 2 bytes @ 0x2
	ds   2
	global	_main$1701
_main$1701:	; 1 bytes @ 0x4
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_ResetCounter:	; 1 bytes @ 0x0
?_InitAnalog:	; 1 bytes @ 0x0
?_InitTIMERS:	; 1 bytes @ 0x0
?_InitSP:	; 1 bytes @ 0x0
?_ReadAnalog:	; 1 bytes @ 0x0
?_Wixel:	; 1 bytes @ 0x0
?_configurations_init:	; 1 bytes @ 0x0
?_initYBOT:	; 1 bytes @ 0x0
?_enc:	; 1 bytes @ 0x0
??_enc:	; 1 bytes @ 0x0
?_MotorUpdate:	; 1 bytes @ 0x0
	ds   14
??_ResetCounter:	; 1 bytes @ 0xE
??_InitAnalog:	; 1 bytes @ 0xE
??_InitTIMERS:	; 1 bytes @ 0xE
??_ReadAnalog:	; 1 bytes @ 0xE
??_Wixel:	; 1 bytes @ 0xE
??_configurations_init:	; 1 bytes @ 0xE
??_MotorsSpeed:	; 1 bytes @ 0xE
??_MotorUpdate:	; 1 bytes @ 0xE
??___almod:	; 1 bytes @ 0xE
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0xE
	ds   1
	global	ReadAnalog@channel
ReadAnalog@channel:	; 1 bytes @ 0xF
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0xF
	ds   1
??_InitSP:	; 1 bytes @ 0x10
??_initYBOT:	; 1 bytes @ 0x10
??_main:	; 1 bytes @ 0x10
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        52
;!    BSS         1270
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     17      80
;!    BANK0           160      5     158
;!    BANK1           256     13     101
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_MotorUpdate
;!    _main->___almod
;!    _InitSP->_ReadAnalog
;!
;!Critical Paths under _enc in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_MotorUpdate
;!    _main->_MotorsSpeed
;!
;!Critical Paths under _enc in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->___almod
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 7     2      5    1962
;!                                             16 COMRAM     1     1      0
;!                                              4 BANK0      1     1      0
;!                                              8 BANK1      5     0      5
;!                        _MotorUpdate
;!                        _MotorsSpeed
;!                              _Wixel
;!                            ___almod
;!                           _initYBOT
;! ---------------------------------------------------------------------------------
;! (1) _initYBOT                                             0     0      0     124
;!                         _InitAnalog
;!                             _InitSP
;!                         _InitTIMERS
;!                       _ResetCounter
;!                _configurations_init
;! ---------------------------------------------------------------------------------
;! (2) _configurations_init                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _ResetCounter                                         0     0      0       0
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
;! (1) ___almod                                             10     2      8    1049
;!                                             14 COMRAM     2     2      0
;!                                              0 BANK1      8     0      8
;! ---------------------------------------------------------------------------------
;! (1) _Wixel                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MotorsSpeed                                          4     0      4     678
;!                                              0 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (1) _MotorUpdate                                          6     6      0      74
;!                                             14 COMRAM     2     2      0
;!                                              0 BANK0      4     4      0
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
;!   _MotorUpdate
;!   _MotorsSpeed
;!   _Wixel
;!   ___almod
;!   _initYBOT
;!     _InitAnalog
;!     _InitSP
;!       _ReadAnalog
;!     _InitTIMERS
;!     _ResetCounter
;!     _configurations_init
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
;!BANK1              100      D      65       7       39.5%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      5      9E       5       98.8%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     11      50       1       85.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     153      20        0.0%
;!DATA                 0      0     54F       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 731 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2    8[BANK1 ] int 
;;  argv            3   10[BANK1 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    8[BANK1 ] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       5       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         1       1       5       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_MotorUpdate
;;		_MotorsSpeed
;;		_Wixel
;;		___almod
;;		_initYBOT
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	731
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	731
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	732
	
l2278:
	call	_initYBOT	;wreg free
	line	734
	
l2280:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	line	735
	
l2282:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	line	736
	
l2284:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_ma+1)),c
	movlw	low(0)
	movwf	((c:_ma)),c
	line	737
	
l2286:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_mb+1)),c
	movlw	low(0)
	movwf	((c:_mb)),c
	line	738
	
l2288:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_d1+1))&0ffh
	movlw	low(0)
	movwf	((_d1))&0ffh
	line	739
	
l2290:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_d2+1))&0ffh
	movlw	low(0)
	movwf	((_d2))&0ffh
	line	741
	
l2292:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_sa+1)),c
	movlw	low(0)
	movwf	((c:_sa)),c
	line	742
	
l2294:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_mode+1)),c
	movlw	low(0)
	movwf	((c:_mode)),c
	line	743
	
l2296:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_a+1)),c
	movlw	low(0)
	movwf	((c:_a)),c
	line	744
	
l2298:; BSR set to: 0

	movlb	0	; () banked
	setf	((_gstatus))&0ffh
	line	745
	
l2300:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_WAITIME))&0ffh
	movlw	high(0)
	movwf	((_WAITIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_WAITIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_WAITIME+3))&0ffh
	line	746
	
l2302:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_CURRENT+1)),c
	movlw	low(0)
	movwf	((c:_CURRENT)),c
	line	747
	
l2304:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_actual)),c
	line	748
	
l2306:; BSR set to: 0

	movlw	low(02h)
	movwf	((c:_status)),c
	line	749
	
l2308:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	750
	
l2310:; BSR set to: 0

	call	_Wixel	;wreg free
	line	755
	
l2312:
	movlw	low(02h)
	movwf	((c:_status)),c
	line	756
	goto	l2316
	
l486:
	line	761
	
l2314:
	movlw	high(01h)
	movwf	((c:_fns+1)),c
	movlw	low(01h)
	movwf	((c:_fns)),c
	goto	l2316
	
l485:
	line	756
	
l2316:
	btfsc	((c:_TIME+3)),c,7
	goto	u1541
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u1540
	movlw	136
	subwf	 ((c:_TIME)),c,w
	movlw	19
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u1541
	goto	u1540

u1541:
	goto	l2314
u1540:
	goto	l2318
	
l487:
	goto	l2318
	line	762
	
l488:
	line	763
	
l2318:
	call	_MotorUpdate	;wreg free
	line	782
	goto	l2370
	line	783
	
l490:
	line	784
	bsf	((c:3971)),c,4	;volatile
	line	785
	btfss	((c:3972)),c,0	;volatile
	bra	u1555
	bsf	((c:3971)),c,5	;volatile
	bra	u1557
	u1555:	
	bcf	((c:3971)),c,5	;volatile
	u1557:
	line	786
	bsf	((c:3971)),c,6	;volatile
	line	787
	
l2320:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((MotorsSpeed@b+1))&0ffh
	movlw	low(0)
	movwf	((MotorsSpeed@b))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((MotorsSpeed@a+1))&0ffh
	movlw	low(0)
	movwf	((MotorsSpeed@a))&0ffh
	call	_MotorsSpeed	;wreg free
	line	788
	
l2322:
	btfsc	((c:3971)),c,0	;volatile
	goto	u1561
	goto	u1560
u1561:
	goto	l2326
u1560:
	line	789
	
l2324:
	movlw	high(01h)
	movwf	((c:_sd+1)),c
	movlw	low(01h)
	movwf	((c:_sd)),c
	line	790
	movlw	low(05h)
	movwf	((c:_status)),c
	line	791
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	goto	l2326
	line	792
	
l491:
	line	793
	
l2326:
	btfsc	((c:3971)),c,2	;volatile
	goto	u1571
	goto	u1570
u1571:
	goto	l2318
u1570:
	line	794
	
l2328:
	movlw	high(02h)
	movwf	((c:_sd+1)),c
	movlw	low(02h)
	movwf	((c:_sd)),c
	line	795
	movlw	low(05h)
	movwf	((c:_status)),c
	line	796
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	goto	l2318
	line	797
	
l492:
	line	798
	goto	l2318
	line	799
	
l494:
	line	800
	
l2330:
	movff	(c:_TIME),(___almod@dividend)
	movff	(c:_TIME+1),(___almod@dividend+1)
	movff	(c:_TIME+2),(___almod@dividend+2)
	movff	(c:_TIME+3),(___almod@dividend+3)
	movlw	low(0BB8h)
	movlb	1	; () banked
	movwf	((___almod@divisor))&0ffh
	movlw	high(0BB8h)
	movwf	((___almod@divisor+1))&0ffh
	movlw	low highword(0BB8h)
	movwf	((___almod@divisor+2))&0ffh
	movlw	high highword(0BB8h)
	movwf	((___almod@divisor+3))&0ffh
	call	___almod	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	btfsc	(3+?___almod)&0ffh,7
	goto	u1580
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(3+?___almod)&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	iorwf	(2+?___almod)&0ffh,w
	bnz	u1581
	movlw	209
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	 (0+?___almod)&0ffh,w
	movlw	7
	movlb	1	; () banked
	movlb	1	; () banked
	subwfb	(1+?___almod)&0ffh,w
	btfsc	status,0
	goto	u1581
	goto	u1580

u1581:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u1598
u1580:
	clrf	(??_main+0+0)&0ffh,c
u1598:
	swapf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	801
	
l2332:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_main$1701))&0ffh
	
l2334:; BSR set to: 0

	movff	(c:_TIME),(___almod@dividend)
	movff	(c:_TIME+1),(___almod@dividend+1)
	movff	(c:_TIME+2),(___almod@dividend+2)
	movff	(c:_TIME+3),(___almod@dividend+3)
	movlw	low(0BB8h)
	movlb	1	; () banked
	movwf	((___almod@divisor))&0ffh
	movlw	high(0BB8h)
	movwf	((___almod@divisor+1))&0ffh
	movlw	low highword(0BB8h)
	movwf	((___almod@divisor+2))&0ffh
	movlw	high highword(0BB8h)
	movwf	((___almod@divisor+3))&0ffh
	call	___almod	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	btfsc	(3+?___almod)&0ffh,7
	goto	u1601
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(3+?___almod)&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	iorwf	(2+?___almod)&0ffh,w
	bnz	u1600
	movlw	233
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	 (0+?___almod)&0ffh,w
	movlw	3
	movlb	1	; () banked
	movlb	1	; () banked
	subwfb	(1+?___almod)&0ffh,w
	btfss	status,0
	goto	u1601
	goto	u1600

u1601:
	goto	l2340
u1600:
	
l2336:; BSR set to: 1

	movff	(c:_TIME),(___almod@dividend)
	movff	(c:_TIME+1),(___almod@dividend+1)
	movff	(c:_TIME+2),(___almod@dividend+2)
	movff	(c:_TIME+3),(___almod@dividend+3)
	movlw	low(0BB8h)
	movlb	1	; () banked
	movwf	((___almod@divisor))&0ffh
	movlw	high(0BB8h)
	movwf	((___almod@divisor+1))&0ffh
	movlw	low highword(0BB8h)
	movwf	((___almod@divisor+2))&0ffh
	movlw	high highword(0BB8h)
	movwf	((___almod@divisor+3))&0ffh
	call	___almod	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	btfsc	(3+?___almod)&0ffh,7
	goto	u1610
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(3+?___almod)&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	iorwf	(2+?___almod)&0ffh,w
	bnz	u1611
	movlw	208
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	 (0+?___almod)&0ffh,w
	movlw	7
	movlb	1	; () banked
	movlb	1	; () banked
	subwfb	(1+?___almod)&0ffh,w
	btfsc	status,0
	goto	u1611
	goto	u1610

u1611:
	goto	l2340
u1610:
	
l2338:; BSR set to: 1

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_main$1701))&0ffh
	goto	l2340
	
l496:; BSR set to: 0

	
l2340:
	movlb	0	; () banked
	btfsc	(_main$1701)&0ffh,0
	bra	u1625
	bcf	((c:3971)),c,5	;volatile
	bra	u1626
	u1625:
	bsf	((c:3971)),c,5	;volatile
	u1626:

	line	802
	
l2342:
	movff	(c:_TIME),(___almod@dividend)
	movff	(c:_TIME+1),(___almod@dividend+1)
	movff	(c:_TIME+2),(___almod@dividend+2)
	movff	(c:_TIME+3),(___almod@dividend+3)
	movlw	low(0BB8h)
	movlb	1	; () banked
	movwf	((___almod@divisor))&0ffh
	movlw	high(0BB8h)
	movwf	((___almod@divisor+1))&0ffh
	movlw	low highword(0BB8h)
	movwf	((___almod@divisor+2))&0ffh
	movlw	high highword(0BB8h)
	movwf	((___almod@divisor+3))&0ffh
	call	___almod	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	btfsc	(3+?___almod)&0ffh,7
	goto	u1631
	movlb	1	; () banked
	movlb	1	; () banked
	movf	(3+?___almod)&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	iorwf	(2+?___almod)&0ffh,w
	bnz	u1630
	movlw	232
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	 (0+?___almod)&0ffh,w
	movlw	3
	movlb	1	; () banked
	movlb	1	; () banked
	subwfb	(1+?___almod)&0ffh,w
	btfss	status,0
	goto	u1631
	goto	u1630

u1631:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u1648
u1630:
	clrf	(??_main+0+0)&0ffh,c
u1648:
	swapf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	803
	
l2344:
	btfsc	((c:_TIME+3)),c,7
	goto	u1651
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u1650
	movlw	49
	subwf	 ((c:_TIME)),c,w
	movlw	117
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u1651
	goto	u1650

u1651:
	goto	l2318
u1650:
	line	804
	
l2346:
	movlw	low(06h)
	movwf	((c:_status)),c
	goto	l2318
	line	805
	
l497:
	line	806
	goto	l2318
	line	807
	
l498:
	line	808
	btfss	((c:3972)),c,0	;volatile
	goto	u1661
	goto	u1660
u1661:
	goto	l2360
u1660:
	line	809
	
l2348:
	movf	((c:_fca)),c,w
iorwf	((c:_fca+1)),c,w
	btfss	status,2
	goto	u1671
	goto	u1670

u1671:
	goto	l2358
u1670:
	line	810
	
l2350:
	movlw	high(01h)
	movwf	((c:_fca+1)),c
	movlw	low(01h)
	movwf	((c:_fca)),c
	line	811
	
l2352:
		decf	((c:_sd)),c,w
iorwf	((c:_sd+1)),c,w
	btfss	status,2
	goto	u1681
	goto	u1680

u1681:
	goto	l2356
u1680:
	
l2354:
	movlw	high(02h)
	movwf	((c:_sd+1)),c
	movlw	low(02h)
	movwf	((c:_sd)),c
	goto	l2358
	
l501:
	
l2356:
	movlw	high(01h)
	movwf	((c:_sd+1)),c
	movlw	low(01h)
	movwf	((c:_sd)),c
	goto	l2358
	
l502:
	goto	l2358
	line	812
	
l500:
	line	813
	
l2358:
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((MotorsSpeed@b+1))&0ffh
	movlw	low(0Ah)
	movwf	((MotorsSpeed@b))&0ffh
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((MotorsSpeed@a+1))&0ffh
	movlw	low(0Ah)
	movwf	((MotorsSpeed@a))&0ffh
	call	_MotorsSpeed	;wreg free
	line	814
	goto	l2318
	
l499:
	line	815
	
l2360:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	816
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fc+1))&0ffh
	movlw	low(0)
	movwf	((_fc))&0ffh
	line	817
	
l2362:; BSR set to: 0

		decf	((c:_sd)),c,w
iorwf	((c:_sd+1)),c,w
	btfss	status,2
	goto	u1691
	goto	u1690

u1691:
	goto	l2366
u1690:
	line	818
	
l2364:; BSR set to: 0

	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((MotorsSpeed@b+1))&0ffh
	movlw	low(0Ah)
	movwf	((MotorsSpeed@b))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((MotorsSpeed@a+1))&0ffh
	movlw	low(01h)
	movwf	((MotorsSpeed@a))&0ffh
	call	_MotorsSpeed	;wreg free
	line	819
	goto	l2318
	
l504:
	line	820
	
l2366:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((MotorsSpeed@b+1))&0ffh
	movlw	low(01h)
	movwf	((MotorsSpeed@b))&0ffh
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((MotorsSpeed@a+1))&0ffh
	movlw	low(0Ah)
	movwf	((MotorsSpeed@a))&0ffh
	call	_MotorsSpeed	;wreg free
	goto	l2318
	line	821
	
l505:
	goto	l2318
	line	822
	
l503:
	line	845
	goto	l2318
	line	846
	
l2368:
	goto	l2318
	line	782
	
l489:
	
l2370:
	movf	((c:_status)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 2 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	2^0	; case 2
	skipnz
	goto	l490
	xorlw	5^2	; case 5
	skipnz
	goto	l2330
	xorlw	6^5	; case 6
	skipnz
	goto	l498
	goto	l2318

	line	846
	
l493:
	goto	l2318
	line	890
	
l506:
	line	762
	goto	l2318
	
l507:
	line	891
	
l508:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_initYBOT

;; *************** function _initYBOT *****************
;; Defined at:
;;		line 337 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
;;		_ResetCounter
;;		_configurations_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	337
global __ptext1
__ptext1:
psect	text1
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	337
	global	__size_of_initYBOT
	__size_of_initYBOT	equ	__end_of_initYBOT-_initYBOT
	
_initYBOT:
;incstack = 0
	opt	stack 27
	line	339
	
l2194:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	340
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_MS))&0ffh
	movlw	high(0)
	movwf	((_MS+1))&0ffh
	movlw	low highword(0)
	movwf	((_MS+2))&0ffh
	movlw	high highword(0)
	movwf	((_MS+3))&0ffh
	line	341
	
l2196:; BSR set to: 0

	call	_ResetCounter	;wreg free
	line	342
	
l2198:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_gstatus))&0ffh
	line	344
	call	_configurations_init	;wreg free
	line	345
	call	_InitAnalog	;wreg free
	line	346
	call	_InitTIMERS	;wreg free
	line	347
	
l2200:
	call	_InitSP	;wreg free
	line	351
	
l295:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initYBOT
	__end_of_initYBOT:
	signat	_initYBOT,89
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 272 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	line	272
global __ptext2
__ptext2:
psect	text2
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	272
	global	__size_of_configurations_init
	__size_of_configurations_init	equ	__end_of_configurations_init-_configurations_init
	
_configurations_init:
;incstack = 0
	opt	stack 28
	line	273
	
l2088:
		
	bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	276
	
l2090:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	279
	
l2092:
	bcf	((c:3949)),c,3	;volatile
	line	280
	
l2094:
	bsf	((c:3951)),c,3	;volatile
	line	281
	
l227:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,89
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 473 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	line	473
global __ptext3
__ptext3:
psect	text3
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	473
	global	__size_of_ResetCounter
	__size_of_ResetCounter	equ	__end_of_ResetCounter-_ResetCounter
	
_ResetCounter:
;incstack = 0
	opt	stack 28
	line	474
	
l2096:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	475
	
l316:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetCounter
	__end_of_ResetCounter:
	signat	_ResetCounter,89
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 378 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	line	378
global __ptext4
__ptext4:
psect	text4
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	378
	global	__size_of_InitTIMERS
	__size_of_InitTIMERS	equ	__end_of_InitTIMERS-_InitTIMERS
	
_InitTIMERS:
;incstack = 0
	opt	stack 28
	line	379
	
l2108:
	bcf	((c:4053)),c,7	;volatile
	line	380
	bcf	((c:4053)),c,6	;volatile
	line	381
	bcf	((c:4053)),c,5	;volatile
	line	383
	bsf	((c:4053)),c,3	;volatile
	line	384
	
l2110:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	385
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	388
	
l2112:
	bsf	((c:4081)),c,2	;volatile
	line	389
	
l2114:
	bcf	((c:4048)),c,7	;volatile
	line	390
	
l2116:
	bsf	((c:4082)),c,5	;volatile
	line	394
	
l2118:
	bsf	((c:4082)),c,7	;volatile
	line	396
	
l2120:
	bsf	((c:4053)),c,7	;volatile
	line	398
	
l2122:
	bcf	((c:4045)),c,0	;volatile
	line	399
	
l2124:
	bcf	((c:4045)),c,7	;volatile
	line	400
	
l2126:
	bcf	((c:4045)),c,6	;volatile
	line	401
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	402
	
l2128:
	bcf	((c:4045)),c,3	;volatile
	line	403
	
l2130:
	bcf	((c:4045)),c,1	;volatile
	line	404
	
l2132:
	bsf	((c:4045)),c,0	;volatile
	line	406
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	407
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	415
	
l2134:
	bcf	((c:3989)),c,4	;volatile
	line	416
	
l2136:
	bcf	((c:3989)),c,5	;volatile
	line	417
	
l2138:
	bcf	((c:3989)),c,6	;volatile
	line	419
	
l2140:
	bsf	((c:3989)),c,0	;volatile
	line	420
	
l2142:
	bsf	((c:3989)),c,1	;volatile
	line	421
	
l2144:
	bsf	((c:3989)),c,2	;volatile
	line	424
	
l2146:
	bcf	((c:3989)),c,3	;volatile
	line	425
	
l2148:
	bcf	((c:3988)),c,2	;volatile
	line	427
	
l2150:
	bcf	((c:3987)),c,0	;volatile
	line	428
	
l2152:
	bcf	((c:3987)),c,2	;volatile
	line	430
	
l2154:
	bsf	((c:3988)),c,0	;volatile
	line	431
	
l2156:
	bsf	((c:3988)),c,1	;volatile
	line	434
	
l2158:
	bsf	((c:3990)),c,2	;volatile
	line	435
	
l2160:
	bsf	((c:3990)),c,1	;volatile
	line	436
	
l2162:
	bsf	((c:3990)),c,0	;volatile
	line	437
	
l2164:
	bsf	((c:3986)),c,5	;volatile
	line	438
	
l2166:
	bsf	((c:3986)),c,4	;volatile
	line	469
	
l2168:
	bsf	((c:3972)),c,7	;volatile
	line	470
	
l313:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,89
	global	_InitSP

;; *************** function _InitSP *****************
;; Defined at:
;;		line 525 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
psect	text5,class=CODE,space=0,reloc=2
	line	525
global __ptext5
__ptext5:
psect	text5
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	525
	global	__size_of_InitSP
	__size_of_InitSP	equ	__end_of_InitSP-_InitSP
	
_InitSP:
;incstack = 0
	opt	stack 27
	line	526
	
l2170:
	movlw	low(0)
	movwf	((c:_PisoActual)),c
	line	527
	
l2172:
	movf	((c:_PisoActual)),c,w
	
	call	_ReadAnalog
	line	528
	
l332:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitSP
	__end_of_InitSP:
	signat	_InitSP,89
	global	_ReadAnalog

;; *************** function _ReadAnalog *****************
;; Defined at:
;;		line 529 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
psect	text6,class=CODE,space=0,reloc=2
	line	529
global __ptext6
__ptext6:
psect	text6
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	529
	global	__size_of_ReadAnalog
	__size_of_ReadAnalog	equ	__end_of_ReadAnalog-_ReadAnalog
	
_ReadAnalog:
;incstack = 0
	opt	stack 27
	movwf	((c:ReadAnalog@channel)),c
	line	530
	
l2076:
	
	btfsc	((c:ReadAnalog@channel)),c,(0)&7
	goto	u1311
	goto	u1310
u1311:
	bsf	c:(32274/8),(32274)&7	;volatile
	goto	u1325
u1310:
	bcf	c:(32274/8),(32274)&7	;volatile
u1325:
	line	531
	
l2078:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	03h
	andwf	(??_ReadAnalog+0+0),c
		movlw	02h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u1331
	goto	u1330

u1331:
	bsf	c:(32275/8),(32275)&7	;volatile
	goto	u1345
u1330:
	bcf	c:(32275/8),(32275)&7	;volatile
u1345:
	line	532
	
l2080:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	07h
	andwf	(??_ReadAnalog+0+0),c
		movlw	04h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u1351
	goto	u1350

u1351:
	bsf	c:(32276/8),(32276)&7	;volatile
	goto	u1365
u1350:
	bcf	c:(32276/8),(32276)&7	;volatile
u1365:
	line	533
	
l2082:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	0Fh
	andwf	(??_ReadAnalog+0+0),c
		movlw	08h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u1371
	goto	u1370

u1371:
	bsf	c:(32277/8),(32277)&7	;volatile
	goto	u1385
u1370:
	bcf	c:(32277/8),(32277)&7	;volatile
u1385:
	line	535
	
l2084:
	bsf	c:(32272/8),(32272)&7	;volatile
	line	536
	
l2086:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	537
	
l335:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadAnalog
	__end_of_ReadAnalog:
	signat	_ReadAnalog,4217
	global	_InitAnalog

;; *************** function _InitAnalog *****************
;; Defined at:
;;		line 507 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	line	507
global __ptext7
__ptext7:
psect	text7
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	507
	global	__size_of_InitAnalog
	__size_of_InitAnalog	equ	__end_of_InitAnalog-_InitAnalog
	
_InitAnalog:
;incstack = 0
	opt	stack 28
	line	508
	
l2098:
	bcf	((c:4033)),c,5	;volatile
	line	509
	bcf	((c:4033)),c,4	;volatile
	line	511
	bsf	((c:4033)),c,3	;volatile
	line	512
	bsf	((c:4033)),c,2	;volatile
	line	513
	bcf	((c:4033)),c,1	;volatile
	line	514
	bcf	((c:4033)),c,0	;volatile
	line	518
	bcf	((c:4032)),c,7	;volatile
	line	519
		
	bsf	((c:4032)),c, 3+0	;volatile
	bsf	((c:4032)),c, 3+1	;volatile
	bsf	((c:4032)),c, 3+2	;volatile

	line	520
	
l2100:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	521
	
l2102:
		
	bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	522
	
l2104:
	bcf	((c:4034)),c,1	;volatile
	line	523
	
l2106:
	bsf	((c:4034)),c,0	;volatile
	line	524
	
l329:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,89
	global	___almod

;; *************** function ___almod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.38/sources/common/almod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4    0[BANK1 ] long 
;;  divisor         4    4[BANK1 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   15[COMRAM] unsigned char 
;;  counter         1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK1 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       8       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       8       0       0       0       0       0       0
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
	
l2230:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l2232:
	movlb	1	; () banked
	btfsc	((___almod@dividend+3))&0ffh,7
	goto	u1460
	goto	u1461

u1461:
	goto	l2238
u1460:
	line	15
	
l2234:; BSR set to: 1

	movlb	1	; () banked
	comf	((___almod@dividend+3))&0ffh
	comf	((___almod@dividend+2))&0ffh
	comf	((___almod@dividend+1))&0ffh
	negf	((___almod@dividend))&0ffh
	movlw	0
	addwfc	((___almod@dividend+1))&0ffh
	addwfc	((___almod@dividend+2))&0ffh
	addwfc	((___almod@dividend+3))&0ffh
	line	16
	
l2236:; BSR set to: 1

	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l2238
	line	17
	
l577:; BSR set to: 1

	line	18
	
l2238:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((___almod@divisor+3))&0ffh,7
	goto	u1470
	goto	u1471

u1471:
	goto	l2242
u1470:
	line	19
	
l2240:; BSR set to: 1

	movlb	1	; () banked
	comf	((___almod@divisor+3))&0ffh
	comf	((___almod@divisor+2))&0ffh
	comf	((___almod@divisor+1))&0ffh
	negf	((___almod@divisor))&0ffh
	movlw	0
	addwfc	((___almod@divisor+1))&0ffh
	addwfc	((___almod@divisor+2))&0ffh
	addwfc	((___almod@divisor+3))&0ffh
	goto	l2242
	
l578:; BSR set to: 1

	line	20
	
l2242:; BSR set to: 1

	movlb	1	; () banked
	movf	((___almod@divisor))&0ffh,w
	movlb	1	; () banked
iorwf	((___almod@divisor+1))&0ffh,w
	movlb	1	; () banked
iorwf	((___almod@divisor+2))&0ffh,w
	movlb	1	; () banked
iorwf	((___almod@divisor+3))&0ffh,w
	btfsc	status,2
	goto	u1481
	goto	u1480

u1481:
	goto	l2258
u1480:
	line	21
	
l2244:; BSR set to: 1

	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l2248
	
l581:; BSR set to: 1

	line	23
	
l2246:; BSR set to: 1

	movlb	1	; () banked
	bcf	status,0
	rlcf	((___almod@divisor))&0ffh
	rlcf	((___almod@divisor+1))&0ffh
	rlcf	((___almod@divisor+2))&0ffh
	rlcf	((___almod@divisor+3))&0ffh
	line	24
	incf	((c:___almod@counter)),c
	goto	l2248
	line	25
	
l580:; BSR set to: 1

	line	22
	
l2248:; BSR set to: 1

	movlb	1	; () banked
	
	movlb	1	; () banked
	btfss	((___almod@divisor+3))&0ffh,(31)&7
	goto	u1491
	goto	u1490
u1491:
	goto	l2246
u1490:
	goto	l2250
	
l582:; BSR set to: 1

	goto	l2250
	line	26
	
l583:; BSR set to: 1

	line	27
	
l2250:; BSR set to: 1

	movlb	1	; () banked
		movf	((___almod@divisor))&0ffh,w
	movlb	1	; () banked
	subwf	((___almod@dividend))&0ffh,w
	movlb	1	; () banked
	movf	((___almod@divisor+1))&0ffh,w
	movlb	1	; () banked
	subwfb	((___almod@dividend+1))&0ffh,w
	movlb	1	; () banked
	movf	((___almod@divisor+2))&0ffh,w
	movlb	1	; () banked
	subwfb	((___almod@dividend+2))&0ffh,w
	movlb	1	; () banked
	movf	((___almod@divisor+3))&0ffh,w
	movlb	1	; () banked
	subwfb	((___almod@dividend+3))&0ffh,w
	btfss	status,0
	goto	u1501
	goto	u1500

u1501:
	goto	l2254
u1500:
	line	28
	
l2252:; BSR set to: 1

	movlb	1	; () banked
	movf	((___almod@divisor))&0ffh,w
	movlb	1	; () banked
	subwf	((___almod@dividend))&0ffh
	movlb	1	; () banked
	movf	((___almod@divisor+1))&0ffh,w
	movlb	1	; () banked
	subwfb	((___almod@dividend+1))&0ffh
	movlb	1	; () banked
	movf	((___almod@divisor+2))&0ffh,w
	movlb	1	; () banked
	subwfb	((___almod@dividend+2))&0ffh
	movlb	1	; () banked
	movf	((___almod@divisor+3))&0ffh,w
	movlb	1	; () banked
	subwfb	((___almod@dividend+3))&0ffh
	goto	l2254
	
l584:; BSR set to: 1

	line	29
	
l2254:; BSR set to: 1

	movlb	1	; () banked
	bcf	status,0
	rrcf	((___almod@divisor+3))&0ffh
	rrcf	((___almod@divisor+2))&0ffh
	rrcf	((___almod@divisor+1))&0ffh
	rrcf	((___almod@divisor))&0ffh
	line	30
	
l2256:; BSR set to: 1

	decfsz	((c:___almod@counter)),c
	
	goto	l2250
	goto	l2258
	
l585:; BSR set to: 1

	goto	l2258
	line	31
	
l579:; BSR set to: 1

	line	32
	
l2258:; BSR set to: 1

	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u1511
	goto	u1510
u1511:
	goto	l2262
u1510:
	line	33
	
l2260:; BSR set to: 1

	movlb	1	; () banked
	comf	((___almod@dividend+3))&0ffh
	comf	((___almod@dividend+2))&0ffh
	comf	((___almod@dividend+1))&0ffh
	negf	((___almod@dividend))&0ffh
	movlw	0
	addwfc	((___almod@dividend+1))&0ffh
	addwfc	((___almod@dividend+2))&0ffh
	addwfc	((___almod@dividend+3))&0ffh
	goto	l2262
	
l586:; BSR set to: 1

	line	34
	
l2262:; BSR set to: 1

	movff	(___almod@dividend),(?___almod)
	movff	(___almod@dividend+1),(?___almod+1)
	movff	(___almod@dividend+2),(?___almod+2)
	movff	(___almod@dividend+3),(?___almod+3)
	goto	l587
	
l2264:; BSR set to: 1

	line	35
	
l587:; BSR set to: 1

	return	;funcret
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	_Wixel

;; *************** function _Wixel *****************
;; Defined at:
;;		line 194 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	194
global __ptext9
__ptext9:
psect	text9
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	194
	global	__size_of_Wixel
	__size_of_Wixel	equ	__end_of_Wixel-_Wixel
	
_Wixel:; BSR set to: 1

;incstack = 0
	opt	stack 29
	line	195
	
l2174:
	bcf	((c:4024)),c,5	;volatile
	line	196
	bcf	((c:4024)),c,4	;volatile
	line	197
	bsf	((c:4024)),c,3	;volatile
	line	199
	bcf	((c:4024)),c,1	;volatile
	line	200
	bcf	((c:4024)),c,0	;volatile
	line	201
	
l2176:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	202
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	203
	
l2178:
	bcf	((c:4012)),c,7	;volatile
	line	204
	
l2180:
	bcf	((c:4012)),c,6	;volatile
	line	205
	
l2182:
	bsf	((c:4012)),c,5	;volatile
	line	206
	
l2184:
	bcf	((c:4012)),c,4	;volatile
	line	208
	
l2186:
	bcf	((c:4012)),c,2	;volatile
	line	209
	
l2188:
	bcf	((c:4011)),c,6	;volatile
	line	210
	
l2190:
	bsf	((c:4011)),c,4	;volatile
	line	211
	
l2192:
	bsf	((c:4011)),c,7	;volatile
	line	213
	
l179:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,89
	global	_MotorsSpeed

;; *************** function _MotorsSpeed *****************
;; Defined at:
;;		line 684 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
;; Parameters:    Size  Location     Type
;;  b               2    0[BANK0 ] int 
;;  a               2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	684
global __ptext10
__ptext10:
psect	text10
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	684
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 29
	line	685
	
l2202:
	movff	(MotorsSpeed@a),(c:_speedA)
	movff	(MotorsSpeed@a+1),(c:_speedA+1)
	line	686
	movff	(MotorsSpeed@b),(c:_speedB)
	movff	(MotorsSpeed@b+1),(c:_speedB+1)
	line	687
	
l437:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8313
	global	_MotorUpdate

;; *************** function _MotorUpdate *****************
;; Defined at:
;;		line 688 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
;;      Locals:         0       4       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       4       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	line	688
global __ptext11
__ptext11:
psect	text11
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	688
	global	__size_of_MotorUpdate
	__size_of_MotorUpdate	equ	__end_of_MotorUpdate-_MotorUpdate
	
_MotorUpdate:
;incstack = 0
	opt	stack 29
	line	689
	
l2204:
	btfsc	((c:_speedA+1)),c,7
	goto	u1390
	movf	((c:_speedA+1)),c,w
	bnz	u1391
	decf	((c:_speedA)),c,w
	btfsc	status,0
	goto	u1391
	goto	u1390

u1391:
	goto	l442
u1390:
	
l2206:
	movff	(c:_speedA),??_MotorUpdate+0+0
	movff	(c:_speedA+1),??_MotorUpdate+0+0+1
	comf	(??_MotorUpdate+0+0),c
	comf	(??_MotorUpdate+0+1),c
	infsnz	(??_MotorUpdate+0+0),c
	incf	(??_MotorUpdate+0+1),c
	movff	??_MotorUpdate+0+0,(_MotorUpdate$1665)
	movff	??_MotorUpdate+0+1,(_MotorUpdate$1665+1)
	goto	l2208
	
l442:
	movff	(c:_speedA),(_MotorUpdate$1665)
	movff	(c:_speedA+1),(_MotorUpdate$1665+1)
	goto	l2208
	
l444:
	
l2208:
	movlb	0	; () banked
		movf	((_MotorUpdate$1665))&0ffh,w
	subwf	((c:_loop)),c,w
	movf	((c:_loop+1)),c,w
	xorlw	80h
	movwf	(??_MotorUpdate+0+0)&0ffh,c
	movlb	0	; () banked
	movf	((_MotorUpdate$1665+1))&0ffh,w
	xorlw	80h
	subwfb	(??_MotorUpdate+0+0)&0ffh,c,w
	btfsc	status,0
	goto	u1401
	goto	u1400

u1401:
	goto	l440
u1400:
	line	690
	
l2210:; BSR set to: 0

	btfsc	((c:_speedA+1)),c,7
	goto	u1411
	movf	((c:_speedA+1)),c,w
	bnz	u1410
	decf	((c:_speedA)),c,w
	btfss	status,0
	goto	u1411
	goto	u1410

u1411:
	goto	l445
u1410:
	line	691
	
l2212:; BSR set to: 0

	bsf	((c:3971)),c,3	;volatile
	line	692
	bcf	((c:3969)),c,2	;volatile
	line	693
	goto	l2214
	
l445:; BSR set to: 0

	line	694
	bcf	((c:3971)),c,3	;volatile
	line	695
	bsf	((c:3969)),c,2	;volatile
	goto	l2214
	line	696
	
l446:; BSR set to: 0

	line	697
	goto	l2214
	
l440:; BSR set to: 0

	line	698
	bcf	((c:3971)),c,3	;volatile
	line	699
	bcf	((c:3969)),c,2	;volatile
	goto	l2214
	line	700
	
l447:; BSR set to: 0

	line	701
	
l2214:; BSR set to: 0

	btfsc	((c:_speedB+1)),c,7
	goto	u1420
	movf	((c:_speedB+1)),c,w
	bnz	u1421
	decf	((c:_speedB)),c,w
	btfsc	status,0
	goto	u1421
	goto	u1420

u1421:
	goto	l450
u1420:
	
l2216:; BSR set to: 0

	movff	(c:_speedB),??_MotorUpdate+0+0
	movff	(c:_speedB+1),??_MotorUpdate+0+0+1
	comf	(??_MotorUpdate+0+0),c
	comf	(??_MotorUpdate+0+1),c
	infsnz	(??_MotorUpdate+0+0),c
	incf	(??_MotorUpdate+0+1),c
	movff	??_MotorUpdate+0+0,(_MotorUpdate$1674)
	movff	??_MotorUpdate+0+1,(_MotorUpdate$1674+1)
	goto	l2218
	
l450:; BSR set to: 0

	movff	(c:_speedB),(_MotorUpdate$1674)
	movff	(c:_speedB+1),(_MotorUpdate$1674+1)
	goto	l2218
	
l452:; BSR set to: 0

	
l2218:; BSR set to: 0

	movlb	0	; () banked
		movf	((_MotorUpdate$1674))&0ffh,w
	subwf	((c:_loop)),c,w
	movf	((c:_loop+1)),c,w
	xorlw	80h
	movwf	(??_MotorUpdate+0+0)&0ffh,c
	movlb	0	; () banked
	movf	((_MotorUpdate$1674+1))&0ffh,w
	xorlw	80h
	subwfb	(??_MotorUpdate+0+0)&0ffh,c,w
	btfsc	status,0
	goto	u1431
	goto	u1430

u1431:
	goto	l448
u1430:
	line	702
	
l2220:; BSR set to: 0

	btfsc	((c:_speedB+1)),c,7
	goto	u1441
	movf	((c:_speedB+1)),c,w
	bnz	u1440
	decf	((c:_speedB)),c,w
	btfss	status,0
	goto	u1441
	goto	u1440

u1441:
	goto	l453
u1440:
	line	703
	
l2222:; BSR set to: 0

	bsf	((c:3970)),c,2	;volatile
	line	704
	bcf	((c:3969)),c,2	;volatile
	line	705
	goto	l2224
	
l453:; BSR set to: 0

	line	706
	bcf	((c:3970)),c,2	;volatile
	line	707
	bsf	((c:3969)),c,0	;volatile
	goto	l2224
	line	708
	
l454:; BSR set to: 0

	line	709
	goto	l2224
	
l448:; BSR set to: 0

	line	710
	bcf	((c:3970)),c,2	;volatile
	line	711
	bcf	((c:3969)),c,0	;volatile
	goto	l2224
	line	712
	
l455:; BSR set to: 0

	line	713
	
l2224:; BSR set to: 0

		movlw	9
	xorwf	((c:_loop)),c,w
iorwf	((c:_loop+1)),c,w
	btfsc	status,2
	goto	u1451
	goto	u1450

u1451:
	goto	l2228
u1450:
	
l2226:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:_loop)),c,w
	movwf	((c:_loop)),c
	movlw	high(01h)
	addwfc	((c:_loop+1)),c,w
	movwf	1+((c:_loop)),c
	goto	l460
	
l457:; BSR set to: 0

	
l2228:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_loop+1)),c
	movlw	low(0)
	movwf	((c:_loop)),c
	goto	l460
	
l459:; BSR set to: 0

	line	714
	
l460:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorUpdate
	__end_of_MotorUpdate:
	signat	_MotorUpdate,89
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 478 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	478
	global	__size_of_enc
	__size_of_enc	equ	__end_of_enc-_enc
	
_enc:; BSR set to: 0

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
	line	479
	
i2l1426:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u33_41
	goto	i2u33_40
i2u33_41:
	goto	i2l320
i2u33_40:
	line	480
	
i2l1428:
	movlw	low(01h)
	addwf	((c:_TIME)),c
	movlw	0
	addwfc	((c:_TIME+1)),c
	addwfc	((c:_TIME+2)),c
	addwfc	((c:_TIME+3)),c
	line	481
	
i2l1430:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	482
	
i2l1432:
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	485
	
i2l1434:
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l320
	line	486
	
i2l319:
	line	487
	
i2l320:
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
