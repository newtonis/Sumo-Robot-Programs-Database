opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 201502162209"

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
# 51 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 70 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 146 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 219 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 244 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UFRM equ 0F66h ;# 
# 250 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UFRML equ 0F66h ;# 
# 327 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 366 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UIR equ 0F68h ;# 
# 421 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UIE equ 0F69h ;# 
# 476 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 526 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 576 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 635 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 685 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 748 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 829 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 960 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1091 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1222 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1353 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1484 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1615 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1746 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1877 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1964 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2051 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2138 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2225 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2312 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2399 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2486 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2573 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2729 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2838 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2991 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTD equ 0F83h ;# 
# 3111 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTE equ 0F84h ;# 
# 3362 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATA equ 0F89h ;# 
# 3497 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3629 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3744 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3876 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3978 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3983 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRA equ 0F92h ;# 
# 4175 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISB equ 0F93h ;# 
# 4180 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRB equ 0F93h ;# 
# 4396 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISC equ 0F94h ;# 
# 4401 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4567 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4572 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4788 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4793 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4889 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4947 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 5035 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 5123 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 5211 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5281 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5351 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5421 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5486 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5492 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5498 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5504 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5509 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5713 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5718 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 6010 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TXREG equ 0FADh ;# 
# 6015 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 6021 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 6026 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 6032 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 6037 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 6043 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 6049 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 6171 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 6177 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 6183 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 6189 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6284 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6368 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6373 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6529 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6534 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6666 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6671 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6845 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6908 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6914 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6920 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6926 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6931 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 7087 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 7093 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 7099 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 7105 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 7175 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7265 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7387 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7393 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7399 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7405 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7466 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7535 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7801 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7807 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7813 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7910 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7915 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 8019 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 8025 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 8129 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 8135 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 8141 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 8147 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCON equ 0FD0h ;# 
# 8295 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8322 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8327 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8591 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8673 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8742 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8748 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8754 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8760 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8838 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8844 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8850 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8856 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8862 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8868 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8874 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8880 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8886 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8892 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8898 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8904 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8910 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8916 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8922 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8928 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8934 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8940 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8946 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8952 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8958 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8964 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8970 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8976 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8982 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8988 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8994 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 9085 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 9161 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9297 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PROD equ 0FF3h ;# 
# 9303 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9309 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9315 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9323 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9329 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9335 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9341 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9349 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9356 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PC equ 0FF9h ;# 
# 9362 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PCL equ 0FF9h ;# 
# 9368 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9374 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9380 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9455 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TOS equ 0FFDh ;# 
# 9461 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9467 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9473 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TOSU equ 0FFFh ;# 
# 51 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 70 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 146 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 219 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPPCON equ 0F65h ;# 
# 244 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UFRM equ 0F66h ;# 
# 250 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UFRML equ 0F66h ;# 
# 327 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UFRMH equ 0F67h ;# 
# 366 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UIR equ 0F68h ;# 
# 421 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UIE equ 0F69h ;# 
# 476 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 526 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 576 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 635 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UCON equ 0F6Dh ;# 
# 685 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 748 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 829 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP0 equ 0F70h ;# 
# 960 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1091 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1222 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1353 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1484 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1615 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1746 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1877 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1964 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2051 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2138 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2225 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2312 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2399 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2486 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2573 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTA equ 0F80h ;# 
# 2729 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTB equ 0F81h ;# 
# 2838 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTC equ 0F82h ;# 
# 2991 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTD equ 0F83h ;# 
# 3111 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PORTE equ 0F84h ;# 
# 3362 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATA equ 0F89h ;# 
# 3497 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3629 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3744 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3876 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3978 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISA equ 0F92h ;# 
# 3983 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRA equ 0F92h ;# 
# 4175 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISB equ 0F93h ;# 
# 4180 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRB equ 0F93h ;# 
# 4396 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISC equ 0F94h ;# 
# 4401 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRC equ 0F94h ;# 
# 4567 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISD equ 0F95h ;# 
# 4572 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRD equ 0F95h ;# 
# 4788 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TRISE equ 0F96h ;# 
# 4793 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
DDRE equ 0F96h ;# 
# 4889 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4947 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 5035 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 5123 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 5211 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5281 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5351 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5421 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5486 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5492 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5498 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5504 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5509 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5713 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5718 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 6010 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TXREG equ 0FADh ;# 
# 6015 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 6021 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCREG equ 0FAEh ;# 
# 6026 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 6032 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 6037 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 6043 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 6049 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
T3CON equ 0FB1h ;# 
# 6171 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 6177 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 6183 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 6189 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6284 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6368 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6373 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6529 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6534 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6666 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6671 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6845 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6908 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6914 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6920 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6926 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6931 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 7087 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 7093 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 7099 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 7105 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 7175 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7265 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7387 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7393 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7399 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7405 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7466 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7535 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7801 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7807 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7813 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7910 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7915 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 8019 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 8025 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
T1CON equ 0FCDh ;# 
# 8129 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 8135 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 8141 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 8147 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
RCON equ 0FD0h ;# 
# 8295 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8322 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8327 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8591 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8673 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8742 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8748 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8754 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8760 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8838 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8844 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8850 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8856 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8862 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8868 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8874 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8880 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8886 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
BSR equ 0FE0h ;# 
# 8892 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8898 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8904 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8910 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8916 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8922 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8928 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8934 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8940 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
WREG equ 0FE8h ;# 
# 8946 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8952 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8958 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8964 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8970 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8976 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8982 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8988 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8994 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 9085 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 9161 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9297 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PROD equ 0FF3h ;# 
# 9303 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9309 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9315 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9323 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9329 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9335 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9341 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9349 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9356 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PC equ 0FF9h ;# 
# 9362 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PCL equ 0FF9h ;# 
# 9368 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9374 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9380 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9455 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TOS equ 0FFDh ;# 
# 9461 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9467 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9473 "/opt/microchip/xc8/v1.34/include/pic18f4550.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_Display7Seg
	FNCALL	_main,_Inicializar
	FNCALL	_main,_LeerSensLinea
	FNCALL	_main,_loop
	FNCALL	_loop,_Display7Seg
	FNCALL	_loop,_StartTimer
	FNCALL	_loop,_StopTimer
	FNCALL	_loop,_TimerIsReady
	FNCALL	_loop,_beep
	FNCALL	_loop,_displayByte
	FNCALL	_loop,_firulete
	FNCALL	_loop,_set_motor_der
	FNCALL	_loop,_set_motor_izq
	FNCALL	_loop,_testeo_CNY
	FNCALL	_loop,_testeo_US
	FNCALL	_testeo_US,___wmul
	FNCALL	_testeo_US,_printf
	FNCALL	_testeo_CNY,_displayByte
	FNCALL	_Display7Seg,_StartTimer
	FNCALL	_Display7Seg,_StopTimer
	FNCALL	_Display7Seg,_TimerIsReady
	FNCALL	_Display7Seg,___awdiv
	FNCALL	_Display7Seg,___awmod
	FNCALL	_Display7Seg,_displayByte
	FNCALL	_Inicializar,_ConfigurarGPIO
	FNCALL	_Inicializar,_Configurar_Duty
	FNCALL	_Inicializar,_Configurar_Interrupciones
	FNCALL	_Inicializar,_Configurar_PWM
	FNCALL	_Inicializar,_Configurar_Timer0
	FNCALL	_Inicializar,_Configurar_Timer1
	FNCALL	_Inicializar,_Configurar_Timer2
	FNCALL	_Inicializar,_Configurar_UART
	FNCALL	_Inicializar,_ResetTimers
	FNCALL	_Inicializar,_beep
	FNCALL	_Inicializar,_firulete
	FNCALL	_Inicializar,_printf
	FNCALL	_Inicializar,_set_motor_der
	FNCALL	_Inicializar,_set_motor_izq
	FNCALL	_set_motor_izq,___awdiv
	FNCALL	_set_motor_der,___awdiv
	FNCALL	_printf,___lwdiv
	FNCALL	_printf,___lwmod
	FNCALL	_printf,___wmul
	FNCALL	_printf,_isdigit
	FNCALL	_printf,_putch
	FNCALL	_firulete,_StartTimer
	FNCALL	_firulete,_TimerIsReady
	FNCALL	_firulete,_displayByte
	FNCALL	_beep,_StartTimer
	FNCALL	_beep,_TimerIsReady
	FNCALL	_ResetTimers,___wmul
	FNROOT	_main
	FNCALL	_interruptsHandler,_LecturaFlancosUS
	FNCALL	_interruptsHandler,_TimerTick
	FNCALL	_TimerTick,_TimersHandler
	FNCALL	_TimersHandler,i2___wmul
	FNCALL	intlevel2,_interruptsHandler
	global	intlevel2
	FNROOT	intlevel2
	global	_BCD_TABLE
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.h"
	line	26
_BCD_TABLE:
	db	low(03Fh)
	db	low(06h)
	db	low(05Bh)
	db	low(04Fh)
	db	low(066h)
	db	low(06Dh)
	db	low(07Dh)
	db	low(07h)
	db	low(07Fh)
	db	low(067h)
	db	low(077h)
	db	low(07Ch)
	db	low(039h)
	db	low(05Eh)
	db	low(079h)
	db	low(071h)
	global __end_of_BCD_TABLE
__end_of_BCD_TABLE:
	global	_dpowers
psect	smallconst
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	354
_dpowers:
	dw	(01h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(064h)&0ffffh
	dw	(03E8h)&0ffffh
	dw	(02710h)&0ffffh
	global __end_of_dpowers
__end_of_dpowers:
	global	_PIN_FUNCTION
psect	smallconst
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.h"
	line	200
_PIN_FUNCTION:
	db	low(01h)
	db	low(01h)
	db	low(01h)
	db	low(04h)
	db	low(0)
	db	low(04h)
	db	low(04h)
	db	low(04h)
	global __end_of_PIN_FUNCTION
__end_of_PIN_FUNCTION:
	global	_BCD_TABLE
	global	_dpowers
	global	_PIN_FUNCTION
	global	UltraSonic@state
	global	_US_lecturas
	global	_Timer
	global	Display7Seg@num
	global	_sensLinea
	global	Display7Seg@t
	global	Display7Seg@i
	global	LeerSensLinea@cant_lecturas
	global	girar@state
	global	_stSensProx
	global	LeerSensLinea@lecturas
	global	_f1
	global	_f2
	global	_s1
	global	_s2
	global	loop@i
	global	loop@vel_der
	global	loop@vel_izq
	global	loop@Estado
	global	_ADCON1
_ADCON1	set	0xFC1
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
	global	_INTCON2bits
_INTCON2bits	set	0xFF1
	global	_INTCON3
_INTCON3	set	0xFF0
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_IPR1bits
_IPR1bits	set	0xF9F
	global	_OSCCONbits
_OSCCONbits	set	0xFD3
	global	_PIE1
_PIE1	set	0xF9D
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIE2
_PIE2	set	0xFA0
	global	_PORTAbits
_PORTAbits	set	0xF80
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
	global	_T1CON
_T1CON	set	0xFCD
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
	global	_TMR3H
_TMR3H	set	0xFB3
	global	_TMR3L
_TMR3L	set	0xFB2
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global	_UCFGbits
_UCFGbits	set	0xF6F
	global	_UCONbits
_UCONbits	set	0xF6D
	global	_LATC1
_LATC1	set	0x7C59
	global	_LATC2
_LATC2	set	0x7C5A
	global	_LATD0
_LATD0	set	0x7C60
	global	_LATD1
_LATD1	set	0x7C61
	global	_LATD2
_LATD2	set	0x7C62
	global	_LATD3
_LATD3	set	0x7C63
	global	_LATD6
_LATD6	set	0x7C66
	global	_LATD7
_LATD7	set	0x7C67
	global	_LB0
_LB0	set	0x7C50
	global	_LB1
_LB1	set	0x7C51
	global	_LB2
_LB2	set	0x7C52
	global	_LB3
_LB3	set	0x7C53
	global	_LB4
_LB4	set	0x7C54
	global	_LB5
_LB5	set	0x7C55
	global	_LB6
_LB6	set	0x7C56
	global	_LB7
_LB7	set	0x7C57
	global	_TMR1IF
_TMR1IF	set	0x7CF0
	global	_TMR1ON
_TMR1ON	set	0x7E68
	global	_TMR2IF
_TMR2IF	set	0x7CF1
	global	_TRISA0
_TRISA0	set	0x7C90
	global	_TRISA1
_TRISA1	set	0x7C91
	global	_TRISA2
_TRISA2	set	0x7C92
	global	_TRISA4
_TRISA4	set	0x7C94
	global	_TRISA5
_TRISA5	set	0x7C95
	global	_TRISB0
_TRISB0	set	0x7C98
	global	_TRISB1
_TRISB1	set	0x7C99
	global	_TRISB2
_TRISB2	set	0x7C9A
	global	_TRISB3
_TRISB3	set	0x7C9B
	global	_TRISB4
_TRISB4	set	0x7C9C
	global	_TRISB5
_TRISB5	set	0x7C9D
	global	_TRISB6
_TRISB6	set	0x7C9E
	global	_TRISB7
_TRISB7	set	0x7C9F
	global	_TRISC1
_TRISC1	set	0x7CA1
	global	_TRISC2
_TRISC2	set	0x7CA2
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_TRISC7
_TRISC7	set	0x7CA7
	global	_TRISD0
_TRISD0	set	0x7CA8
	global	_TRISD1
_TRISD1	set	0x7CA9
	global	_TRISD2
_TRISD2	set	0x7CAA
	global	_TRISD3
_TRISD3	set	0x7CAB
	global	_TRISD4
_TRISD4	set	0x7CAC
	global	_TRISD5
_TRISD5	set	0x7CAD
	global	_TRISD6
_TRISD6	set	0x7CAE
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_TRISE0
_TRISE0	set	0x7CB0
	global	_TRISE1
_TRISE1	set	0x7CB1
	global	_TRISE2
_TRISE2	set	0x7CB2
	global	_TXIF
_TXIF	set	0x7CF4
	
STR_7:
	db	10
	db	10
	db	10
	db	13
	db	73	;'I'
	db	110	;'n'
	db	99	;'c'
	db	105	;'i'
	db	97	;'a'
	db	108	;'l'
	db	105	;'i'
	db	122	;'z'
	db	97	;'a'
	db	99	;'c'
	db	105	;'i'
	db	111	;'o'
	db	110	;'n'
	db	32
	db	99	;'c'
	db	111	;'o'
	db	109	;'m'
	db	112	;'p'
	db	108	;'l'
	db	101	;'e'
	db	116	;'t'
	db	97	;'a'
	db	10
	db	13
	db	0
	
STR_1:
	db	83	;'S'
	db	37
	db	117	;'u'
	db	58	;':'
	db	37
	db	48	;'0'
	db	51	;'3'
	db	117	;'u'
	db	9
	db	0
STR_2	equ	STR_7+26
STR_4	equ	STR_7+26
STR_6	equ	STR_7+26
STR_3	equ	STR_1+0
STR_5	equ	STR_1+0
; #config settings
global __CFG_CPUDIV$OSC1_PLL2
__CFG_CPUDIV$OSC1_PLL2 equ 0x0
global __CFG_PLLDIV$5
__CFG_PLLDIV$5 equ 0x0
global __CFG_USBDIV$2
__CFG_USBDIV$2 equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$HSPLL_HS
__CFG_FOSC$HSPLL_HS equ 0x0
global __CFG_VREGEN$OFF
__CFG_VREGEN$OFF equ 0x0
global __CFG_BOR$OFF
__CFG_BOR$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_STVREN$OFF
__CFG_STVREN$OFF equ 0x0
global __CFG_DEBUG$ON
__CFG_DEBUG$ON equ 0x0
global __CFG_ICPRT$OFF
__CFG_ICPRT$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CP0$ON
__CFG_CP0$ON equ 0x0
global __CFG_CP1$ON
__CFG_CP1$ON equ 0x0
global __CFG_CPB$ON
__CFG_CPB$ON equ 0x0
global __CFG_WRT0$ON
__CFG_WRT0$ON equ 0x0
global __CFG_WRT1$ON
__CFG_WRT1$ON equ 0x0
global __CFG_WRTB$ON
__CFG_WRTB$ON equ 0x0
global __CFG_WRTC$ON
__CFG_WRTC$ON equ 0x0
global __CFG_EBTR0$ON
__CFG_EBTR0$ON equ 0x0
global __CFG_EBTR1$ON
__CFG_EBTR1$ON equ 0x0
global __CFG_EBTRB$ON
__CFG_EBTRB$ON equ 0x0
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
UltraSonic@state:
       ds      1
	global	_US_lecturas
_US_lecturas:
       ds      1
	global	_datoserie
	global	_datoserie
_datoserie:
       ds      1
	global	_flag
	global	_flag
_flag:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_Timer
_Timer:
       ds      33
Display7Seg@num:
       ds      5
	global	_sensLinea
_sensLinea:
       ds      4
Display7Seg@t:
       ds      2
Display7Seg@i:
       ds      1
LeerSensLinea@cant_lecturas:
       ds      1
girar@state:
       ds      1
	global	_stSensProx
_stSensProx:
       ds      48
LeerSensLinea@lecturas:
       ds      4
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_f1
_f1:
       ds      2
	global	_f2
_f2:
       ds      2
	global	_s1
_s1:
       ds      2
	global	_s2
_s2:
       ds      2
loop@i:
       ds      2
loop@vel_der:
       ds      2
loop@vel_izq:
       ds      2
loop@Estado:
       ds      1
	line	#
psect	cinit
; Clear objects allocated to BANK1 (15 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	15
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (99 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	99
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (4 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	printf@ap
printf@ap:	; 2 bytes @ 0x0
	ds   2
	global	printf@cp
printf@cp:	; 2 bytes @ 0x2
	ds   2
	global	printf@flag
printf@flag:	; 1 bytes @ 0x4
	ds   1
	global	printf@val
printf@val:	; 2 bytes @ 0x5
	ds   2
	global	printf@prec
printf@prec:	; 1 bytes @ 0x7
	ds   1
	global	printf@len
printf@len:	; 2 bytes @ 0x8
	ds   2
	global	printf@width
printf@width:	; 2 bytes @ 0xA
	ds   2
	global	printf@c
printf@c:	; 1 bytes @ 0xC
	ds   1
	global	_loop$584
_loop$584:	; 2 bytes @ 0xD
	ds   2
	global	_loop$585
_loop$585:	; 2 bytes @ 0xF
	ds   2
	global	_loop$586
_loop$586:	; 2 bytes @ 0x11
	ds   2
	global	_loop$587
_loop$587:	; 2 bytes @ 0x13
	ds   2
	global	_loop$588
_loop$588:	; 2 bytes @ 0x15
	ds   2
	global	_loop$589
_loop$589:	; 2 bytes @ 0x17
	ds   2
	global	_loop$590
_loop$590:	; 2 bytes @ 0x19
	ds   2
	global	_loop$591
_loop$591:	; 2 bytes @ 0x1B
	ds   2
	global	_loop$592
_loop$592:	; 2 bytes @ 0x1D
	ds   2
	global	_loop$593
_loop$593:	; 2 bytes @ 0x1F
	ds   2
	global	_loop$594
_loop$594:	; 2 bytes @ 0x21
	ds   2
	global	_loop$595
_loop$595:	; 2 bytes @ 0x23
	ds   2
	global	_loop$596
_loop$596:	; 2 bytes @ 0x25
	ds   2
	global	_loop$597
_loop$597:	; 2 bytes @ 0x27
	ds   2
	global	_loop$598
_loop$598:	; 2 bytes @ 0x29
	ds   2
	global	_loop$599
_loop$599:	; 2 bytes @ 0x2B
	ds   2
	global	_loop$600
_loop$600:	; 2 bytes @ 0x2D
	ds   2
	global	_loop$601
_loop$601:	; 2 bytes @ 0x2F
	ds   2
	global	_loop$602
_loop$602:	; 2 bytes @ 0x31
	ds   2
	global	_loop$603
_loop$603:	; 2 bytes @ 0x33
	ds   2
	global	_loop$604
_loop$604:	; 2 bytes @ 0x35
	ds   2
	global	_loop$605
_loop$605:	; 2 bytes @ 0x37
	ds   2
	global	_loop$606
_loop$606:	; 2 bytes @ 0x39
	ds   2
	global	_loop$607
_loop$607:	; 2 bytes @ 0x3B
	ds   2
	global	_loop$608
_loop$608:	; 2 bytes @ 0x3D
	ds   2
	global	_loop$609
_loop$609:	; 2 bytes @ 0x3F
	ds   2
	global	_loop$610
_loop$610:	; 2 bytes @ 0x41
	ds   2
	global	_loop$611
_loop$611:	; 2 bytes @ 0x43
	ds   2
	global	_loop$612
_loop$612:	; 2 bytes @ 0x45
	ds   2
	global	_loop$613
_loop$613:	; 2 bytes @ 0x47
	ds   2
	global	_loop$614
_loop$614:	; 2 bytes @ 0x49
	ds   2
	global	_loop$615
_loop$615:	; 2 bytes @ 0x4B
	ds   2
	global	_loop$616
_loop$616:	; 2 bytes @ 0x4D
	ds   2
	global	_loop$617
_loop$617:	; 2 bytes @ 0x4F
	ds   2
	global	_loop$618
_loop$618:	; 2 bytes @ 0x51
	ds   2
	global	_loop$619
_loop$619:	; 2 bytes @ 0x53
	ds   2
	global	_loop$620
_loop$620:	; 2 bytes @ 0x55
	ds   2
	global	_loop$621
_loop$621:	; 2 bytes @ 0x57
	ds   2
	global	_loop$622
_loop$622:	; 2 bytes @ 0x59
	ds   2
	global	_loop$623
_loop$623:	; 2 bytes @ 0x5B
	ds   2
	global	_loop$624
_loop$624:	; 2 bytes @ 0x5D
	ds   2
	global	_loop$625
_loop$625:	; 2 bytes @ 0x5F
	ds   2
	global	_loop$626
_loop$626:	; 2 bytes @ 0x61
	ds   2
	global	_loop$627
_loop$627:	; 2 bytes @ 0x63
	ds   2
	global	_loop$628
_loop$628:	; 2 bytes @ 0x65
	ds   2
	global	_loop$629
_loop$629:	; 2 bytes @ 0x67
	ds   2
	global	_loop$630
_loop$630:	; 2 bytes @ 0x69
	ds   2
	global	_loop$631
_loop$631:	; 2 bytes @ 0x6B
	ds   2
	global	_loop$632
_loop$632:	; 2 bytes @ 0x6D
	ds   2
	global	_loop$633
_loop$633:	; 2 bytes @ 0x6F
	ds   2
	global	_loop$634
_loop$634:	; 2 bytes @ 0x71
	ds   2
	global	_loop$635
_loop$635:	; 2 bytes @ 0x73
	ds   2
	global	_loop$636
_loop$636:	; 2 bytes @ 0x75
	ds   2
	global	_loop$637
_loop$637:	; 2 bytes @ 0x77
	ds   2
	global	_loop$638
_loop$638:	; 2 bytes @ 0x79
	ds   2
	global	_loop$639
_loop$639:	; 2 bytes @ 0x7B
	ds   2
	global	_loop$640
_loop$640:	; 2 bytes @ 0x7D
	ds   2
	global	_loop$641
_loop$641:	; 2 bytes @ 0x7F
	ds   2
	global	_loop$642
_loop$642:	; 2 bytes @ 0x81
	ds   2
	global	_loop$643
_loop$643:	; 2 bytes @ 0x83
	ds   2
	global	_loop$644
_loop$644:	; 2 bytes @ 0x85
	ds   2
	global	_loop$645
_loop$645:	; 2 bytes @ 0x87
	ds   2
	global	_loop$646
_loop$646:	; 2 bytes @ 0x89
	ds   2
	global	_loop$647
_loop$647:	; 2 bytes @ 0x8B
	ds   2
	global	_loop$648
_loop$648:	; 2 bytes @ 0x8D
	ds   2
	global	_loop$649
_loop$649:	; 2 bytes @ 0x8F
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_interruptsHandler:	; 0 bytes @ 0x0
	ds   14
??_LeerSensLinea:	; 0 bytes @ 0xE
?_StartTimer:	; 0 bytes @ 0xE
??_TimerIsReady:	; 0 bytes @ 0xE
??_StopTimer:	; 0 bytes @ 0xE
??_displayByte:	; 0 bytes @ 0xE
??_Configurar_UART:	; 0 bytes @ 0xE
??_Configurar_Timer2:	; 0 bytes @ 0xE
??_Configurar_Timer1:	; 0 bytes @ 0xE
??_Configurar_Timer0:	; 0 bytes @ 0xE
??_Configurar_PWM:	; 0 bytes @ 0xE
?_Configurar_Duty:	; 0 bytes @ 0xE
??_Configurar_Interrupciones:	; 0 bytes @ 0xE
??_isdigit:	; 0 bytes @ 0xE
??_ConfigurarGPIO:	; 0 bytes @ 0xE
??_putch:	; 0 bytes @ 0xE
	global	?___wmul
?___wmul:	; 2 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___awmod
?___awmod:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	putch@data
putch@data:	; 1 bytes @ 0xE
	global	StopTimer@nTimer
StopTimer@nTimer:	; 1 bytes @ 0xE
	global	Configurar_Duty@duty
Configurar_Duty@duty:	; 2 bytes @ 0xE
	global	StartTimer@value
StartTimer@value:	; 2 bytes @ 0xE
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0xE
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xE
	ds   1
	global	TimerIsReady@nTimer
TimerIsReady@nTimer:	; 1 bytes @ 0xF
	global	_isdigit$2369
_isdigit$2369:	; 1 bytes @ 0xF
	ds   1
??_StartTimer:	; 0 bytes @ 0x10
??_Configurar_Duty:	; 0 bytes @ 0x10
	global	StartTimer@nTimer
StartTimer@nTimer:	; 1 bytes @ 0x10
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x10
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	ds   1
?_beep:	; 0 bytes @ 0x11
	global	displayByte@bcd
displayByte@bcd:	; 1 bytes @ 0x11
	global	beep@n
beep@n:	; 1 bytes @ 0x11
	ds   1
??_beep:	; 0 bytes @ 0x12
??___wmul:	; 0 bytes @ 0x12
??___awdiv:	; 0 bytes @ 0x12
??___awmod:	; 0 bytes @ 0x12
??___lwdiv:	; 0 bytes @ 0x12
	global	displayByte@j
displayByte@j:	; 1 bytes @ 0x12
	global	Configurar_Duty@canal
Configurar_Duty@canal:	; 1 bytes @ 0x12
	global	beep@i
beep@i:	; 1 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x12
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x12
	global	_LeerSensLinea$1853
_LeerSensLinea$1853:	; 2 bytes @ 0x12
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x12
	ds   1
	global	displayByte@i
displayByte@i:	; 1 bytes @ 0x13
	global	beep@t
beep@t:	; 1 bytes @ 0x13
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x13
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x13
	ds   1
??_testeo_CNY:	; 0 bytes @ 0x14
?_firulete:	; 0 bytes @ 0x14
??_ResetTimers:	; 0 bytes @ 0x14
	global	firulete@n
firulete@n:	; 1 bytes @ 0x14
	global	_LeerSensLinea$1854
_LeerSensLinea$1854:	; 2 bytes @ 0x14
	global	ResetTimers@i
ResetTimers@i:	; 2 bytes @ 0x14
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds   1
??_firulete:	; 0 bytes @ 0x15
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x15
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x15
	ds   1
?_Display7Seg:	; 0 bytes @ 0x16
?_set_motor_izq:	; 0 bytes @ 0x16
?_set_motor_der:	; 0 bytes @ 0x16
	global	Display7Seg@n
Display7Seg@n:	; 2 bytes @ 0x16
	global	set_motor_izq@duty
set_motor_izq@duty:	; 2 bytes @ 0x16
	global	set_motor_der@duty
set_motor_der@duty:	; 2 bytes @ 0x16
	global	_LeerSensLinea$1855
_LeerSensLinea$1855:	; 2 bytes @ 0x16
	ds   1
	global	firulete@t
firulete@t:	; 1 bytes @ 0x17
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x17
	ds   1
??_set_motor_izq:	; 0 bytes @ 0x18
??_set_motor_der:	; 0 bytes @ 0x18
	global	Display7Seg@time
Display7Seg@time:	; 2 bytes @ 0x18
	global	firulete@veces
firulete@veces:	; 2 bytes @ 0x18
	global	_LeerSensLinea$1856
_LeerSensLinea$1856:	; 2 bytes @ 0x18
	ds   1
??___lwmod:	; 0 bytes @ 0x19
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x19
	global	_testeo_CNY$676
_testeo_CNY$676:	; 2 bytes @ 0x19
	ds   1
??_Display7Seg:	; 0 bytes @ 0x1A
	global	?_printf
?_printf:	; 2 bytes @ 0x1A
	global	firulete@i
firulete@i:	; 2 bytes @ 0x1A
	global	_LeerSensLinea$1857
_LeerSensLinea$1857:	; 2 bytes @ 0x1A
	global	printf@f
printf@f:	; 2 bytes @ 0x1A
	ds   1
	global	testeo_CNY@aux
testeo_CNY@aux:	; 1 bytes @ 0x1B
	ds   1
	global	testeo_CNY@i
testeo_CNY@i:	; 1 bytes @ 0x1C
	global	_LeerSensLinea$1858
_LeerSensLinea$1858:	; 2 bytes @ 0x1C
	ds   2
	global	_LeerSensLinea$1859
_LeerSensLinea$1859:	; 2 bytes @ 0x1E
	ds   2
??_printf:	; 0 bytes @ 0x20
	global	_LeerSensLinea$1860
_LeerSensLinea$1860:	; 2 bytes @ 0x20
	ds   2
	global	_LeerSensLinea$1861
_LeerSensLinea$1861:	; 2 bytes @ 0x22
	ds   2
??_Inicializar:	; 0 bytes @ 0x24
??_testeo_US:	; 0 bytes @ 0x24
	global	Inicializar@i
Inicializar@i:	; 1 bytes @ 0x24
	global	_testeo_US$671
_testeo_US$671:	; 2 bytes @ 0x24
	global	_LeerSensLinea$1862
_LeerSensLinea$1862:	; 2 bytes @ 0x24
	ds   2
	global	testeo_US@i
testeo_US@i:	; 2 bytes @ 0x26
	global	_LeerSensLinea$1863
_LeerSensLinea$1863:	; 2 bytes @ 0x26
	ds   2
??_loop:	; 0 bytes @ 0x28
	global	_LeerSensLinea$1864
_LeerSensLinea$1864:	; 2 bytes @ 0x28
	ds   2
	global	LeerSensLinea@i
LeerSensLinea@i:	; 1 bytes @ 0x2A
	ds   1
??_main:	; 0 bytes @ 0x2B
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_Inicializar:	; 0 bytes @ 0x0
?_LeerSensLinea:	; 0 bytes @ 0x0
?_loop:	; 0 bytes @ 0x0
?_testeo_CNY:	; 0 bytes @ 0x0
?_testeo_US:	; 0 bytes @ 0x0
?_StopTimer:	; 0 bytes @ 0x0
?_displayByte:	; 0 bytes @ 0x0
?_Configurar_UART:	; 0 bytes @ 0x0
?_Configurar_Timer2:	; 0 bytes @ 0x0
?_Configurar_Timer1:	; 0 bytes @ 0x0
?_Configurar_Timer0:	; 0 bytes @ 0x0
?_Configurar_PWM:	; 0 bytes @ 0x0
?_Configurar_Interrupciones:	; 0 bytes @ 0x0
?_ResetTimers:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_main:	; 0 bytes @ 0x0
?_ConfigurarGPIO:	; 0 bytes @ 0x0
?_LecturaFlancosUS:	; 0 bytes @ 0x0
??_LecturaFlancosUS:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
?_TimersHandler:	; 0 bytes @ 0x0
?_TimerTick:	; 0 bytes @ 0x0
?_interruptsHandler:	; 0 bytes @ 0x0
?_TimerIsReady:	; 1 bytes @ 0x0
	global	?i2___wmul
?i2___wmul:	; 2 bytes @ 0x0
	global	i2___wmul@multiplier
i2___wmul@multiplier:	; 2 bytes @ 0x0
	ds   1
	global	_LecturaFlancosUS$1883
_LecturaFlancosUS$1883:	; 2 bytes @ 0x1
	ds   1
	global	i2___wmul@multiplicand
i2___wmul@multiplicand:	; 2 bytes @ 0x2
	ds   1
	global	_LecturaFlancosUS$1884
_LecturaFlancosUS$1884:	; 2 bytes @ 0x3
	ds   1
??i2___wmul:	; 0 bytes @ 0x4
	global	i2___wmul@product
i2___wmul@product:	; 2 bytes @ 0x4
	ds   1
	global	_LecturaFlancosUS$1885
_LecturaFlancosUS$1885:	; 2 bytes @ 0x5
	ds   1
??_TimersHandler:	; 0 bytes @ 0x6
	ds   1
	global	_LecturaFlancosUS$1886
_LecturaFlancosUS$1886:	; 2 bytes @ 0x7
	ds   1
	global	TimersHandler@i
TimersHandler@i:	; 2 bytes @ 0x8
	ds   1
	global	_LecturaFlancosUS$1887
_LecturaFlancosUS$1887:	; 2 bytes @ 0x9
	ds   1
??_TimerTick:	; 0 bytes @ 0xA
	ds   1
	global	_LecturaFlancosUS$1888
_LecturaFlancosUS$1888:	; 2 bytes @ 0xB
	ds   2
	global	_LecturaFlancosUS$1889
_LecturaFlancosUS$1889:	; 2 bytes @ 0xD
	ds   2
	global	_LecturaFlancosUS$1890
_LecturaFlancosUS$1890:	; 2 bytes @ 0xF
	ds   2
	global	_LecturaFlancosUS$1891
_LecturaFlancosUS$1891:	; 2 bytes @ 0x11
	ds   2
	global	_LecturaFlancosUS$1892
_LecturaFlancosUS$1892:	; 2 bytes @ 0x13
	ds   2
	global	_LecturaFlancosUS$1893
_LecturaFlancosUS$1893:	; 2 bytes @ 0x15
	ds   2
	global	_LecturaFlancosUS$1894
_LecturaFlancosUS$1894:	; 2 bytes @ 0x17
	ds   2
	global	_LecturaFlancosUS$1895
_LecturaFlancosUS$1895:	; 2 bytes @ 0x19
	ds   2
	global	_LecturaFlancosUS$1896
_LecturaFlancosUS$1896:	; 2 bytes @ 0x1B
	ds   2
	global	_LecturaFlancosUS$1897
_LecturaFlancosUS$1897:	; 2 bytes @ 0x1D
	ds   2
	global	_LecturaFlancosUS$1898
_LecturaFlancosUS$1898:	; 2 bytes @ 0x1F
	ds   2
	global	_LecturaFlancosUS$1899
_LecturaFlancosUS$1899:	; 2 bytes @ 0x21
	ds   2
	global	_LecturaFlancosUS$1900
_LecturaFlancosUS$1900:	; 2 bytes @ 0x23
	ds   2
	global	_LecturaFlancosUS$1901
_LecturaFlancosUS$1901:	; 2 bytes @ 0x25
	ds   2
	global	_LecturaFlancosUS$1902
_LecturaFlancosUS$1902:	; 2 bytes @ 0x27
	ds   2
	global	_LecturaFlancosUS$1903
_LecturaFlancosUS$1903:	; 2 bytes @ 0x29
	ds   2
	global	_LecturaFlancosUS$1904
_LecturaFlancosUS$1904:	; 2 bytes @ 0x2B
	ds   2
	global	_LecturaFlancosUS$1905
_LecturaFlancosUS$1905:	; 2 bytes @ 0x2D
	ds   2
	global	_LecturaFlancosUS$1906
_LecturaFlancosUS$1906:	; 2 bytes @ 0x2F
	ds   2
	global	_LecturaFlancosUS$1907
_LecturaFlancosUS$1907:	; 2 bytes @ 0x31
	ds   2
	global	_LecturaFlancosUS$1908
_LecturaFlancosUS$1908:	; 2 bytes @ 0x33
	ds   2
	global	_LecturaFlancosUS$1909
_LecturaFlancosUS$1909:	; 2 bytes @ 0x35
	ds   2
	global	_LecturaFlancosUS$1910
_LecturaFlancosUS$1910:	; 2 bytes @ 0x37
	ds   2
	global	_LecturaFlancosUS$1911
_LecturaFlancosUS$1911:	; 2 bytes @ 0x39
	ds   2
	global	_LecturaFlancosUS$1912
_LecturaFlancosUS$1912:	; 2 bytes @ 0x3B
	ds   2
	global	_LecturaFlancosUS$1913
_LecturaFlancosUS$1913:	; 2 bytes @ 0x3D
	ds   2
	global	_LecturaFlancosUS$1914
_LecturaFlancosUS$1914:	; 2 bytes @ 0x3F
	ds   2
	global	_LecturaFlancosUS$1915
_LecturaFlancosUS$1915:	; 2 bytes @ 0x41
	ds   2
	global	_LecturaFlancosUS$1916
_LecturaFlancosUS$1916:	; 2 bytes @ 0x43
	ds   2
	global	_LecturaFlancosUS$1917
_LecturaFlancosUS$1917:	; 2 bytes @ 0x45
	ds   2
	global	_LecturaFlancosUS$1918
_LecturaFlancosUS$1918:	; 2 bytes @ 0x47
	ds   2
	global	_LecturaFlancosUS$1919
_LecturaFlancosUS$1919:	; 2 bytes @ 0x49
	ds   2
	global	_LecturaFlancosUS$1920
_LecturaFlancosUS$1920:	; 2 bytes @ 0x4B
	ds   2
	global	_LecturaFlancosUS$1921
_LecturaFlancosUS$1921:	; 2 bytes @ 0x4D
	ds   2
	global	_LecturaFlancosUS$1922
_LecturaFlancosUS$1922:	; 2 bytes @ 0x4F
	ds   2
	global	_LecturaFlancosUS$1923
_LecturaFlancosUS$1923:	; 2 bytes @ 0x51
	ds   2
	global	_LecturaFlancosUS$1924
_LecturaFlancosUS$1924:	; 2 bytes @ 0x53
	ds   2
	global	_LecturaFlancosUS$1925
_LecturaFlancosUS$1925:	; 2 bytes @ 0x55
	ds   2
	global	_LecturaFlancosUS$1926
_LecturaFlancosUS$1926:	; 2 bytes @ 0x57
	ds   2
;!
;!Data Sizes:
;!    Strings     39
;!    Constant    34
;!    Data        0
;!    BSS         118
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     89      93
;!    BANK0           160     43     142
;!    BANK1           256    145     160
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@cp	PTR const unsigned char  size(2) Largest target is 1
;!		 -> printf@c(BANK1[1]), 
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 29
;!		 -> STR_7(CODE[29]), STR_6(CODE[3]), STR_5(CODE[10]), STR_4(CODE[3]), 
;!		 -> STR_3(CODE[10]), STR_2(CODE[3]), STR_1(CODE[10]), 
;!
;!    printf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_printf(BANK0[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _interruptsHandler in COMRAM
;!
;!    _interruptsHandler->_LecturaFlancosUS
;!    _TimerTick->_TimersHandler
;!    _TimersHandler->i2___wmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_LeerSensLinea
;!    _loop->_testeo_US
;!    _testeo_US->_printf
;!    _testeo_CNY->_displayByte
;!    _Display7Seg->___awdiv
;!    _Inicializar->_printf
;!    _set_motor_izq->___awdiv
;!    _set_motor_der->___awdiv
;!    _printf->___lwmod
;!    ___lwmod->___lwdiv
;!    _firulete->_displayByte
;!    _beep->_StartTimer
;!    _ResetTimers->___wmul
;!
;!Critical Paths under _interruptsHandler in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_loop
;!    _testeo_US->_printf
;!    _Inicializar->_printf
;!
;!Critical Paths under _interruptsHandler in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _interruptsHandler in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _interruptsHandler in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _interruptsHandler in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _interruptsHandler in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _interruptsHandler in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _interruptsHandler in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0   41796
;!                        _Display7Seg
;!                        _Inicializar
;!                      _LeerSensLinea
;!                               _loop
;! ---------------------------------------------------------------------------------
;! (1) _loop                                               134   134      0   23113
;!                                             40 BANK0      2     2      0
;!                                             13 BANK1    132   132      0
;!                        _Display7Seg
;!                         _StartTimer
;!                          _StopTimer
;!                       _TimerIsReady
;!                               _beep
;!                        _displayByte
;!                           _firulete
;!                      _set_motor_der
;!                      _set_motor_izq
;!                         _testeo_CNY
;!                          _testeo_US
;! ---------------------------------------------------------------------------------
;! (2) _testeo_US                                            4     4      0    6021
;!                                             36 BANK0      4     4      0
;!                             ___wmul
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (2) _testeo_CNY                                           9     9      0    1066
;!                                             20 BANK0      9     9      0
;!                        _displayByte
;! ---------------------------------------------------------------------------------
;! (2) _Display7Seg                                          5     1      4    3860
;!                                             22 BANK0      5     1      4
;!                         _StartTimer
;!                          _StopTimer
;!                       _TimerIsReady
;!                            ___awdiv
;!                            ___awmod
;!                        _displayByte
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              6     2      4     424
;!                                             14 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _StopTimer                                            1     1      0      22
;!                                             14 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _LeerSensLinea                                       29    29      0     732
;!                                             14 BANK0     29    29      0
;! ---------------------------------------------------------------------------------
;! (1) _Inicializar                                          1     1      0   14091
;!                                             36 BANK0      1     1      0
;!                     _ConfigurarGPIO
;!                    _Configurar_Duty
;!          _Configurar_Interrupciones
;!                     _Configurar_PWM
;!                  _Configurar_Timer0
;!                  _Configurar_Timer1
;!                  _Configurar_Timer2
;!                    _Configurar_UART
;!                        _ResetTimers
;!                               _beep
;!                           _firulete
;!                             _printf
;!                      _set_motor_der
;!                      _set_motor_izq
;! ---------------------------------------------------------------------------------
;! (2) _set_motor_izq                                        3     1      2    1395
;!                                             22 BANK0      3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (2) _set_motor_der                                        3     1      2    1395
;!                                             22 BANK0      3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     684
;!                                             14 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (3) _printf                                              27    21      6    4241
;!                                             26 BANK0     10     4      6
;!                                              0 BANK1     13    13      0
;!                            ___lwdiv
;!                            ___lwmod
;!                             ___wmul
;!                            _isdigit
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      31
;!                                             14 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (4) _isdigit                                              3     3      0      99
;!                                             14 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     386
;!                                             21 BANK0      5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     395
;!                                             14 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (2) _firulete                                             8     7      1    2624
;!                                             20 BANK0      8     7      1
;!                         _StartTimer
;!                       _TimerIsReady
;!                        _displayByte
;! ---------------------------------------------------------------------------------
;! (3) _displayByte                                          6     6      0     906
;!                                             14 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) _beep                                                 3     2      1    1992
;!                                             17 BANK0      3     2      1
;!                         _StartTimer
;!                       _TimerIsReady
;! ---------------------------------------------------------------------------------
;! (3) _TimerIsReady                                         2     2      0      44
;!                                             14 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (3) _StartTimer                                           3     1      2    1346
;!                                             14 BANK0      3     1      2
;! ---------------------------------------------------------------------------------
;! (2) _ResetTimers                                          2     2      0    1712
;!                                             20 BANK0      2     2      0
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (4) ___wmul                                               6     2      4    1582
;!                                             14 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) _Configurar_UART                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Configurar_Timer2                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Configurar_Timer1                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Configurar_Timer0                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Configurar_PWM                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Configurar_Interrupciones                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Configurar_Duty                                      5     3      2     261
;!                                             14 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _ConfigurarGPIO                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _interruptsHandler                                   14    14      0    1629
;!                                              0 BANK0     14    14      0
;!                   _LecturaFlancosUS
;!                          _TimerTick
;! ---------------------------------------------------------------------------------
;! (6) _TimerTick                                            0     0      0     573
;!                      _TimersHandler
;! ---------------------------------------------------------------------------------
;! (7) _TimersHandler                                        4     4      0     573
;!                                              6 COMRAM     4     4      0
;!                           i2___wmul
;! ---------------------------------------------------------------------------------
;! (8) i2___wmul                                             6     2      4     417
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (6) _LecturaFlancosUS                                    89    89      0    1056
;!                                              0 COMRAM    89    89      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Display7Seg
;!     _StartTimer
;!     _StopTimer
;!     _TimerIsReady
;!     ___awdiv
;!     ___awmod
;!     _displayByte
;!   _Inicializar
;!     _ConfigurarGPIO
;!     _Configurar_Duty
;!     _Configurar_Interrupciones
;!     _Configurar_PWM
;!     _Configurar_Timer0
;!     _Configurar_Timer1
;!     _Configurar_Timer2
;!     _Configurar_UART
;!     _ResetTimers
;!       ___wmul
;!     _beep
;!       _StartTimer
;!       _TimerIsReady
;!     _firulete
;!       _StartTimer
;!       _TimerIsReady
;!       _displayByte
;!     _printf
;!       ___lwdiv
;!       ___lwmod
;!         ___lwdiv (ARG)
;!       ___wmul
;!       _isdigit
;!       _putch
;!     _set_motor_der
;!       ___awdiv
;!     _set_motor_izq
;!       ___awdiv
;!   _LeerSensLinea
;!   _loop
;!     _Display7Seg
;!       _StartTimer
;!       _StopTimer
;!       _TimerIsReady
;!       ___awdiv
;!       ___awmod
;!       _displayByte
;!     _StartTimer
;!     _StopTimer
;!     _TimerIsReady
;!     _beep
;!       _StartTimer
;!       _TimerIsReady
;!     _displayByte
;!     _firulete
;!       _StartTimer
;!       _TimerIsReady
;!       _displayByte
;!     _set_motor_der
;!       ___awdiv
;!     _set_motor_izq
;!       ___awdiv
;!     _testeo_CNY
;!       _displayByte
;!     _testeo_US
;!       ___wmul
;!       _printf
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!         ___wmul
;!         _isdigit
;!         _putch
;!
;! _interruptsHandler (ROOT)
;!   _LecturaFlancosUS
;!   _TimerTick
;!     _TimersHandler
;!       i2___wmul
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
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     91      A0       7       62.5%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     2B      8E       5       88.8%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     59      5D       1       97.9%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     18B      20        0.0%
;!DATA                 0      0     18B       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 58 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
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
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Display7Seg
;;		_Inicializar
;;		_LeerSensLinea
;;		_loop
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
	line	58
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
	line	58
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 23
	line	60
	
l7192:
	call	_Inicializar	;wreg free
	line	61
	
l7194:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((_s1+1))&0ffh
	movlw	low(0)
	movwf	((_s1))&0ffh
	
l7196:; BSR set to: 1

	movlw	high(0)
	movlb	1	; () banked
	movwf	((_s2+1))&0ffh
	movlw	low(0)
	movwf	((_s2))&0ffh
	
l7198:; BSR set to: 1

	movlw	high(0)
	movlb	1	; () banked
	movwf	((_f1+1))&0ffh
	movlw	low(0)
	movwf	((_f1))&0ffh
	
l7200:; BSR set to: 1

	movlw	high(0)
	movlb	1	; () banked
	movwf	((_f2+1))&0ffh
	movlw	low(0)
	movwf	((_f2))&0ffh
	line	64
	
l89:
	line	67
	movlw	high(0)
	movlb	0	; () banked
	movwf	((Display7Seg@n+1))&0ffh
	movlw	low(0)
	movwf	((Display7Seg@n))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	((Display7Seg@time+1))&0ffh
	movlw	low(0)
	movwf	((Display7Seg@time))&0ffh
	call	_Display7Seg	;wreg free
	line	68
	
l7202:
	call	_LeerSensLinea	;wreg free
	line	69
	
l7204:
	call	_loop	;wreg free
	goto	l89
	line	70
	
l90:
	line	64
	goto	l89
	
l91:
	line	71
	
l92:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_loop

;; *************** function _loop *****************
;; Defined at:
;;		line 73 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0     132       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       2     132       0       0       0       0       0       0
;;Total ram usage:      134 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Display7Seg
;;		_StartTimer
;;		_StopTimer
;;		_TimerIsReady
;;		_beep
;;		_displayByte
;;		_firulete
;;		_set_motor_der
;;		_set_motor_izq
;;		_testeo_CNY
;;		_testeo_US
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	line	73
global __ptext1
__ptext1:
psect	text1
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
	line	73
	global	__size_of_loop
	__size_of_loop	equ	__end_of_loop-_loop
	
_loop:
;incstack = 0
	opt	stack 23
	line	82
	
l6792:
	movlw	high(03E8h)
	movlb	0	; () banked
	movwf	((set_motor_izq@duty+1))&0ffh
	movlw	low(03E8h)
	movwf	((set_motor_izq@duty))&0ffh
	call	_set_motor_izq	;wreg free
	line	83
	movlw	high(03E8h)
	movlb	0	; () banked
	movwf	((set_motor_der@duty+1))&0ffh
	movlw	low(03E8h)
	movwf	((set_motor_der@duty))&0ffh
	call	_set_motor_der	;wreg free
	goto	l103
	line	104
	
l6794:
	goto	l103
	line	105
	
l6796:
	goto	l7190
	line	107
	
l105:
	line	108
	
l6798:
	movlw	high(-500)
	movlb	1	; () banked
	movwf	((loop@vel_izq+1))&0ffh
	movlw	low(-500)
	movwf	((loop@vel_izq))&0ffh
	line	109
	movlw	high(01F4h)
	movlb	1	; () banked
	movwf	((loop@vel_der+1))&0ffh
	movlw	low(01F4h)
	movwf	((loop@vel_der))&0ffh
	line	110
	
l6800:; BSR set to: 1

	movlw	high(01F4h)
	movlb	0	; () banked
	movwf	((StartTimer@value+1))&0ffh
	movlw	low(01F4h)
	movwf	((StartTimer@value))&0ffh
	movlw	(0Ah)&0ffh
	
	call	_StartTimer
	line	111
	
l6802:
	movlw	high(01F4h)
	movlb	0	; () banked
	movwf	((StartTimer@value+1))&0ffh
	movlw	low(01F4h)
	movwf	((StartTimer@value))&0ffh
	movlw	(04h)&0ffh
	
	call	_StartTimer
	line	112
	
l6804:
	movlw	high(07Bh)
	movlb	0	; () banked
	movwf	((Display7Seg@n+1))&0ffh
	movlw	low(07Bh)
	movwf	((Display7Seg@n))&0ffh
	movlw	high(015Eh)
	movlb	0	; () banked
	movwf	((Display7Seg@time+1))&0ffh
	movlw	low(015Eh)
	movwf	((Display7Seg@time))&0ffh
	call	_Display7Seg	;wreg free
	line	113
	
l6806:
	movlw	high(04h)
	movlb	1	; () banked
	movwf	((loop@i+1))&0ffh
	movlw	low(04h)
	movwf	((loop@i))&0ffh
	line	115
	
l6808:; BSR set to: 1

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((loop@Estado))&0ffh
	line	116
	goto	l103
	line	118
	
l107:; BSR set to: 1

	line	119
	
l6810:; BSR set to: 1

	movlw	(0Ah)&0ffh
	
	call	_TimerIsReady
	iorlw	0
	btfsc	status,2
	goto	u9931
	goto	u9930
u9931:
	goto	l6850
u9930:
	line	121
	
l6812:
	movlw	high(064h)
	movlb	0	; () banked
	movwf	((StartTimer@value+1))&0ffh
	movlw	low(064h)
	movwf	((StartTimer@value))&0ffh
	movlw	(0Ah)&0ffh
	
	call	_StartTimer
	line	123
	goto	l134
	
l6814:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u9941
	goto	u9940
u9941:
	bsf	c:(31826/8),(31826)&7	;volatile
	goto	u9955
u9940:
	bcf	c:(31826/8),(31826)&7	;volatile
u9955:
	goto	l6838
	
l110:
	goto	l134
	
l6816:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u9961
	goto	u9960
u9961:
	bsf	c:(31824/8),(31824)&7	;volatile
	goto	u9975
u9960:
	bcf	c:(31824/8),(31824)&7	;volatile
u9975:
	goto	l6838
	
l114:
	goto	l134
	
l6818:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u9981
	goto	u9980
u9981:
	bsf	c:(31830/8),(31830)&7	;volatile
	goto	u9995
u9980:
	bcf	c:(31830/8),(31830)&7	;volatile
u9995:
	goto	l6838
	
l118:
	goto	l134
	
l6820:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10001
	goto	u10000
u10001:
	bsf	c:(31829/8),(31829)&7	;volatile
	goto	u10015
u10000:
	bcf	c:(31829/8),(31829)&7	;volatile
u10015:
	goto	l6838
	
l122:
	goto	l134
	
l6822:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10021
	goto	u10020
u10021:
	bsf	c:(31828/8),(31828)&7	;volatile
	goto	u10035
u10020:
	bcf	c:(31828/8),(31828)&7	;volatile
u10035:
	goto	l6838
	
l126:
	goto	l134
	
l6824:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10041
	goto	u10040
u10041:
	bsf	c:(31827/8),(31827)&7	;volatile
	goto	u10055
u10040:
	bcf	c:(31827/8),(31827)&7	;volatile
u10055:
	goto	l6838
	
l130:
	goto	l134
	
l6826:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10061
	goto	u10060
u10061:
	bsf	c:(31825/8),(31825)&7	;volatile
	goto	u10075
u10060:
	bcf	c:(31825/8),(31825)&7	;volatile
u10075:
	goto	l6838
	
l134:
	btg	c:(31831/8),(31831)&7	;volatile
	goto	l6838
	
l138:
	goto	l6838
	
l6828:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10081
	goto	u10080
u10081:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10098
u10080:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10098:
	movlb	0	; () banked
	swapf	(??_loop+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_loop+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_loop+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	goto	l6838
	
l142:; BSR set to: 0

	goto	l6838
	
l6830:; BSR set to: 0

	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10101
	goto	u10100
u10101:
	bsf	c:(31847/8),(31847)&7	;volatile
	goto	u10115
u10100:
	bcf	c:(31847/8),(31847)&7	;volatile
u10115:
	goto	l6838
	
l146:
	goto	l6838
	
l6832:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10121
	goto	u10120
u10121:
	bsf	c:(31846/8),(31846)&7	;volatile
	goto	u10135
u10120:
	bcf	c:(31846/8),(31846)&7	;volatile
u10135:
	goto	l6838
	
l150:
	goto	l6838
	
l6834:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10141
	goto	u10140
u10141:
	bsf	c:(31843/8),(31843)&7	;volatile
	goto	u10155
u10140:
	bcf	c:(31843/8),(31843)&7	;volatile
u10155:
	goto	l6838
	
l154:
	goto	l6838
	
l6836:
	btfss	c:(31831/8),(31831)&7	;volatile
	goto	u10161
	goto	u10160
u10161:
	bsf	c:(31842/8),(31842)&7	;volatile
	goto	u10175
u10160:
	bcf	c:(31842/8),(31842)&7	;volatile
u10175:
	goto	l6838
	
l158:
	goto	l6838
	
l160:
	goto	l6838
	
l156:
	goto	l6838
	
l152:
	goto	l6838
	
l148:
	goto	l6838
	
l144:
	goto	l6838
	
l140:
	goto	l6838
	
l136:
	goto	l6838
	
l132:
	goto	l6838
	
l128:
	goto	l6838
	
l124:
	goto	l6838
	
l120:
	goto	l6838
	
l116:
	goto	l6838
	
l112:
	line	124
	
l6838:
	call	_testeo_CNY	;wreg free
	line	125
	call	_testeo_US	;wreg free
	goto	l6850
	line	128
	
l108:
	line	130
	goto	l6850
	
l6840:
	movlw	high(0FFh)
	movlb	1	; () banked
	movwf	((_loop$594+1))&0ffh
	setf	((_loop$594))&0ffh
	goto	l6844
	
l205:; BSR set to: 1

	
l6842:; BSR set to: 1

	btfsc	((c:3968)),c,1	;volatile
	goto	u10181
	goto	u10180
u10181:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10188
u10180:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10188:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$594))&0ffh
	clrf	((_loop$594+1))&0ffh
	goto	l6844
	
l207:; BSR set to: 1

	
l6844:; BSR set to: 1

	movff	(_loop$594),(_loop$593)
	movff	(_loop$594+1),(_loop$593+1)
	goto	l6848
	
l201:; BSR set to: 1

	
l6846:; BSR set to: 1

	btfsc	((c:3968)),c,2	;volatile
	goto	u10191
	goto	u10190
u10191:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10198
u10190:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10198:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$593))&0ffh
	clrf	((_loop$593+1))&0ffh
	goto	l6848
	
l203:; BSR set to: 1

	
l6848:; BSR set to: 1

	movff	(_loop$593),(_loop$592)
	movff	(_loop$593+1),(_loop$592+1)
	goto	l6852
	
l197:; BSR set to: 1

	
l6850:
	btfsc	((c:3968)),c,0	;volatile
	goto	u10201
	goto	u10200
u10201:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10208
u10200:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10208:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$592))&0ffh
	clrf	((_loop$592+1))&0ffh
	goto	l6852
	
l199:; BSR set to: 1

	
l6852:; BSR set to: 1

	movff	(_loop$592),(_loop$591)
	movff	(_loop$592+1),(_loop$591+1)
	goto	l6856
	
l193:; BSR set to: 1

	
l6854:; BSR set to: 1

	btfsc	((c:3970)),c,4	;volatile
	goto	u10211
	goto	u10210
u10211:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10218
u10210:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10218:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$591))&0ffh
	clrf	((_loop$591+1))&0ffh
	goto	l6856
	
l195:; BSR set to: 1

	
l6856:; BSR set to: 1

	movff	(_loop$591),(_loop$590)
	movff	(_loop$591+1),(_loop$590+1)
	goto	l6860
	
l189:; BSR set to: 1

	
l6858:; BSR set to: 1

	btfsc	((c:3970)),c,5	;volatile
	goto	u10221
	goto	u10220
u10221:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10228
u10220:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10228:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$590))&0ffh
	clrf	((_loop$590+1))&0ffh
	goto	l6860
	
l191:; BSR set to: 1

	
l6860:; BSR set to: 1

	movff	(_loop$590),(_loop$589)
	movff	(_loop$590+1),(_loop$589+1)
	goto	l6864
	
l185:; BSR set to: 1

	
l6862:; BSR set to: 1

	btfsc	((c:3971)),c,4	;volatile
	goto	u10231
	goto	u10230
u10231:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10238
u10230:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10238:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$589))&0ffh
	clrf	((_loop$589+1))&0ffh
	goto	l6864
	
l187:; BSR set to: 1

	
l6864:; BSR set to: 1

	movff	(_loop$589),(_loop$588)
	movff	(_loop$589+1),(_loop$588+1)
	goto	l6868
	
l181:; BSR set to: 1

	
l6866:; BSR set to: 1

	btfsc	((c:3971)),c,5	;volatile
	goto	u10241
	goto	u10240
u10241:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10248
u10240:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10248:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$588))&0ffh
	clrf	((_loop$588+1))&0ffh
	goto	l6868
	
l183:; BSR set to: 1

	
l6868:; BSR set to: 1

	movff	(_loop$588),(_loop$587)
	movff	(_loop$588+1),(_loop$587+1)
	goto	l6872
	
l177:; BSR set to: 1

	
l6870:; BSR set to: 1

	btfsc	((c:3972)),c,2	;volatile
	goto	u10251
	goto	u10250
u10251:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10258
u10250:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10258:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$587))&0ffh
	clrf	((_loop$587+1))&0ffh
	goto	l6872
	
l179:; BSR set to: 1

	
l6872:; BSR set to: 1

	movff	(_loop$587),(_loop$586)
	movff	(_loop$587+1),(_loop$586+1)
	goto	l6876
	
l173:; BSR set to: 1

	
l6874:; BSR set to: 1

	btfsc	((c:3968)),c,5	;volatile
	goto	u10261
	goto	u10260
u10261:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10268
u10260:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10268:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$586))&0ffh
	clrf	((_loop$586+1))&0ffh
	goto	l6876
	
l175:; BSR set to: 1

	
l6876:; BSR set to: 1

	movff	(_loop$586),(_loop$585)
	movff	(_loop$586+1),(_loop$585+1)
	goto	l6880
	
l169:; BSR set to: 1

	
l6878:; BSR set to: 1

	btfsc	((c:3972)),c,0	;volatile
	goto	u10271
	goto	u10270
u10271:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10278
u10270:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10278:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$585))&0ffh
	clrf	((_loop$585+1))&0ffh
	goto	l6880
	
l171:; BSR set to: 1

	
l6880:; BSR set to: 1

	movff	(_loop$585),(_loop$584)
	movff	(_loop$585+1),(_loop$584+1)
	goto	l6884
	
l165:; BSR set to: 1

	
l6882:; BSR set to: 1

	btfsc	((c:3972)),c,1	;volatile
	goto	u10281
	goto	u10280
u10281:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10288
u10280:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10288:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$584))&0ffh
	clrf	((_loop$584+1))&0ffh
	goto	l6884
	
l167:; BSR set to: 1

	
l6884:; BSR set to: 1

	movlb	1	; () banked
	movf	((_loop$584))&0ffh,w
	movlb	1	; () banked
iorwf	((_loop$584+1))&0ffh,w
	btfsc	status,2
	goto	u10291
	goto	u10290

u10291:
	goto	l6934
u10290:
	goto	l6890
	
l6886:; BSR set to: 1

	goto	l6890
	
l6888:; BSR set to: 1

	movlw	high(0FFh)
	movlb	1	; () banked
	movwf	((_loop$605+1))&0ffh
	setf	((_loop$605))&0ffh
	goto	l6892
	
l249:; BSR set to: 1

	
l6890:; BSR set to: 1

	btfsc	((c:3968)),c,1	;volatile
	goto	u10301
	goto	u10300
u10301:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10308
u10300:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10308:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$605))&0ffh
	clrf	((_loop$605+1))&0ffh
	goto	l6892
	
l251:; BSR set to: 1

	
l6892:; BSR set to: 1

	movff	(_loop$605),(_loop$604)
	movff	(_loop$605+1),(_loop$604+1)
	goto	l6896
	
l245:; BSR set to: 1

	
l6894:; BSR set to: 1

	btfsc	((c:3968)),c,2	;volatile
	goto	u10311
	goto	u10310
u10311:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10318
u10310:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10318:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$604))&0ffh
	clrf	((_loop$604+1))&0ffh
	goto	l6896
	
l247:; BSR set to: 1

	
l6896:; BSR set to: 1

	movff	(_loop$604),(_loop$603)
	movff	(_loop$604+1),(_loop$603+1)
	goto	l6900
	
l241:; BSR set to: 1

	
l6898:; BSR set to: 1

	btfsc	((c:3968)),c,0	;volatile
	goto	u10321
	goto	u10320
u10321:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10328
u10320:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10328:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$603))&0ffh
	clrf	((_loop$603+1))&0ffh
	goto	l6900
	
l243:; BSR set to: 1

	
l6900:; BSR set to: 1

	movff	(_loop$603),(_loop$602)
	movff	(_loop$603+1),(_loop$602+1)
	goto	l6904
	
l237:; BSR set to: 1

	
l6902:; BSR set to: 1

	btfsc	((c:3970)),c,4	;volatile
	goto	u10331
	goto	u10330
u10331:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10338
u10330:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10338:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$602))&0ffh
	clrf	((_loop$602+1))&0ffh
	goto	l6904
	
l239:; BSR set to: 1

	
l6904:; BSR set to: 1

	movff	(_loop$602),(_loop$601)
	movff	(_loop$602+1),(_loop$601+1)
	goto	l6908
	
l233:; BSR set to: 1

	
l6906:; BSR set to: 1

	btfsc	((c:3970)),c,5	;volatile
	goto	u10341
	goto	u10340
u10341:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10348
u10340:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10348:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$601))&0ffh
	clrf	((_loop$601+1))&0ffh
	goto	l6908
	
l235:; BSR set to: 1

	
l6908:; BSR set to: 1

	movff	(_loop$601),(_loop$600)
	movff	(_loop$601+1),(_loop$600+1)
	goto	l6912
	
l229:; BSR set to: 1

	
l6910:; BSR set to: 1

	btfsc	((c:3971)),c,4	;volatile
	goto	u10351
	goto	u10350
u10351:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10358
u10350:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10358:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$600))&0ffh
	clrf	((_loop$600+1))&0ffh
	goto	l6912
	
l231:; BSR set to: 1

	
l6912:; BSR set to: 1

	movff	(_loop$600),(_loop$599)
	movff	(_loop$600+1),(_loop$599+1)
	goto	l6916
	
l225:; BSR set to: 1

	
l6914:; BSR set to: 1

	btfsc	((c:3971)),c,5	;volatile
	goto	u10361
	goto	u10360
u10361:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10368
u10360:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10368:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$599))&0ffh
	clrf	((_loop$599+1))&0ffh
	goto	l6916
	
l227:; BSR set to: 1

	
l6916:; BSR set to: 1

	movff	(_loop$599),(_loop$598)
	movff	(_loop$599+1),(_loop$598+1)
	goto	l6920
	
l221:; BSR set to: 1

	
l6918:; BSR set to: 1

	btfsc	((c:3972)),c,2	;volatile
	goto	u10371
	goto	u10370
u10371:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10378
u10370:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10378:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$598))&0ffh
	clrf	((_loop$598+1))&0ffh
	goto	l6920
	
l223:; BSR set to: 1

	
l6920:; BSR set to: 1

	movff	(_loop$598),(_loop$597)
	movff	(_loop$598+1),(_loop$597+1)
	goto	l6924
	
l217:; BSR set to: 1

	
l6922:; BSR set to: 1

	btfsc	((c:3968)),c,5	;volatile
	goto	u10381
	goto	u10380
u10381:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10388
u10380:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10388:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$597))&0ffh
	clrf	((_loop$597+1))&0ffh
	goto	l6924
	
l219:; BSR set to: 1

	
l6924:; BSR set to: 1

	movff	(_loop$597),(_loop$596)
	movff	(_loop$597+1),(_loop$596+1)
	goto	l6928
	
l213:; BSR set to: 1

	
l6926:; BSR set to: 1

	btfsc	((c:3972)),c,0	;volatile
	goto	u10391
	goto	u10390
u10391:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10398
u10390:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10398:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$596))&0ffh
	clrf	((_loop$596+1))&0ffh
	goto	l6928
	
l215:; BSR set to: 1

	
l6928:; BSR set to: 1

	movff	(_loop$596),(_loop$595)
	movff	(_loop$596+1),(_loop$595+1)
	goto	l6932
	
l209:; BSR set to: 1

	
l6930:; BSR set to: 1

	btfsc	((c:3972)),c,1	;volatile
	goto	u10401
	goto	u10400
u10401:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10408
u10400:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10408:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$595))&0ffh
	clrf	((_loop$595+1))&0ffh
	goto	l6932
	
l211:; BSR set to: 1

	
l6932:; BSR set to: 1

	movlb	1	; () banked
	movf	((_loop$595))&0ffh,w
	movlb	1	; () banked
iorwf	((_loop$595+1))&0ffh,w
	btfss	status,2
	goto	u10411
	goto	u10410

u10411:
	goto	l6942
u10410:
	goto	l6934
	
l163:; BSR set to: 1

	line	132
	
l6934:; BSR set to: 1

	movlw	low(02h)
	movlb	0	; () banked
	movwf	((beep@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_beep
	goto	l6942
	line	133
	
l161:
	line	135
	goto	l6942
	
l6936:
	movlw	high(0FFh)
	movlb	1	; () banked
	movwf	((_loop$616+1))&0ffh
	setf	((_loop$616))&0ffh
	goto	l6940
	
l294:; BSR set to: 1

	
l6938:; BSR set to: 1

	btfsc	((c:3968)),c,1	;volatile
	goto	u10421
	goto	u10420
u10421:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10428
u10420:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10428:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$616))&0ffh
	clrf	((_loop$616+1))&0ffh
	goto	l6940
	
l296:; BSR set to: 1

	
l6940:; BSR set to: 1

	movff	(_loop$616),(_loop$615)
	movff	(_loop$616+1),(_loop$615+1)
	goto	l6944
	
l290:; BSR set to: 1

	
l6942:
	btfsc	((c:3968)),c,2	;volatile
	goto	u10431
	goto	u10430
u10431:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10438
u10430:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10438:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$615))&0ffh
	clrf	((_loop$615+1))&0ffh
	goto	l6944
	
l292:; BSR set to: 1

	
l6944:; BSR set to: 1

	movff	(_loop$615),(_loop$614)
	movff	(_loop$615+1),(_loop$614+1)
	goto	l6948
	
l286:; BSR set to: 1

	
l6946:; BSR set to: 1

	btfsc	((c:3968)),c,0	;volatile
	goto	u10441
	goto	u10440
u10441:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10448
u10440:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10448:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$614))&0ffh
	clrf	((_loop$614+1))&0ffh
	goto	l6948
	
l288:; BSR set to: 1

	
l6948:; BSR set to: 1

	movff	(_loop$614),(_loop$613)
	movff	(_loop$614+1),(_loop$613+1)
	goto	l6952
	
l282:; BSR set to: 1

	
l6950:; BSR set to: 1

	btfsc	((c:3970)),c,4	;volatile
	goto	u10451
	goto	u10450
u10451:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10458
u10450:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10458:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$613))&0ffh
	clrf	((_loop$613+1))&0ffh
	goto	l6952
	
l284:; BSR set to: 1

	
l6952:; BSR set to: 1

	movff	(_loop$613),(_loop$612)
	movff	(_loop$613+1),(_loop$612+1)
	goto	l6956
	
l278:; BSR set to: 1

	
l6954:; BSR set to: 1

	btfsc	((c:3970)),c,5	;volatile
	goto	u10461
	goto	u10460
u10461:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10468
u10460:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10468:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$612))&0ffh
	clrf	((_loop$612+1))&0ffh
	goto	l6956
	
l280:; BSR set to: 1

	
l6956:; BSR set to: 1

	movff	(_loop$612),(_loop$611)
	movff	(_loop$612+1),(_loop$611+1)
	goto	l6960
	
l274:; BSR set to: 1

	
l6958:; BSR set to: 1

	btfsc	((c:3971)),c,4	;volatile
	goto	u10471
	goto	u10470
u10471:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10478
u10470:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10478:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$611))&0ffh
	clrf	((_loop$611+1))&0ffh
	goto	l6960
	
l276:; BSR set to: 1

	
l6960:; BSR set to: 1

	movff	(_loop$611),(_loop$610)
	movff	(_loop$611+1),(_loop$610+1)
	goto	l6964
	
l270:; BSR set to: 1

	
l6962:; BSR set to: 1

	btfsc	((c:3971)),c,5	;volatile
	goto	u10481
	goto	u10480
u10481:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10488
u10480:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10488:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$610))&0ffh
	clrf	((_loop$610+1))&0ffh
	goto	l6964
	
l272:; BSR set to: 1

	
l6964:; BSR set to: 1

	movff	(_loop$610),(_loop$609)
	movff	(_loop$610+1),(_loop$609+1)
	goto	l6968
	
l266:; BSR set to: 1

	
l6966:; BSR set to: 1

	btfsc	((c:3972)),c,2	;volatile
	goto	u10491
	goto	u10490
u10491:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10498
u10490:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10498:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$609))&0ffh
	clrf	((_loop$609+1))&0ffh
	goto	l6968
	
l268:; BSR set to: 1

	
l6968:; BSR set to: 1

	movff	(_loop$609),(_loop$608)
	movff	(_loop$609+1),(_loop$608+1)
	goto	l6972
	
l262:; BSR set to: 1

	
l6970:; BSR set to: 1

	btfsc	((c:3968)),c,5	;volatile
	goto	u10501
	goto	u10500
u10501:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10508
u10500:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10508:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$608))&0ffh
	clrf	((_loop$608+1))&0ffh
	goto	l6972
	
l264:; BSR set to: 1

	
l6972:; BSR set to: 1

	movff	(_loop$608),(_loop$607)
	movff	(_loop$608+1),(_loop$607+1)
	goto	l6976
	
l258:; BSR set to: 1

	
l6974:; BSR set to: 1

	btfsc	((c:3972)),c,0	;volatile
	goto	u10511
	goto	u10510
u10511:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10518
u10510:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10518:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$607))&0ffh
	clrf	((_loop$607+1))&0ffh
	goto	l6976
	
l260:; BSR set to: 1

	
l6976:; BSR set to: 1

	movff	(_loop$607),(_loop$606)
	movff	(_loop$607+1),(_loop$606+1)
	goto	l6980
	
l254:; BSR set to: 1

	
l6978:; BSR set to: 1

	btfsc	((c:3972)),c,1	;volatile
	goto	u10521
	goto	u10520
u10521:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10528
u10520:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10528:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$606))&0ffh
	clrf	((_loop$606+1))&0ffh
	goto	l6980
	
l256:; BSR set to: 1

	
l6980:; BSR set to: 1

	movlb	1	; () banked
	movf	((_loop$606))&0ffh,w
	movlb	1	; () banked
iorwf	((_loop$606+1))&0ffh,w
	btfss	status,2
	goto	u10531
	goto	u10530

u10531:
	goto	l103
u10530:
	line	137
	
l6982:; BSR set to: 1

	movlw	(0Ah)&0ffh
	
	call	_StopTimer
	line	138
	movlw	high(0)
	movlb	0	; () banked
	movwf	((StartTimer@value+1))&0ffh
	movlw	low(0)
	movwf	((StartTimer@value))&0ffh
	movlw	(06h)&0ffh
	
	call	_StartTimer
	line	139
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((beep@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_beep
	line	140
	
l6984:
	movlw	high(05h)
	movlb	1	; () banked
	movwf	((loop@i+1))&0ffh
	movlw	low(05h)
	movwf	((loop@i))&0ffh
	line	141
	
l6986:; BSR set to: 1

	movlw	low(02h)
	movlb	1	; () banked
	movwf	((loop@Estado))&0ffh
	goto	l103
	line	142
	
l252:; BSR set to: 1

	line	143
	goto	l103
	line	145
	
l297:; BSR set to: 1

	line	146
	
l6988:; BSR set to: 1

	movlw	(06h)&0ffh
	
	call	_TimerIsReady
	iorlw	0
	btfsc	status,2
	goto	u10541
	goto	u10540
u10541:
	goto	l103
u10540:
	line	148
	
l6990:
	movlw	high(03D4h)
	movlb	0	; () banked
	movwf	((StartTimer@value+1))&0ffh
	movlw	low(03D4h)
	movwf	((StartTimer@value))&0ffh
	movlw	(06h)&0ffh
	
	call	_StartTimer
	line	149
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((beep@n))&0ffh
	movlw	(08h)&0ffh
	
	call	_beep
	line	150
	
l6992:
	movlw	low((_BCD_TABLE))
	movlb	1	; () banked
	addwf	((loop@i))&0ffh,w
	movwf	tblptrl
	movlw	high((_BCD_TABLE))
	addwfc	((loop@i+1))&0ffh,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_displayByte
	line	151
	
l6994:
	movlb	1	; () banked
	movf	((loop@i))&0ffh,w
	movlb	1	; () banked
iorwf	((loop@i+1))&0ffh,w
	btfss	status,2
	goto	u10551
	goto	u10550

u10551:
	goto	l7002
u10550:
	line	153
	
l6996:; BSR set to: 1

	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((StartTimer@value+1))&0ffh
	movlw	low(0Ah)
	movwf	((StartTimer@value))&0ffh
	movlw	(07h)&0ffh
	
	call	_StartTimer
	line	154
	
l6998:
	movlw	(040h)&0ffh
	
	call	_displayByte
	line	156
	
l7000:
	movlw	low(04h)
	movlb	1	; () banked
	movwf	((loop@Estado))&0ffh
	goto	l7002
	line	157
	
l299:; BSR set to: 1

	line	158
	
l7002:; BSR set to: 1

	movlb	1	; () banked
	decf	((loop@i))&0ffh
	btfss	status,0
	decf	((loop@i+1))&0ffh
	goto	l103
	line	159
	
l298:; BSR set to: 1

	line	160
	goto	l103
	line	162
	
l300:; BSR set to: 1

	line	167
	
l7004:; BSR set to: 1

	movlw	(07h)&0ffh
	
	call	_TimerIsReady
	iorlw	0
	btfsc	status,2
	goto	u10561
	goto	u10560
u10561:
	goto	l7026
u10560:
	line	169
	
l7006:
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((StartTimer@value+1))&0ffh
	movlw	low(0Ah)
	movwf	((StartTimer@value))&0ffh
	movlw	(07h)&0ffh
	
	call	_StartTimer
	line	171
	
l7008:
	movlw	0Ah
	movlb	1	; () banked
	addwf	((loop@vel_izq))&0ffh
	movlw	0
	addwfc	((loop@vel_izq+1))&0ffh
	line	172
	
l7010:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((loop@vel_izq+1))&0ffh,7
	goto	u10571
	movlw	232
	movlb	1	; () banked
	subwf	 ((loop@vel_izq))&0ffh,w
	movlw	3
	movlb	1	; () banked
	subwfb	((loop@vel_izq+1))&0ffh,w
	btfss	status,0
	goto	u10571
	goto	u10570

u10571:
	goto	l7014
u10570:
	line	173
	
l7012:; BSR set to: 1

	movlw	high(-1000)
	movlb	1	; () banked
	movwf	((loop@vel_izq+1))&0ffh
	movlw	low(-1000)
	movwf	((loop@vel_izq))&0ffh
	goto	l7014
	
l302:; BSR set to: 1

	line	175
	
l7014:; BSR set to: 1

	movlw	0Ah
	movlb	1	; () banked
	addwf	((loop@vel_der))&0ffh
	movlw	0
	addwfc	((loop@vel_der+1))&0ffh
	line	176
	
l7016:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((loop@vel_der+1))&0ffh,7
	goto	u10581
	movlw	232
	movlb	1	; () banked
	subwf	 ((loop@vel_der))&0ffh,w
	movlw	3
	movlb	1	; () banked
	subwfb	((loop@vel_der+1))&0ffh,w
	btfss	status,0
	goto	u10581
	goto	u10580

u10581:
	goto	l7020
u10580:
	line	177
	
l7018:; BSR set to: 1

	movlw	high(-1000)
	movlb	1	; () banked
	movwf	((loop@vel_der+1))&0ffh
	movlw	low(-1000)
	movwf	((loop@vel_der))&0ffh
	goto	l7020
	
l303:; BSR set to: 1

	line	179
	
l7020:; BSR set to: 1

	movff	(loop@vel_izq),(set_motor_izq@duty)
	movff	(loop@vel_izq+1),(set_motor_izq@duty+1)
	call	_set_motor_izq	;wreg free
	
l7022:
	movff	(loop@vel_der),??_loop+0+0
	movff	(loop@vel_der+1),??_loop+0+0+1
	movlb	0	; () banked
	comf	(??_loop+0+0)&0ffh
	comf	(??_loop+0+1)&0ffh
	infsnz	(??_loop+0+0)&0ffh
	incf	(??_loop+0+1)&0ffh
	movff	??_loop+0+0,(set_motor_der@duty)
	movff	??_loop+0+1,(set_motor_der@duty+1)
	call	_set_motor_der	;wreg free
	goto	l7026
	line	180
	
l301:
	line	182
	goto	l7026
	
l7024:
	movlw	high(0FFh)
	movlb	1	; () banked
	movwf	((_loop$627+1))&0ffh
	setf	((_loop$627))&0ffh
	goto	l7028
	
l346:; BSR set to: 1

	
l7026:
	btfsc	((c:3968)),c,1	;volatile
	goto	u10591
	goto	u10590
u10591:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10598
u10590:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10598:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$627))&0ffh
	clrf	((_loop$627+1))&0ffh
	goto	l7028
	
l348:; BSR set to: 1

	
l7028:; BSR set to: 1

	movff	(_loop$627),(_loop$626)
	movff	(_loop$627+1),(_loop$626+1)
	goto	l7032
	
l342:; BSR set to: 1

	
l7030:; BSR set to: 1

	btfsc	((c:3968)),c,2	;volatile
	goto	u10601
	goto	u10600
u10601:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10608
u10600:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10608:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$626))&0ffh
	clrf	((_loop$626+1))&0ffh
	goto	l7032
	
l344:; BSR set to: 1

	
l7032:; BSR set to: 1

	movff	(_loop$626),(_loop$625)
	movff	(_loop$626+1),(_loop$625+1)
	goto	l7036
	
l338:; BSR set to: 1

	
l7034:; BSR set to: 1

	btfsc	((c:3968)),c,0	;volatile
	goto	u10611
	goto	u10610
u10611:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10618
u10610:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10618:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$625))&0ffh
	clrf	((_loop$625+1))&0ffh
	goto	l7036
	
l340:; BSR set to: 1

	
l7036:; BSR set to: 1

	movff	(_loop$625),(_loop$624)
	movff	(_loop$625+1),(_loop$624+1)
	goto	l7040
	
l334:; BSR set to: 1

	
l7038:; BSR set to: 1

	btfsc	((c:3970)),c,4	;volatile
	goto	u10621
	goto	u10620
u10621:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10628
u10620:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10628:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$624))&0ffh
	clrf	((_loop$624+1))&0ffh
	goto	l7040
	
l336:; BSR set to: 1

	
l7040:; BSR set to: 1

	movff	(_loop$624),(_loop$623)
	movff	(_loop$624+1),(_loop$623+1)
	goto	l7044
	
l330:; BSR set to: 1

	
l7042:; BSR set to: 1

	btfsc	((c:3970)),c,5	;volatile
	goto	u10631
	goto	u10630
u10631:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10638
u10630:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10638:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$623))&0ffh
	clrf	((_loop$623+1))&0ffh
	goto	l7044
	
l332:; BSR set to: 1

	
l7044:; BSR set to: 1

	movff	(_loop$623),(_loop$622)
	movff	(_loop$623+1),(_loop$622+1)
	goto	l7048
	
l326:; BSR set to: 1

	
l7046:; BSR set to: 1

	btfsc	((c:3971)),c,4	;volatile
	goto	u10641
	goto	u10640
u10641:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10648
u10640:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10648:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$622))&0ffh
	clrf	((_loop$622+1))&0ffh
	goto	l7048
	
l328:; BSR set to: 1

	
l7048:; BSR set to: 1

	movff	(_loop$622),(_loop$621)
	movff	(_loop$622+1),(_loop$621+1)
	goto	l7052
	
l322:; BSR set to: 1

	
l7050:; BSR set to: 1

	btfsc	((c:3971)),c,5	;volatile
	goto	u10651
	goto	u10650
u10651:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10658
u10650:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10658:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$621))&0ffh
	clrf	((_loop$621+1))&0ffh
	goto	l7052
	
l324:; BSR set to: 1

	
l7052:; BSR set to: 1

	movff	(_loop$621),(_loop$620)
	movff	(_loop$621+1),(_loop$620+1)
	goto	l7056
	
l318:; BSR set to: 1

	
l7054:; BSR set to: 1

	btfsc	((c:3972)),c,2	;volatile
	goto	u10661
	goto	u10660
u10661:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10668
u10660:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10668:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$620))&0ffh
	clrf	((_loop$620+1))&0ffh
	goto	l7056
	
l320:; BSR set to: 1

	
l7056:; BSR set to: 1

	movff	(_loop$620),(_loop$619)
	movff	(_loop$620+1),(_loop$619+1)
	goto	l7060
	
l314:; BSR set to: 1

	
l7058:; BSR set to: 1

	btfsc	((c:3968)),c,5	;volatile
	goto	u10671
	goto	u10670
u10671:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10678
u10670:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10678:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$619))&0ffh
	clrf	((_loop$619+1))&0ffh
	goto	l7060
	
l316:; BSR set to: 1

	
l7060:; BSR set to: 1

	movff	(_loop$619),(_loop$618)
	movff	(_loop$619+1),(_loop$618+1)
	goto	l7064
	
l310:; BSR set to: 1

	
l7062:; BSR set to: 1

	btfsc	((c:3972)),c,0	;volatile
	goto	u10681
	goto	u10680
u10681:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10688
u10680:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10688:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$618))&0ffh
	clrf	((_loop$618+1))&0ffh
	goto	l7064
	
l312:; BSR set to: 1

	
l7064:; BSR set to: 1

	movff	(_loop$618),(_loop$617)
	movff	(_loop$618+1),(_loop$617+1)
	goto	l7068
	
l306:; BSR set to: 1

	
l7066:; BSR set to: 1

	btfsc	((c:3972)),c,1	;volatile
	goto	u10691
	goto	u10690
u10691:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10698
u10690:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10698:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$617))&0ffh
	clrf	((_loop$617+1))&0ffh
	goto	l7068
	
l308:; BSR set to: 1

	
l7068:; BSR set to: 1

	movlb	1	; () banked
	movf	((_loop$617))&0ffh,w
	movlb	1	; () banked
iorwf	((_loop$617+1))&0ffh,w
	btfss	status,2
	goto	u10701
	goto	u10700

u10701:
	goto	l7086
u10700:
	line	184
	
l7070:; BSR set to: 1

	movlw	019h
	movlb	1	; () banked
	addwf	((loop@vel_izq))&0ffh
	movlw	0
	addwfc	((loop@vel_izq+1))&0ffh
	line	185
	movlw	019h
	movlb	1	; () banked
	addwf	((loop@vel_der))&0ffh
	movlw	0
	addwfc	((loop@vel_der+1))&0ffh
	line	186
	
l7072:; BSR set to: 1

	movff	(loop@vel_izq),(set_motor_izq@duty)
	movff	(loop@vel_izq+1),(set_motor_izq@duty+1)
	call	_set_motor_izq	;wreg free
	
l7074:
	movff	(loop@vel_der),??_loop+0+0
	movff	(loop@vel_der+1),??_loop+0+0+1
	movlb	0	; () banked
	comf	(??_loop+0+0)&0ffh
	comf	(??_loop+0+1)&0ffh
	infsnz	(??_loop+0+0)&0ffh
	incf	(??_loop+0+1)&0ffh
	movff	??_loop+0+0,(set_motor_der@duty)
	movff	??_loop+0+1,(set_motor_der@duty+1)
	call	_set_motor_der	;wreg free
	line	187
	
l7076:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((beep@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_beep
	line	188
	
l7078:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((firulete@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_firulete
	goto	l7086
	line	189
	
l304:
	line	191
	goto	l7086
	
l7080:
	movlw	high(0FFh)
	movlb	1	; () banked
	movwf	((_loop$638+1))&0ffh
	setf	((_loop$638))&0ffh
	goto	l7084
	
l391:; BSR set to: 1

	
l7082:; BSR set to: 1

	btfsc	((c:3968)),c,1	;volatile
	goto	u10711
	goto	u10710
u10711:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10718
u10710:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10718:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$638))&0ffh
	clrf	((_loop$638+1))&0ffh
	goto	l7084
	
l393:; BSR set to: 1

	
l7084:; BSR set to: 1

	movff	(_loop$638),(_loop$637)
	movff	(_loop$638+1),(_loop$637+1)
	goto	l7088
	
l387:; BSR set to: 1

	
l7086:
	btfsc	((c:3968)),c,2	;volatile
	goto	u10721
	goto	u10720
u10721:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10728
u10720:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10728:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$637))&0ffh
	clrf	((_loop$637+1))&0ffh
	goto	l7088
	
l389:; BSR set to: 1

	
l7088:; BSR set to: 1

	movff	(_loop$637),(_loop$636)
	movff	(_loop$637+1),(_loop$636+1)
	goto	l7092
	
l383:; BSR set to: 1

	
l7090:; BSR set to: 1

	btfsc	((c:3968)),c,0	;volatile
	goto	u10731
	goto	u10730
u10731:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10738
u10730:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10738:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$636))&0ffh
	clrf	((_loop$636+1))&0ffh
	goto	l7092
	
l385:; BSR set to: 1

	
l7092:; BSR set to: 1

	movff	(_loop$636),(_loop$635)
	movff	(_loop$636+1),(_loop$635+1)
	goto	l7096
	
l379:; BSR set to: 1

	
l7094:; BSR set to: 1

	btfsc	((c:3970)),c,4	;volatile
	goto	u10741
	goto	u10740
u10741:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10748
u10740:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10748:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$635))&0ffh
	clrf	((_loop$635+1))&0ffh
	goto	l7096
	
l381:; BSR set to: 1

	
l7096:; BSR set to: 1

	movff	(_loop$635),(_loop$634)
	movff	(_loop$635+1),(_loop$634+1)
	goto	l7100
	
l375:; BSR set to: 1

	
l7098:; BSR set to: 1

	btfsc	((c:3970)),c,5	;volatile
	goto	u10751
	goto	u10750
u10751:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10758
u10750:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10758:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$634))&0ffh
	clrf	((_loop$634+1))&0ffh
	goto	l7100
	
l377:; BSR set to: 1

	
l7100:; BSR set to: 1

	movff	(_loop$634),(_loop$633)
	movff	(_loop$634+1),(_loop$633+1)
	goto	l7104
	
l371:; BSR set to: 1

	
l7102:; BSR set to: 1

	btfsc	((c:3971)),c,4	;volatile
	goto	u10761
	goto	u10760
u10761:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10768
u10760:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10768:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$633))&0ffh
	clrf	((_loop$633+1))&0ffh
	goto	l7104
	
l373:; BSR set to: 1

	
l7104:; BSR set to: 1

	movff	(_loop$633),(_loop$632)
	movff	(_loop$633+1),(_loop$632+1)
	goto	l7108
	
l367:; BSR set to: 1

	
l7106:; BSR set to: 1

	btfsc	((c:3971)),c,5	;volatile
	goto	u10771
	goto	u10770
u10771:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10778
u10770:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10778:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$632))&0ffh
	clrf	((_loop$632+1))&0ffh
	goto	l7108
	
l369:; BSR set to: 1

	
l7108:; BSR set to: 1

	movff	(_loop$632),(_loop$631)
	movff	(_loop$632+1),(_loop$631+1)
	goto	l7112
	
l363:; BSR set to: 1

	
l7110:; BSR set to: 1

	btfsc	((c:3972)),c,2	;volatile
	goto	u10781
	goto	u10780
u10781:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10788
u10780:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10788:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$631))&0ffh
	clrf	((_loop$631+1))&0ffh
	goto	l7112
	
l365:; BSR set to: 1

	
l7112:; BSR set to: 1

	movff	(_loop$631),(_loop$630)
	movff	(_loop$631+1),(_loop$630+1)
	goto	l7116
	
l359:; BSR set to: 1

	
l7114:; BSR set to: 1

	btfsc	((c:3968)),c,5	;volatile
	goto	u10791
	goto	u10790
u10791:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10798
u10790:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10798:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$630))&0ffh
	clrf	((_loop$630+1))&0ffh
	goto	l7116
	
l361:; BSR set to: 1

	
l7116:; BSR set to: 1

	movff	(_loop$630),(_loop$629)
	movff	(_loop$630+1),(_loop$629+1)
	goto	l7120
	
l355:; BSR set to: 1

	
l7118:; BSR set to: 1

	btfsc	((c:3972)),c,0	;volatile
	goto	u10801
	goto	u10800
u10801:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10808
u10800:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10808:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$629))&0ffh
	clrf	((_loop$629+1))&0ffh
	goto	l7120
	
l357:; BSR set to: 1

	
l7120:; BSR set to: 1

	movff	(_loop$629),(_loop$628)
	movff	(_loop$629+1),(_loop$628+1)
	goto	l7124
	
l351:; BSR set to: 1

	
l7122:; BSR set to: 1

	btfsc	((c:3972)),c,1	;volatile
	goto	u10811
	goto	u10810
u10811:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10818
u10810:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10818:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$628))&0ffh
	clrf	((_loop$628+1))&0ffh
	goto	l7124
	
l353:; BSR set to: 1

	
l7124:; BSR set to: 1

	movlb	1	; () banked
	movf	((_loop$628))&0ffh,w
	movlb	1	; () banked
iorwf	((_loop$628+1))&0ffh,w
	btfss	status,2
	goto	u10821
	goto	u10820

u10821:
	goto	l7140
u10820:
	line	193
	
l7126:; BSR set to: 1

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((beep@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_beep
	line	195
	
l7128:
	movlw	low(0)
	movlb	1	; () banked
	movwf	((loop@Estado))&0ffh
	goto	l7140
	line	196
	
l349:; BSR set to: 1

	line	198
	goto	l7140
	
l7130:; BSR set to: 1

	movlw	high(0FFh)
	movlb	1	; () banked
	movwf	((_loop$649+1))&0ffh
	setf	((_loop$649))&0ffh
	goto	l7134
	
l436:; BSR set to: 1

	
l7132:; BSR set to: 1

	btfsc	((c:3968)),c,1	;volatile
	goto	u10831
	goto	u10830
u10831:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10838
u10830:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10838:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$649))&0ffh
	clrf	((_loop$649+1))&0ffh
	goto	l7134
	
l438:; BSR set to: 1

	
l7134:; BSR set to: 1

	movff	(_loop$649),(_loop$648)
	movff	(_loop$649+1),(_loop$648+1)
	goto	l7138
	
l432:; BSR set to: 1

	
l7136:; BSR set to: 1

	btfsc	((c:3968)),c,2	;volatile
	goto	u10841
	goto	u10840
u10841:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10848
u10840:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10848:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$648))&0ffh
	clrf	((_loop$648+1))&0ffh
	goto	l7138
	
l434:; BSR set to: 1

	
l7138:; BSR set to: 1

	movff	(_loop$648),(_loop$647)
	movff	(_loop$648+1),(_loop$647+1)
	goto	l7142
	
l428:; BSR set to: 1

	
l7140:; BSR set to: 1

	btfsc	((c:3968)),c,0	;volatile
	goto	u10851
	goto	u10850
u10851:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10858
u10850:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10858:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$647))&0ffh
	clrf	((_loop$647+1))&0ffh
	goto	l7142
	
l430:; BSR set to: 1

	
l7142:; BSR set to: 1

	movff	(_loop$647),(_loop$646)
	movff	(_loop$647+1),(_loop$646+1)
	goto	l7146
	
l424:; BSR set to: 1

	
l7144:; BSR set to: 1

	btfsc	((c:3970)),c,4	;volatile
	goto	u10861
	goto	u10860
u10861:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10868
u10860:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10868:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$646))&0ffh
	clrf	((_loop$646+1))&0ffh
	goto	l7146
	
l426:; BSR set to: 1

	
l7146:; BSR set to: 1

	movff	(_loop$646),(_loop$645)
	movff	(_loop$646+1),(_loop$645+1)
	goto	l7150
	
l420:; BSR set to: 1

	
l7148:; BSR set to: 1

	btfsc	((c:3970)),c,5	;volatile
	goto	u10871
	goto	u10870
u10871:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10878
u10870:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10878:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$645))&0ffh
	clrf	((_loop$645+1))&0ffh
	goto	l7150
	
l422:; BSR set to: 1

	
l7150:; BSR set to: 1

	movff	(_loop$645),(_loop$644)
	movff	(_loop$645+1),(_loop$644+1)
	goto	l7154
	
l416:; BSR set to: 1

	
l7152:; BSR set to: 1

	btfsc	((c:3971)),c,4	;volatile
	goto	u10881
	goto	u10880
u10881:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10888
u10880:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10888:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$644))&0ffh
	clrf	((_loop$644+1))&0ffh
	goto	l7154
	
l418:; BSR set to: 1

	
l7154:; BSR set to: 1

	movff	(_loop$644),(_loop$643)
	movff	(_loop$644+1),(_loop$643+1)
	goto	l7158
	
l412:; BSR set to: 1

	
l7156:; BSR set to: 1

	btfsc	((c:3971)),c,5	;volatile
	goto	u10891
	goto	u10890
u10891:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10898
u10890:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10898:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$643))&0ffh
	clrf	((_loop$643+1))&0ffh
	goto	l7158
	
l414:; BSR set to: 1

	
l7158:; BSR set to: 1

	movff	(_loop$643),(_loop$642)
	movff	(_loop$643+1),(_loop$642+1)
	goto	l7162
	
l408:; BSR set to: 1

	
l7160:; BSR set to: 1

	btfsc	((c:3972)),c,2	;volatile
	goto	u10901
	goto	u10900
u10901:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10908
u10900:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10908:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$642))&0ffh
	clrf	((_loop$642+1))&0ffh
	goto	l7162
	
l410:; BSR set to: 1

	
l7162:; BSR set to: 1

	movff	(_loop$642),(_loop$641)
	movff	(_loop$642+1),(_loop$641+1)
	goto	l7166
	
l404:; BSR set to: 1

	
l7164:; BSR set to: 1

	btfsc	((c:3968)),c,5	;volatile
	goto	u10911
	goto	u10910
u10911:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10918
u10910:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10918:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$641))&0ffh
	clrf	((_loop$641+1))&0ffh
	goto	l7166
	
l406:; BSR set to: 1

	
l7166:; BSR set to: 1

	movff	(_loop$641),(_loop$640)
	movff	(_loop$641+1),(_loop$640+1)
	goto	l7170
	
l400:; BSR set to: 1

	
l7168:; BSR set to: 1

	btfsc	((c:3972)),c,0	;volatile
	goto	u10921
	goto	u10920
u10921:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10928
u10920:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10928:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$640))&0ffh
	clrf	((_loop$640+1))&0ffh
	goto	l7170
	
l402:; BSR set to: 1

	
l7170:; BSR set to: 1

	movff	(_loop$640),(_loop$639)
	movff	(_loop$640+1),(_loop$639+1)
	goto	l7174
	
l396:; BSR set to: 1

	
l7172:; BSR set to: 1

	btfsc	((c:3972)),c,1	;volatile
	goto	u10931
	goto	u10930
u10931:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
	incf	(??_loop+0+0)&0ffh
	goto	u10938
u10930:
	movlb	0	; () banked
	clrf	(??_loop+0+0)&0ffh
u10938:
	movlb	0	; () banked
	movf	(??_loop+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((_loop$639))&0ffh
	clrf	((_loop$639+1))&0ffh
	goto	l7174
	
l398:; BSR set to: 1

	
l7174:; BSR set to: 1

	movlb	1	; () banked
	movf	((_loop$639))&0ffh,w
	movlb	1	; () banked
iorwf	((_loop$639+1))&0ffh,w
	btfss	status,2
	goto	u10941
	goto	u10940

u10941:
	goto	l103
u10940:
	line	200
	
l7176:; BSR set to: 1

	movlb	1	; () banked
	movlw	low(-25)
	addwf	((loop@vel_izq))&0ffh
	movlw	high(-25)
	addwfc	((loop@vel_izq+1))&0ffh
	line	201
	movlb	1	; () banked
	movlw	low(-25)
	addwf	((loop@vel_der))&0ffh
	movlw	high(-25)
	addwfc	((loop@vel_der+1))&0ffh
	line	202
	
l7178:; BSR set to: 1

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((beep@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_beep
	line	203
	
l7180:
	movff	(loop@vel_izq),(set_motor_izq@duty)
	movff	(loop@vel_izq+1),(set_motor_izq@duty+1)
	call	_set_motor_izq	;wreg free
	
l7182:
	movff	(loop@vel_der),??_loop+0+0
	movff	(loop@vel_der+1),??_loop+0+0+1
	movlb	0	; () banked
	comf	(??_loop+0+0)&0ffh
	comf	(??_loop+0+1)&0ffh
	infsnz	(??_loop+0+0)&0ffh
	incf	(??_loop+0+1)&0ffh
	movff	??_loop+0+0,(set_motor_der@duty)
	movff	??_loop+0+1,(set_motor_der@duty+1)
	call	_set_motor_der	;wreg free
	line	204
	
l7184:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((firulete@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_firulete
	goto	l103
	line	205
	
l394:
	line	206
	goto	l103
	line	208
	
l439:
	line	209
	
l7186:
	movlw	low(0)
	movlb	1	; () banked
	movwf	((loop@Estado))&0ffh
	line	210
	goto	l103
	line	211
	
l7188:; BSR set to: 1

	goto	l103
	line	105
	
l104:; BSR set to: 1

	
l7190:
	movlb	1	; () banked
	movf	((loop@Estado))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l6798
	xorlw	1^0	; case 1
	skipnz
	goto	l6810
	xorlw	2^1	; case 2
	skipnz
	goto	l6988
	xorlw	4^2	; case 4
	skipnz
	goto	l7004
	goto	l7186

	line	211
	
l106:; BSR set to: 1

	line	212
	
l103:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_loop
	__end_of_loop:
	signat	_loop,88
	global	_testeo_US

;; *************** function _testeo_US *****************
;; Defined at:
;;		line 331 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   38[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		___wmul
;;		_printf
;; This function is called by:
;;		_loop
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	line	331
global __ptext2
__ptext2:
psect	text2
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
	line	331
	global	__size_of_testeo_US
	__size_of_testeo_US	equ	__end_of_testeo_US-_testeo_US
	
_testeo_US:
;incstack = 0
	opt	stack 23
	line	335
	
l6670:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((testeo_US@i+1))&0ffh
	movlw	low(0)
	movwf	((testeo_US@i))&0ffh
	
l6672:; BSR set to: 0

	movlb	0	; () banked
		movf	((testeo_US@i+1))&0ffh,w
	bnz	u9730
	movlw	4
	movlb	0	; () banked
	subwf	 ((testeo_US@i))&0ffh,w
	btfss	status,0
	goto	u9731
	goto	u9730

u9731:
	goto	l6676
u9730:
	goto	l6688
	
l6674:; BSR set to: 0

	goto	l6688
	line	336
	
l637:; BSR set to: 0

	
l6676:; BSR set to: 0

	movlw	low((_PIN_FUNCTION))
	movlb	0	; () banked
	addwf	((testeo_US@i))&0ffh,w
	movwf	tblptrl
	movlw	high((_PIN_FUNCTION))
	addwfc	((testeo_US@i+1))&0ffh,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movf	tablat,w
	decf	wreg
	btfsc	status,2
	goto	u9741
	goto	u9740
u9741:
	goto	l6680
u9740:
	
l6678:; BSR set to: 0

	movlb	0	; () banked
	setf	((_testeo_US$671))&0ffh
	setf	((_testeo_US$671+1))&0ffh
	goto	l6682
	
l640:; BSR set to: 0

	
l6680:; BSR set to: 0

	movff	(testeo_US@i),(___wmul@multiplier)
	movff	(testeo_US@i+1),(___wmul@multiplier+1)
	movlw	high(0Ch)
	movlb	0	; () banked
	movwf	((___wmul@multiplicand+1))&0ffh
	movlw	low(0Ch)
	movwf	((___wmul@multiplicand))&0ffh
	call	___wmul	;wreg free
	movlw	08h
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	(0+?___wmul)&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(1+?___wmul)&0ffh
	movlw	low(_stSensProx)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	(0+?___wmul)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_stSensProx)
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	(1+?___wmul)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,(_testeo_US$671)
	movff	postdec2,(_testeo_US$671+1)
	goto	l6682
	
l642:; BSR set to: 0

	
l6682:; BSR set to: 0

		movlw	low(STR_5)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_5)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movlw	low(01h)
	movlb	0	; () banked
	addwf	((testeo_US@i))&0ffh,w
	movlb	0	; () banked
	movwf	(0+(?_printf+02h))&0ffh
	movlw	high(01h)
	movlb	0	; () banked
	addwfc	((testeo_US@i+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+(0+(?_printf+02h))&0ffh
	movff	(_testeo_US$671),0+(?_printf+04h)
	movff	(_testeo_US$671+1),1+(?_printf+04h)
	call	_printf	;wreg free
	line	335
	
l6684:
	movlb	0	; () banked
	infsnz	((testeo_US@i))&0ffh
	incf	((testeo_US@i+1))&0ffh
	
l6686:; BSR set to: 0

	movlb	0	; () banked
		movf	((testeo_US@i+1))&0ffh,w
	bnz	u9750
	movlw	4
	movlb	0	; () banked
	subwf	 ((testeo_US@i))&0ffh,w
	btfss	status,0
	goto	u9751
	goto	u9750

u9751:
	goto	l6676
u9750:
	goto	l6688
	
l638:; BSR set to: 0

	line	337
	
l6688:; BSR set to: 0

		movlw	low(STR_6)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_6)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	338
	
l643:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_testeo_US
	__end_of_testeo_US:
	signat	_testeo_US,88
	global	_testeo_CNY

;; *************** function _testeo_CNY *****************
;; Defined at:
;;		line 340 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   28[BANK0 ] unsigned char 
;;  aux             1   27[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_displayByte
;; This function is called by:
;;		_loop
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	line	340
global __ptext3
__ptext3:
psect	text3
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/main.c"
	line	340
	global	__size_of_testeo_CNY
	__size_of_testeo_CNY	equ	__end_of_testeo_CNY-_testeo_CNY
	
_testeo_CNY:
;incstack = 0
	opt	stack 24
	line	344
	
l4828:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((testeo_CNY@aux))&0ffh
	movlw	low(04h)
	movlb	0	; () banked
	movwf	((testeo_CNY@i))&0ffh
	
l4830:; BSR set to: 0

		movlw	08h-1
	movlb	0	; () banked
	cpfsgt	((testeo_CNY@i))&0ffh
	goto	u5861
	goto	u5860

u5861:
	goto	l4834
u5860:
	goto	l4846
	
l4832:; BSR set to: 0

	goto	l4846
	line	345
	
l646:; BSR set to: 0

	
l4834:; BSR set to: 0

	movlb	0	; () banked
	movf	((testeo_CNY@i))&0ffh,w
	mullw	01h
	movlw	low((_PIN_FUNCTION))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_PIN_FUNCTION))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfsc	status,2
	goto	u5871
	goto	u5870
u5871:
	goto	l4838
u5870:
	
l4836:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_testeo_CNY$676+1))&0ffh
	movlw	low(0)
	movwf	((_testeo_CNY$676))&0ffh
	goto	l4840
	
l649:; BSR set to: 0

	
l4838:; BSR set to: 0

	movlw	low(0FFFCh)
	movlb	0	; () banked
	movwf	(??_testeo_CNY+0+0)&0ffh
	movlw	high(0FFFCh)
	movlb	0	; () banked
	movwf	1+(??_testeo_CNY+0+0)&0ffh
	movlb	0	; () banked
	movf	((testeo_CNY@i))&0ffh,w
	movlb	0	; () banked
	movwf	(??_testeo_CNY+2+0)&0ffh
	clrf	(??_testeo_CNY+2+0+1)&0ffh

	movlb	0	; () banked
	movf	(??_testeo_CNY+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_testeo_CNY+2+0)&0ffh
	movlb	0	; () banked
	movf	(??_testeo_CNY+0+1)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_testeo_CNY+2+1)&0ffh
	movlw	low(_sensLinea)
	movlb	0	; () banked
	addwf	(??_testeo_CNY+2+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_sensLinea)
	movlb	0	; () banked
	addwfc	(??_testeo_CNY+2+1)&0ffh,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_testeo_CNY+4+0)&0ffh
	movlb	0	; () banked
	movf	((??_testeo_CNY+4+0))&0ffh,w
	movlb	0	; () banked
	movwf	((_testeo_CNY$676))&0ffh
	clrf	((_testeo_CNY$676+1))&0ffh
	goto	l4840
	
l651:; BSR set to: 0

	
l4840:; BSR set to: 0

	movlb	0	; () banked
	movf	((testeo_CNY@i))&0ffh,w
	addlw	low(0FDh)
	movlb	0	; () banked
	mulwf	((_testeo_CNY$676))&0ffh
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	((testeo_CNY@aux))&0ffh
	line	344
	
l4842:; BSR set to: 0

	movlb	0	; () banked
	incf	((testeo_CNY@i))&0ffh
	
l4844:; BSR set to: 0

		movlw	08h-1
	movlb	0	; () banked
	cpfsgt	((testeo_CNY@i))&0ffh
	goto	u5881
	goto	u5880

u5881:
	goto	l4834
u5880:
	goto	l4846
	
l647:; BSR set to: 0

	line	347
	
l4846:; BSR set to: 0

	movlb	0	; () banked
	movf	((testeo_CNY@aux))&0ffh,w
	mullw	01h
	movlw	low((_BCD_TABLE))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_BCD_TABLE))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_displayByte
	line	348
	
l652:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_testeo_CNY
	__end_of_testeo_CNY:
	signat	_testeo_CNY,88
	global	_Display7Seg

;; *************** function _Display7Seg *****************
;; Defined at:
;;		line 6 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  n               2   22[BANK0 ] short 
;;  time            2   24[BANK0 ] short 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_StartTimer
;;		_StopTimer
;;		_TimerIsReady
;;		___awdiv
;;		___awmod
;;		_displayByte
;; This function is called by:
;;		_main
;;		_loop
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	6
global __ptext4
__ptext4:
psect	text4
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	6
	global	__size_of_Display7Seg
	__size_of_Display7Seg	equ	__end_of_Display7Seg-_Display7Seg
	
_Display7Seg:
;incstack = 0
	opt	stack 24
	line	13
	
l4748:
	movlb	0	; () banked
	btfsc	((Display7Seg@time+1))&0ffh,7
	goto	u5731
	movlb	0	; () banked
	movf	((Display7Seg@time+1))&0ffh,w
	bnz	u5730
	movlb	0	; () banked
	decf	((Display7Seg@time))&0ffh,w
	btfss	status,0
	goto	u5731
	goto	u5730

u5731:
	goto	l4778
u5730:
	line	15
	
l4750:; BSR set to: 0

	movff	(Display7Seg@time),(Display7Seg@t)
	movff	(Display7Seg@time+1),(Display7Seg@t+1)
	line	17
	
l4752:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Display7Seg@n+1))&0ffh,7
	goto	u5740
	movlb	0	; () banked
	movf	((Display7Seg@n+1))&0ffh,w
	bnz	u5741
	movlb	0	; () banked
	decf	((Display7Seg@n))&0ffh,w
	btfsc	status,0
	goto	u5741
	goto	u5740

u5741:
	goto	l4764
u5740:
	line	19
	
l4754:; BSR set to: 0

	movlb	0	; () banked
	movf	((Display7Seg@n))&0ffh,w
	movlb	0	; () banked
iorwf	((Display7Seg@n+1))&0ffh,w
	btfss	status,2
	goto	u5751
	goto	u5750

u5751:
	goto	l4758
u5750:
	line	20
	
l4756:; BSR set to: 0

	movlw	low((_BCD_TABLE))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_BCD_TABLE))
	movwf	tblptrh
	endif
	if	0	;There are less than 3 active tblptr bytes
	movlw	low highword((_BCD_TABLE))
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_displayByte
	goto	l4762
	line	21
	
l883:
	line	23
	
l4758:
	movlb	0	; () banked
	negf	((Display7Seg@n))&0ffh
	comf	((Display7Seg@n+1))&0ffh
	btfsc	status,0
	incf	((Display7Seg@n+1))&0ffh
	line	24
	
l4760:; BSR set to: 0

	movlw	(040h)&0ffh
	
	call	_displayByte
	goto	l4762
	line	25
	
l884:
	line	27
	
l4762:
	movff	(Display7Seg@t),(StartTimer@value)
	movff	(Display7Seg@t+1),(StartTimer@value+1)
	movlw	(01h)&0ffh
	
	call	_StartTimer
	line	28
	goto	l4766
	line	29
	
l882:
	line	30
	
l4764:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((StartTimer@value+1))&0ffh
	movlw	low(0)
	movwf	((StartTimer@value))&0ffh
	movlw	(01h)&0ffh
	
	call	_StartTimer
	goto	l4766
	
l885:
	line	32
	
l4766:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((Display7Seg@i))&0ffh
	goto	l4774
	line	33
	
l887:; BSR set to: 0

	line	34
	
l4768:; BSR set to: 0

	movlb	0	; () banked
	movf	((Display7Seg@i))&0ffh,w
	mullw	01h
	movlw	low(Display7Seg@num)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(Display7Seg@num)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(Display7Seg@n),(___awmod@dividend)
	movff	(Display7Seg@n+1),(___awmod@dividend+1)
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((___awmod@divisor+1))&0ffh
	movlw	low(0Ah)
	movwf	((___awmod@divisor))&0ffh
	call	___awmod	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___awmod)&0ffh,w
	movwf	indf2,c

	line	35
	
l4770:; BSR set to: 0

	movff	(Display7Seg@n),(___awdiv@dividend)
	movff	(Display7Seg@n+1),(___awdiv@dividend+1)
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((___awdiv@divisor+1))&0ffh
	movlw	low(0Ah)
	movwf	((___awdiv@divisor))&0ffh
	call	___awdiv	;wreg free
	movff	0+?___awdiv,(Display7Seg@n)
	movff	1+?___awdiv,(Display7Seg@n+1)
	line	32
	
l4772:
	movlb	0	; () banked
	incf	((Display7Seg@i))&0ffh
	goto	l4774
	
l886:; BSR set to: 0

	
l4774:; BSR set to: 0

	movlb	0	; () banked
	movf	((Display7Seg@n))&0ffh,w
	movlb	0	; () banked
iorwf	((Display7Seg@n+1))&0ffh,w
	btfsc	status,2
	goto	u5761
	goto	u5760

u5761:
	goto	l895
u5760:
	
l4776:; BSR set to: 0

		movlw	05h-1
	movlb	0	; () banked
	cpfsgt	((Display7Seg@i))&0ffh
	goto	u5771
	goto	u5770

u5771:
	goto	l4768
u5770:
	goto	l895
	
l889:; BSR set to: 0

	goto	l895
	
l890:; BSR set to: 0

	line	37
	goto	l895
	line	38
	
l881:; BSR set to: 0

	line	40
	
l4778:; BSR set to: 0

	movlw	(01h)&0ffh
	
	call	_TimerIsReady
	iorlw	0
	btfsc	status,2
	goto	u5781
	goto	u5780
u5781:
	goto	l895
u5780:
	line	42
	
l4780:
	movff	(Display7Seg@t),(StartTimer@value)
	movff	(Display7Seg@t+1),(StartTimer@value+1)
	movlw	(01h)&0ffh
	
	call	_StartTimer
	line	44
	
l4782:
	movlb	0	; () banked
	decf	((Display7Seg@i))&0ffh
	line	45
	
l4784:; BSR set to: 0

		movlw	05h-0
	movlb	0	; () banked
	cpfslt	((Display7Seg@i))&0ffh
	goto	u5791
	goto	u5790

u5791:
	goto	l4788
u5790:
	line	46
	
l4786:; BSR set to: 0

	movlb	0	; () banked
	movf	((Display7Seg@i))&0ffh,w
	mullw	01h
	movlw	low(Display7Seg@num)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(Display7Seg@num)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	0	; () banked
	movwf	(??_Display7Seg+0+0)&0ffh
	movlb	0	; () banked
	movf	((??_Display7Seg+0+0))&0ffh,w
	mullw	01h
	movlw	low((_BCD_TABLE))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_BCD_TABLE))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movf	tablat,w
	
	call	_displayByte
	goto	l895
	line	47
	
l893:
	line	49
	
l4788:
	movlw	(01h)&0ffh
	
	call	_StopTimer
	line	50
	
l4790:
	movlw	(0)&0ffh
	
	call	_displayByte
	goto	l895
	line	51
	
l894:
	goto	l895
	line	52
	
l892:
	goto	l895
	line	53
	
l891:
	line	54
	
l895:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Display7Seg
	__end_of_Display7Seg:
	signat	_Display7Seg,8312
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/awmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[BANK0 ] int 
;;  divisor         2   16[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   19[BANK0 ] unsigned char 
;;  counter         1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display7Seg
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/awmod.c"
	line	8
global __ptext5
__ptext5:
psect	text5
	file	"/opt/microchip/xc8/v1.34/sources/common/awmod.c"
	line	8
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:
;incstack = 0
	opt	stack 24
	line	13
	
l4706:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((___awmod@sign))&0ffh
	line	14
	
l4708:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___awmod@dividend+1))&0ffh,7
	goto	u5670
	goto	u5671

u5671:
	goto	l4714
u5670:
	line	15
	
l4710:; BSR set to: 0

	movlb	0	; () banked
	negf	((___awmod@dividend))&0ffh
	comf	((___awmod@dividend+1))&0ffh
	btfsc	status,0
	incf	((___awmod@dividend+1))&0ffh
	line	16
	
l4712:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___awmod@sign))&0ffh
	goto	l4714
	line	17
	
l1976:; BSR set to: 0

	line	18
	
l4714:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___awmod@divisor+1))&0ffh,7
	goto	u5680
	goto	u5681

u5681:
	goto	l4718
u5680:
	line	19
	
l4716:; BSR set to: 0

	movlb	0	; () banked
	negf	((___awmod@divisor))&0ffh
	comf	((___awmod@divisor+1))&0ffh
	btfsc	status,0
	incf	((___awmod@divisor+1))&0ffh
	goto	l4718
	
l1977:; BSR set to: 0

	line	20
	
l4718:; BSR set to: 0

	movlb	0	; () banked
	movf	((___awmod@divisor))&0ffh,w
	movlb	0	; () banked
iorwf	((___awmod@divisor+1))&0ffh,w
	btfsc	status,2
	goto	u5691
	goto	u5690

u5691:
	goto	l4734
u5690:
	line	21
	
l4720:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___awmod@counter))&0ffh
	line	22
	goto	l4724
	
l1980:; BSR set to: 0

	line	23
	
l4722:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___awmod@divisor))&0ffh
	rlcf	((___awmod@divisor+1))&0ffh
	line	24
	movlb	0	; () banked
	incf	((___awmod@counter))&0ffh
	goto	l4724
	line	25
	
l1979:; BSR set to: 0

	line	22
	
l4724:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___awmod@divisor+1))&0ffh,(15)&7
	goto	u5701
	goto	u5700
u5701:
	goto	l4722
u5700:
	goto	l4726
	
l1981:; BSR set to: 0

	goto	l4726
	line	26
	
l1982:; BSR set to: 0

	line	27
	
l4726:; BSR set to: 0

	movlb	0	; () banked
		movf	((___awmod@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___awmod@dividend))&0ffh,w
	movlb	0	; () banked
	movf	((___awmod@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___awmod@dividend+1))&0ffh,w
	btfss	status,0
	goto	u5711
	goto	u5710

u5711:
	goto	l4730
u5710:
	line	28
	
l4728:; BSR set to: 0

	movlb	0	; () banked
	movf	((___awmod@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___awmod@dividend))&0ffh
	movlb	0	; () banked
	movf	((___awmod@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___awmod@dividend+1))&0ffh

	goto	l4730
	
l1983:; BSR set to: 0

	line	29
	
l4730:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___awmod@divisor+1))&0ffh
	rrcf	((___awmod@divisor))&0ffh
	line	30
	
l4732:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___awmod@counter))&0ffh
	
	goto	l4726
	goto	l4734
	
l1984:; BSR set to: 0

	goto	l4734
	line	31
	
l1978:; BSR set to: 0

	line	32
	
l4734:; BSR set to: 0

	movlb	0	; () banked
	movf	((___awmod@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5721
	goto	u5720
u5721:
	goto	l4738
u5720:
	line	33
	
l4736:; BSR set to: 0

	movlb	0	; () banked
	negf	((___awmod@dividend))&0ffh
	comf	((___awmod@dividend+1))&0ffh
	btfsc	status,0
	incf	((___awmod@dividend+1))&0ffh
	goto	l4738
	
l1985:; BSR set to: 0

	line	34
	
l4738:; BSR set to: 0

	movff	(___awmod@dividend),(?___awmod)
	movff	(___awmod@dividend+1),(?___awmod+1)
	goto	l1986
	
l4740:; BSR set to: 0

	line	35
	
l1986:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_StopTimer

;; *************** function _StopTimer *****************
;; Defined at:
;;		line 596 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  nTimer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  nTimer          1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_loop
;;		_Display7Seg
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	596
global __ptext6
__ptext6:
psect	text6
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	596
	global	__size_of_StopTimer
	__size_of_StopTimer	equ	__end_of_StopTimer-_StopTimer
	
_StopTimer:; BSR set to: 0

;incstack = 0
	opt	stack 25
	movlb	0	; () banked
	movwf	((StopTimer@nTimer))&0ffh
	line	598
	
l4500:; BSR set to: 0

	movlb	0	; () banked
	movf	((StopTimer@nTimer))&0ffh,w
	mullw	03h
	movlw	low(_Timer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(02h)
	movwf	indf2
	line	599
	
l1558:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_StopTimer
	__end_of_StopTimer:
	signat	_StopTimer,4216
	global	_LeerSensLinea

;; *************** function _LeerSensLinea *****************
;; Defined at:
;;		line 321 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   42[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0      25       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0
;;      Totals:         0      29       0       0       0       0       0       0       0
;;Total ram usage:       29 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	line	321
global __ptext7
__ptext7:
psect	text7
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	321
	global	__size_of_LeerSensLinea
	__size_of_LeerSensLinea	equ	__end_of_LeerSensLinea-_LeerSensLinea
	
_LeerSensLinea:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	327
	
l5200:
	movlb	0	; () banked
	incf	((LeerSensLinea@cant_lecturas))&0ffh
	line	328
	
l5202:; BSR set to: 0

		movlw	06h-0
	movlb	0	; () banked
	cpfslt	((LeerSensLinea@cant_lecturas))&0ffh
	goto	u6221
	goto	u6220

u6221:
	goto	l5288
u6220:
	line	330
	
l5204:; BSR set to: 0

	movlw	low(04h)
	movlb	0	; () banked
	movwf	((LeerSensLinea@i))&0ffh
	
l5206:; BSR set to: 0

		movlw	08h-1
	movlb	0	; () banked
	cpfsgt	((LeerSensLinea@i))&0ffh
	goto	u6231
	goto	u6230

u6231:
	goto	l5210
u6230:
	goto	l1106
	
l5208:; BSR set to: 0

	goto	l1106
	line	331
	
l1053:; BSR set to: 0

	line	332
	
l5210:; BSR set to: 0

	movlb	0	; () banked
	movf	((LeerSensLinea@i))&0ffh,w
	mullw	01h
	movlw	low((_PIN_FUNCTION))
	addwf	(prodl),c,w
	movwf	tblptrl
	movlw	high((_PIN_FUNCTION))
	addwfc	(prodh),c,w
	movwf	tblptrh
	if	0	;There are less than 3 active tblptr bytes
	clrf	tblptru
	global __mediumconst
movlw	low highword(__mediumconst)
	addwfc	tblptru,f
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfsc	status,2
	goto	u6241
	goto	u6240
u6241:
	goto	l5214
u6240:
	
l5212:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1853+1))&0ffh
	movlw	low(0)
	movwf	((_LeerSensLinea$1853))&0ffh
	goto	l5282
	
l1056:; BSR set to: 0

	
l5214:; BSR set to: 0

		movlw	4
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6251
	goto	u6250

u6251:
	goto	l5278
u6250:
	
l5216:; BSR set to: 0

		movlw	5
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6261
	goto	u6260

u6261:
	goto	l5274
u6260:
	
l5218:; BSR set to: 0

		movlw	6
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6271
	goto	u6270

u6271:
	goto	l5270
u6270:
	
l5220:; BSR set to: 0

		movlw	7
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6281
	goto	u6280

u6281:
	goto	l5266
u6280:
	
l5222:; BSR set to: 0

	movlb	0	; () banked
	movf	((LeerSensLinea@i))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6291
	goto	u6290
u6291:
	goto	l5262
u6290:
	
l5224:; BSR set to: 0

	movlb	0	; () banked
		decf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6301
	goto	u6300

u6301:
	goto	l5258
u6300:
	
l5226:; BSR set to: 0

		movlw	2
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6311
	goto	u6310

u6311:
	goto	l5254
u6310:
	
l5228:; BSR set to: 0

		movlw	3
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6321
	goto	u6320

u6321:
	goto	l5250
u6320:
	
l5230:; BSR set to: 0

		movlw	17
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6331
	goto	u6330

u6331:
	goto	l5246
u6330:
	
l5232:; BSR set to: 0

		movlw	18
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6341
	goto	u6340

u6341:
	goto	l5242
u6340:
	
l5234:; BSR set to: 0

		movlw	19
	movlb	0	; () banked
	xorwf	((LeerSensLinea@i))&0ffh,w
	btfsc	status,2
	goto	u6351
	goto	u6350

u6351:
	goto	l5238
u6350:
	
l5236:; BSR set to: 0

	movlw	high(0FFh)
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1864+1))&0ffh
	setf	((_LeerSensLinea$1864))&0ffh
	goto	l5240
	
l1100:; BSR set to: 0

	
l5238:; BSR set to: 0

	btfsc	((c:3968)),c,1	;volatile
	goto	u6361
	goto	u6360
u6361:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6368
u6360:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6368:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1864))&0ffh
	clrf	((_LeerSensLinea$1864+1))&0ffh
	goto	l5240
	
l1102:; BSR set to: 0

	
l5240:; BSR set to: 0

	movff	(_LeerSensLinea$1864),(_LeerSensLinea$1863)
	movff	(_LeerSensLinea$1864+1),(_LeerSensLinea$1863+1)
	goto	l5244
	
l1096:; BSR set to: 0

	
l5242:; BSR set to: 0

	btfsc	((c:3968)),c,2	;volatile
	goto	u6371
	goto	u6370
u6371:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6378
u6370:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6378:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1863))&0ffh
	clrf	((_LeerSensLinea$1863+1))&0ffh
	goto	l5244
	
l1098:; BSR set to: 0

	
l5244:; BSR set to: 0

	movff	(_LeerSensLinea$1863),(_LeerSensLinea$1862)
	movff	(_LeerSensLinea$1863+1),(_LeerSensLinea$1862+1)
	goto	l5248
	
l1092:; BSR set to: 0

	
l5246:; BSR set to: 0

	btfsc	((c:3968)),c,0	;volatile
	goto	u6381
	goto	u6380
u6381:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6388
u6380:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6388:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1862))&0ffh
	clrf	((_LeerSensLinea$1862+1))&0ffh
	goto	l5248
	
l1094:; BSR set to: 0

	
l5248:; BSR set to: 0

	movff	(_LeerSensLinea$1862),(_LeerSensLinea$1861)
	movff	(_LeerSensLinea$1862+1),(_LeerSensLinea$1861+1)
	goto	l5252
	
l1088:; BSR set to: 0

	
l5250:; BSR set to: 0

	btfsc	((c:3970)),c,4	;volatile
	goto	u6391
	goto	u6390
u6391:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6398
u6390:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6398:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1861))&0ffh
	clrf	((_LeerSensLinea$1861+1))&0ffh
	goto	l5252
	
l1090:; BSR set to: 0

	
l5252:; BSR set to: 0

	movff	(_LeerSensLinea$1861),(_LeerSensLinea$1860)
	movff	(_LeerSensLinea$1861+1),(_LeerSensLinea$1860+1)
	goto	l5256
	
l1084:; BSR set to: 0

	
l5254:; BSR set to: 0

	btfsc	((c:3970)),c,5	;volatile
	goto	u6401
	goto	u6400
u6401:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6408
u6400:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6408:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1860))&0ffh
	clrf	((_LeerSensLinea$1860+1))&0ffh
	goto	l5256
	
l1086:; BSR set to: 0

	
l5256:; BSR set to: 0

	movff	(_LeerSensLinea$1860),(_LeerSensLinea$1859)
	movff	(_LeerSensLinea$1860+1),(_LeerSensLinea$1859+1)
	goto	l5260
	
l1080:; BSR set to: 0

	
l5258:; BSR set to: 0

	btfsc	((c:3971)),c,4	;volatile
	goto	u6411
	goto	u6410
u6411:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6418
u6410:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6418:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1859))&0ffh
	clrf	((_LeerSensLinea$1859+1))&0ffh
	goto	l5260
	
l1082:; BSR set to: 0

	
l5260:; BSR set to: 0

	movff	(_LeerSensLinea$1859),(_LeerSensLinea$1858)
	movff	(_LeerSensLinea$1859+1),(_LeerSensLinea$1858+1)
	goto	l5264
	
l1076:; BSR set to: 0

	
l5262:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u6421
	goto	u6420
u6421:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6428
u6420:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6428:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1858))&0ffh
	clrf	((_LeerSensLinea$1858+1))&0ffh
	goto	l5264
	
l1078:; BSR set to: 0

	
l5264:; BSR set to: 0

	movff	(_LeerSensLinea$1858),(_LeerSensLinea$1857)
	movff	(_LeerSensLinea$1858+1),(_LeerSensLinea$1857+1)
	goto	l5268
	
l1072:; BSR set to: 0

	
l5266:; BSR set to: 0

	btfsc	((c:3972)),c,2	;volatile
	goto	u6431
	goto	u6430
u6431:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6438
u6430:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6438:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1857))&0ffh
	clrf	((_LeerSensLinea$1857+1))&0ffh
	goto	l5268
	
l1074:; BSR set to: 0

	
l5268:; BSR set to: 0

	movff	(_LeerSensLinea$1857),(_LeerSensLinea$1856)
	movff	(_LeerSensLinea$1857+1),(_LeerSensLinea$1856+1)
	goto	l5272
	
l1068:; BSR set to: 0

	
l5270:; BSR set to: 0

	btfsc	((c:3968)),c,5	;volatile
	goto	u6441
	goto	u6440
u6441:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6448
u6440:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6448:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1856))&0ffh
	clrf	((_LeerSensLinea$1856+1))&0ffh
	goto	l5272
	
l1070:; BSR set to: 0

	
l5272:; BSR set to: 0

	movff	(_LeerSensLinea$1856),(_LeerSensLinea$1855)
	movff	(_LeerSensLinea$1856+1),(_LeerSensLinea$1855+1)
	goto	l5276
	
l1064:; BSR set to: 0

	
l5274:; BSR set to: 0

	btfsc	((c:3972)),c,0	;volatile
	goto	u6451
	goto	u6450
u6451:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6458
u6450:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6458:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1855))&0ffh
	clrf	((_LeerSensLinea$1855+1))&0ffh
	goto	l5276
	
l1066:; BSR set to: 0

	
l5276:; BSR set to: 0

	movff	(_LeerSensLinea$1855),(_LeerSensLinea$1854)
	movff	(_LeerSensLinea$1855+1),(_LeerSensLinea$1854+1)
	goto	l5280
	
l1060:; BSR set to: 0

	
l5278:; BSR set to: 0

	btfsc	((c:3972)),c,1	;volatile
	goto	u6461
	goto	u6460
u6461:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
	incf	(??_LeerSensLinea+0+0)&0ffh
	goto	u6468
u6460:
	movlb	0	; () banked
	clrf	(??_LeerSensLinea+0+0)&0ffh
u6468:
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1854))&0ffh
	clrf	((_LeerSensLinea$1854+1))&0ffh
	goto	l5280
	
l1062:; BSR set to: 0

	
l5280:; BSR set to: 0

	movlb	0	; () banked
	movf	((_LeerSensLinea$1854))&0ffh,w
	movlb	0	; () banked
iorwf	((_LeerSensLinea$1854+1))&0ffh,w
	btfsc	status,2
	goto	u6471
	goto	u6470

u6471:
	movlw	1
	goto	u6480
u6470:
	movlw	0
u6480:
	movlb	0	; () banked
	movwf	((_LeerSensLinea$1853))&0ffh
	clrf	((_LeerSensLinea$1853+1))&0ffh
	goto	l5282
	
l1058:; BSR set to: 0

	
l5282:; BSR set to: 0

	movlw	low(0FFFCh)
	movlb	0	; () banked
	movwf	(??_LeerSensLinea+0+0)&0ffh
	movlw	high(0FFFCh)
	movlb	0	; () banked
	movwf	1+(??_LeerSensLinea+0+0)&0ffh
	movlb	0	; () banked
	movf	((LeerSensLinea@i))&0ffh,w
	movlb	0	; () banked
	movwf	(??_LeerSensLinea+2+0)&0ffh
	clrf	(??_LeerSensLinea+2+0+1)&0ffh

	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_LeerSensLinea+2+0)&0ffh
	movlb	0	; () banked
	movf	(??_LeerSensLinea+0+1)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_LeerSensLinea+2+1)&0ffh
	movlw	low(LeerSensLinea@lecturas)
	movlb	0	; () banked
	addwf	(??_LeerSensLinea+2+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(LeerSensLinea@lecturas)
	movlb	0	; () banked
	addwfc	(??_LeerSensLinea+2+1)&0ffh,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	((_LeerSensLinea$1853))&0ffh,w
	addwf	indf2
	line	330
	
l5284:; BSR set to: 0

	movlb	0	; () banked
	incf	((LeerSensLinea@i))&0ffh
	
l5286:; BSR set to: 0

		movlw	08h-1
	movlb	0	; () banked
	cpfsgt	((LeerSensLinea@i))&0ffh
	goto	u6491
	goto	u6490

u6491:
	goto	l5210
u6490:
	goto	l1106
	
l1054:; BSR set to: 0

	line	335
	goto	l1106
	line	336
	
l1052:; BSR set to: 0

	line	338
	
l5288:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((LeerSensLinea@cant_lecturas))&0ffh
	line	339
	movlw	low(0)
	movlb	0	; () banked
	movwf	((LeerSensLinea@i))&0ffh
	
l5290:; BSR set to: 0

		movlw	04h-1
	movlb	0	; () banked
	cpfsgt	((LeerSensLinea@i))&0ffh
	goto	u6501
	goto	u6500

u6501:
	goto	l5294
u6500:
	goto	l1106
	
l5292:; BSR set to: 0

	goto	l1106
	line	340
	
l1104:; BSR set to: 0

	line	341
	
l5294:; BSR set to: 0

	movlb	0	; () banked
	movf	((LeerSensLinea@i))&0ffh,w
	mullw	01h
	movlw	low(_sensLinea)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_sensLinea)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
	movf	((LeerSensLinea@i))&0ffh,w
	mullw	01h
	movlw	low(LeerSensLinea@lecturas)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlw	high(LeerSensLinea@lecturas)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
		movlw	03h-0
	cpfslt	indf1
	goto	u6511
	goto	u6510

u6511:
	movlw	1
	goto	u6520
u6510:
	movlw	0
u6520:
	movwf	indf2,c

	line	342
	
l5296:; BSR set to: 0

	movlb	0	; () banked
	movf	((LeerSensLinea@i))&0ffh,w
	mullw	01h
	movlw	low(LeerSensLinea@lecturas)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(LeerSensLinea@lecturas)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	339
	
l5298:; BSR set to: 0

	movlb	0	; () banked
	incf	((LeerSensLinea@i))&0ffh
	
l5300:; BSR set to: 0

		movlw	04h-1
	movlb	0	; () banked
	cpfsgt	((LeerSensLinea@i))&0ffh
	goto	u6531
	goto	u6530

u6531:
	goto	l5294
u6530:
	goto	l1106
	
l1105:; BSR set to: 0

	goto	l1106
	line	344
	
l1103:; BSR set to: 0

	line	347
	
l1106:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_LeerSensLinea
	__end_of_LeerSensLinea:
	signat	_LeerSensLinea,88
	global	_Inicializar

;; *************** function _Inicializar *****************
;; Defined at:
;;		line 219 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ConfigurarGPIO
;;		_Configurar_Duty
;;		_Configurar_Interrupciones
;;		_Configurar_PWM
;;		_Configurar_Timer0
;;		_Configurar_Timer1
;;		_Configurar_Timer2
;;		_Configurar_UART
;;		_ResetTimers
;;		_beep
;;		_firulete
;;		_printf
;;		_set_motor_der
;;		_set_motor_izq
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	219
global __ptext8
__ptext8:
psect	text8
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	219
	global	__size_of_Inicializar
	__size_of_Inicializar	equ	__end_of_Inicializar-_Inicializar
	
_Inicializar:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	223
	
l6702:
	call	_ConfigurarGPIO	;wreg free
	line	224
	
l6704:
	bcf	c:(31833/8),(31833)&7	;volatile
	bcf	c:(31834/8),(31834)&7	;volatile
	bcf	c:(31841/8),(31841)&7	;volatile
	bcf	c:(31840/8),(31840)&7	;volatile
	line	225
	
l6706:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((Inicializar@i))&0ffh
	
l6708:; BSR set to: 0

		movlw	014h-1
	movlb	0	; () banked
	cpfsgt	((Inicializar@i))&0ffh
	goto	u9781
	goto	u9780

u9781:
	goto	l6712
u9780:
	goto	l6768
	
l6710:; BSR set to: 0

	goto	l6768
	line	226
	
l969:; BSR set to: 0

	
l6712:; BSR set to: 0

		movlw	8
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9791
	goto	u9790

u9791:
	goto	l6716
u9790:
	
l6714:; BSR set to: 0

	bcf	c:(31826/8),(31826)&7	;volatile
	goto	l6764
	
l972:; BSR set to: 0

	
l6716:; BSR set to: 0

		movlw	9
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9801
	goto	u9800

u9801:
	goto	l6720
u9800:
	
l6718:; BSR set to: 0

	bcf	c:(31824/8),(31824)&7	;volatile
	goto	l6764
	
l976:; BSR set to: 0

	
l6720:; BSR set to: 0

		movlw	10
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9811
	goto	u9810

u9811:
	goto	l6724
u9810:
	
l6722:; BSR set to: 0

	bcf	c:(31830/8),(31830)&7	;volatile
	goto	l6764
	
l980:; BSR set to: 0

	
l6724:; BSR set to: 0

		movlw	11
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9821
	goto	u9820

u9821:
	goto	l6728
u9820:
	
l6726:; BSR set to: 0

	bcf	c:(31829/8),(31829)&7	;volatile
	goto	l6764
	
l984:; BSR set to: 0

	
l6728:; BSR set to: 0

		movlw	12
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9831
	goto	u9830

u9831:
	goto	l6732
u9830:
	
l6730:; BSR set to: 0

	bcf	c:(31828/8),(31828)&7	;volatile
	goto	l6764
	
l988:; BSR set to: 0

	
l6732:; BSR set to: 0

		movlw	13
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9841
	goto	u9840

u9841:
	goto	l6736
u9840:
	
l6734:; BSR set to: 0

	bcf	c:(31827/8),(31827)&7	;volatile
	goto	l6764
	
l992:; BSR set to: 0

	
l6736:; BSR set to: 0

		movlw	14
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9851
	goto	u9850

u9851:
	goto	l6740
u9850:
	
l6738:; BSR set to: 0

	bcf	c:(31825/8),(31825)&7	;volatile
	goto	l6764
	
l996:; BSR set to: 0

	
l6740:; BSR set to: 0

		movlw	15
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9861
	goto	u9860

u9861:
	goto	l6744
u9860:
	
l6742:; BSR set to: 0

	bcf	c:(31831/8),(31831)&7	;volatile
	goto	l6764
	
l1000:; BSR set to: 0

	
l6744:; BSR set to: 0

		movlw	16
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9871
	goto	u9870

u9871:
	goto	l6748
u9870:
	
l6746:; BSR set to: 0

	bcf	((c:3968)),c,4	;volatile
	goto	l6764
	
l1004:; BSR set to: 0

	
l6748:; BSR set to: 0

	movlb	0	; () banked
	movf	((Inicializar@i))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u9881
	goto	u9880
u9881:
	goto	l6752
u9880:
	
l6750:; BSR set to: 0

	bcf	c:(31847/8),(31847)&7	;volatile
	goto	l6764
	
l1008:; BSR set to: 0

	
l6752:; BSR set to: 0

	movlb	0	; () banked
		decf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9891
	goto	u9890

u9891:
	goto	l6756
u9890:
	
l6754:; BSR set to: 0

	bcf	c:(31846/8),(31846)&7	;volatile
	goto	l6764
	
l1012:; BSR set to: 0

	
l6756:; BSR set to: 0

		movlw	2
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9901
	goto	u9900

u9901:
	goto	l6760
u9900:
	
l6758:; BSR set to: 0

	bcf	c:(31843/8),(31843)&7	;volatile
	goto	l6764
	
l1016:; BSR set to: 0

	
l6760:; BSR set to: 0

		movlw	3
	movlb	0	; () banked
	xorwf	((Inicializar@i))&0ffh,w
	btfss	status,2
	goto	u9911
	goto	u9910

u9911:
	goto	l6764
u9910:
	
l6762:; BSR set to: 0

	bcf	c:(31842/8),(31842)&7	;volatile
	goto	l6764
	
l1020:; BSR set to: 0

	goto	l6764
	
l1022:; BSR set to: 0

	goto	l6764
	
l1018:; BSR set to: 0

	goto	l6764
	
l1014:; BSR set to: 0

	goto	l6764
	
l1010:; BSR set to: 0

	goto	l6764
	
l1006:; BSR set to: 0

	goto	l6764
	
l1002:; BSR set to: 0

	goto	l6764
	
l998:; BSR set to: 0

	goto	l6764
	
l994:; BSR set to: 0

	goto	l6764
	
l990:; BSR set to: 0

	goto	l6764
	
l986:; BSR set to: 0

	goto	l6764
	
l982:; BSR set to: 0

	goto	l6764
	
l978:; BSR set to: 0

	goto	l6764
	
l974:; BSR set to: 0

	line	225
	
l6764:; BSR set to: 0

	movlb	0	; () banked
	incf	((Inicializar@i))&0ffh
	
l6766:; BSR set to: 0

		movlw	014h-1
	movlb	0	; () banked
	cpfsgt	((Inicializar@i))&0ffh
	goto	u9921
	goto	u9920

u9921:
	goto	l6712
u9920:
	goto	l6768
	
l970:; BSR set to: 0

	line	228
	
l6768:; BSR set to: 0

	call	_Configurar_UART	;wreg free
	line	229
	call	_Configurar_Timer2	;wreg free
	line	230
	call	_Configurar_Timer1	;wreg free
	line	231
	call	_Configurar_Timer0	;wreg free
	line	232
	call	_Configurar_PWM	;wreg free
	line	233
	
l6770:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((Configurar_Duty@duty+1))&0ffh
	movlw	low(0)
	movwf	((Configurar_Duty@duty))&0ffh
	movlw	(01h)&0ffh
	
	call	_Configurar_Duty
	line	234
	
l6772:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((Configurar_Duty@duty+1))&0ffh
	movlw	low(0)
	movwf	((Configurar_Duty@duty))&0ffh
	movlw	(02h)&0ffh
	
	call	_Configurar_Duty
	line	235
	call	_Configurar_Interrupciones	;wreg free
	line	237
	
l6774:
	call	_ResetTimers	;wreg free
	line	239
	
l6776:
	movlw	low(0)
	movwf	((c:4055)),c	;volatile
	
l6778:
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	243
	
l6780:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((set_motor_izq@duty+1))&0ffh
	movlw	low(0)
	movwf	((set_motor_izq@duty))&0ffh
	call	_set_motor_izq	;wreg free
	
l6782:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((set_motor_der@duty+1))&0ffh
	movlw	low(0)
	movwf	((set_motor_der@duty))&0ffh
	call	_set_motor_der	;wreg free
	line	244
	
l6784:
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((beep@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_beep
	line	245
	
l6786:
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((firulete@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_firulete
	line	246
	
l6788:
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((beep@n))&0ffh
	movlw	(01Eh)&0ffh
	
	call	_beep
	line	247
	
l6790:
		movlw	low(STR_7)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_7)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	248
	
l1023:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Inicializar
	__end_of_Inicializar:
	signat	_Inicializar,88
	global	_set_motor_izq

;; *************** function _set_motor_izq *****************
;; Defined at:
;;		line 253 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  duty            2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_loop
;;		_Inicializar
;;		_girar
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	253
global __ptext9
__ptext9:
psect	text9
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	253
	global	__size_of_set_motor_izq
	__size_of_set_motor_izq	equ	__end_of_set_motor_izq-_set_motor_izq
	
_set_motor_izq:
;incstack = 0
	opt	stack 24
	line	255
	
l4792:
	movlb	0	; () banked
	btfsc	((set_motor_izq@duty+1))&0ffh,7
	goto	u5800
	goto	u5801

u5801:
	goto	l1026
u5800:
	line	257
	
l4794:; BSR set to: 0

	bsf	c:(31840/8),(31840)&7	;volatile
	line	259
	
l4796:; BSR set to: 0

	movlb	0	; () banked
	btfss	((set_motor_izq@duty+1))&0ffh,7
	goto	u5811
	movlw	24
	movlb	0	; () banked
	subwf	 ((set_motor_izq@duty))&0ffh,w
	movlw	252
	movlb	0	; () banked
	subwfb	((set_motor_izq@duty+1))&0ffh,w
	btfsc	status,0
	goto	u5811
	goto	u5810

u5811:
	goto	l4800
u5810:
	line	260
	
l4798:; BSR set to: 0

	movlw	high(-1000)
	movlb	0	; () banked
	movwf	((set_motor_izq@duty+1))&0ffh
	movlw	low(-1000)
	movwf	((set_motor_izq@duty))&0ffh
	goto	l4800
	
l1027:; BSR set to: 0

	line	262
	
l4800:; BSR set to: 0

	movlw	low(03E8h)
	movlb	0	; () banked
	addwf	((set_motor_izq@duty))&0ffh,w
	movlb	0	; () banked
	movwf	((set_motor_izq@duty))&0ffh
	movlw	high(03E8h)
	movlb	0	; () banked
	addwfc	((set_motor_izq@duty+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((set_motor_izq@duty))&0ffh
	line	263
	goto	l4806
	line	264
	
l1026:; BSR set to: 0

	line	266
	bcf	c:(31840/8),(31840)&7	;volatile
	line	268
	
l4802:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((set_motor_izq@duty+1))&0ffh,7
	goto	u5821
	movlw	233
	movlb	0	; () banked
	subwf	 ((set_motor_izq@duty))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((set_motor_izq@duty+1))&0ffh,w
	btfss	status,0
	goto	u5821
	goto	u5820

u5821:
	goto	l4806
u5820:
	line	269
	
l4804:; BSR set to: 0

	movlw	high(03E8h)
	movlb	0	; () banked
	movwf	((set_motor_izq@duty+1))&0ffh
	movlw	low(03E8h)
	movwf	((set_motor_izq@duty))&0ffh
	goto	l4806
	
l1029:; BSR set to: 0

	goto	l4806
	line	270
	
l1028:; BSR set to: 0

	line	272
	
l4806:; BSR set to: 0

	movff	(set_motor_izq@duty),(___awdiv@dividend)
	movff	(set_motor_izq@duty+1),(___awdiv@dividend+1)
	movlw	high(04h)
	movlb	0	; () banked
	movwf	((___awdiv@divisor+1))&0ffh
	movlw	low(04h)
	movwf	((___awdiv@divisor))&0ffh
	call	___awdiv	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___awdiv)&0ffh,w
	movwf	((c:4030)),c	;volatile
	line	273
	
l4808:; BSR set to: 0

	movff	(set_motor_izq@duty),??_set_motor_izq+0+0
	movlw	03h
	movlb	0	; () banked
	andwf	(??_set_motor_izq+0+0)&0ffh
	movlb	0	; () banked
	swapf	(??_set_motor_izq+0+0)&0ffh
	movf	((c:4029)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_set_motor_izq+0+0)&0ffh,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_set_motor_izq+0+0)&0ffh,w
	movwf	((c:4029)),c	;volatile
	line	274
	
l1030:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_set_motor_izq
	__end_of_set_motor_izq:
	signat	_set_motor_izq,4216
	global	_set_motor_der

;; *************** function _set_motor_der *****************
;; Defined at:
;;		line 276 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  duty            2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_loop
;;		_Inicializar
;;		_girar
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
	line	276
global __ptext10
__ptext10:
psect	text10
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	276
	global	__size_of_set_motor_der
	__size_of_set_motor_der	equ	__end_of_set_motor_der-_set_motor_der
	
_set_motor_der:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	278
	
l4810:
	movlb	0	; () banked
	btfsc	((set_motor_der@duty+1))&0ffh,7
	goto	u5830
	goto	u5831

u5831:
	goto	l1033
u5830:
	line	280
	
l4812:; BSR set to: 0

	bsf	c:(31841/8),(31841)&7	;volatile
	line	282
	
l4814:; BSR set to: 0

	movlb	0	; () banked
	btfss	((set_motor_der@duty+1))&0ffh,7
	goto	u5841
	movlw	24
	movlb	0	; () banked
	subwf	 ((set_motor_der@duty))&0ffh,w
	movlw	252
	movlb	0	; () banked
	subwfb	((set_motor_der@duty+1))&0ffh,w
	btfsc	status,0
	goto	u5841
	goto	u5840

u5841:
	goto	l4818
u5840:
	line	283
	
l4816:; BSR set to: 0

	movlw	high(-1000)
	movlb	0	; () banked
	movwf	((set_motor_der@duty+1))&0ffh
	movlw	low(-1000)
	movwf	((set_motor_der@duty))&0ffh
	goto	l4818
	
l1034:; BSR set to: 0

	line	285
	
l4818:; BSR set to: 0

	movlw	low(03E8h)
	movlb	0	; () banked
	addwf	((set_motor_der@duty))&0ffh,w
	movlb	0	; () banked
	movwf	((set_motor_der@duty))&0ffh
	movlw	high(03E8h)
	movlb	0	; () banked
	addwfc	((set_motor_der@duty+1))&0ffh,w
	movlb	0	; () banked
	movwf	1+((set_motor_der@duty))&0ffh
	line	286
	goto	l4824
	line	287
	
l1033:; BSR set to: 0

	line	289
	bcf	c:(31841/8),(31841)&7	;volatile
	line	291
	
l4820:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((set_motor_der@duty+1))&0ffh,7
	goto	u5851
	movlw	233
	movlb	0	; () banked
	subwf	 ((set_motor_der@duty))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((set_motor_der@duty+1))&0ffh,w
	btfss	status,0
	goto	u5851
	goto	u5850

u5851:
	goto	l4824
u5850:
	line	292
	
l4822:; BSR set to: 0

	movlw	high(03E8h)
	movlb	0	; () banked
	movwf	((set_motor_der@duty+1))&0ffh
	movlw	low(03E8h)
	movwf	((set_motor_der@duty))&0ffh
	goto	l4824
	
l1036:; BSR set to: 0

	goto	l4824
	line	293
	
l1035:; BSR set to: 0

	line	295
	
l4824:; BSR set to: 0

	movff	(set_motor_der@duty),(___awdiv@dividend)
	movff	(set_motor_der@duty+1),(___awdiv@dividend+1)
	movlw	high(04h)
	movlb	0	; () banked
	movwf	((___awdiv@divisor+1))&0ffh
	movlw	low(04h)
	movwf	((___awdiv@divisor))&0ffh
	call	___awdiv	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___awdiv)&0ffh,w
	movwf	((c:4027)),c	;volatile
	line	296
	
l4826:; BSR set to: 0

	movff	(set_motor_der@duty),??_set_motor_der+0+0
	movlw	03h
	movlb	0	; () banked
	andwf	(??_set_motor_der+0+0)&0ffh
	movlb	0	; () banked
	swapf	(??_set_motor_der+0+0)&0ffh
	movf	((c:4026)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_set_motor_der+0+0)&0ffh,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_set_motor_der+0+0)&0ffh,w
	movwf	((c:4026)),c	;volatile
	line	297
	
l1037:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_set_motor_der
	__end_of_set_motor_der:
	signat	_set_motor_der,4216
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[BANK0 ] int 
;;  divisor         2   16[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   20[BANK0 ] int 
;;  sign            1   19[BANK0 ] unsigned char 
;;  counter         1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Display7Seg
;;		_set_motor_izq
;;		_set_motor_der
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	8
global __ptext11
__ptext11:
psect	text11
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	14
	
l4662:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((___awdiv@sign))&0ffh
	line	15
	
l4664:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___awdiv@divisor+1))&0ffh,7
	goto	u5610
	goto	u5611

u5611:
	goto	l4670
u5610:
	line	16
	
l4666:; BSR set to: 0

	movlb	0	; () banked
	negf	((___awdiv@divisor))&0ffh
	comf	((___awdiv@divisor+1))&0ffh
	btfsc	status,0
	incf	((___awdiv@divisor+1))&0ffh
	line	17
	
l4668:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___awdiv@sign))&0ffh
	goto	l4670
	line	18
	
l1963:; BSR set to: 0

	line	19
	
l4670:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___awdiv@dividend+1))&0ffh,7
	goto	u5620
	goto	u5621

u5621:
	goto	l4676
u5620:
	line	20
	
l4672:; BSR set to: 0

	movlb	0	; () banked
	negf	((___awdiv@dividend))&0ffh
	comf	((___awdiv@dividend+1))&0ffh
	btfsc	status,0
	incf	((___awdiv@dividend+1))&0ffh
	line	21
	
l4674:; BSR set to: 0

	movlw	(01h)&0ffh
	movlb	0	; () banked
	xorwf	((___awdiv@sign))&0ffh
	goto	l4676
	line	22
	
l1964:; BSR set to: 0

	line	23
	
l4676:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((___awdiv@quotient+1))&0ffh
	movlw	low(0)
	movwf	((___awdiv@quotient))&0ffh
	line	24
	
l4678:; BSR set to: 0

	movlb	0	; () banked
	movf	((___awdiv@divisor))&0ffh,w
	movlb	0	; () banked
iorwf	((___awdiv@divisor+1))&0ffh,w
	btfsc	status,2
	goto	u5631
	goto	u5630

u5631:
	goto	l4698
u5630:
	line	25
	
l4680:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___awdiv@counter))&0ffh
	line	26
	goto	l4684
	
l1967:; BSR set to: 0

	line	27
	
l4682:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___awdiv@divisor))&0ffh
	rlcf	((___awdiv@divisor+1))&0ffh
	line	28
	movlb	0	; () banked
	incf	((___awdiv@counter))&0ffh
	goto	l4684
	line	29
	
l1966:; BSR set to: 0

	line	26
	
l4684:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___awdiv@divisor+1))&0ffh,(15)&7
	goto	u5641
	goto	u5640
u5641:
	goto	l4682
u5640:
	goto	l4686
	
l1968:; BSR set to: 0

	goto	l4686
	line	30
	
l1969:; BSR set to: 0

	line	31
	
l4686:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___awdiv@quotient))&0ffh
	rlcf	((___awdiv@quotient+1))&0ffh
	line	32
	
l4688:; BSR set to: 0

	movlb	0	; () banked
		movf	((___awdiv@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___awdiv@dividend))&0ffh,w
	movlb	0	; () banked
	movf	((___awdiv@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___awdiv@dividend+1))&0ffh,w
	btfss	status,0
	goto	u5651
	goto	u5650

u5651:
	goto	l4694
u5650:
	line	33
	
l4690:; BSR set to: 0

	movlb	0	; () banked
	movf	((___awdiv@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___awdiv@dividend))&0ffh
	movlb	0	; () banked
	movf	((___awdiv@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___awdiv@dividend+1))&0ffh

	line	34
	
l4692:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(0/8)+(___awdiv@quotient))&0ffh,(0)&7
	goto	l4694
	line	35
	
l1970:; BSR set to: 0

	line	36
	
l4694:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___awdiv@divisor+1))&0ffh
	rrcf	((___awdiv@divisor))&0ffh
	line	37
	
l4696:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___awdiv@counter))&0ffh
	
	goto	l4686
	goto	l4698
	
l1971:; BSR set to: 0

	goto	l4698
	line	38
	
l1965:; BSR set to: 0

	line	39
	
l4698:; BSR set to: 0

	movlb	0	; () banked
	movf	((___awdiv@sign))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u5661
	goto	u5660
u5661:
	goto	l4702
u5660:
	line	40
	
l4700:; BSR set to: 0

	movlb	0	; () banked
	negf	((___awdiv@quotient))&0ffh
	comf	((___awdiv@quotient+1))&0ffh
	btfsc	status,0
	incf	((___awdiv@quotient+1))&0ffh
	goto	l4702
	
l1972:; BSR set to: 0

	line	41
	
l4702:; BSR set to: 0

	movff	(___awdiv@quotient),(?___awdiv)
	movff	(___awdiv@quotient+1),(?___awdiv+1)
	goto	l1973
	
l4704:; BSR set to: 0

	line	42
	
l1973:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 464 in file "/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2   26[BANK0 ] PTR const unsigned char 
;;		 -> STR_7(29), STR_6(3), STR_5(10), STR_4(3), 
;;		 -> STR_3(10), STR_2(3), STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  width           2   10[BANK1 ] int 
;;  len             2    8[BANK1 ] unsigned int 
;;  val             2    5[BANK1 ] unsigned int 
;;  cp              2    2[BANK1 ] PTR const unsigned char 
;;		 -> printf@c(1), 
;;  ap              2    0[BANK1 ] PTR void [1]
;;		 -> ?_printf(2), 
;;  c               1   12[BANK1 ] char 
;;  prec            1    7[BANK1 ] char 
;;  flag            1    4[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   26[BANK0 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       6       0       0       0       0       0       0       0
;;      Locals:         0       0      13       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0
;;      Totals:         0      10      13       0       0       0       0       0       0
;;Total ram usage:       23 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		___wmul
;;		_isdigit
;;		_putch
;; This function is called by:
;;		_testeo_US
;;		_Inicializar
;;		_testeo_sensores
;;		_test
;;		_serialprint
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	464
global __ptext12
__ptext12:
psect	text12
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	533
	
l6572:
		movlw	low(?_printf+02h)
	movlb	1	; () banked
	movwf	((printf@ap))&0ffh
	movlw	high(?_printf+02h)
	movlb	1	; () banked
	movwf	((printf@ap+1))&0ffh

	line	536
	goto	l6668
	
l1734:; BSR set to: 1

	line	538
	
l6574:; BSR set to: 1

		movlw	37
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfsc	status,2
	goto	u9561
	goto	u9560

u9561:
	goto	l6578
u9560:
	line	541
	
l6576:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_putch
	line	542
	goto	l6668
	line	543
	
l1735:
	line	546
	
l6578:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	line	548
	movlw	low(0)
	movlb	1	; () banked
	movwf	((printf@flag))&0ffh
	goto	l6584
	line	550
	
l1736:; BSR set to: 1

	line	551
	goto	l6584
	line	579
	
l1738:; BSR set to: 1

	line	580
	
l6580:
	movlb	1	; () banked
	bsf	(0+(2/8)+(printf@flag))&0ffh,(2)&7
	line	581
	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	line	582
	goto	l6584
	line	584
	
l6582:; BSR set to: 0

	goto	l6586
	line	551
	
l1737:; BSR set to: 0

	
l6584:
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
	goto	l6580
	goto	l6586

	line	584
	
l1740:
	line	585
	goto	l6586
	line	586
	
l1739:
	goto	l6584
	
l1741:
	line	597
	
l6586:
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
	goto	u9571
	goto	u9570
u9571:
	goto	l6622
u9570:
	line	598
	
l6588:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l6590
	line	599
	
l1743:; BSR set to: 1

	line	600
	
l6590:
	movff	(printf@width),(___wmul@multiplier)
	movff	(printf@width+1),(___wmul@multiplier+1)
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((___wmul@multiplicand+1))&0ffh
	movlw	low(0Ah)
	movwf	((___wmul@multiplicand))&0ffh
	call	___wmul	;wreg free
	movff	0+?___wmul,(printf@width)
	movff	1+?___wmul,(printf@width+1)
	line	601
	
l6592:
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
	movlb	1	; () banked
	addwf	((printf@width))&0ffh
	movlb	0	; () banked
	movf	(??_printf+2+1)&0ffh,w
	movlb	1	; () banked
	addwfc	((printf@width+1))&0ffh

	
l6594:; BSR set to: 1

	movlb	0	; () banked
	infsnz	((printf@f))&0ffh
	incf	((printf@f+1))&0ffh
	line	602
	
l6596:; BSR set to: 0

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
	goto	u9581
	goto	u9580
u9581:
	goto	l6590
u9580:
	goto	l6622
	
l1744:
	goto	l6622
	line	608
	
l1742:
	line	635
	goto	l6622
	line	637
	
l1746:
	line	638
	goto	l1777
	line	750
	
l1748:
	line	757
	
l6598:
	movlb	1	; () banked
		movf	((printf@width))&0ffh,w
	movlb	1	; () banked
	subwf	((printf@len))&0ffh,w
	movlb	1	; () banked
	movf	((printf@width+1))&0ffh,w
	movlb	1	; () banked
	subwfb	((printf@len+1))&0ffh,w
	btfsc	status,0
	goto	u9591
	goto	u9590

u9591:
	goto	l6602
u9590:
	line	758
	
l6600:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@len))&0ffh,w
	movlb	1	; () banked
	subwf	((printf@width))&0ffh
	movlb	1	; () banked
	movf	((printf@len+1))&0ffh,w
	movlb	1	; () banked
	subwfb	((printf@width+1))&0ffh

	goto	l6606
	line	759
	
l1749:; BSR set to: 1

	line	760
	
l6602:; BSR set to: 1

	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l6606
	
l1750:; BSR set to: 1

	line	764
	goto	l6606
	
l1752:; BSR set to: 1

	line	765
	
l6604:; BSR set to: 1

	movlw	(020h)&0ffh
	
	call	_putch
	goto	l6606
	
l1751:
	line	764
	
l6606:
	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	1	; () banked
		incf	((printf@width))&0ffh,w
	bnz	u9601
	movlb	1	; () banked
	incf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u9601
	goto	u9600

u9601:
	goto	l6604
u9600:
	goto	l6612
	
l1753:; BSR set to: 1

	line	767
	goto	l6612
	
l1755:; BSR set to: 1

	line	768
	
l6608:; BSR set to: 1

	movff	(printf@cp),fsr2l
	movff	(printf@cp+1),fsr2h
	movf	indf2,w
	
	call	_putch
	
l6610:
	movlb	1	; () banked
	infsnz	((printf@cp))&0ffh
	incf	((printf@cp+1))&0ffh
	goto	l6612
	
l1754:; BSR set to: 1

	line	767
	
l6612:; BSR set to: 1

	movlb	1	; () banked
	decf	((printf@len))&0ffh
	btfss	status,0
	decf	((printf@len+1))&0ffh
	movlb	1	; () banked
		incf	((printf@len))&0ffh,w
	bnz	u9611
	movlb	1	; () banked
	incf	((printf@len+1))&0ffh,w
	btfss	status,2
	goto	u9611
	goto	u9610

u9611:
	goto	l6608
u9610:
	goto	l6668
	
l1756:; BSR set to: 1

	line	774
	goto	l6668
	line	802
	
l1757:; BSR set to: 1

	line	805
	
l6614:; BSR set to: 1

		movlw	low(printf@c)
	movlb	1	; () banked
	movwf	((printf@cp))&0ffh
	movlw	high(printf@c)
	movlb	1	; () banked
	movwf	((printf@cp+1))&0ffh

	line	806
	
l6616:; BSR set to: 1

	movlw	high(01h)
	movlb	1	; () banked
	movwf	((printf@len+1))&0ffh
	movlw	low(01h)
	movwf	((printf@len))&0ffh
	line	807
	goto	l6598
	line	817
	
l1758:; BSR set to: 1

	line	818
	
l6618:; BSR set to: 1

	movlw	(0C0h)&0ffh
	movlb	1	; () banked
	iorwf	((printf@flag))&0ffh
	line	819
	goto	l6624
	line	822
	
l6620:; BSR set to: 1

	goto	l6624
	line	635
	
l1745:; BSR set to: 1

	
l6622:
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
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 117
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l1777
	xorlw	117^0	; case 117
	skipnz
	goto	l6618
	goto	l6614

	line	822
	
l1759:; BSR set to: 1

	line	1286
	
l6624:; BSR set to: 1

	movff	(printf@ap),fsr2l
	movff	(printf@ap+1),fsr2h
	movff	postinc2,(printf@val)
	movff	postdec2,(printf@val+1)
	
l6626:; BSR set to: 1

	movlw	02h
	movlb	1	; () banked
	addwf	((printf@ap))&0ffh
	movlw	0
	addwfc	((printf@ap+1))&0ffh
	line	1305
	
l6628:; BSR set to: 1

	movlw	low(01h)
	movlb	1	; () banked
	movwf	((printf@c))&0ffh
	
l6630:; BSR set to: 1

		movlw	5
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u9621
	goto	u9620

u9621:
	goto	l6634
u9620:
	goto	l6642
	
l6632:; BSR set to: 1

	goto	l6642
	line	1306
	
l1760:; BSR set to: 1

	
l6634:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
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
	movlb	1	; () banked
	subwf	((printf@val))&0ffh,w
	tblrd	*+
	movf	tablat,w
	movlb	1	; () banked
	subwfb	((printf@val+1))&0ffh,w
	btfsc	status,0
	goto	u9631
	goto	u9630

u9631:
	goto	l6638
u9630:
	goto	l6642
	line	1307
	
l6636:; BSR set to: 1

	goto	l6642
	
l1762:; BSR set to: 1

	line	1305
	
l6638:; BSR set to: 1

	movlb	1	; () banked
	incf	((printf@c))&0ffh
	
l6640:; BSR set to: 1

		movlw	5
	movlb	1	; () banked
	xorwf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u9641
	goto	u9640

u9641:
	goto	l6634
u9640:
	goto	l6642
	
l1761:; BSR set to: 1

	line	1381
	
l6642:; BSR set to: 1

	movlw	080h
	movlb	1	; () banked
	btfsc	((printf@c))&0ffh,7
	movlw	07fh
	movlb	0	; () banked
	movwf	(??_printf+0+0)&0ffh
	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
	subwf	((printf@c))&0ffh,w
	movlb	1	; () banked
	movf	((printf@width+1))&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_printf+0+0)&0ffh,w
	btfsc	status,0
	goto	u9651
	goto	u9650
u9651:
	goto	l6646
u9650:
	line	1382
	
l6644:; BSR set to: 0

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	movlb	1	; () banked
	subwf	((printf@width))&0ffh
	movlw	0
	movlb	1	; () banked
	btfsc	((printf@c))&0ffh,7
	movlw	0ffh
	movlb	1	; () banked
	subwfb	((printf@width+1))&0ffh

	goto	l6648
	line	1383
	
l1763:; BSR set to: 1

	line	1384
	
l6646:
	movlw	high(0)
	movlb	1	; () banked
	movwf	((printf@width+1))&0ffh
	movlw	low(0)
	movwf	((printf@width))&0ffh
	goto	l6648
	
l1764:; BSR set to: 1

	line	1387
	
l6648:; BSR set to: 1

	movlb	1	; () banked
	
	movlb	1	; () banked
	btfss	((printf@flag))&0ffh,(2)&7
	goto	u9661
	goto	u9660
u9661:
	goto	l6656
u9660:
	line	1415
	
l6650:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u9671
	goto	u9670

u9671:
	goto	l1769
u9670:
	goto	l6652
	line	1416
	
l1767:; BSR set to: 1

	line	1417
	
l6652:; BSR set to: 1

	movlw	(030h)&0ffh
	
	call	_putch
	line	1418
	
l6654:
	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u9681
	goto	u9680

u9681:
	goto	l6652
u9680:
	goto	l1769
	
l1768:; BSR set to: 1

	goto	l1769
	
l1766:; BSR set to: 1

	line	1420
	goto	l1769
	
l1765:; BSR set to: 1

	line	1428
	
l6656:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfsc	status,2
	goto	u9691
	goto	u9690

u9691:
	goto	l1769
u9690:
	goto	l6658
	line	1429
	
l1771:; BSR set to: 1

	line	1430
	
l6658:; BSR set to: 1

	movlw	(020h)&0ffh
	
	call	_putch
	line	1431
	
l6660:
	movlb	1	; () banked
	decf	((printf@width))&0ffh
	btfss	status,0
	decf	((printf@width+1))&0ffh
	movlb	1	; () banked
	movf	((printf@width))&0ffh,w
	movlb	1	; () banked
iorwf	((printf@width+1))&0ffh,w
	btfss	status,2
	goto	u9701
	goto	u9700

u9701:
	goto	l6658
u9700:
	goto	l1769
	
l1772:; BSR set to: 1

	goto	l1769
	
l1770:; BSR set to: 1

	line	1469
	
l1769:; BSR set to: 1

	line	1472
	movff	(printf@c),(printf@prec)
	line	1474
	goto	l6666
	
l1774:; BSR set to: 1

	line	1489
	
l6662:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@prec))&0ffh,w
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
	
	movff	tablat,(___lwdiv@divisor)
	tblrd*-
	
	movff	tablat,(___lwdiv@divisor+1)

	movff	(printf@val),(___lwdiv@dividend)
	movff	(printf@val+1),(___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(___lwmod@dividend)
	movff	1+?___lwdiv,(___lwmod@dividend+1)
	movlw	high(0Ah)
	movlb	0	; () banked
	movwf	((___lwmod@divisor+1))&0ffh
	movlw	low(0Ah)
	movwf	((___lwmod@divisor))&0ffh
	call	___lwmod	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(0+?___lwmod)&0ffh,w
	addlw	low(030h)
	movlb	1	; () banked
	movwf	((printf@c))&0ffh
	line	1524
	
l6664:; BSR set to: 1

	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	
	call	_putch
	goto	l6666
	line	1525
	
l1773:
	line	1474
	
l6666:
	movlb	1	; () banked
	decf	((printf@prec))&0ffh
	movlb	1	; () banked
		incf	((printf@prec))&0ffh,w
	btfss	status,2
	goto	u9711
	goto	u9710

u9711:
	goto	l6662
u9710:
	goto	l6668
	
l1775:; BSR set to: 1

	goto	l6668
	line	1533
	
l1733:; BSR set to: 1

	line	536
	
l6668:
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
	movlb	1	; () banked
	movf	((printf@c))&0ffh,w
	btfss	status,2
	goto	u9721
	goto	u9720
u9721:
	goto	l6574
u9720:
	goto	l1777
	
l1776:; BSR set to: 1

	goto	l1777
	line	1535
	
l1747:; BSR set to: 1

	line	1541
;	Return value of _printf is never used
	
l1777:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 526 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	526
global __ptext13
__ptext13:
psect	text13
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	526
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 23
	movlb	0	; () banked
	movwf	((putch@data))&0ffh
	line	528
	
l6512:; BSR set to: 0

	goto	l1533
	
l1534:; BSR set to: 0

	line	529
	
l1533:
	line	528
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u9471
	goto	u9470
u9471:
	goto	l1533
u9470:
	goto	l6514
	
l1535:
	line	530
	
l6514:
	movff	(putch@data),(c:4013)	;volatile
	line	531
	
l1536:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4216
	global	_isdigit

;; *************** function _isdigit *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/isdigit.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   16[BANK0 ] unsigned char 
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
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/isdigit.c"
	line	8
global __ptext14
__ptext14:
psect	text14
	file	"/opt/microchip/xc8/v1.34/sources/common/isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:
;incstack = 0
	opt	stack 23
	movlb	0	; () banked
	movwf	((isdigit@c))&0ffh
	line	14
	
l6516:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_isdigit$2369))&0ffh
	
l6518:; BSR set to: 0

		movlw	03Ah-0
	movlb	0	; () banked
	cpfslt	((isdigit@c))&0ffh
	goto	u9481
	goto	u9480

u9481:
	goto	l6524
u9480:
	
l6520:; BSR set to: 0

		movlw	030h-1
	movlb	0	; () banked
	cpfsgt	((isdigit@c))&0ffh
	goto	u9491
	goto	u9490

u9491:
	goto	l6524
u9490:
	
l6522:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_isdigit$2369))&0ffh
	goto	l6524
	
l2210:; BSR set to: 0

	
l6524:; BSR set to: 0

	movff	(_isdigit$2369),??_isdigit+0+0
	movlb	0	; () banked
	rrcf	(??_isdigit+0+0)&0ffh,w
	goto	l2211
	
l6526:; BSR set to: 0

	line	15
	
l2211:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   21[BANK0 ] unsigned int 
;;  divisor         2   23[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   21[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
	line	8
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	13
	
l6556:
	movlb	0	; () banked
	movf	((___lwmod@divisor))&0ffh,w
	movlb	0	; () banked
iorwf	((___lwmod@divisor+1))&0ffh,w
	btfsc	status,2
	goto	u9531
	goto	u9530

u9531:
	goto	l2313
u9530:
	line	14
	
l6558:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___lwmod@counter))&0ffh
	line	15
	goto	l6562
	
l2315:; BSR set to: 0

	line	16
	
l6560:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___lwmod@divisor))&0ffh
	rlcf	((___lwmod@divisor+1))&0ffh
	line	17
	movlb	0	; () banked
	incf	((___lwmod@counter))&0ffh
	goto	l6562
	line	18
	
l2314:; BSR set to: 0

	line	15
	
l6562:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___lwmod@divisor+1))&0ffh,(15)&7
	goto	u9541
	goto	u9540
u9541:
	goto	l6560
u9540:
	goto	l6564
	
l2316:; BSR set to: 0

	goto	l6564
	line	19
	
l2317:; BSR set to: 0

	line	20
	
l6564:; BSR set to: 0

	movlb	0	; () banked
		movf	((___lwmod@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___lwmod@dividend))&0ffh,w
	movlb	0	; () banked
	movf	((___lwmod@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___lwmod@dividend+1))&0ffh,w
	btfss	status,0
	goto	u9551
	goto	u9550

u9551:
	goto	l6568
u9550:
	line	21
	
l6566:; BSR set to: 0

	movlb	0	; () banked
	movf	((___lwmod@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___lwmod@dividend))&0ffh
	movlb	0	; () banked
	movf	((___lwmod@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___lwmod@dividend+1))&0ffh

	goto	l6568
	
l2318:; BSR set to: 0

	line	22
	
l6568:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___lwmod@divisor+1))&0ffh
	rrcf	((___lwmod@divisor))&0ffh
	line	23
	
l6570:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___lwmod@counter))&0ffh
	
	goto	l6564
	goto	l2313
	
l2319:; BSR set to: 0

	line	24
	
l2313:; BSR set to: 0

	line	25
	movff	(___lwmod@dividend),(?___lwmod)
	movff	(___lwmod@dividend+1),(?___lwmod+1)
	line	26
	
l2320:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   14[BANK0 ] unsigned int 
;;  divisor         2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   19[BANK0 ] unsigned int 
;;  counter         1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printf
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
	line	8
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	14
	
l6534:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((___lwdiv@quotient+1))&0ffh
	movlw	low(0)
	movwf	((___lwdiv@quotient))&0ffh
	line	15
	
l6536:; BSR set to: 0

	movlb	0	; () banked
	movf	((___lwdiv@divisor))&0ffh,w
	movlb	0	; () banked
iorwf	((___lwdiv@divisor+1))&0ffh,w
	btfsc	status,2
	goto	u9501
	goto	u9500

u9501:
	goto	l2303
u9500:
	line	16
	
l6538:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((___lwdiv@counter))&0ffh
	line	17
	goto	l6542
	
l2305:; BSR set to: 0

	line	18
	
l6540:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___lwdiv@divisor))&0ffh
	rlcf	((___lwdiv@divisor+1))&0ffh
	line	19
	movlb	0	; () banked
	incf	((___lwdiv@counter))&0ffh
	goto	l6542
	line	20
	
l2304:; BSR set to: 0

	line	17
	
l6542:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___lwdiv@divisor+1))&0ffh,(15)&7
	goto	u9511
	goto	u9510
u9511:
	goto	l6540
u9510:
	goto	l6544
	
l2306:; BSR set to: 0

	goto	l6544
	line	21
	
l2307:; BSR set to: 0

	line	22
	
l6544:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___lwdiv@quotient))&0ffh
	rlcf	((___lwdiv@quotient+1))&0ffh
	line	23
	
l6546:; BSR set to: 0

	movlb	0	; () banked
		movf	((___lwdiv@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___lwdiv@dividend))&0ffh,w
	movlb	0	; () banked
	movf	((___lwdiv@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___lwdiv@dividend+1))&0ffh,w
	btfss	status,0
	goto	u9521
	goto	u9520

u9521:
	goto	l6552
u9520:
	line	24
	
l6548:; BSR set to: 0

	movlb	0	; () banked
	movf	((___lwdiv@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___lwdiv@dividend))&0ffh
	movlb	0	; () banked
	movf	((___lwdiv@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___lwdiv@dividend+1))&0ffh

	line	25
	
l6550:; BSR set to: 0

	movlb	0	; () banked
	bsf	(0+(0/8)+(___lwdiv@quotient))&0ffh,(0)&7
	goto	l6552
	line	26
	
l2308:; BSR set to: 0

	line	27
	
l6552:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___lwdiv@divisor+1))&0ffh
	rrcf	((___lwdiv@divisor))&0ffh
	line	28
	
l6554:; BSR set to: 0

	movlb	0	; () banked
	decfsz	((___lwdiv@counter))&0ffh
	
	goto	l6544
	goto	l2303
	
l2309:; BSR set to: 0

	line	29
	
l2303:; BSR set to: 0

	line	30
	movff	(___lwdiv@quotient),(?___lwdiv)
	movff	(___lwdiv@quotient+1),(?___lwdiv+1)
	line	31
	
l2310:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_firulete

;; *************** function _firulete *****************
;; Defined at:
;;		line 63 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  t               1    wreg     unsigned char 
;;  n               1   20[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  t               1   23[BANK0 ] unsigned char 
;;  i               2   26[BANK0 ] unsigned int 
;;  veces           2   24[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       1       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_StartTimer
;;		_TimerIsReady
;;		_displayByte
;; This function is called by:
;;		_loop
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	63
global __ptext17
__ptext17:
psect	text17
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	63
	global	__size_of_firulete
	__size_of_firulete	equ	__end_of_firulete-_firulete
	
_firulete:; BSR set to: 0

;incstack = 0
	opt	stack 24
	movlb	0	; () banked
	movwf	((firulete@t))&0ffh
	line	67
	
l4930:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((firulete@veces+1))&0ffh
	movlw	low(0)
	movwf	((firulete@veces))&0ffh
	goto	l4950
	line	68
	
l956:; BSR set to: 0

	line	69
	
l4932:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((firulete@i+1))&0ffh
	movlw	low(0)
	movwf	((firulete@i))&0ffh
	
l4934:; BSR set to: 0

	movlb	0	; () banked
		movf	((firulete@i+1))&0ffh,w
	bnz	u5950
	movlw	6
	movlb	0	; () banked
	subwf	 ((firulete@i))&0ffh,w
	btfss	status,0
	goto	u5951
	goto	u5950

u5951:
	goto	l4938
u5950:
	goto	l4948
	
l4936:; BSR set to: 0

	goto	l4948
	line	70
	
l957:; BSR set to: 0

	line	71
	
l4938:; BSR set to: 0

	movff	(firulete@i),??_firulete+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_firulete+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_firulete+0+0)&0ffh
	goto	u5964
u5965:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_firulete+1+0))&0ffh
u5964:
	movlb	0	; () banked
	decfsz	(??_firulete+0+0)&0ffh
	goto	u5965
	movlb	0	; () banked
	movf	((??_firulete+1+0))&0ffh,w
	
	call	_displayByte
	line	72
	
l4940:
	movff	(firulete@t),(StartTimer@value)
	movlb	0	; () banked
	clrf	((StartTimer@value+1))&0ffh
	movlw	(0)&0ffh
	
	call	_StartTimer
	goto	l4942
	
l960:
	goto	l4942
	
l959:
	
l4942:
	movlw	(0)&0ffh
	
	call	_TimerIsReady
	iorlw	0
	btfsc	status,2
	goto	u5971
	goto	u5970
u5971:
	goto	l4942
u5970:
	goto	l4944
	
l961:
	line	69
	
l4944:
	movlb	0	; () banked
	infsnz	((firulete@i))&0ffh
	incf	((firulete@i+1))&0ffh
	
l4946:; BSR set to: 0

	movlb	0	; () banked
		movf	((firulete@i+1))&0ffh,w
	bnz	u5980
	movlw	6
	movlb	0	; () banked
	subwf	 ((firulete@i))&0ffh,w
	btfss	status,0
	goto	u5981
	goto	u5980

u5981:
	goto	l4938
u5980:
	goto	l4948
	
l958:; BSR set to: 0

	line	67
	
l4948:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((firulete@veces))&0ffh
	incf	((firulete@veces+1))&0ffh
	goto	l4950
	
l955:; BSR set to: 0

	
l4950:; BSR set to: 0

	movlb	0	; () banked
	movf	((firulete@n))&0ffh,w
	movlb	0	; () banked
	movwf	(??_firulete+0+0)&0ffh
	clrf	(??_firulete+0+0+1)&0ffh

	movlb	0	; () banked
		movf	(??_firulete+0+0)&0ffh,w
	movlb	0	; () banked
	subwf	((firulete@veces))&0ffh,w
	movlb	0	; () banked
	movf	(??_firulete+0+1)&0ffh,w
	movlb	0	; () banked
	subwfb	((firulete@veces+1))&0ffh,w
	btfss	status,0
	goto	u5991
	goto	u5990

u5991:
	goto	l4932
u5990:
	goto	l4952
	
l962:; BSR set to: 0

	line	75
	
l4952:; BSR set to: 0

	movlw	(0)&0ffh
	
	call	_displayByte
	line	76
	
l963:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_firulete
	__end_of_firulete:
	signat	_firulete,8312
	global	_displayByte

;; *************** function _displayByte *****************
;; Defined at:
;;		line 56 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  bcd             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  bcd             1   17[BANK0 ] unsigned char 
;;  i               1   19[BANK0 ] unsigned char 
;;  j               1   18[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_loop
;;		_testeo_CNY
;;		_Display7Seg
;;		_firulete
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
	line	56
global __ptext18
__ptext18:
psect	text18
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	56
	global	__size_of_displayByte
	__size_of_displayByte	equ	__end_of_displayByte-_displayByte
	
_displayByte:
;incstack = 0
	opt	stack 24
	movlb	0	; () banked
	movwf	((displayByte@bcd))&0ffh
	line	59
	
l4502:; BSR set to: 0

	movlw	low(08h)
	movlb	0	; () banked
	movwf	((displayByte@i))&0ffh
	movlw	low(0)
	movlb	0	; () banked
	movwf	((displayByte@j))&0ffh
	
l4504:; BSR set to: 0

		movlw	0Fh-1
	movlb	0	; () banked
	cpfsgt	((displayByte@i))&0ffh
	goto	u4901
	goto	u4900

u4901:
	goto	l4508
u4900:
	goto	l952
	
l4506:; BSR set to: 0

	goto	l952
	line	60
	
l898:; BSR set to: 0

	
l4508:; BSR set to: 0

		movlw	8
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u4911
	goto	u4910

u4911:
	goto	l4512
u4910:
	
l4510:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u4924
u4925:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u4924:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u4925
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u4931
	goto	u4930
u4931:
	bsf	c:(31826/8),(31826)&7	;volatile
	goto	u4945
u4930:
	bcf	c:(31826/8),(31826)&7	;volatile
u4945:
	goto	l4560
	
l901:
	
l4512:
		movlw	9
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u4951
	goto	u4950

u4951:
	goto	l4516
u4950:
	
l4514:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u4964
u4965:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u4964:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u4965
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u4971
	goto	u4970
u4971:
	bsf	c:(31824/8),(31824)&7	;volatile
	goto	u4985
u4970:
	bcf	c:(31824/8),(31824)&7	;volatile
u4985:
	goto	l4560
	
l905:
	
l4516:
		movlw	10
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u4991
	goto	u4990

u4991:
	goto	l4520
u4990:
	
l4518:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5004
u5005:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5004:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5005
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5011
	goto	u5010
u5011:
	bsf	c:(31830/8),(31830)&7	;volatile
	goto	u5025
u5010:
	bcf	c:(31830/8),(31830)&7	;volatile
u5025:
	goto	l4560
	
l909:
	
l4520:
		movlw	11
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5031
	goto	u5030

u5031:
	goto	l4524
u5030:
	
l4522:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5044
u5045:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5044:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5045
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5051
	goto	u5050
u5051:
	bsf	c:(31829/8),(31829)&7	;volatile
	goto	u5065
u5050:
	bcf	c:(31829/8),(31829)&7	;volatile
u5065:
	goto	l4560
	
l913:
	
l4524:
		movlw	12
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5071
	goto	u5070

u5071:
	goto	l4528
u5070:
	
l4526:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5084
u5085:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5084:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5085
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5091
	goto	u5090
u5091:
	bsf	c:(31828/8),(31828)&7	;volatile
	goto	u5105
u5090:
	bcf	c:(31828/8),(31828)&7	;volatile
u5105:
	goto	l4560
	
l917:
	
l4528:
		movlw	13
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5111
	goto	u5110

u5111:
	goto	l4532
u5110:
	
l4530:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5124
u5125:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5124:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5125
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5131
	goto	u5130
u5131:
	bsf	c:(31827/8),(31827)&7	;volatile
	goto	u5145
u5130:
	bcf	c:(31827/8),(31827)&7	;volatile
u5145:
	goto	l4560
	
l921:
	
l4532:
		movlw	14
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5151
	goto	u5150

u5151:
	goto	l4536
u5150:
	
l4534:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5164
u5165:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5164:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5165
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5171
	goto	u5170
u5171:
	bsf	c:(31825/8),(31825)&7	;volatile
	goto	u5185
u5170:
	bcf	c:(31825/8),(31825)&7	;volatile
u5185:
	goto	l4560
	
l925:
	
l4536:
		movlw	15
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5191
	goto	u5190

u5191:
	goto	l4540
u5190:
	
l4538:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5204
u5205:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5204:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5205
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5211
	goto	u5210
u5211:
	bsf	c:(31831/8),(31831)&7	;volatile
	goto	u5225
u5210:
	bcf	c:(31831/8),(31831)&7	;volatile
u5225:
	goto	l4560
	
l929:
	
l4540:
		movlw	16
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5231
	goto	u5230

u5231:
	goto	l4544
u5230:
	
l4542:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5244
u5245:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5244:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5245
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5251
	goto	u5250
u5251:
	movlb	0	; () banked
	clrf	(??_displayByte+2+0)&0ffh
	incf	(??_displayByte+2+0)&0ffh
	goto	u5268
u5250:
	movlb	0	; () banked
	clrf	(??_displayByte+2+0)&0ffh
u5268:
	movlb	0	; () banked
	swapf	(??_displayByte+2+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_displayByte+2+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_displayByte+2+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	goto	l4560
	
l933:; BSR set to: 0

	
l4544:; BSR set to: 0

	movlb	0	; () banked
	movf	((displayByte@i))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u5271
	goto	u5270
u5271:
	goto	l4548
u5270:
	
l4546:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5284
u5285:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5284:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5285
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5291
	goto	u5290
u5291:
	bsf	c:(31847/8),(31847)&7	;volatile
	goto	u5305
u5290:
	bcf	c:(31847/8),(31847)&7	;volatile
u5305:
	goto	l4560
	
l937:
	
l4548:
	movlb	0	; () banked
		decf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5311
	goto	u5310

u5311:
	goto	l4552
u5310:
	
l4550:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5324
u5325:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5324:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5325
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5331
	goto	u5330
u5331:
	bsf	c:(31846/8),(31846)&7	;volatile
	goto	u5345
u5330:
	bcf	c:(31846/8),(31846)&7	;volatile
u5345:
	goto	l4560
	
l941:
	
l4552:
		movlw	2
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5351
	goto	u5350

u5351:
	goto	l4556
u5350:
	
l4554:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5364
u5365:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5364:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5365
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5371
	goto	u5370
u5371:
	bsf	c:(31843/8),(31843)&7	;volatile
	goto	u5385
u5370:
	bcf	c:(31843/8),(31843)&7	;volatile
u5385:
	goto	l4560
	
l945:
	
l4556:
		movlw	3
	movlb	0	; () banked
	xorwf	((displayByte@i))&0ffh,w
	btfss	status,2
	goto	u5391
	goto	u5390

u5391:
	goto	l4560
u5390:
	
l4558:; BSR set to: 0

	movff	(displayByte@j),??_displayByte+0+0
	movlw	(01h)&0ffh
	movlb	0	; () banked
	movwf	(??_displayByte+1+0)&0ffh
	movlb	0	; () banked
	incf	(??_displayByte+0+0)&0ffh
	goto	u5404
u5405:
	movlb	0	; () banked
	bcf	status,0
	rlcf	((??_displayByte+1+0))&0ffh
u5404:
	movlb	0	; () banked
	decfsz	(??_displayByte+0+0)&0ffh
	goto	u5405
	movlb	0	; () banked
	movf	((??_displayByte+1+0))&0ffh,w
	movlb	0	; () banked
	andwf	((displayByte@bcd))&0ffh,w
	iorlw	0
	btfss	status,2
	goto	u5411
	goto	u5410
u5411:
	bsf	c:(31842/8),(31842)&7	;volatile
	goto	u5425
u5410:
	bcf	c:(31842/8),(31842)&7	;volatile
u5425:
	goto	l4560
	
l949:
	goto	l4560
	
l951:
	goto	l4560
	
l947:
	goto	l4560
	
l943:
	goto	l4560
	
l939:
	goto	l4560
	
l935:
	goto	l4560
	
l931:
	goto	l4560
	
l927:
	goto	l4560
	
l923:
	goto	l4560
	
l919:
	goto	l4560
	
l915:
	goto	l4560
	
l911:
	goto	l4560
	
l907:
	goto	l4560
	
l903:
	line	59
	
l4560:
	movlb	0	; () banked
	incf	((displayByte@i))&0ffh
	movlb	0	; () banked
	incf	((displayByte@j))&0ffh
	
l4562:; BSR set to: 0

		movlw	0Fh-1
	movlb	0	; () banked
	cpfsgt	((displayByte@i))&0ffh
	goto	u5431
	goto	u5430

u5431:
	goto	l4508
u5430:
	goto	l952
	
l899:; BSR set to: 0

	line	61
	
l952:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_displayByte
	__end_of_displayByte:
	signat	_displayByte,4216
	global	_beep

;; *************** function _beep *****************
;; Defined at:
;;		line 848 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  t               1    wreg     unsigned char 
;;  n               1   17[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  t               1   19[BANK0 ] unsigned char 
;;  i               1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       1       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_StartTimer
;;		_TimerIsReady
;; This function is called by:
;;		_loop
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
	line	848
global __ptext19
__ptext19:
psect	text19
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	848
	global	__size_of_beep
	__size_of_beep	equ	__end_of_beep-_beep
	
_beep:; BSR set to: 0

;incstack = 0
	opt	stack 24
	movlb	0	; () banked
	movwf	((beep@t))&0ffh
	line	852
	
l4868:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((beep@i))&0ffh
	goto	l4928
	line	853
	
l1608:; BSR set to: 0

	line	854
	goto	l1638
	
l4870:; BSR set to: 0

	bsf	c:(31826/8),(31826)&7	;volatile
	goto	l4894
	
l1610:; BSR set to: 0

	goto	l1638
	
l4872:; BSR set to: 0

	bsf	c:(31824/8),(31824)&7	;volatile
	goto	l4894
	
l1614:; BSR set to: 0

	goto	l1638
	
l4874:; BSR set to: 0

	bsf	c:(31830/8),(31830)&7	;volatile
	goto	l4894
	
l1618:; BSR set to: 0

	goto	l1638
	
l4876:; BSR set to: 0

	bsf	c:(31829/8),(31829)&7	;volatile
	goto	l4894
	
l1622:; BSR set to: 0

	goto	l1638
	
l4878:; BSR set to: 0

	bsf	c:(31828/8),(31828)&7	;volatile
	goto	l4894
	
l1626:; BSR set to: 0

	goto	l1638
	
l4880:; BSR set to: 0

	bsf	c:(31827/8),(31827)&7	;volatile
	goto	l4894
	
l1630:; BSR set to: 0

	goto	l1638
	
l4882:; BSR set to: 0

	bsf	c:(31825/8),(31825)&7	;volatile
	goto	l4894
	
l1634:; BSR set to: 0

	goto	l1638
	
l4884:; BSR set to: 0

	bsf	c:(31831/8),(31831)&7	;volatile
	goto	l4894
	
l1638:; BSR set to: 0

	bsf	((c:3968)),c,4	;volatile
	goto	l4894
	
l1642:; BSR set to: 0

	goto	l4894
	
l4886:; BSR set to: 0

	bsf	c:(31847/8),(31847)&7	;volatile
	goto	l4894
	
l1646:; BSR set to: 0

	goto	l4894
	
l4888:; BSR set to: 0

	bsf	c:(31846/8),(31846)&7	;volatile
	goto	l4894
	
l1650:; BSR set to: 0

	goto	l4894
	
l4890:; BSR set to: 0

	bsf	c:(31843/8),(31843)&7	;volatile
	goto	l4894
	
l1654:; BSR set to: 0

	goto	l4894
	
l4892:; BSR set to: 0

	bsf	c:(31842/8),(31842)&7	;volatile
	goto	l4894
	
l1658:; BSR set to: 0

	goto	l4894
	
l1660:; BSR set to: 0

	goto	l4894
	
l1656:; BSR set to: 0

	goto	l4894
	
l1652:; BSR set to: 0

	goto	l4894
	
l1648:; BSR set to: 0

	goto	l4894
	
l1644:; BSR set to: 0

	goto	l4894
	
l1640:; BSR set to: 0

	goto	l4894
	
l1636:; BSR set to: 0

	goto	l4894
	
l1632:; BSR set to: 0

	goto	l4894
	
l1628:; BSR set to: 0

	goto	l4894
	
l1624:; BSR set to: 0

	goto	l4894
	
l1620:; BSR set to: 0

	goto	l4894
	
l1616:; BSR set to: 0

	goto	l4894
	
l1612:; BSR set to: 0

	line	855
	
l4894:; BSR set to: 0

	movff	(beep@t),(StartTimer@value)
	movlb	0	; () banked
	clrf	((StartTimer@value+1))&0ffh
	movlw	(0)&0ffh
	
	call	_StartTimer
	goto	l4896
	
l1662:
	goto	l4896
	
l1661:
	
l4896:
	movlw	(0)&0ffh
	
	call	_TimerIsReady
	iorlw	0
	btfsc	status,2
	goto	u5921
	goto	u5920
u5921:
	goto	l4896
u5920:
	goto	l1693
	
l1663:
	line	856
	goto	l1693
	
l4898:
	bcf	c:(31826/8),(31826)&7	;volatile
	goto	l4922
	
l1665:
	goto	l1693
	
l4900:
	bcf	c:(31824/8),(31824)&7	;volatile
	goto	l4922
	
l1669:
	goto	l1693
	
l4902:
	bcf	c:(31830/8),(31830)&7	;volatile
	goto	l4922
	
l1673:
	goto	l1693
	
l4904:
	bcf	c:(31829/8),(31829)&7	;volatile
	goto	l4922
	
l1677:
	goto	l1693
	
l4906:
	bcf	c:(31828/8),(31828)&7	;volatile
	goto	l4922
	
l1681:
	goto	l1693
	
l4908:
	bcf	c:(31827/8),(31827)&7	;volatile
	goto	l4922
	
l1685:
	goto	l1693
	
l4910:
	bcf	c:(31825/8),(31825)&7	;volatile
	goto	l4922
	
l1689:
	goto	l1693
	
l4912:
	bcf	c:(31831/8),(31831)&7	;volatile
	goto	l4922
	
l1693:
	bcf	((c:3968)),c,4	;volatile
	goto	l4922
	
l1697:
	goto	l4922
	
l4914:
	bcf	c:(31847/8),(31847)&7	;volatile
	goto	l4922
	
l1701:
	goto	l4922
	
l4916:
	bcf	c:(31846/8),(31846)&7	;volatile
	goto	l4922
	
l1705:
	goto	l4922
	
l4918:
	bcf	c:(31843/8),(31843)&7	;volatile
	goto	l4922
	
l1709:
	goto	l4922
	
l4920:
	bcf	c:(31842/8),(31842)&7	;volatile
	goto	l4922
	
l1713:
	goto	l4922
	
l1715:
	goto	l4922
	
l1711:
	goto	l4922
	
l1707:
	goto	l4922
	
l1703:
	goto	l4922
	
l1699:
	goto	l4922
	
l1695:
	goto	l4922
	
l1691:
	goto	l4922
	
l1687:
	goto	l4922
	
l1683:
	goto	l4922
	
l1679:
	goto	l4922
	
l1675:
	goto	l4922
	
l1671:
	goto	l4922
	
l1667:
	line	857
	
l4922:
	movff	(beep@t),(StartTimer@value)
	movlb	0	; () banked
	clrf	((StartTimer@value+1))&0ffh
	movlw	(0)&0ffh
	
	call	_StartTimer
	goto	l4924
	
l1717:
	goto	l4924
	
l1716:
	
l4924:
	movlw	(0)&0ffh
	
	call	_TimerIsReady
	iorlw	0
	btfsc	status,2
	goto	u5931
	goto	u5930
u5931:
	goto	l4924
u5930:
	goto	l4926
	
l1718:
	line	852
	
l4926:
	movlb	0	; () banked
	incf	((beep@i))&0ffh
	goto	l4928
	
l1607:; BSR set to: 0

	
l4928:; BSR set to: 0

	movlb	0	; () banked
		movf	((beep@n))&0ffh,w
	movlb	0	; () banked
	subwf	((beep@i))&0ffh,w
	btfss	status,0
	goto	u5941
	goto	u5940

u5941:
	goto	l1638
u5940:
	goto	l1720
	
l1719:; BSR set to: 0

	line	859
	
l1720:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_beep
	__end_of_beep:
	signat	_beep,8312
	global	_TimerIsReady

;; *************** function _TimerIsReady *****************
;; Defined at:
;;		line 616 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  nTimer          1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  nTimer          1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_loop
;;		_Display7Seg
;;		_firulete
;;		_beep
;;		_girar
;;		_testeo_sensores
;;		_test
;;		_UltraSonic
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	616
global __ptext20
__ptext20:
psect	text20
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	616
	global	__size_of_TimerIsReady
	__size_of_TimerIsReady	equ	__end_of_TimerIsReady-_TimerIsReady
	
_TimerIsReady:; BSR set to: 0

;incstack = 0
	opt	stack 24
	movlb	0	; () banked
	movwf	((TimerIsReady@nTimer))&0ffh
	line	618
	
l4486:; BSR set to: 0

	movlb	0	; () banked
	movf	((TimerIsReady@nTimer))&0ffh,w
	mullw	03h
	movlw	low(_Timer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	decf	postinc2,w
	btfss	status,2
	goto	u4891
	goto	u4890

u4891:
	goto	l4496
u4890:
	line	620
	
l4488:; BSR set to: 0

	movlb	0	; () banked
	movf	((TimerIsReady@nTimer))&0ffh,w
	mullw	03h
	movlw	low(_Timer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(02h)
	movwf	indf2
	line	621
	
l4490:; BSR set to: 0

	movlw	(01h)&0ffh
	goto	l1571
	
l4492:; BSR set to: 0

	goto	l1571
	line	622
	
l4494:; BSR set to: 0

	goto	l1571
	line	623
	
l1570:; BSR set to: 0

	line	624
	
l4496:; BSR set to: 0

	movlw	(0)&0ffh
	goto	l1571
	
l4498:; BSR set to: 0

	goto	l1571
	
l1572:; BSR set to: 0

	line	625
	
l1571:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_TimerIsReady
	__end_of_TimerIsReady:
	signat	_TimerIsReady,4217
	global	_StartTimer

;; *************** function _StartTimer *****************
;; Defined at:
;;		line 590 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  nTimer          1    wreg     unsigned char 
;;  value           2   14[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  nTimer          1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_loop
;;		_Display7Seg
;;		_firulete
;;		_beep
;;		_girar
;;		_testeo_sensores
;;		_test
;;		_UltraSonic
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	line	590
global __ptext21
__ptext21:
psect	text21
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	590
	global	__size_of_StartTimer
	__size_of_StartTimer	equ	__end_of_StartTimer-_StartTimer
	
_StartTimer:; BSR set to: 0

;incstack = 0
	opt	stack 24
	movlb	0	; () banked
	movwf	((StartTimer@nTimer))&0ffh
	line	592
	
l4484:; BSR set to: 0

	movlb	0	; () banked
	movf	((StartTimer@nTimer))&0ffh,w
	mullw	03h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_Timer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movff	(StartTimer@value),postinc2
	movff	(StartTimer@value+1),postdec2
	line	593
	movlb	0	; () banked
	movf	((StartTimer@nTimer))&0ffh,w
	mullw	03h
	movlw	low(_Timer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	594
	
l1555:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_StartTimer
	__end_of_StartTimer:
	signat	_StartTimer,8312
	global	_ResetTimers

;; *************** function _ResetTimers *****************
;; Defined at:
;;		line 580 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   20[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	line	580
global __ptext22
__ptext22:
psect	text22
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	580
	global	__size_of_ResetTimers
	__size_of_ResetTimers	equ	__end_of_ResetTimers-_ResetTimers
	
_ResetTimers:; BSR set to: 0

;incstack = 0
	opt	stack 24
	line	583
	
l6690:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((ResetTimers@i+1))&0ffh
	movlw	low(0)
	movwf	((ResetTimers@i))&0ffh
	
l6692:; BSR set to: 0

	movlb	0	; () banked
		movf	((ResetTimers@i+1))&0ffh,w
	bnz	u9760
	movlw	11
	movlb	0	; () banked
	subwf	 ((ResetTimers@i))&0ffh,w
	btfss	status,0
	goto	u9761
	goto	u9760

u9761:
	goto	l6696
u9760:
	goto	l1552
	
l6694:; BSR set to: 0

	goto	l1552
	line	584
	
l1550:; BSR set to: 0

	line	585
	
l6696:; BSR set to: 0

	movff	(ResetTimers@i),(___wmul@multiplier)
	movff	(ResetTimers@i+1),(___wmul@multiplier+1)
	movlw	high(03h)
	movlb	0	; () banked
	movwf	((___wmul@multiplicand+1))&0ffh
	movlw	low(03h)
	movwf	((___wmul@multiplicand))&0ffh
	call	___wmul	;wreg free
	movlw	low(_Timer)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	(0+?___wmul)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	(1+?___wmul)&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(02h)
	movwf	indf2
	line	586
	movff	(ResetTimers@i),(___wmul@multiplier)
	movff	(ResetTimers@i+1),(___wmul@multiplier+1)
	movlw	high(03h)
	movlb	0	; () banked
	movwf	((___wmul@multiplicand+1))&0ffh
	movlw	low(03h)
	movwf	((___wmul@multiplicand))&0ffh
	call	___wmul	;wreg free
	movlw	01h
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	(0+?___wmul)&0ffh
	movlw	0
	movlb	0	; () banked
	addwfc	(1+?___wmul)&0ffh
	movlw	low(_Timer)
	movlb	0	; () banked
	movlb	0	; () banked
	addwf	(0+?___wmul)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	movlb	0	; () banked
	movlb	0	; () banked
	addwfc	(1+?___wmul)&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	583
	
l6698:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((ResetTimers@i))&0ffh
	incf	((ResetTimers@i+1))&0ffh
	
l6700:; BSR set to: 0

	movlb	0	; () banked
		movf	((ResetTimers@i+1))&0ffh,w
	bnz	u9770
	movlw	11
	movlb	0	; () banked
	subwf	 ((ResetTimers@i))&0ffh,w
	btfss	status,0
	goto	u9771
	goto	u9770

u9771:
	goto	l6696
u9770:
	goto	l1552
	
l1551:; BSR set to: 0

	line	588
	
l1552:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetTimers
	__end_of_ResetTimers:
	signat	_ResetTimers,88
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2   14[BANK0 ] unsigned int 
;;  multiplicand    2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2   18[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   14[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       4       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_testeo_US
;;		_ResetTimers
;;		_printf
;;		_testeo_sensores
;;		_test
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
	line	15
global __ptext23
__ptext23:
psect	text23
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:; BSR set to: 0

;incstack = 0
	opt	stack 23
	line	37
	
l6528:
	movlb	0	; () banked
	movf	((___wmul@multiplier))&0ffh,w
	movlb	0	; () banked
	mulwf	((___wmul@multiplicand))&0ffh
	movff	prodl,(___wmul@product)
	movff	prodh,(___wmul@product+1)
	line	38
	movlb	0	; () banked
	movf	((___wmul@multiplier))&0ffh,w
	movlb	0	; () banked
	mulwf	(0+(___wmul@multiplicand+01h))&0ffh
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	((___wmul@product+1))&0ffh

	line	39
	movlb	0	; () banked
	movf	(0+(___wmul@multiplier+01h))&0ffh,w
	movlb	0	; () banked
	mulwf	((___wmul@multiplicand))&0ffh
	movf	(prodl),c,w
	movlb	0	; () banked
	addwf	((___wmul@product+1))&0ffh

	line	52
	
l6530:; BSR set to: 0

	movff	(___wmul@product),(?___wmul)
	movff	(___wmul@product+1),(?___wmul+1)
	goto	l1780
	
l6532:; BSR set to: 0

	line	53
	
l1780:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_Configurar_UART

;; *************** function _Configurar_UART *****************
;; Defined at:
;;		line 533 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	533
global __ptext24
__ptext24:
psect	text24
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	533
	global	__size_of_Configurar_UART
	__size_of_Configurar_UART	equ	__end_of_Configurar_UART-_Configurar_UART
	
_Configurar_UART:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	535
	
l5014:
	bsf	c:(31911/8),(31911)&7	;volatile
	line	536
	bsf	c:(31910/8),(31910)&7	;volatile
	line	538
	bcf	((c:4012)),c,7	;volatile
	line	539
	bcf	((c:4012)),c,6	;volatile
	line	540
	bsf	((c:4012)),c,5	;volatile
	line	541
	bcf	((c:4012)),c,4	;volatile
	line	542
	bcf	((c:4012)),c,3	;volatile
	line	543
	bcf	((c:4012)),c,2	;volatile
	line	545
	bsf	((c:4011)),c,7	;volatile
	line	546
	bcf	((c:4011)),c,6	;volatile
	line	547
	bsf	((c:4011)),c,4	;volatile
	line	549
	bcf	((c:4024)),c,5	;volatile
	line	550
	bcf	((c:4024)),c,4	;volatile
	line	551
	bsf	((c:4024)),c,3	;volatile
	line	552
	bcf	((c:4024)),c,1	;volatile
	line	553
	bcf	((c:4024)),c,0	;volatile
	line	554
	
l5016:
	movlw	low(019h)
	movwf	((c:4015)),c	;volatile
	line	555
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	556
	
l1539:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Configurar_UART
	__end_of_Configurar_UART:
	signat	_Configurar_UART,88
	global	_Configurar_Timer2

;; *************** function _Configurar_Timer2 *****************
;; Defined at:
;;		line 764 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	line	764
global __ptext25
__ptext25:
psect	text25
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	764
	global	__size_of_Configurar_Timer2
	__size_of_Configurar_Timer2	equ	__end_of_Configurar_Timer2-_Configurar_Timer2
	
_Configurar_Timer2:
;incstack = 0
	opt	stack 25
	line	766
	
l5018:
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<4)-1)<<3)
	iorlw	(0Bh & ((1<<4)-1))<<3
	movwf	((c:4042)),c	;volatile
	line	767
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	((c:4042)),c	;volatile
	line	768
	
l5020:
	bcf	((c:4042)),c,2	;volatile
	line	769
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	770
	
l5022:
	bsf	((c:4042)),c,2	;volatile
	line	771
	
l1593:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Configurar_Timer2
	__end_of_Configurar_Timer2:
	signat	_Configurar_Timer2,88
	global	_Configurar_Timer1

;; *************** function _Configurar_Timer1 *****************
;; Defined at:
;;		line 743 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
	line	743
global __ptext26
__ptext26:
psect	text26
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	743
	global	__size_of_Configurar_Timer1
	__size_of_Configurar_Timer1	equ	__end_of_Configurar_Timer1-_Configurar_Timer1
	
_Configurar_Timer1:
;incstack = 0
	opt	stack 25
	line	745
	
l5024:
	movlw	low(0)
	movwf	((c:4045)),c	;volatile
	line	746
	
l5026:
	bsf	((c:4045)),c,7	;volatile
	line	749
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	750
	
l5028:
	bcf	((c:4045)),c,3	;volatile
	line	751
	
l5030:
	bcf	((c:4045)),c,1	;volatile
	line	752
	
l5032:
	setf	((c:4047)),c	;volatile
	line	753
	movlw	low(0Fh)
	movwf	((c:4046)),c	;volatile
	line	754
	
l5034:
	bcf	((c:4045)),c,0	;volatile
	line	761
	
l5036:
	bcf	((c:4045)),c,0	;volatile
	line	762
	
l1590:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Configurar_Timer1
	__end_of_Configurar_Timer1:
	signat	_Configurar_Timer1,88
	global	_Configurar_Timer0

;; *************** function _Configurar_Timer0 *****************
;; Defined at:
;;		line 705 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	705
global __ptext27
__ptext27:
psect	text27
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	705
	global	__size_of_Configurar_Timer0
	__size_of_Configurar_Timer0	equ	__end_of_Configurar_Timer0-_Configurar_Timer0
	
_Configurar_Timer0:
;incstack = 0
	opt	stack 25
	line	707
	
l5038:
	bcf	((c:4053)),c,7	;volatile
	line	708
	bcf	((c:4053)),c,6	;volatile
	line	709
	bcf	((c:4053)),c,5	;volatile
	line	710
	bcf	((c:4053)),c,3	;volatile
	line	711
	bsf	((c:4053)),c,2	;volatile
	line	712
	bcf	((c:4053)),c,1	;volatile
	line	713
	bsf	((c:4053)),c,0	;volatile
	line	725
	
l5040:
	movlw	low(0)
	movwf	((c:4055)),c	;volatile
	movlw	low(0)
	movwf	((c:4054)),c	;volatile
	line	741
	
l1587:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Configurar_Timer0
	__end_of_Configurar_Timer0:
	signat	_Configurar_Timer0,88
	global	_Configurar_PWM

;; *************** function _Configurar_PWM *****************
;; Defined at:
;;		line 773 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
	line	773
global __ptext28
__ptext28:
psect	text28
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	773
	global	__size_of_Configurar_PWM
	__size_of_Configurar_PWM	equ	__end_of_Configurar_PWM-_Configurar_PWM
	
_Configurar_PWM:
;incstack = 0
	opt	stack 25
	line	775
	
l5042:
	movlw	low(0)
	movwf	((c:4030)),c	;volatile
	line	776
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4029)),c	;volatile
	line	777
	movf	((c:4029)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4029)),c	;volatile
	line	779
	movlw	low(0)
	movwf	((c:4027)),c	;volatile
	line	780
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4026)),c	;volatile
	line	781
	movf	((c:4026)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4026)),c	;volatile
	line	782
	
l1596:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Configurar_PWM
	__end_of_Configurar_PWM:
	signat	_Configurar_PWM,88
	global	_Configurar_Interrupciones

;; *************** function _Configurar_Interrupciones *****************
;; Defined at:
;;		line 784 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
	line	784
global __ptext29
__ptext29:
psect	text29
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	784
	global	__size_of_Configurar_Interrupciones
	__size_of_Configurar_Interrupciones	equ	__end_of_Configurar_Interrupciones-_Configurar_Interrupciones
	
_Configurar_Interrupciones:
;incstack = 0
	opt	stack 25
	line	787
	
l5056:
	movlw	low(0)
	movwf	((c:4080)),c	;volatile
	line	788
	movlw	low(0)
	movwf	((c:3997)),c	;volatile
	line	789
	movlw	low(0)
	movwf	((c:4000)),c	;volatile
	line	790
	
l5058:
	bcf	((c:4048)),c,7	;volatile
	line	791
	
l5060:
	bsf	((c:3997)),c,1	;volatile
	line	792
	
l5062:
	bsf	((c:4082)),c,6	;volatile
	line	793
	
l5064:
	bsf	((c:4082)),c,7	;volatile
	line	796
	
l5066:
	bsf	((c:4082)),c,7	;volatile
	line	798
	
l5068:
	bcf	((c:4082)),c,5	;volatile
	line	799
	
l5070:
	bcf	((c:4082)),c,4	;volatile
	line	800
	
l5072:
	bcf	((c:4082)),c,2	;volatile
	line	802
	
l5074:
	bsf	((c:4081)),c,2	;volatile
	line	804
	
l5076:
	bsf	((c:3997)),c,0	;volatile
	line	805
	
l5078:
	bsf	((c:3999)),c,0	;volatile
	line	806
	
l1599:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Configurar_Interrupciones
	__end_of_Configurar_Interrupciones:
	signat	_Configurar_Interrupciones,88
	global	_Configurar_Duty

;; *************** function _Configurar_Duty *****************
;; Defined at:
;;		line 299 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;  canal           1    wreg     unsigned char 
;;  duty            2   14[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  canal           1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       2       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
	line	299
global __ptext30
__ptext30:
psect	text30
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	299
	global	__size_of_Configurar_Duty
	__size_of_Configurar_Duty	equ	__end_of_Configurar_Duty-_Configurar_Duty
	
_Configurar_Duty:
;incstack = 0
	opt	stack 25
	movlb	0	; () banked
	movwf	((Configurar_Duty@canal))&0ffh
	line	301
	
l5044:; BSR set to: 0

		movlw	233
	movlb	0	; () banked
	subwf	 ((Configurar_Duty@duty))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((Configurar_Duty@duty+1))&0ffh,w
	btfss	status,0
	goto	u6001
	goto	u6000

u6001:
	goto	l5054
u6000:
	line	302
	
l5046:; BSR set to: 0

	movlw	high(03E8h)
	movlb	0	; () banked
	movwf	((Configurar_Duty@duty+1))&0ffh
	movlw	low(03E8h)
	movwf	((Configurar_Duty@duty))&0ffh
	goto	l5054
	
l1040:; BSR set to: 0

	line	304
	goto	l5054
	line	306
	
l1042:; BSR set to: 0

	line	307
	
l5048:; BSR set to: 0

	movff	(Configurar_Duty@duty),??_Configurar_Duty+0+0
	movff	(Configurar_Duty@duty+1),??_Configurar_Duty+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_Configurar_Duty+0+1)&0ffh
	rrcf	(??_Configurar_Duty+0+0)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_Configurar_Duty+0+1)&0ffh
	rrcf	(??_Configurar_Duty+0+0)&0ffh
	movlb	0	; () banked
	movf	(??_Configurar_Duty+0+0)&0ffh,w
	movwf	((c:4030)),c	;volatile
	line	308
	movff	(Configurar_Duty@duty),??_Configurar_Duty+0+0
	movlw	03h
	movlb	0	; () banked
	andwf	(??_Configurar_Duty+0+0)&0ffh
	movlb	0	; () banked
	swapf	(??_Configurar_Duty+0+0)&0ffh
	movf	((c:4029)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_Configurar_Duty+0+0)&0ffh,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_Configurar_Duty+0+0)&0ffh,w
	movwf	((c:4029)),c	;volatile
	line	309
	goto	l1045
	line	311
	
l1044:; BSR set to: 0

	line	312
	
l5050:; BSR set to: 0

	movff	(Configurar_Duty@duty),??_Configurar_Duty+0+0
	movff	(Configurar_Duty@duty+1),??_Configurar_Duty+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_Configurar_Duty+0+1)&0ffh
	rrcf	(??_Configurar_Duty+0+0)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rrcf	(??_Configurar_Duty+0+1)&0ffh
	rrcf	(??_Configurar_Duty+0+0)&0ffh
	movlb	0	; () banked
	movf	(??_Configurar_Duty+0+0)&0ffh,w
	movwf	((c:4027)),c	;volatile
	line	313
	movff	(Configurar_Duty@duty),??_Configurar_Duty+0+0
	movlw	03h
	movlb	0	; () banked
	andwf	(??_Configurar_Duty+0+0)&0ffh
	movlb	0	; () banked
	swapf	(??_Configurar_Duty+0+0)&0ffh
	movf	((c:4026)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_Configurar_Duty+0+0)&0ffh,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_Configurar_Duty+0+0)&0ffh,w
	movwf	((c:4026)),c	;volatile
	line	314
	goto	l1045
	line	315
	
l5052:; BSR set to: 0

	goto	l1045
	line	304
	
l1041:; BSR set to: 0

	
l5054:; BSR set to: 0

	movlb	0	; () banked
	movf	((Configurar_Duty@canal))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l5048
	xorlw	2^1	; case 2
	skipnz
	goto	l5050
	goto	l1045

	line	315
	
l1043:; BSR set to: 0

	line	316
	
l1045:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_Configurar_Duty
	__end_of_Configurar_Duty:
	signat	_Configurar_Duty,8312
	global	_ConfigurarGPIO

;; *************** function _ConfigurarGPIO *****************
;; Defined at:
;;		line 172 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Inicializar
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	line	172
global __ptext31
__ptext31:
psect	text31
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	172
	global	__size_of_ConfigurarGPIO
	__size_of_ConfigurarGPIO	equ	__end_of_ConfigurarGPIO-_ConfigurarGPIO
	
_ConfigurarGPIO:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	174
	
l4954:
		bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	175
	
l4956:
	movlw	low(0Fh)
	movwf	((c:4033)),c	;volatile
	line	176
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	177
	
l4958:
	bcf	((c:3949)),c,3	;volatile
	line	178
	
l4960:
	bsf	((c:3951)),c,3	;volatile
	line	183
	
l4962:
	bcf	c:(31906/8),(31906)&7	;volatile
	line	184
	
l4964:
	bcf	c:(31905/8),(31905)&7	;volatile
	line	185
	
l4966:
	bcf	c:(31912/8),(31912)&7	;volatile
	line	186
	
l4968:
	bcf	c:(31913/8),(31913)&7	;volatile
	line	188
	
l4970:
	bcf	c:(31903/8),(31903)&7	;volatile
	line	189
	
l4972:
	bcf	c:(31898/8),(31898)&7	;volatile
	line	190
	
l4974:
	bcf	c:(31896/8),(31896)&7	;volatile
	line	191
	
l4976:
	bcf	c:(31902/8),(31902)&7	;volatile
	line	192
	
l4978:
	bcf	c:(31901/8),(31901)&7	;volatile
	line	193
	
l4980:
	bcf	c:(31900/8),(31900)&7	;volatile
	line	194
	
l4982:
	bcf	c:(31899/8),(31899)&7	;volatile
	line	195
	
l4984:
	bcf	c:(31897/8),(31897)&7	;volatile
	line	197
	
l4986:
	bcf	c:(31892/8),(31892)&7	;volatile
	line	199
	
l4988:
	bsf	c:(31888/8),(31888)&7	;volatile
	line	200
	
l4990:
	bsf	c:(31890/8),(31890)&7	;volatile
	line	201
	
l4992:
	bsf	c:(31889/8),(31889)&7	;volatile
	line	203
	
l4994:
	bsf	c:(31921/8),(31921)&7	;volatile
	line	204
	
l4996:
	bsf	c:(31920/8),(31920)&7	;volatile
	line	205
	
l4998:
	bsf	c:(31893/8),(31893)&7	;volatile
	line	206
	
l5000:
	bsf	c:(31922/8),(31922)&7	;volatile
	line	208
	
l5002:
	bcf	c:(31919/8),(31919)&7	;volatile
	line	209
	
l5004:
	bcf	c:(31918/8),(31918)&7	;volatile
	line	210
	
l5006:
	bcf	c:(31915/8),(31915)&7	;volatile
	line	211
	
l5008:
	bcf	c:(31914/8),(31914)&7	;volatile
	line	213
	
l5010:
	bsf	c:(31917/8),(31917)&7	;volatile
	line	214
	
l5012:
	bsf	c:(31916/8),(31916)&7	;volatile
	line	217
	
l966:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ConfigurarGPIO
	__end_of_ConfigurarGPIO:
	signat	_ConfigurarGPIO,88
	global	_interruptsHandler

;; *************** function _interruptsHandler *****************
;; Defined at:
;;		line 808 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0      14       0       0       0       0       0       0       0
;;      Totals:         0      14       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LecturaFlancosUS
;;		_TimerTick
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	808
	global	__size_of_interruptsHandler
	__size_of_interruptsHandler	equ	__end_of_interruptsHandler-_interruptsHandler
	
_interruptsHandler:
;incstack = 0
	opt	stack 23
	movff	pclat+0,??_interruptsHandler+0
	movff	pclat+1,??_interruptsHandler+1
	movff	fsr0l+0,??_interruptsHandler+2
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	fsr0h+0,??_interruptsHandler+3
	movff	fsr1l+0,??_interruptsHandler+4
	movff	fsr1h+0,??_interruptsHandler+5
	movff	fsr2l+0,??_interruptsHandler+6
	movff	fsr2h+0,??_interruptsHandler+7
	movff	prodl+0,??_interruptsHandler+8
	movff	prodh+0,??_interruptsHandler+9
	movff	tblptrl+0,??_interruptsHandler+10
	movff	tblptrh+0,??_interruptsHandler+11
	movff	tblptru+0,??_interruptsHandler+12
	movff	tablat+0,??_interruptsHandler+13
	line	810
	
i2l6400:
	btfss	c:(31984/8),(31984)&7	;volatile
	goto	i2u931_41
	goto	i2u931_40
i2u931_41:
	goto	i2l6408
i2u931_40:
	line	814
	
i2l6402:
	bcf	c:(31984/8),(31984)&7	;volatile
	line	815
	setf	((c:4047)),c	;volatile
	line	816
	
i2l6404:
	movlw	low(0Fh)
	movwf	((c:4046)),c	;volatile
	line	818
	
i2l6406:
	call	_LecturaFlancosUS	;wreg free
	goto	i2l6408
	line	821
	
i2l1602:
	line	823
	
i2l6408:
	btfss	c:(31985/8),(31985)&7	;volatile
	goto	i2u932_41
	goto	i2u932_40
i2u932_41:
	goto	i2l1604
i2u932_40:
	line	825
	
i2l6410:
	bcf	c:(31985/8),(31985)&7	;volatile
	line	826
	
i2l6412:
	call	_TimerTick	;wreg free
	goto	i2l1604
	line	830
	
i2l1603:
	line	844
	
i2l1604:
	movff	??_interruptsHandler+13,tablat+0
	movff	??_interruptsHandler+12,tblptru+0
	movff	??_interruptsHandler+11,tblptrh+0
	movff	??_interruptsHandler+10,tblptrl+0
	movff	??_interruptsHandler+9,prodh+0
	movff	??_interruptsHandler+8,prodl+0
	movff	??_interruptsHandler+7,fsr2h+0
	movff	??_interruptsHandler+6,fsr2l+0
	movff	??_interruptsHandler+5,fsr1h+0
	movff	??_interruptsHandler+4,fsr1l+0
	movff	??_interruptsHandler+3,fsr0h+0
	movff	??_interruptsHandler+2,fsr0l+0
	movff	??_interruptsHandler+1,pclat+1
	movff	??_interruptsHandler+0,pclat+0
	retfie f
	opt stack 0
GLOBAL	__end_of_interruptsHandler
	__end_of_interruptsHandler:
	signat	_interruptsHandler,88
	global	_TimerTick

;; *************** function _TimerTick *****************
;; Defined at:
;;		line 627 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;;		_TimersHandler
;; This function is called by:
;;		_interruptsHandler
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	line	627
global __ptext33
__ptext33:
psect	text33
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	627
	global	__size_of_TimerTick
	__size_of_TimerTick	equ	__end_of_TimerTick-_TimerTick
	
_TimerTick:
;incstack = 0
	opt	stack 23
	line	642
	
i2l5888:
	call	_TimersHandler	;wreg free
	line	643
	
i2l1575:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_TimerTick
	__end_of_TimerTick:
	signat	_TimerTick,88
	global	_TimersHandler

;; *************** function _TimersHandler *****************
;; Defined at:
;;		line 562 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    8[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
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
;;		i2___wmul
;; This function is called by:
;;		_TimerTick
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	line	562
global __ptext34
__ptext34:
psect	text34
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	562
	global	__size_of_TimersHandler
	__size_of_TimersHandler	equ	__end_of_TimersHandler-_TimersHandler
	
_TimersHandler:
;incstack = 0
	opt	stack 23
	line	565
	
i2l5092:
	movlw	high(0)
	movwf	((c:TimersHandler@i+1)),c
	movlw	low(0)
	movwf	((c:TimersHandler@i)),c
	
i2l5094:
		movf	((c:TimersHandler@i+1)),c,w
	bnz	i2u603_40
	movlw	11
	subwf	 ((c:TimersHandler@i)),c,w
	btfss	status,0
	goto	i2u603_41
	goto	i2u603_40

i2u603_41:
	goto	i2l5098
i2u603_40:
	goto	i2l1547
	
i2l5096:
	goto	i2l1547
	line	566
	
i2l1542:
	line	567
	
i2l5098:
	movff	(c:TimersHandler@i),(c:i2___wmul@multiplier)
	movff	(c:TimersHandler@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movlw	low(_Timer)
	addwf	(0+?i2___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	(1+?i2___wmul),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	btfss	status,2
	goto	i2u604_41
	goto	i2u604_40
i2u604_41:
	goto	i2l5106
i2u604_40:
	line	569
	
i2l5100:
	movff	(c:TimersHandler@i),(c:i2___wmul@multiplier)
	movff	(c:TimersHandler@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movlw	01h
	addwf	(0+?i2___wmul),c
	movlw	0
	addwfc	(1+?i2___wmul),c
	movlw	low(_Timer)
	addwf	(0+?i2___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	(1+?i2___wmul),c,w
	movwf	1+c:fsr2l
		movlw	1
	movf	plusw2,w
	bnz	i2u605_41
	movlw	2
	subwf	 postinc2,w
	btfsc	status,0
	goto	i2u605_41
	goto	i2u605_40

i2u605_41:
	goto	i2l5104
i2u605_40:
	line	571
	
i2l5102:
	movff	(c:TimersHandler@i),(c:i2___wmul@multiplier)
	movff	(c:TimersHandler@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movlw	01h
	addwf	(0+?i2___wmul),c
	movlw	0
	addwfc	(1+?i2___wmul),c
	movlw	low(_Timer)
	addwf	(0+?i2___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	(1+?i2___wmul),c,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	572
	movff	(c:TimersHandler@i),(c:i2___wmul@multiplier)
	movff	(c:TimersHandler@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movlw	low(_Timer)
	addwf	(0+?i2___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	(1+?i2___wmul),c,w
	movwf	1+c:fsr2l
	movlw	low(01h)
	movwf	indf2
	line	573
	goto	i2l5106
	line	574
	
i2l1545:
	line	575
	
i2l5104:
	movff	(c:TimersHandler@i),(c:i2___wmul@multiplier)
	movff	(c:TimersHandler@i+1),(c:i2___wmul@multiplier+1)
	movlw	high(03h)
	movwf	((c:i2___wmul@multiplicand+1)),c
	movlw	low(03h)
	movwf	((c:i2___wmul@multiplicand)),c
	call	i2___wmul	;wreg free
	movlw	01h
	addwf	(0+?i2___wmul),c
	movlw	0
	addwfc	(1+?i2___wmul),c
	movlw	low(_Timer)
	addwf	(0+?i2___wmul),c,w
	movwf	c:fsr2l
	movlw	high(_Timer)
	addwfc	(1+?i2___wmul),c,w
	movwf	1+c:fsr2l
	decf	postinc2
	movlw	0
	subwfb	postdec2
	goto	i2l5106
	
i2l1546:
	goto	i2l5106
	line	576
	
i2l1544:
	line	565
	
i2l5106:
	infsnz	((c:TimersHandler@i)),c
	incf	((c:TimersHandler@i+1)),c
	
i2l5108:
		movf	((c:TimersHandler@i+1)),c,w
	bnz	i2u606_40
	movlw	11
	subwf	 ((c:TimersHandler@i)),c,w
	btfss	status,0
	goto	i2u606_41
	goto	i2u606_40

i2u606_41:
	goto	i2l5098
i2u606_40:
	goto	i2l1547
	
i2l1543:
	line	578
	
i2l1547:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_TimersHandler
	__end_of_TimersHandler:
	signat	_TimersHandler,88
	global	i2___wmul

;; *************** function i2___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMRAM] unsigned int 
;;  multiplicand    2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  __wmul          2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TimersHandler
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
	line	15
global __ptext35
__ptext35:
psect	text35
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
	line	15
	global	__size_ofi2___wmul
	__size_ofi2___wmul	equ	__end_ofi2___wmul-i2___wmul
	
i2___wmul:
;incstack = 0
	opt	stack 23
	line	37
	
i2l4742:
	movf	((c:i2___wmul@multiplier)),c,w
	mulwf	((c:i2___wmul@multiplicand)),c
	movff	prodl,(c:i2___wmul@product)
	movff	prodh,(c:i2___wmul@product+1)
	line	38
	movf	((c:i2___wmul@multiplier)),c,w
	mulwf	(0+((c:i2___wmul@multiplicand)+01h)),c
	movf	(prodl),c,w
	addwf	((c:i2___wmul@product+1)),c

	line	39
	movf	(0+((c:i2___wmul@multiplier)+01h)),c,w
	mulwf	((c:i2___wmul@multiplicand)),c
	movf	(prodl),c,w
	addwf	((c:i2___wmul@product+1)),c

	line	52
	
i2l4744:
	movff	(c:i2___wmul@product),(c:?i2___wmul)
	movff	(c:i2___wmul@product+1),(c:?i2___wmul+1)
	goto	i2l1780
	
i2l4746:
	line	53
	
i2l1780:
	return	;funcret
	opt stack 0
GLOBAL	__end_ofi2___wmul
	__end_ofi2___wmul:
	signat	i2___wmul,90
	global	_LecturaFlancosUS

;; *************** function _LecturaFlancosUS *****************
;; Defined at:
;;		line 455 in file "/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:        88       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:        89       0       0       0       0       0       0       0       0
;;Total ram usage:       89 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_interruptsHandler
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	455
global __ptext36
__ptext36:
psect	text36
	file	"/home/newtonis/Dropbox/robotica/programas/2016/AjemBase/config.c"
	line	455
	global	__size_of_LecturaFlancosUS
	__size_of_LecturaFlancosUS	equ	__end_of_LecturaFlancosUS-_LecturaFlancosUS
	
_LecturaFlancosUS:
;incstack = 0
	opt	stack 25
	line	457
	
i2l5702:
	goto	i2l5730
	
i2l5704:
	movlw	high(0FFh)
	movwf	((c:_LecturaFlancosUS$1893+1)),c
	setf	((c:_LecturaFlancosUS$1893)),c
	goto	i2l5708
	
i2l1380:
	
i2l5706:
	btfsc	((c:3968)),c,1	;volatile
	goto	i2u756_41
	goto	i2u756_40
i2u756_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u756_48
i2u756_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u756_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1893)),c
	clrf	((c:_LecturaFlancosUS$1893+1)),c
	goto	i2l5708
	
i2l1382:
	
i2l5708:
	movff	(c:_LecturaFlancosUS$1893),(c:_LecturaFlancosUS$1892)
	movff	(c:_LecturaFlancosUS$1893+1),(c:_LecturaFlancosUS$1892+1)
	goto	i2l5712
	
i2l1376:
	
i2l5710:
	btfsc	((c:3968)),c,2	;volatile
	goto	i2u757_41
	goto	i2u757_40
i2u757_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u757_48
i2u757_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u757_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1892)),c
	clrf	((c:_LecturaFlancosUS$1892+1)),c
	goto	i2l5712
	
i2l1378:
	
i2l5712:
	movff	(c:_LecturaFlancosUS$1892),(c:_LecturaFlancosUS$1891)
	movff	(c:_LecturaFlancosUS$1892+1),(c:_LecturaFlancosUS$1891+1)
	goto	i2l5716
	
i2l1372:
	
i2l5714:
	btfsc	((c:3968)),c,0	;volatile
	goto	i2u758_41
	goto	i2u758_40
i2u758_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u758_48
i2u758_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u758_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1891)),c
	clrf	((c:_LecturaFlancosUS$1891+1)),c
	goto	i2l5716
	
i2l1374:
	
i2l5716:
	movff	(c:_LecturaFlancosUS$1891),(c:_LecturaFlancosUS$1890)
	movff	(c:_LecturaFlancosUS$1891+1),(c:_LecturaFlancosUS$1890+1)
	goto	i2l5720
	
i2l1368:
	
i2l5718:
	btfsc	((c:3970)),c,4	;volatile
	goto	i2u759_41
	goto	i2u759_40
i2u759_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u759_48
i2u759_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u759_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1890)),c
	clrf	((c:_LecturaFlancosUS$1890+1)),c
	goto	i2l5720
	
i2l1370:
	
i2l5720:
	movff	(c:_LecturaFlancosUS$1890),(c:_LecturaFlancosUS$1889)
	movff	(c:_LecturaFlancosUS$1890+1),(c:_LecturaFlancosUS$1889+1)
	goto	i2l5724
	
i2l1364:
	
i2l5722:
	btfsc	((c:3970)),c,5	;volatile
	goto	i2u760_41
	goto	i2u760_40
i2u760_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u760_48
i2u760_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u760_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1889)),c
	clrf	((c:_LecturaFlancosUS$1889+1)),c
	goto	i2l5724
	
i2l1366:
	
i2l5724:
	movff	(c:_LecturaFlancosUS$1889),(c:_LecturaFlancosUS$1888)
	movff	(c:_LecturaFlancosUS$1889+1),(c:_LecturaFlancosUS$1888+1)
	goto	i2l5728
	
i2l1360:
	
i2l5726:
	btfsc	((c:3971)),c,4	;volatile
	goto	i2u761_41
	goto	i2u761_40
i2u761_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u761_48
i2u761_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u761_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1888)),c
	clrf	((c:_LecturaFlancosUS$1888+1)),c
	goto	i2l5728
	
i2l1362:
	
i2l5728:
	movff	(c:_LecturaFlancosUS$1888),(c:_LecturaFlancosUS$1887)
	movff	(c:_LecturaFlancosUS$1888+1),(c:_LecturaFlancosUS$1887+1)
	goto	i2l5732
	
i2l1356:
	
i2l5730:
	btfsc	((c:3971)),c,5	;volatile
	goto	i2u762_41
	goto	i2u762_40
i2u762_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u762_48
i2u762_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u762_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1887)),c
	clrf	((c:_LecturaFlancosUS$1887+1)),c
	goto	i2l5732
	
i2l1358:
	
i2l5732:
	movff	(c:_LecturaFlancosUS$1887),(c:_LecturaFlancosUS$1886)
	movff	(c:_LecturaFlancosUS$1887+1),(c:_LecturaFlancosUS$1886+1)
	goto	i2l5736
	
i2l1352:
	
i2l5734:
	btfsc	((c:3972)),c,2	;volatile
	goto	i2u763_41
	goto	i2u763_40
i2u763_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u763_48
i2u763_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u763_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1886)),c
	clrf	((c:_LecturaFlancosUS$1886+1)),c
	goto	i2l5736
	
i2l1354:
	
i2l5736:
	movff	(c:_LecturaFlancosUS$1886),(c:_LecturaFlancosUS$1885)
	movff	(c:_LecturaFlancosUS$1886+1),(c:_LecturaFlancosUS$1885+1)
	goto	i2l5740
	
i2l1348:
	
i2l5738:
	btfsc	((c:3968)),c,5	;volatile
	goto	i2u764_41
	goto	i2u764_40
i2u764_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u764_48
i2u764_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u764_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1885)),c
	clrf	((c:_LecturaFlancosUS$1885+1)),c
	goto	i2l5740
	
i2l1350:
	
i2l5740:
	movff	(c:_LecturaFlancosUS$1885),(c:_LecturaFlancosUS$1884)
	movff	(c:_LecturaFlancosUS$1885+1),(c:_LecturaFlancosUS$1884+1)
	goto	i2l5744
	
i2l1344:
	
i2l5742:
	btfsc	((c:3972)),c,0	;volatile
	goto	i2u765_41
	goto	i2u765_40
i2u765_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u765_48
i2u765_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u765_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1884)),c
	clrf	((c:_LecturaFlancosUS$1884+1)),c
	goto	i2l5744
	
i2l1346:
	
i2l5744:
	movff	(c:_LecturaFlancosUS$1884),(c:_LecturaFlancosUS$1883)
	movff	(c:_LecturaFlancosUS$1884+1),(c:_LecturaFlancosUS$1883+1)
	goto	i2l5748
	
i2l1340:
	
i2l5746:
	btfsc	((c:3972)),c,1	;volatile
	goto	i2u766_41
	goto	i2u766_40
i2u766_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u766_48
i2u766_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u766_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1883)),c
	clrf	((c:_LecturaFlancosUS$1883+1)),c
	goto	i2l5748
	
i2l1342:
	
i2l5748:
	movf	((c:_US_lecturas)),c,w
	mullw	02h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_stSensProx)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_stSensProx)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	((c:_LecturaFlancosUS$1883)),c,w
	addwf	postinc2
	movf	((c:_LecturaFlancosUS$1883+1)),c,w
	addwfc	postdec2
	line	458
	goto	i2l5772
	
i2l5750:
	movlw	high(0FFh)
	movwf	((c:_LecturaFlancosUS$1904+1)),c
	setf	((c:_LecturaFlancosUS$1904)),c
	goto	i2l5754
	
i2l1424:
	
i2l5752:
	btfsc	((c:3968)),c,1	;volatile
	goto	i2u767_41
	goto	i2u767_40
i2u767_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u767_48
i2u767_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u767_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1904)),c
	clrf	((c:_LecturaFlancosUS$1904+1)),c
	goto	i2l5754
	
i2l1426:
	
i2l5754:
	movff	(c:_LecturaFlancosUS$1904),(c:_LecturaFlancosUS$1903)
	movff	(c:_LecturaFlancosUS$1904+1),(c:_LecturaFlancosUS$1903+1)
	goto	i2l5758
	
i2l1420:
	
i2l5756:
	btfsc	((c:3968)),c,2	;volatile
	goto	i2u768_41
	goto	i2u768_40
i2u768_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u768_48
i2u768_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u768_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1903)),c
	clrf	((c:_LecturaFlancosUS$1903+1)),c
	goto	i2l5758
	
i2l1422:
	
i2l5758:
	movff	(c:_LecturaFlancosUS$1903),(c:_LecturaFlancosUS$1902)
	movff	(c:_LecturaFlancosUS$1903+1),(c:_LecturaFlancosUS$1902+1)
	goto	i2l5762
	
i2l1416:
	
i2l5760:
	btfsc	((c:3968)),c,0	;volatile
	goto	i2u769_41
	goto	i2u769_40
i2u769_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u769_48
i2u769_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u769_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1902)),c
	clrf	((c:_LecturaFlancosUS$1902+1)),c
	goto	i2l5762
	
i2l1418:
	
i2l5762:
	movff	(c:_LecturaFlancosUS$1902),(c:_LecturaFlancosUS$1901)
	movff	(c:_LecturaFlancosUS$1902+1),(c:_LecturaFlancosUS$1901+1)
	goto	i2l5766
	
i2l1412:
	
i2l5764:
	btfsc	((c:3970)),c,4	;volatile
	goto	i2u770_41
	goto	i2u770_40
i2u770_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u770_48
i2u770_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u770_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1901)),c
	clrf	((c:_LecturaFlancosUS$1901+1)),c
	goto	i2l5766
	
i2l1414:
	
i2l5766:
	movff	(c:_LecturaFlancosUS$1901),(c:_LecturaFlancosUS$1900)
	movff	(c:_LecturaFlancosUS$1901+1),(c:_LecturaFlancosUS$1900+1)
	goto	i2l5770
	
i2l1408:
	
i2l5768:
	btfsc	((c:3970)),c,5	;volatile
	goto	i2u771_41
	goto	i2u771_40
i2u771_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u771_48
i2u771_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u771_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1900)),c
	clrf	((c:_LecturaFlancosUS$1900+1)),c
	goto	i2l5770
	
i2l1410:
	
i2l5770:
	movff	(c:_LecturaFlancosUS$1900),(c:_LecturaFlancosUS$1899)
	movff	(c:_LecturaFlancosUS$1900+1),(c:_LecturaFlancosUS$1899+1)
	goto	i2l5774
	
i2l1404:
	
i2l5772:
	btfsc	((c:3971)),c,4	;volatile
	goto	i2u772_41
	goto	i2u772_40
i2u772_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u772_48
i2u772_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u772_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1899)),c
	clrf	((c:_LecturaFlancosUS$1899+1)),c
	goto	i2l5774
	
i2l1406:
	
i2l5774:
	movff	(c:_LecturaFlancosUS$1899),(c:_LecturaFlancosUS$1898)
	movff	(c:_LecturaFlancosUS$1899+1),(c:_LecturaFlancosUS$1898+1)
	goto	i2l5778
	
i2l1400:
	
i2l5776:
	btfsc	((c:3971)),c,5	;volatile
	goto	i2u773_41
	goto	i2u773_40
i2u773_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u773_48
i2u773_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u773_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1898)),c
	clrf	((c:_LecturaFlancosUS$1898+1)),c
	goto	i2l5778
	
i2l1402:
	
i2l5778:
	movff	(c:_LecturaFlancosUS$1898),(c:_LecturaFlancosUS$1897)
	movff	(c:_LecturaFlancosUS$1898+1),(c:_LecturaFlancosUS$1897+1)
	goto	i2l5782
	
i2l1396:
	
i2l5780:
	btfsc	((c:3972)),c,2	;volatile
	goto	i2u774_41
	goto	i2u774_40
i2u774_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u774_48
i2u774_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u774_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1897)),c
	clrf	((c:_LecturaFlancosUS$1897+1)),c
	goto	i2l5782
	
i2l1398:
	
i2l5782:
	movff	(c:_LecturaFlancosUS$1897),(c:_LecturaFlancosUS$1896)
	movff	(c:_LecturaFlancosUS$1897+1),(c:_LecturaFlancosUS$1896+1)
	goto	i2l5786
	
i2l1392:
	
i2l5784:
	btfsc	((c:3968)),c,5	;volatile
	goto	i2u775_41
	goto	i2u775_40
i2u775_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u775_48
i2u775_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u775_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1896)),c
	clrf	((c:_LecturaFlancosUS$1896+1)),c
	goto	i2l5786
	
i2l1394:
	
i2l5786:
	movff	(c:_LecturaFlancosUS$1896),(c:_LecturaFlancosUS$1895)
	movff	(c:_LecturaFlancosUS$1896+1),(c:_LecturaFlancosUS$1895+1)
	goto	i2l5790
	
i2l1388:
	
i2l5788:
	btfsc	((c:3972)),c,0	;volatile
	goto	i2u776_41
	goto	i2u776_40
i2u776_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u776_48
i2u776_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u776_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1895)),c
	clrf	((c:_LecturaFlancosUS$1895+1)),c
	goto	i2l5790
	
i2l1390:
	
i2l5790:
	movff	(c:_LecturaFlancosUS$1895),(c:_LecturaFlancosUS$1894)
	movff	(c:_LecturaFlancosUS$1895+1),(c:_LecturaFlancosUS$1894+1)
	goto	i2l5794
	
i2l1384:
	
i2l5792:
	btfsc	((c:3972)),c,1	;volatile
	goto	i2u777_41
	goto	i2u777_40
i2u777_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u777_48
i2u777_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u777_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1894)),c
	clrf	((c:_LecturaFlancosUS$1894+1)),c
	goto	i2l5794
	
i2l1386:
	
i2l5794:
	movf	((c:_US_lecturas)),c,w
	mullw	02h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_stSensProx+0Ch)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_stSensProx+0Ch)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	((c:_LecturaFlancosUS$1894)),c,w
	addwf	postinc2
	movf	((c:_LecturaFlancosUS$1894+1)),c,w
	addwfc	postdec2
	line	459
	goto	i2l5814
	
i2l5796:
	movlw	high(0FFh)
	movwf	((c:_LecturaFlancosUS$1915+1)),c
	setf	((c:_LecturaFlancosUS$1915)),c
	goto	i2l5800
	
i2l1468:
	
i2l5798:
	btfsc	((c:3968)),c,1	;volatile
	goto	i2u778_41
	goto	i2u778_40
i2u778_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u778_48
i2u778_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u778_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1915)),c
	clrf	((c:_LecturaFlancosUS$1915+1)),c
	goto	i2l5800
	
i2l1470:
	
i2l5800:
	movff	(c:_LecturaFlancosUS$1915),(c:_LecturaFlancosUS$1914)
	movff	(c:_LecturaFlancosUS$1915+1),(c:_LecturaFlancosUS$1914+1)
	goto	i2l5804
	
i2l1464:
	
i2l5802:
	btfsc	((c:3968)),c,2	;volatile
	goto	i2u779_41
	goto	i2u779_40
i2u779_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u779_48
i2u779_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u779_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1914)),c
	clrf	((c:_LecturaFlancosUS$1914+1)),c
	goto	i2l5804
	
i2l1466:
	
i2l5804:
	movff	(c:_LecturaFlancosUS$1914),(c:_LecturaFlancosUS$1913)
	movff	(c:_LecturaFlancosUS$1914+1),(c:_LecturaFlancosUS$1913+1)
	goto	i2l5808
	
i2l1460:
	
i2l5806:
	btfsc	((c:3968)),c,0	;volatile
	goto	i2u780_41
	goto	i2u780_40
i2u780_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u780_48
i2u780_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u780_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1913)),c
	clrf	((c:_LecturaFlancosUS$1913+1)),c
	goto	i2l5808
	
i2l1462:
	
i2l5808:
	movff	(c:_LecturaFlancosUS$1913),(c:_LecturaFlancosUS$1912)
	movff	(c:_LecturaFlancosUS$1913+1),(c:_LecturaFlancosUS$1912+1)
	goto	i2l5812
	
i2l1456:
	
i2l5810:
	btfsc	((c:3970)),c,4	;volatile
	goto	i2u781_41
	goto	i2u781_40
i2u781_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u781_48
i2u781_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u781_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1912)),c
	clrf	((c:_LecturaFlancosUS$1912+1)),c
	goto	i2l5812
	
i2l1458:
	
i2l5812:
	movff	(c:_LecturaFlancosUS$1912),(c:_LecturaFlancosUS$1911)
	movff	(c:_LecturaFlancosUS$1912+1),(c:_LecturaFlancosUS$1911+1)
	goto	i2l5816
	
i2l1452:
	
i2l5814:
	btfsc	((c:3970)),c,5	;volatile
	goto	i2u782_41
	goto	i2u782_40
i2u782_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u782_48
i2u782_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u782_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1911)),c
	clrf	((c:_LecturaFlancosUS$1911+1)),c
	goto	i2l5816
	
i2l1454:
	
i2l5816:
	movff	(c:_LecturaFlancosUS$1911),(c:_LecturaFlancosUS$1910)
	movff	(c:_LecturaFlancosUS$1911+1),(c:_LecturaFlancosUS$1910+1)
	goto	i2l5820
	
i2l1448:
	
i2l5818:
	btfsc	((c:3971)),c,4	;volatile
	goto	i2u783_41
	goto	i2u783_40
i2u783_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u783_48
i2u783_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u783_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1910)),c
	clrf	((c:_LecturaFlancosUS$1910+1)),c
	goto	i2l5820
	
i2l1450:
	
i2l5820:
	movff	(c:_LecturaFlancosUS$1910),(c:_LecturaFlancosUS$1909)
	movff	(c:_LecturaFlancosUS$1910+1),(c:_LecturaFlancosUS$1909+1)
	goto	i2l5824
	
i2l1444:
	
i2l5822:
	btfsc	((c:3971)),c,5	;volatile
	goto	i2u784_41
	goto	i2u784_40
i2u784_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u784_48
i2u784_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u784_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1909)),c
	clrf	((c:_LecturaFlancosUS$1909+1)),c
	goto	i2l5824
	
i2l1446:
	
i2l5824:
	movff	(c:_LecturaFlancosUS$1909),(c:_LecturaFlancosUS$1908)
	movff	(c:_LecturaFlancosUS$1909+1),(c:_LecturaFlancosUS$1908+1)
	goto	i2l5828
	
i2l1440:
	
i2l5826:
	btfsc	((c:3972)),c,2	;volatile
	goto	i2u785_41
	goto	i2u785_40
i2u785_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u785_48
i2u785_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u785_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1908)),c
	clrf	((c:_LecturaFlancosUS$1908+1)),c
	goto	i2l5828
	
i2l1442:
	
i2l5828:
	movff	(c:_LecturaFlancosUS$1908),(c:_LecturaFlancosUS$1907)
	movff	(c:_LecturaFlancosUS$1908+1),(c:_LecturaFlancosUS$1907+1)
	goto	i2l5832
	
i2l1436:
	
i2l5830:
	btfsc	((c:3968)),c,5	;volatile
	goto	i2u786_41
	goto	i2u786_40
i2u786_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u786_48
i2u786_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u786_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1907)),c
	clrf	((c:_LecturaFlancosUS$1907+1)),c
	goto	i2l5832
	
i2l1438:
	
i2l5832:
	movff	(c:_LecturaFlancosUS$1907),(c:_LecturaFlancosUS$1906)
	movff	(c:_LecturaFlancosUS$1907+1),(c:_LecturaFlancosUS$1906+1)
	goto	i2l5836
	
i2l1432:
	
i2l5834:
	btfsc	((c:3972)),c,0	;volatile
	goto	i2u787_41
	goto	i2u787_40
i2u787_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u787_48
i2u787_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u787_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1906)),c
	clrf	((c:_LecturaFlancosUS$1906+1)),c
	goto	i2l5836
	
i2l1434:
	
i2l5836:
	movff	(c:_LecturaFlancosUS$1906),(c:_LecturaFlancosUS$1905)
	movff	(c:_LecturaFlancosUS$1906+1),(c:_LecturaFlancosUS$1905+1)
	goto	i2l5840
	
i2l1428:
	
i2l5838:
	btfsc	((c:3972)),c,1	;volatile
	goto	i2u788_41
	goto	i2u788_40
i2u788_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u788_48
i2u788_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u788_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1905)),c
	clrf	((c:_LecturaFlancosUS$1905+1)),c
	goto	i2l5840
	
i2l1430:
	
i2l5840:
	movf	((c:_US_lecturas)),c,w
	mullw	02h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_stSensProx+018h)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_stSensProx+018h)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	((c:_LecturaFlancosUS$1905)),c,w
	addwf	postinc2
	movf	((c:_LecturaFlancosUS$1905+1)),c,w
	addwfc	postdec2
	line	460
	goto	i2l5856
	
i2l5842:
	movlw	high(0FFh)
	movwf	((c:_LecturaFlancosUS$1926+1)),c
	setf	((c:_LecturaFlancosUS$1926)),c
	goto	i2l5846
	
i2l1512:
	
i2l5844:
	btfsc	((c:3968)),c,1	;volatile
	goto	i2u789_41
	goto	i2u789_40
i2u789_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u789_48
i2u789_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u789_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1926)),c
	clrf	((c:_LecturaFlancosUS$1926+1)),c
	goto	i2l5846
	
i2l1514:
	
i2l5846:
	movff	(c:_LecturaFlancosUS$1926),(c:_LecturaFlancosUS$1925)
	movff	(c:_LecturaFlancosUS$1926+1),(c:_LecturaFlancosUS$1925+1)
	goto	i2l5850
	
i2l1508:
	
i2l5848:
	btfsc	((c:3968)),c,2	;volatile
	goto	i2u790_41
	goto	i2u790_40
i2u790_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u790_48
i2u790_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u790_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1925)),c
	clrf	((c:_LecturaFlancosUS$1925+1)),c
	goto	i2l5850
	
i2l1510:
	
i2l5850:
	movff	(c:_LecturaFlancosUS$1925),(c:_LecturaFlancosUS$1924)
	movff	(c:_LecturaFlancosUS$1925+1),(c:_LecturaFlancosUS$1924+1)
	goto	i2l5854
	
i2l1504:
	
i2l5852:
	btfsc	((c:3968)),c,0	;volatile
	goto	i2u791_41
	goto	i2u791_40
i2u791_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u791_48
i2u791_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u791_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1924)),c
	clrf	((c:_LecturaFlancosUS$1924+1)),c
	goto	i2l5854
	
i2l1506:
	
i2l5854:
	movff	(c:_LecturaFlancosUS$1924),(c:_LecturaFlancosUS$1923)
	movff	(c:_LecturaFlancosUS$1924+1),(c:_LecturaFlancosUS$1923+1)
	goto	i2l5858
	
i2l1500:
	
i2l5856:
	btfsc	((c:3970)),c,4	;volatile
	goto	i2u792_41
	goto	i2u792_40
i2u792_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u792_48
i2u792_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u792_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1923)),c
	clrf	((c:_LecturaFlancosUS$1923+1)),c
	goto	i2l5858
	
i2l1502:
	
i2l5858:
	movff	(c:_LecturaFlancosUS$1923),(c:_LecturaFlancosUS$1922)
	movff	(c:_LecturaFlancosUS$1923+1),(c:_LecturaFlancosUS$1922+1)
	goto	i2l5862
	
i2l1496:
	
i2l5860:
	btfsc	((c:3970)),c,5	;volatile
	goto	i2u793_41
	goto	i2u793_40
i2u793_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u793_48
i2u793_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u793_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1922)),c
	clrf	((c:_LecturaFlancosUS$1922+1)),c
	goto	i2l5862
	
i2l1498:
	
i2l5862:
	movff	(c:_LecturaFlancosUS$1922),(c:_LecturaFlancosUS$1921)
	movff	(c:_LecturaFlancosUS$1922+1),(c:_LecturaFlancosUS$1921+1)
	goto	i2l5866
	
i2l1492:
	
i2l5864:
	btfsc	((c:3971)),c,4	;volatile
	goto	i2u794_41
	goto	i2u794_40
i2u794_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u794_48
i2u794_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u794_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1921)),c
	clrf	((c:_LecturaFlancosUS$1921+1)),c
	goto	i2l5866
	
i2l1494:
	
i2l5866:
	movff	(c:_LecturaFlancosUS$1921),(c:_LecturaFlancosUS$1920)
	movff	(c:_LecturaFlancosUS$1921+1),(c:_LecturaFlancosUS$1920+1)
	goto	i2l5870
	
i2l1488:
	
i2l5868:
	btfsc	((c:3971)),c,5	;volatile
	goto	i2u795_41
	goto	i2u795_40
i2u795_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u795_48
i2u795_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u795_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1920)),c
	clrf	((c:_LecturaFlancosUS$1920+1)),c
	goto	i2l5870
	
i2l1490:
	
i2l5870:
	movff	(c:_LecturaFlancosUS$1920),(c:_LecturaFlancosUS$1919)
	movff	(c:_LecturaFlancosUS$1920+1),(c:_LecturaFlancosUS$1919+1)
	goto	i2l5874
	
i2l1484:
	
i2l5872:
	btfsc	((c:3972)),c,2	;volatile
	goto	i2u796_41
	goto	i2u796_40
i2u796_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u796_48
i2u796_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u796_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1919)),c
	clrf	((c:_LecturaFlancosUS$1919+1)),c
	goto	i2l5874
	
i2l1486:
	
i2l5874:
	movff	(c:_LecturaFlancosUS$1919),(c:_LecturaFlancosUS$1918)
	movff	(c:_LecturaFlancosUS$1919+1),(c:_LecturaFlancosUS$1918+1)
	goto	i2l5878
	
i2l1480:
	
i2l5876:
	btfsc	((c:3968)),c,5	;volatile
	goto	i2u797_41
	goto	i2u797_40
i2u797_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u797_48
i2u797_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u797_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1918)),c
	clrf	((c:_LecturaFlancosUS$1918+1)),c
	goto	i2l5878
	
i2l1482:
	
i2l5878:
	movff	(c:_LecturaFlancosUS$1918),(c:_LecturaFlancosUS$1917)
	movff	(c:_LecturaFlancosUS$1918+1),(c:_LecturaFlancosUS$1917+1)
	goto	i2l5882
	
i2l1476:
	
i2l5880:
	btfsc	((c:3972)),c,0	;volatile
	goto	i2u798_41
	goto	i2u798_40
i2u798_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u798_48
i2u798_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u798_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1917)),c
	clrf	((c:_LecturaFlancosUS$1917+1)),c
	goto	i2l5882
	
i2l1478:
	
i2l5882:
	movff	(c:_LecturaFlancosUS$1917),(c:_LecturaFlancosUS$1916)
	movff	(c:_LecturaFlancosUS$1917+1),(c:_LecturaFlancosUS$1916+1)
	goto	i2l5886
	
i2l1472:
	
i2l5884:
	btfsc	((c:3972)),c,1	;volatile
	goto	i2u799_41
	goto	i2u799_40
i2u799_41:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
	incf	(??_LecturaFlancosUS+0+0)&0ffh,c
	goto	i2u799_48
i2u799_40:
	clrf	(??_LecturaFlancosUS+0+0)&0ffh,c
i2u799_48:
	movf	(??_LecturaFlancosUS+0+0),c,w
	movwf	((c:_LecturaFlancosUS$1916)),c
	clrf	((c:_LecturaFlancosUS$1916+1)),c
	goto	i2l5886
	
i2l1474:
	
i2l5886:
	movf	((c:_US_lecturas)),c,w
	mullw	02h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlw	low(_stSensProx+024h)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_stSensProx+024h)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movf	((c:_LecturaFlancosUS$1916)),c,w
	addwf	postinc2
	movf	((c:_LecturaFlancosUS$1916+1)),c,w
	addwfc	postdec2
	line	461
	
i2l1515:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LecturaFlancosUS
	__end_of_LecturaFlancosUS:
	signat	_LecturaFlancosUS,88
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
	end
