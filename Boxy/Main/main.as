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
	FNCALL	_main,_InitTIMERS
	FNCALL	_main,_MotorsPWM
	FNCALL	_main,_MotorsSpeed
	FNCALL	_main,___almod
	FNCALL	_main,_configIO
	FNCALL	_main,_configurations_init
	FNCALL	_MotorsSpeed,_MotorASpeed
	FNCALL	_MotorsSpeed,_MotorBSpeed
	FNCALL	_MotorBSpeed,___awdiv
	FNCALL	_MotorASpeed,___awdiv
	FNROOT	_main
	FNCALL	intlevel2,_enc
	global	intlevel2
	FNROOT	intlevel2
	global	_TIME
	global	_d1
	global	_d2
	global	_fa
	global	_fb
	global	_ma
	global	_mb
	global	_sd
	global	_state
	global	_O
	global	_PO
	global	_PR
	global	_PY
	global	_R
	global	_Y
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
	global	_PR2
_PR2	set	0xFCB
	global	_RCONbits
_RCONbits	set	0xFD0
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
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TRISDbits
_TRISDbits	set	0xF95
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
	global	_TMR1IF
_TMR1IF	set	0x7CF0
	global	_TMR2ON
_TMR2ON	set	0x7E52
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
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
global __CFG_FOSC$INTOSCIO_EC
__CFG_FOSC$INTOSCIO_EC equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_VREGEN$OFF
__CFG_VREGEN$OFF equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_BOR$OFF
__CFG_BOR$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_CCP2MX$ON
__CFG_CCP2MX$ON equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_DEBUG$OFF
__CFG_DEBUG$OFF equ 0x0
global __CFG_ICPRT$OFF
__CFG_ICPRT$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
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
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
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
	global	_ma
_ma:
       ds      2
	global	_mb
_mb:
       ds      2
	global	_sd
_sd:
       ds      2
	global	_state
_state:
       ds      2
	global	_O
_O:
       ds      1
	global	_PO
_PO:
       ds      1
	global	_PR
_PR:
       ds      1
	global	_PY
_PY:
       ds      1
	global	_R
_R:
       ds      1
	global	_Y
_Y:
       ds      1
	line	#
psect	cinit
; Clear objects allocated to COMRAM (26 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	26
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_InitTIMERS:	; 0 bytes @ 0x0
?_configurations_init:	; 0 bytes @ 0x0
?_MotorsPWM:	; 0 bytes @ 0x0
?_configIO:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?_enc:	; 0 bytes @ 0x0
??_enc:	; 0 bytes @ 0x0
	ds   14
??_InitTIMERS:	; 0 bytes @ 0xE
??_configurations_init:	; 0 bytes @ 0xE
??_MotorsPWM:	; 0 bytes @ 0xE
??_configIO:	; 0 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___almod
?___almod:	; 4 bytes @ 0xE
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xE
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0xE
	ds   2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	ds   2
??___awdiv:	; 0 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x12
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	ds   2
?_MotorASpeed:	; 0 bytes @ 0x16
?_MotorBSpeed:	; 0 bytes @ 0x16
??___almod:	; 0 bytes @ 0x16
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x16
	global	MotorASpeed@S
MotorASpeed@S:	; 2 bytes @ 0x16
	global	MotorBSpeed@S
MotorBSpeed@S:	; 2 bytes @ 0x16
	ds   1
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0x17
	ds   1
??_MotorASpeed:	; 0 bytes @ 0x18
??_MotorBSpeed:	; 0 bytes @ 0x18
	ds   1
?_MotorsSpeed:	; 0 bytes @ 0x19
	global	MotorsSpeed@A
MotorsSpeed@A:	; 2 bytes @ 0x19
	ds   2
	global	MotorsSpeed@B
MotorsSpeed@B:	; 2 bytes @ 0x1B
	ds   2
??_MotorsSpeed:	; 0 bytes @ 0x1D
	ds   2
??_main:	; 0 bytes @ 0x1F
	ds   2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         26
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     33      59
;!    BANK0           160      0       0
;!    BANK1           256      0       0
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
;!    _main->_MotorsSpeed
;!    _MotorsSpeed->_MotorASpeed
;!    _MotorsSpeed->_MotorBSpeed
;!    _MotorBSpeed->___awdiv
;!    _MotorASpeed->___awdiv
;!
;!Critical Paths under _enc in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 2     2      0    2848
;!                                             31 COMRAM     2     2      0
;!                         _InitTIMERS
;!                          _MotorsPWM
;!                        _MotorsSpeed
;!                            ___almod
;!                           _configIO
;!                _configurations_init
;! ---------------------------------------------------------------------------------
;! (1) _configurations_init                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _configIO                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___almod                                             10     2      8     554
;!                                             14 COMRAM    10     2      8
;! ---------------------------------------------------------------------------------
;! (1) _MotorsSpeed                                          6     2      4    2294
;!                                             25 COMRAM     6     2      4
;!                        _MotorASpeed
;!                        _MotorBSpeed
;! ---------------------------------------------------------------------------------
;! (2) _MotorBSpeed                                          3     1      2     695
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (2) _MotorASpeed                                          3     1      2     695
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     472
;!                                             14 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _MotorsPWM                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _InitTIMERS                                           0     0      0       0
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
;!   _InitTIMERS
;!   _MotorsPWM
;!   _MotorsSpeed
;!     _MotorASpeed
;!       ___awdiv
;!     _MotorBSpeed
;!       ___awdiv
;!   ___almod
;!   _configIO
;!   _configurations_init
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
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0       0       7        0.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0       0       5        0.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     21      3B       1       62.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0      3B      20        0.0%
;!DATA                 0      0      3B       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 42 in file "/home/newtonis/Robots/Boxy/Main/main.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_InitTIMERS
;;		_MotorsPWM
;;		_MotorsSpeed
;;		___almod
;;		_configIO
;;		_configurations_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Boxy/Main/main.c"
	line	42
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/Boxy/Main/main.c"
	line	42
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	43
	
l1176:
	movlw	low(0)
	movwf	((c:_R)),c
	line	44
	movlw	low(0)
	movwf	((c:_Y)),c
	line	45
	movlw	low(0)
	movwf	((c:_O)),c
	line	46
	movlw	low(0)
	movwf	((c:_PR)),c
	line	47
	movlw	low(0)
	movwf	((c:_PY)),c
	line	48
	movlw	low(0)
	movwf	((c:_PO)),c
	line	50
	movlw	high(0)
	movwf	((c:_fa+1)),c
	movlw	low(0)
	movwf	((c:_fa)),c
	line	51
	movlw	high(0)
	movwf	((c:_fb+1)),c
	movlw	low(0)
	movwf	((c:_fb)),c
	line	52
	movlw	high(0)
	movwf	((c:_ma+1)),c
	movlw	low(0)
	movwf	((c:_ma)),c
	line	53
	movlw	high(0)
	movwf	((c:_mb+1)),c
	movlw	low(0)
	movwf	((c:_mb)),c
	line	54
	movlw	high(0)
	movwf	((c:_d1+1)),c
	movlw	low(0)
	movwf	((c:_d1)),c
	line	55
	movlw	high(0)
	movwf	((c:_d2+1)),c
	movlw	low(0)
	movwf	((c:_d2)),c
	line	58
	
l1178:
	call	_InitTIMERS	;wreg free
	line	59
	
l1180:
	call	_configurations_init	;wreg free
	line	61
	
l1182:
	call	_MotorsPWM	;wreg free
	line	62
	call	_configIO	;wreg free
	line	66
	
l1184:
	movlw	high(0)
	movwf	((c:_state+1)),c
	movlw	low(0)
	movwf	((c:_state)),c
	goto	l1270
	line	67
	
l54:
	line	68
	goto	l1270
	line	69
	
l56:
	line	79
	btfss	((c:3971)),c,7	;volatile
	bra	u865
	bsf	((c:3971)),c,2	;volatile
	bra	u867
	u865:	
	bcf	((c:3971)),c,2	;volatile
	u867:
	line	80
	btfss	((c:3969)),c,5	;volatile
	bra	u875
	bsf	((c:3971)),c,3	;volatile
	bra	u877
	u875:	
	bcf	((c:3971)),c,3	;volatile
	u877:
	line	81
	btfss	((c:3971)),c,5	;volatile
	bra	u885
	bsf	((c:3971)),c,4	;volatile
	bra	u887
	u885:	
	bcf	((c:3971)),c,4	;volatile
	u887:
	line	96
	
l1186:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	97
	
l1188:
	btfsc	((c:3969)),c,2	;volatile
	goto	u891
	goto	u890
u891:
	goto	l1192
u890:
	line	98
	
l1190:
	movlw	high(01h)
	movwf	((c:_sd+1)),c
	movlw	low(01h)
	movwf	((c:_sd)),c
	line	99
	movlw	high(01h)
	movwf	((c:_state+1)),c
	movlw	low(01h)
	movwf	((c:_state)),c
	line	100
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	goto	l1192
	line	101
	
l57:
	line	102
	
l1192:
	btfsc	((c:3969)),c,0	;volatile
	goto	u901
	goto	u900
u901:
	goto	l1270
u900:
	line	103
	
l1194:
	movlw	high(02h)
	movwf	((c:_sd+1)),c
	movlw	low(02h)
	movwf	((c:_sd)),c
	line	104
	movlw	high(01h)
	movwf	((c:_state+1)),c
	movlw	low(01h)
	movwf	((c:_state)),c
	line	105
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	goto	l1270
	line	106
	
l58:
	line	107
	goto	l1270
	line	108
	
l60:
	line	109
	
l1196:
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	113
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
	goto	u910
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u911
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u911
	goto	u910

u911:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u928
u910:
	clrf	(??_main+0+0)&0ffh,c
u928:
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	114
	
l1198:
		decf	((c:_sd)),c,w
iorwf	((c:_sd+1)),c,w
	btfsc	status,2
	goto	u931
	goto	u930

u931:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u948
u930:
	clrf	(??_main+0+0)&0ffh,c
u948:
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	115
	
l1200:
		movlw	2
	xorwf	((c:_sd)),c,w
iorwf	((c:_sd+1)),c,w
	btfsc	status,2
	goto	u951
	goto	u950

u951:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u968
u950:
	clrf	(??_main+0+0)&0ffh,c
u968:
	swapf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	116
	
l1202:
	btfsc	((c:_TIME+3)),c,7
	goto	u971
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u970
	movlw	137
	subwf	 ((c:_TIME)),c,w
	movlw	19
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u971
	goto	u970

u971:
	goto	l1270
u970:
	line	117
	
l1204:
	movlw	high(02h)
	movwf	((c:_state+1)),c
	movlw	low(02h)
	movwf	((c:_state)),c
	goto	l1270
	line	118
	
l61:
	line	119
	goto	l1270
	line	120
	
l62:
	line	133
	
l1206:
		decf	((c:_sd)),c,w
iorwf	((c:_sd+1)),c,w
	btfsc	status,2
	goto	u981
	goto	u980

u981:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u998
u980:
	clrf	(??_main+0+0)&0ffh,c
u998:
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	134
		movlw	2
	xorwf	((c:_sd)),c,w
iorwf	((c:_sd+1)),c,w
	btfsc	status,2
	goto	u1001
	goto	u1000

u1001:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u1018
u1000:
	clrf	(??_main+0+0)&0ffh,c
u1018:
	swapf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	136
	
l1208:
	btfss	((c:3969)),c,5	;volatile
	goto	u1021
	goto	u1020
u1021:
	goto	l63
u1020:
	line	137
	
l1210:
	btfss	((c:3971)),c,5	;volatile
	goto	u1031
	goto	u1030
u1031:
	goto	l64
u1030:
	
l1212:
	btfss	((c:3971)),c,7	;volatile
	goto	u1041
	goto	u1040
u1041:
	goto	l64
u1040:
	line	138
	
l1214:
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	139
	movff	(c:_TIME),(c:___almod@dividend)
	movff	(c:_TIME+1),(c:___almod@dividend+1)
	movff	(c:_TIME+2),(c:___almod@dividend+2)
	movff	(c:_TIME+3),(c:___almod@dividend+3)
	movlw	low(0C8h)
	movwf	((c:___almod@divisor)),c
	movlw	high(0C8h)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(0C8h)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(0C8h)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u1050
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u1051
	movlw	101
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u1051
	goto	u1050

u1051:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u1068
u1050:
	clrf	(??_main+0+0)&0ffh,c
u1068:
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	140
	goto	l1256
	
l64:
	btfsc	((c:3971)),c,5	;volatile
	goto	u1071
	goto	u1070
u1071:
	goto	l66
u1070:
	
l1216:
	btfsc	((c:3971)),c,7	;volatile
	goto	u1081
	goto	u1080
u1081:
	goto	l66
u1080:
	line	141
	
l1218:
	movff	(c:_TIME),(c:___almod@dividend)
	movff	(c:_TIME+1),(c:___almod@dividend+1)
	movff	(c:_TIME+2),(c:___almod@dividend+2)
	movff	(c:_TIME+3),(c:___almod@dividend+3)
	movlw	low(0190h)
	movwf	((c:___almod@divisor)),c
	movlw	high(0190h)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(0190h)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(0190h)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u1090
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u1091
	movlw	201
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u1091
	goto	u1090

u1091:
	clrf	(??_main+0+0)&0ffh,c
	incf	(??_main+0+0)&0ffh,c
	goto	u1108
u1090:
	clrf	(??_main+0+0)&0ffh,c
u1108:
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	rlncf	(??_main+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_main+0+0),c,w
	andlw	not (((1<<1)-1)<<3)
	xorwf	(??_main+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	142
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	143
	goto	l1256
	
l66:
	btfss	((c:3971)),c,5	;volatile
	goto	u1111
	goto	u1110
u1111:
	goto	l68
u1110:
	
l1220:
	btfsc	((c:3971)),c,7	;volatile
	goto	u1121
	goto	u1120
u1121:
	goto	l68
u1120:
	line	144
	
l1222:
	bsf	((c:3971)),c,3	;volatile
	line	145
	
l1224:
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0190h)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0190h)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	146
	goto	l1256
	
l68:
	btfss	((c:3971)),c,7	;volatile
	goto	u1131
	goto	u1130
u1131:
	goto	l1256
u1130:
	
l1226:
	btfsc	((c:3971)),c,5	;volatile
	goto	u1141
	goto	u1140
u1141:
	goto	l1256
u1140:
	line	147
	
l1228:
	bsf	((c:3971)),c,3	;volatile
	line	148
	
l1230:
	movlw	high(0190h)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0190h)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	goto	l1256
	line	149
	
l70:
	goto	l1256
	line	150
	
l69:
	goto	l1256
	
l67:
	goto	l1256
	
l65:
	goto	l1256
	
l63:
	btfss	((c:3971)),c,5	;volatile
	goto	u1151
	goto	u1150
u1151:
	goto	l72
u1150:
	
l1232:
	btfsc	((c:3971)),c,7	;volatile
	goto	u1161
	goto	u1160
u1161:
	goto	l72
u1160:
	line	151
	
l1234:
	bcf	((c:3971)),c,3	;volatile
	line	152
	
l1236:
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(-500)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(-500)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	153
	goto	l1256
	
l72:
	btfss	((c:3971)),c,7	;volatile
	goto	u1171
	goto	u1170
u1171:
	goto	l1244
u1170:
	
l1238:
	btfsc	((c:3971)),c,5	;volatile
	goto	u1181
	goto	u1180
u1181:
	goto	l1244
u1180:
	line	154
	
l1240:
	bcf	((c:3971)),c,3	;volatile
	line	155
	
l1242:
	movlw	high(-500)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(-500)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	156
	goto	l1256
	
l74:
	
l1244:
		decf	((c:_sd)),c,w
iorwf	((c:_sd+1)),c,w
	btfss	status,2
	goto	u1191
	goto	u1190

u1191:
	goto	l1250
u1190:
	line	157
	
l1246:
	bcf	((c:3971)),c,3	;volatile
	line	158
	
l1248:
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(-500)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(-500)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	159
	goto	l1256
	
l76:
	
l1250:
		movlw	2
	xorwf	((c:_sd)),c,w
iorwf	((c:_sd+1)),c,w
	btfss	status,2
	goto	u1201
	goto	u1200

u1201:
	goto	l1256
u1200:
	line	160
	
l1252:
	bcf	((c:3971)),c,3	;volatile
	line	161
	
l1254:
	movlw	high(-500)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(-500)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(03E8h)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	goto	l1256
	line	162
	
l78:
	goto	l1256
	line	164
	
l77:
	goto	l1256
	
l75:
	goto	l1256
	
l73:
	goto	l1256
	
l71:
	
l1256:
	btfss	((c:3971)),c,5	;volatile
	goto	u1211
	goto	u1210
u1211:
	goto	l1262
u1210:
	
l1258:
	btfsc	((c:3971)),c,7	;volatile
	goto	u1221
	goto	u1220
u1221:
	goto	l1262
u1220:
	line	165
	
l1260:
	movlw	high(02h)
	movwf	((c:_sd+1)),c
	movlw	low(02h)
	movwf	((c:_sd)),c
	goto	l1262
	line	166
	
l79:
	line	167
	
l1262:
	btfss	((c:3971)),c,7	;volatile
	goto	u1231
	goto	u1230
u1231:
	goto	l1270
u1230:
	
l1264:
	btfsc	((c:3971)),c,5	;volatile
	goto	u1241
	goto	u1240
u1241:
	goto	l1270
u1240:
	line	168
	
l1266:
	movlw	high(01h)
	movwf	((c:_sd+1)),c
	movlw	low(01h)
	movwf	((c:_sd)),c
	goto	l1270
	line	169
	
l80:
	line	171
	goto	l1270
	line	172
	
l1268:
	goto	l1270
	line	68
	
l55:
	
l1270:
	movff	(c:_state),??_main+0+0
	movff	(c:_state+1),??_main+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_main+0+1,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l1280
	goto	l1270
	
l1280:
; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_main+0+0,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l56
	xorlw	1^0	; case 1
	skipnz
	goto	l1196
	xorlw	2^1	; case 2
	skipnz
	goto	l1206
	goto	l1270

	line	172
	
l59:
	goto	l1270
	line	205
	
l81:
	line	67
	goto	l1270
	
l82:
	line	208
	
l83:
	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 28 in file "/home/newtonis/Robots/Boxy/Main/config.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	28
global __ptext1
__ptext1:
psect	text1
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	28
	global	__size_of_configurations_init
	__size_of_configurations_init	equ	__end_of_configurations_init-_configurations_init
	
_configurations_init:
;incstack = 0
	opt	stack 29
	line	29
	
l884:
		bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	32
	
l886:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	35
	
l888:
	bcf	((c:3949)),c,3	;volatile
	line	36
	
l890:
	bsf	((c:3951)),c,3	;volatile
	line	38
	
l153:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,88
	global	_configIO

;; *************** function _configIO *****************
;; Defined at:
;;		line 5 in file "/home/newtonis/Robots/Boxy/Main/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
psect	text2,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Boxy/Main/main.c"
	line	5
global __ptext2
__ptext2:
psect	text2
	file	"/home/newtonis/Robots/Boxy/Main/main.c"
	line	5
	global	__size_of_configIO
	__size_of_configIO	equ	__end_of_configIO-_configIO
	
_configIO:
;incstack = 0
	opt	stack 29
	line	6
	
l854:
	bcf	((c:3989)),c,2	;volatile
	line	7
	bcf	((c:3989)),c,3	;volatile
	line	8
	bcf	((c:3989)),c,4	;volatile
	line	10
	bsf	((c:3987)),c,0	;volatile
	line	11
	bsf	((c:3987)),c,1	;volatile
	line	12
	bsf	((c:3987)),c,2	;volatile
	line	15
	bsf	((c:3987)),c,5	;volatile
	line	16
	bsf	((c:3989)),c,5	;volatile
	line	17
	bsf	((c:3987)),c,6	;volatile
	line	18
	bsf	((c:3989)),c,6	;volatile
	line	19
	bsf	((c:3987)),c,3	;volatile
	line	20
	bsf	((c:3989)),c,7	;volatile
	line	23
	bcf	((c:3989)),c,0	;volatile
	line	24
	bcf	((c:3988)),c,0	;volatile
	line	26
	bcf	((c:3988)),c,1	;volatile
	line	27
	bcf	((c:3988)),c,2	;volatile
	line	28
	
l23:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configIO
	__end_of_configIO:
	signat	_configIO,88
	global	___almod

;; *************** function ___almod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/almod.c"
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
psect	text3,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/almod.c"
	line	8
global __ptext3
__ptext3:
psect	text3
	file	"/opt/microchip/xc8/v1.34/sources/common/almod.c"
	line	8
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:
;incstack = 0
	opt	stack 29
	line	13
	
l1140:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l1142:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u800
	goto	u801

u801:
	goto	l1148
u800:
	line	15
	
l1144:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l1146:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l1148
	line	17
	
l267:
	line	18
	
l1148:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u810
	goto	u811

u811:
	goto	l1152
u810:
	line	19
	
l1150:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l1152
	
l268:
	line	20
	
l1152:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u821
	goto	u820

u821:
	goto	l1168
u820:
	line	21
	
l1154:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l1158
	
l271:
	line	23
	
l1156:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l1158
	line	25
	
l270:
	line	22
	
l1158:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u831
	goto	u830
u831:
	goto	l1156
u830:
	goto	l1160
	
l272:
	goto	l1160
	line	26
	
l273:
	line	27
	
l1160:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u841
	goto	u840

u841:
	goto	l1164
u840:
	line	28
	
l1162:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l1164
	
l274:
	line	29
	
l1164:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l1166:
	decfsz	((c:___almod@counter)),c
	
	goto	l1160
	goto	l1168
	
l275:
	goto	l1168
	line	31
	
l269:
	line	32
	
l1168:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u851
	goto	u850
u851:
	goto	l1172
u850:
	line	33
	
l1170:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l1172
	
l276:
	line	34
	
l1172:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l277
	
l1174:
	line	35
	
l277:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	_MotorsSpeed

;; *************** function _MotorsSpeed *****************
;; Defined at:
;;		line 126 in file "/home/newtonis/Robots/Boxy/Main/config.c"
;; Parameters:    Size  Location     Type
;;  A               2   25[COMRAM] int 
;;  B               2   27[COMRAM] int 
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
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_MotorASpeed
;;		_MotorBSpeed
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	126
global __ptext4
__ptext4:
psect	text4
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	126
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 27
	line	127
	
l1138:
	movff	(c:MotorsSpeed@A),??_MotorsSpeed+0+0
	movff	(c:MotorsSpeed@A+1),??_MotorsSpeed+0+0+1
	comf	(??_MotorsSpeed+0+0),c
	comf	(??_MotorsSpeed+0+1),c
	infsnz	(??_MotorsSpeed+0+0),c
	incf	(??_MotorsSpeed+0+1),c
	movff	??_MotorsSpeed+0+0,(c:MotorASpeed@S)
	movff	??_MotorsSpeed+0+1,(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	128
	movff	(c:MotorsSpeed@B),(c:MotorBSpeed@S)
	movff	(c:MotorsSpeed@B+1),(c:MotorBSpeed@S+1)
	call	_MotorBSpeed	;wreg free
	line	129
	
l192:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8312
	global	_MotorBSpeed

;; *************** function _MotorBSpeed *****************
;; Defined at:
;;		line 114 in file "/home/newtonis/Robots/Boxy/Main/config.c"
;; Parameters:    Size  Location     Type
;;  S               2   22[COMRAM] int 
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
psect	text5,class=CODE,space=0,reloc=2
	line	114
global __ptext5
__ptext5:
psect	text5
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	114
	global	__size_of_MotorBSpeed
	__size_of_MotorBSpeed	equ	__end_of_MotorBSpeed-_MotorBSpeed
	
_MotorBSpeed:
;incstack = 0
	opt	stack 27
	line	115
	
l1120:
	negf	((c:MotorBSpeed@S)),c
	comf	((c:MotorBSpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorBSpeed@S+1)),c
	line	116
	
l1122:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u751
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u751
	goto	u750

u751:
	goto	l1126
u750:
	
l1124:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l1126
	
l178:
	goto	l1126
	
l180:
	line	117
	
l1126:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u761
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u761
	goto	u760

u761:
	goto	l1130
u760:
	
l1128:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l1130
	
l182:
	goto	l1130
	
l184:
	line	119
	
l1130:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u771
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u770
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u771
	goto	u770

u771:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u788
u770:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u788:
	movf	((c:3970)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not ((1<<1)-1)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3970)),c	;volatile
	line	120
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u790
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u791
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u791
	goto	u790

u791:
	goto	l1134
u790:
	
l1132:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l1134
	
l186:
	goto	l1134
	
l188:
	line	122
	
l1134:
	movff	(c:MotorBSpeed@S),??_MotorBSpeed+0+0
	movlw	03h
	andwf	(??_MotorBSpeed+0+0),c
	swapf	(??_MotorBSpeed+0+0),c
	movf	((c:4026)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:4026)),c	;volatile
	line	123
	
l1136:
	movff	(c:MotorBSpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorBSpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4027)),c	;volatile
	line	124
	
l189:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorBSpeed
	__end_of_MotorBSpeed:
	signat	_MotorBSpeed,4216
	global	_MotorASpeed

;; *************** function _MotorASpeed *****************
;; Defined at:
;;		line 103 in file "/home/newtonis/Robots/Boxy/Main/config.c"
;; Parameters:    Size  Location     Type
;;  S               2   22[COMRAM] int 
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
psect	text6,class=CODE,space=0,reloc=2
	line	103
global __ptext6
__ptext6:
psect	text6
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	103
	global	__size_of_MotorASpeed
	__size_of_MotorASpeed	equ	__end_of_MotorASpeed-_MotorASpeed
	
_MotorASpeed:
;incstack = 0
	opt	stack 27
	line	104
	
l1102:
	negf	((c:MotorASpeed@S)),c
	comf	((c:MotorASpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorASpeed@S+1)),c
	line	105
	
l1104:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u701
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u701
	goto	u700

u701:
	goto	l1108
u700:
	
l1106:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l1108
	
l163:
	goto	l1108
	
l165:
	line	106
	
l1108:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u711
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u711
	goto	u710

u711:
	goto	l1112
u710:
	
l1110:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l1112
	
l167:
	goto	l1112
	
l169:
	line	108
	
l1112:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u721
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u720
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u721
	goto	u720

u721:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u738
u720:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u738:
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not ((1<<1)-1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	109
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u740
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u741
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u741
	goto	u740

u741:
	goto	l1116
u740:
	
l1114:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l1116
	
l171:
	goto	l1116
	
l173:
	line	111
	
l1116:
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
	line	112
	
l1118:
	movff	(c:MotorASpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorASpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4030)),c	;volatile
	line	113
	
l174:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorASpeed
	__end_of_MotorASpeed:
	signat	_MotorASpeed,4216
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
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
;;		_MotorASpeed
;;		_MotorBSpeed
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	8
global __ptext7
__ptext7:
psect	text7
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 27
	line	14
	
l1058:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l1060:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u640
	goto	u641

u641:
	goto	l1066
u640:
	line	16
	
l1062:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l1064:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l1066
	line	18
	
l378:
	line	19
	
l1066:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u650
	goto	u651

u651:
	goto	l1072
u650:
	line	20
	
l1068:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l1070:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l1072
	line	22
	
l379:
	line	23
	
l1072:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l1074:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u661
	goto	u660

u661:
	goto	l1094
u660:
	line	25
	
l1076:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l1080
	
l382:
	line	27
	
l1078:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l1080
	line	29
	
l381:
	line	26
	
l1080:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u671
	goto	u670
u671:
	goto	l1078
u670:
	goto	l1082
	
l383:
	goto	l1082
	line	30
	
l384:
	line	31
	
l1082:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l1084:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u681
	goto	u680

u681:
	goto	l1090
u680:
	line	33
	
l1086:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l1088:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l1090
	line	35
	
l385:
	line	36
	
l1090:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l1092:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l1082
	goto	l1094
	
l386:
	goto	l1094
	line	38
	
l380:
	line	39
	
l1094:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u691
	goto	u690
u691:
	goto	l1098
u690:
	line	40
	
l1096:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l1098
	
l387:
	line	41
	
l1098:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l388
	
l1100:
	line	42
	
l388:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_MotorsPWM

;; *************** function _MotorsPWM *****************
;; Defined at:
;;		line 76 in file "/home/newtonis/Robots/Boxy/Main/config.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	76
global __ptext8
__ptext8:
psect	text8
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	76
	global	__size_of_MotorsPWM
	__size_of_MotorsPWM	equ	__end_of_MotorsPWM-_MotorsPWM
	
_MotorsPWM:
;incstack = 0
	opt	stack 29
	line	78
	
l892:
	bcf	c:(32339/8),(32339)&7	;volatile
	line	79
	bcf	c:(32340/8),(32340)&7	;volatile
	line	80
	bcf	c:(32341/8),(32341)&7	;volatile
	line	81
	bcf	c:(32342/8),(32342)&7	;volatile
	line	83
	bsf	c:(32338/8),(32338)&7	;volatile
	line	84
	bcf	c:(32336/8),(32336)&7	;volatile
	line	85
	bcf	c:(32337/8),(32337)&7	;volatile
	line	87
	bsf	c:(32338/8),(32338)&7	;volatile
	line	90
	
l894:
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<4)-1)<<3)
	iorlw	(0Bh & ((1<<4)-1))<<3
	movwf	((c:4042)),c	;volatile
	line	91
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	((c:4042)),c	;volatile
	line	92
	
l896:
	bcf	((c:4042)),c,2	;volatile
	line	93
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	94
	
l898:
	bsf	((c:4042)),c,2	;volatile
	line	97
	movf	((c:4029)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4029)),c	;volatile
	line	98
	movf	((c:4026)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4026)),c	;volatile
	line	99
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	101
	
l159:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsPWM
	__end_of_MotorsPWM:
	signat	_MotorsPWM,88
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 40 in file "/home/newtonis/Robots/Boxy/Main/config.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	40
global __ptext9
__ptext9:
psect	text9
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	40
	global	__size_of_InitTIMERS
	__size_of_InitTIMERS	equ	__end_of_InitTIMERS-_InitTIMERS
	
_InitTIMERS:
;incstack = 0
	opt	stack 29
	line	41
	
l856:
	bcf	((c:4053)),c,7	;volatile
	line	42
	bcf	((c:4053)),c,6	;volatile
	line	43
	bcf	((c:4053)),c,5	;volatile
	line	45
	bsf	((c:4053)),c,3	;volatile
	line	46
	
l858:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	47
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	50
	
l860:
	bsf	((c:4081)),c,2	;volatile
	line	51
	
l862:
	bcf	((c:4048)),c,7	;volatile
	line	52
	
l864:
	bsf	((c:4082)),c,5	;volatile
	line	56
	
l866:
	bsf	((c:4082)),c,7	;volatile
	line	58
	
l868:
	bsf	((c:4053)),c,7	;volatile
	line	60
	
l870:
	bcf	((c:4045)),c,0	;volatile
	line	61
	
l872:
	bcf	((c:4045)),c,7	;volatile
	line	62
	
l874:
	bcf	((c:4045)),c,6	;volatile
	line	63
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	64
	
l876:
	bcf	((c:4045)),c,3	;volatile
	line	65
	
l878:
	bcf	((c:4045)),c,1	;volatile
	line	66
	
l880:
	bsf	((c:4045)),c,0	;volatile
	line	68
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	69
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	71
	
l882:
	bcf	((c:4081)),c,7	;volatile
	line	73
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	74
	
l156:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,88
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 7 in file "/home/newtonis/Robots/Boxy/Main/config.c"
;; Parameters:    Size  Location     Type
;;		None
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
	file	"/home/newtonis/Robots/Boxy/Main/config.c"
	line	7
	global	__size_of_enc
	__size_of_enc	equ	__end_of_enc-_enc
	
_enc:
;incstack = 0
	opt	stack 27
	movff	pclat+0,??_enc+0
	movff	pclat+1,??_enc+1
	movff	fsr0l+0,??_enc+2
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body
int_func:

	pop	; remove dummy address from shadow register refresh
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
	line	8
	
i2l1038:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u62_41
	goto	i2u62_40
i2u62_41:
	goto	i2l1048
i2u62_40:
	line	9
	
i2l1040:
	movlw	low(01h)
	addwf	((c:_TIME)),c
	movlw	0
	addwfc	((c:_TIME+1)),c
	addwfc	((c:_TIME+2)),c
	addwfc	((c:_TIME+3)),c
	line	10
	
i2l1042:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	11
	
i2l1044:
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	14
	
i2l1046:
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l1048
	line	15
	
i2l148:
	line	16
	
i2l1048:
	btfss	c:(31984/8),(31984)&7	;volatile
	goto	i2u63_41
	goto	i2u63_40
i2u63_41:
	goto	i2l150
i2u63_40:
	line	17
	
i2l1050:
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	18
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	24
	
i2l1052:
	bcf	c:(31984/8),(31984)&7	;volatile
	goto	i2l150
	line	25
	
i2l149:
	line	26
	
i2l150:
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
	retfie f
	opt stack 0
GLOBAL	__end_of_enc
	__end_of_enc:
	signat	_enc,88
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
