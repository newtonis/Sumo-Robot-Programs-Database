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
	FNCALL	_main,_EnhancedRead
	FNCALL	_main,_Line
	FNCALL	_main,_MotorsSpeed
	FNCALL	_main,_Wixel
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
	FNCALL	_Line,___aldiv
	FNCALL	_Line,___lmul
	FNCALL	_Line,___wmul
	FNCALL	_EnhancedRead,___awdiv
	FNROOT	_main
	FNCALL	intlevel2,_enc
	global	intlevel2
	FNROOT	intlevel2
	global	_fw
	global	_KD
	global	_KP
	global	_KR
	global	_SP
	global	_pd
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	864

;initializer for _fw
	dw	(06h)&0ffffh
	dw	(05h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01h)&0ffffh
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	101

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
	line	100

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
	line	102

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
	line	103

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
	line	865

;initializer for _pd
	dw	(-2)&0ffffh
	dw	(-1)&0ffffh
	dw	(0)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	line	122

;initializer for _TIMEFRENO
	dw	(0C8h) & 0xffff
	dw	highword(0C8h)
	global	_dpowers
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
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
	global	_dpowers
	global	_PIDf
	global	_TIME
	global	_w
	global	_CURRENT
	global	_ma
	global	_mb
	global	_MF
	global	_PisoActual
	global	_RWM
	global	_actual
	global	_x
	global	_SIZES
	global	_DER
	global	_LP
	global	_MS
	global	_POSICION
	global	_WAITFRENAR
	global	_WAITIME
	global	_prev_line
	global	_sum
	global	_a
	global	_fa
	global	_fb
	global	_fns
	global	_mode
	global	_sa
	global	_speedMode
	global	_ST_B_AMARILLO
	global	_ST_B_ROJO
	global	_ST_B_VERDE
	global	_high
	global	_low
	global	_nove
	global	_AMOUNT
	global	_amax
	global	_amin
	global	_V
	global	_division
	global	_prev2_line
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
	
STR_6:
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
	
STR_8:
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
	db	114	;'r'
	db	116	;'t'
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
	
STR_9:
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
	db	97	;'a'
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
	db	49	;'1'
	db	48	;'0'
	db	48	;'0'
	db	44
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
	db	98	;'b'
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
	db	49	;'1'
	db	48	;'0'
	db	48	;'0'
	db	44
	db	48	;'0'
	db	44
	db	50	;'2'
	db	48	;'0'
	db	48	;'0'
	db	41
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
STR_7	equ	STR_6+0
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
	global	_ma
_ma:
       ds      2
	global	_mb
_mb:
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
	global	_DER
_DER:
       ds      4
	global	_LP
_LP:
       ds      4
	global	_MS
_MS:
       ds      4
	global	_POSICION
_POSICION:
       ds      4
	global	_WAITFRENAR
_WAITFRENAR:
       ds      4
	global	_WAITIME
_WAITIME:
       ds      4
	global	_prev_line
_prev_line:
       ds      4
	global	_sum
_sum:
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
	global	_fa
_fa:
       ds      2
	global	_fb
_fb:
       ds      2
	global	_fns
_fns:
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
	global	_pasada
	global	_pasada
_pasada:
       ds      2
	global	_sa
_sa:
       ds      2
	global	_speedMode
_speedMode:
       ds      2
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
	line	864
	global	_fw
_fw:
       ds      10
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_amax
_amax:
       ds      44
	global	_amin
_amin:
       ds      44
	global	_V
_V:
       ds      32
	global	_suma
	global	_suma
_suma:
       ds      8
	global	_division
_division:
       ds      4
	global	_prev2_line
_prev2_line:
       ds      4
	global	_v
_v:
       ds      4
	global	_value
	global	_value
_value:
       ds      4
psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	101
	global	_KD
_KD:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	100
	global	_KP
_KP:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	102
	global	_KR
_KR:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	103
	global	_SP
_SP:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	865
	global	_pd
_pd:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	122
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
; Clear objects allocated to BANK1 (144 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	144
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (75 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	75
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (24 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	24
clear_3:
clrf	postinc0,c
decf	wreg
bnz	clear_3
	line	#
; Initialize objects allocated to BANK1 (62 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,62
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (10 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,10
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
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
	global	main@b
main@b:	; 4 bytes @ 0x0
	ds   4
	global	main@line
main@line:	; 2 bytes @ 0x4
	ds   2
	global	_main$1919
_main$1919:	; 4 bytes @ 0x6
	ds   4
	global	_main$1920
_main$1920:	; 4 bytes @ 0xA
	ds   4
	global	_main$1921
_main$1921:	; 1 bytes @ 0xE
	ds   1
	global	main@am
main@am:	; 4 bytes @ 0xF
	ds   4
	global	main@bm
main@bm:	; 4 bytes @ 0x13
	ds   4
	global	main@a
main@a:	; 4 bytes @ 0x17
	ds   4
	global	main@rt
main@rt:	; 4 bytes @ 0x1B
	ds   4
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Line:	; 0 bytes @ 0x0
	ds   18
	global	_Line$1906
_Line$1906:	; 4 bytes @ 0x12
	ds   4
	global	_Line$1907
_Line$1907:	; 4 bytes @ 0x16
	ds   4
	global	_Line$1908
_Line$1908:	; 4 bytes @ 0x1A
	ds   4
	global	Line@g
Line@g:	; 2 bytes @ 0x1E
	ds   2
	global	_Line$1909
_Line$1909:	; 2 bytes @ 0x20
	ds   2
	global	Line@a
Line@a:	; 4 bytes @ 0x22
	ds   4
	global	Line@b
Line@b:	; 4 bytes @ 0x26
	ds   4
	global	Line@v
Line@v:	; 4 bytes @ 0x2A
	ds   4
	global	Line@i
Line@i:	; 2 bytes @ 0x2E
	ds   2
??_main:	; 0 bytes @ 0x30
	ds   13
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_ResetCounter:	; 0 bytes @ 0x0
?_InitAnalog:	; 0 bytes @ 0x0
?_InitTIMERS:	; 0 bytes @ 0x0
?_InitButtons:	; 0 bytes @ 0x0
?_InitSP:	; 0 bytes @ 0x0
?_MotorsPWM:	; 0 bytes @ 0x0
?_EnhancedRead:	; 0 bytes @ 0x0
?_ReadAnalog:	; 0 bytes @ 0x0
?_Wixel:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
?_configurations_init:	; 0 bytes @ 0x0
?_initYBOT:	; 0 bytes @ 0x0
?_enc:	; 0 bytes @ 0x0
??_enc:	; 0 bytes @ 0x0
?_initLED:	; 0 bytes @ 0x0
	ds   14
??_ResetCounter:	; 0 bytes @ 0xE
??_InitAnalog:	; 0 bytes @ 0xE
??_InitTIMERS:	; 0 bytes @ 0xE
??_InitButtons:	; 0 bytes @ 0xE
??_MotorsPWM:	; 0 bytes @ 0xE
??_ReadAnalog:	; 0 bytes @ 0xE
??_Wixel:	; 0 bytes @ 0xE
??_putch:	; 0 bytes @ 0xE
??_configurations_init:	; 0 bytes @ 0xE
??_initLED:	; 0 bytes @ 0xE
	global	?___wmul
?___wmul:	; 2 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
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
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0xE
	ds   1
	global	ReadAnalog@channel
ReadAnalog@channel:	; 1 bytes @ 0xF
	ds   1
??_InitSP:	; 0 bytes @ 0x10
??_initYBOT:	; 0 bytes @ 0x10
	global	initLED@x
initLED@x:	; 2 bytes @ 0x10
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	ds   2
??___wmul:	; 0 bytes @ 0x12
??___awdiv:	; 0 bytes @ 0x12
??___lwdiv:	; 0 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x12
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x12
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x12
	ds   1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x13
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x13
	ds   1
	global	?___lmul
?___lmul:	; 4 bytes @ 0x14
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x14
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x14
	ds   1
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x15
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x15
	ds   1
??_EnhancedRead:	; 0 bytes @ 0x16
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
	global	EnhancedRead@aux
EnhancedRead@aux:	; 2 bytes @ 0x17
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x17
	ds   1
??_MotorASpeed:	; 0 bytes @ 0x18
??_MotorBSpeed:	; 0 bytes @ 0x18
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x18
	ds   1
?_MotorsSpeed:	; 0 bytes @ 0x19
??___lwmod:	; 0 bytes @ 0x19
	global	EnhancedRead@i
EnhancedRead@i:	; 1 bytes @ 0x19
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x19
	global	MotorsSpeed@A
MotorsSpeed@A:	; 2 bytes @ 0x19
	ds   1
	global	?_printf
?_printf:	; 2 bytes @ 0x1A
	global	printf@f
printf@f:	; 2 bytes @ 0x1A
	ds   1
	global	MotorsSpeed@B
MotorsSpeed@B:	; 2 bytes @ 0x1B
	ds   1
??___lmul:	; 0 bytes @ 0x1C
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x1C
	ds   1
??_MotorsSpeed:	; 0 bytes @ 0x1D
	global	_MotorsSpeed$1853
_MotorsSpeed$1853:	; 2 bytes @ 0x1D
	ds   2
	global	_MotorsSpeed$1854
_MotorsSpeed$1854:	; 2 bytes @ 0x1F
	ds   1
??_printf:	; 0 bytes @ 0x20
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x20
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x20
	ds   1
	global	printf@ap
printf@ap:	; 2 bytes @ 0x21
	ds   2
	global	printf@flag
printf@flag:	; 1 bytes @ 0x23
	ds   1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x24
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x24
	ds   1
	global	printf@val
printf@val:	; 2 bytes @ 0x25
	ds   2
	global	printf@c
printf@c:	; 1 bytes @ 0x27
	ds   1
??___aldiv:	; 0 bytes @ 0x28
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x28
	ds   1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x29
	ds   1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2A
	ds   4
	global	?_Line
?_Line:	; 2 bytes @ 0x2E
	ds   2
?_main:	; 2 bytes @ 0x30
main@argc:	; 2 bytes @ 0x30
	ds   2
main@argv:	; 3 bytes @ 0x32
	ds   3
;!
;!Data Sizes:
;!    Strings     440
;!    Constant    10
;!    Data        72
;!    BSS         1263
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     53      77
;!    BANK0           160     61     147
;!    BANK1           256     31     238
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
;!		 -> STR_10(CODE[58]), STR_9(CODE[58]), STR_8(CODE[59]), STR_7(CODE[61]), 
;!		 -> STR_6(CODE[61]), STR_5(CODE[39]), STR_4(CODE[44]), STR_3(CODE[47]), 
;!		 -> STR_2(CODE[37]), STR_1(CODE[37]), 
;!
;!    printf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_printf(COMRAM[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_Line
;!    _printf->___lwmod
;!    ___lwmod->___lwdiv
;!    _InitSP->_ReadAnalog
;!    _MotorsSpeed->_MotorASpeed
;!    _MotorsSpeed->_MotorBSpeed
;!    _MotorBSpeed->___awdiv
;!    _MotorASpeed->___awdiv
;!    _Line->___aldiv
;!    ___lmul->___wmul
;!    ___aldiv->___lmul
;!    _EnhancedRead->___awdiv
;!
;!Critical Paths under _enc in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Line
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
;;Main: autosize = 0, tempsize = 13, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                53    48      5   24612
;!                                             48 COMRAM     5     0      5
;!                                             48 BANK0     13    13      0
;!                                              0 BANK1     31    31      0
;!                       _EnhancedRead
;!                               _Line
;!                        _MotorsSpeed
;!                              _Wixel
;!                            ___almod
;!                             ___lmul
;!                             ___wmul
;!                            _initLED
;!                           _initYBOT
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (1) _printf                                              23    17      6    2145
;!                                             26 COMRAM    14     8      6
;!                            ___lwdiv
;!                            ___lwmod
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
;! (1) ___almod                                             10     2      8    1665
;!                                             14 COMRAM    10     2      8
;! ---------------------------------------------------------------------------------
;! (1) _Wixel                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MotorsSpeed                                          8     4      4    3918
;!                                             25 COMRAM     8     4      4
;!                        _MotorASpeed
;!                        _MotorBSpeed
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _MotorBSpeed                                          3     1      2    1244
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (2) _MotorASpeed                                          3     1      2    1244
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (1) _Line                                                50    48      2   10162
;!                                             46 COMRAM     2     0      2
;!                                              0 BANK0     48    48      0
;!                            ___aldiv
;!                             ___lmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4    1464
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___lmul                                              12     4      8    3330
;!                                             20 COMRAM    12     4      8
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             14     6      8    4449
;!                                             32 COMRAM    14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _EnhancedRead                                         4     4      0    1105
;!                                             22 COMRAM     4     4      0
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              8     4      4     907
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
;!   _Line
;!     ___aldiv
;!       ___lmul (ARG)
;!         ___wmul (ARG)
;!     ___lmul
;!       ___wmul (ARG)
;!     ___wmul
;!   _MotorsSpeed
;!     _MotorASpeed
;!       ___awdiv
;!     _MotorBSpeed
;!       ___awdiv
;!     ___wmul (ARG)
;!   _Wixel
;!   ___almod
;!   ___lmul
;!     ___wmul (ARG)
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
;!     ___lwdiv
;!     ___lwmod
;!       ___lwdiv (ARG)
;!     _putch
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
;!BANK1              100     1F      EE       7       93.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     3D      93       5       91.9%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     35      4D       1       81.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     1CE      20        0.0%
;!DATA                 0      0     5CA       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 895 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   48[COMRAM] int 
;;  argv            3   50[COMRAM] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  line            2    4[BANK1 ] int 
;;  j               2    0        int 
;;  i               2    0        int 
;;  rt              4   27[BANK1 ] long 
;;  a               4   23[BANK1 ] long 
;;  bm              4   19[BANK1 ] long 
;;  am              4   15[BANK1 ] long 
;;  b               4    0[BANK1 ] long 
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
;;      Locals:         0       0      31       0       0       0       0       0       0
;;      Temps:          0      13       0       0       0       0       0       0       0
;;      Totals:         5      13      31       0       0       0       0       0       0
;;Total ram usage:       49 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_EnhancedRead
;;		_Line
;;		_MotorsSpeed
;;		_Wixel
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
	line	895
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	895
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	896
	
l4985:
	call	_initYBOT	;wreg free
	line	898
	
l4987:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_sa+1))&0ffh
	movlw	low(0)
	movwf	((_sa))&0ffh
	line	899
	
l4989:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_mode+1))&0ffh
	movlw	low(0)
	movwf	((_mode))&0ffh
	line	900
	
l4991:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_a+1))&0ffh
	movlw	low(0)
	movwf	((_a))&0ffh
	line	901
	
l4993:; BSR set to: 0

	movlb	0	; () banked
	setf	((_gstatus))&0ffh
	line	902
	
l4995:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_WAITIME))&0ffh
	movlw	high(0)
	movwf	((_WAITIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_WAITIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_WAITIME+3))&0ffh
	line	903
	
l4997:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_CURRENT+1)),c
	movlw	low(0)
	movwf	((c:_CURRENT)),c
	line	904
	
l4999:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_actual)),c
	line	905
	
l5001:; BSR set to: 0

	movlw	low(02h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	906
	
l5003:; BSR set to: 1

	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	907
	
l5005:; BSR set to: 1

	movlw	low(0)
	movlb	1	; () banked
	movwf	((_prev2_line))&0ffh
	movlw	high(0)
	movwf	((_prev2_line+1))&0ffh
	movlw	low highword(0)
	movwf	((_prev2_line+2))&0ffh
	movlw	high highword(0)
	movwf	((_prev2_line+3))&0ffh
	line	908
	
l5007:; BSR set to: 1

	call	_Wixel	;wreg free
	line	911
	
l5009:
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
	
l5011:
	bsf	((c:3971)),c,3	;volatile
	line	914
	
l5013:
	movlw	low(02h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	915
	goto	l5017
	
l710:; BSR set to: 1

	line	920
	
l5015:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	goto	l5017
	
l709:; BSR set to: 0

	line	915
	
l5017:
	btfsc	((c:_TIME+3)),c,7
	goto	u5931
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u5930
	movlw	136
	subwf	 ((c:_TIME)),c,w
	movlw	19
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u5931
	goto	u5930

u5931:
	goto	l5015
u5930:
	goto	l5019
	
l711:
	goto	l5019
	line	921
	
l712:
	line	922
	
l5019:
	call	_EnhancedRead	;wreg free
	line	926
	goto	l5213
	line	927
	
l714:
	line	928
	
l5021:
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
	goto	u5940
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u5941
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u5941
	goto	u5940

u5941:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u5958
u5940:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u5958:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	929
	
l5023:; BSR set to: 0

	movf	((c:_ma)),c,w
iorwf	((c:_ma+1)),c,w
	btfss	status,2
	goto	u5961
	goto	u5960

u5961:
	goto	l5027
u5960:
	line	930
	
l5025:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	931
	goto	l5035
	
l715:; BSR set to: 0

	
l5027:; BSR set to: 0

		decf	((c:_ma)),c,w
iorwf	((c:_ma+1)),c,w
	btfss	status,2
	goto	u5971
	goto	u5970

u5971:
	goto	l5031
u5970:
	line	932
	
l5029:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	line	933
	goto	l5035
	
l717:; BSR set to: 0

	
l5031:; BSR set to: 0

		incf	((c:_ma)),c,w
	bnz	u5981
	incf	((c:_ma+1)),c,w
	btfss	status,2
	goto	u5981
	goto	u5980

u5981:
	goto	l5035
u5980:
	line	934
	
l5033:; BSR set to: 0

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
	goto	u5990
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u5991
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u5991
	goto	u5990

u5991:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6008
u5990:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6008:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5035
	line	935
	
l719:; BSR set to: 0

	goto	l5035
	line	936
	
l718:; BSR set to: 0

	goto	l5035
	
l716:; BSR set to: 0

	
l5035:; BSR set to: 0

	movf	((c:_mb)),c,w
iorwf	((c:_mb+1)),c,w
	btfss	status,2
	goto	u6011
	goto	u6010

u6011:
	goto	l5039
u6010:
	line	937
	
l5037:; BSR set to: 0

	bcf	((c:3969)),c,0	;volatile
	line	938
	goto	l5047
	
l720:; BSR set to: 0

	
l5039:; BSR set to: 0

		decf	((c:_mb)),c,w
iorwf	((c:_mb+1)),c,w
	btfss	status,2
	goto	u6021
	goto	u6020

u6021:
	goto	l5043
u6020:
	line	939
	
l5041:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	940
	goto	l5047
	
l722:; BSR set to: 0

	
l5043:; BSR set to: 0

		incf	((c:_mb)),c,w
	bnz	u6031
	incf	((c:_mb+1)),c,w
	btfss	status,2
	goto	u6031
	goto	u6030

u6031:
	goto	l5047
u6030:
	line	941
	
l5045:; BSR set to: 0

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
	goto	u6040
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6041
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6041
	goto	u6040

u6041:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6058
u6040:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6058:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5047
	line	942
	
l724:; BSR set to: 0

	goto	l5047
	line	944
	
l723:; BSR set to: 0

	goto	l5047
	
l721:; BSR set to: 0

	
l5047:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6061
	goto	u6060

u6061:
	goto	l5053
u6060:
	line	945
	
l5049:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	946
	
l5051:; BSR set to: 0

		movlw	low(STR_1)
	movwf	((c:printf@f)),c
	movlw	high(STR_1)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	goto	l5053
	line	947
	
l725:
	line	948
	
l5053:
	btfsc	((c:3971)),c,6	;volatile
	goto	u6071
	goto	u6070
u6071:
	goto	l726
u6070:
	
l5055:
	movlb	0	; () banked
	movf	((_fa))&0ffh,w
	movlb	0	; () banked
iorwf	((_fa+1))&0ffh,w
	btfss	status,2
	goto	u6081
	goto	u6080

u6081:
	goto	l726
u6080:
	line	949
	
l5057:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(01h)
	movwf	((_fa))&0ffh
	line	950
	
l5059:; BSR set to: 0

		decf	((c:_ma)),c,w
iorwf	((c:_ma+1)),c,w
	btfsc	status,2
	goto	u6091
	goto	u6090

u6091:
	goto	l728
u6090:
	
l5061:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:_ma)),c,w
	movwf	((c:_ma)),c
	movlw	high(01h)
	addwfc	((c:_ma+1)),c,w
	movwf	1+((c:_ma)),c
	goto	l726
	
l728:; BSR set to: 0

	setf	((c:_ma)),c
	setf	((c:_ma+1)),c
	goto	l726
	
l730:; BSR set to: 0

	line	951
	
l726:
	line	952
	btfsc	((c:3971)),c,4	;volatile
	goto	u6101
	goto	u6100
u6101:
	goto	l731
u6100:
	
l5063:
	movlb	0	; () banked
	movf	((_fb))&0ffh,w
	movlb	0	; () banked
iorwf	((_fb+1))&0ffh,w
	btfss	status,2
	goto	u6111
	goto	u6110

u6111:
	goto	l731
u6110:
	line	953
	
l5065:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(01h)
	movwf	((_fb))&0ffh
	line	954
	
l5067:; BSR set to: 0

		decf	((c:_mb)),c,w
iorwf	((c:_mb+1)),c,w
	btfsc	status,2
	goto	u6121
	goto	u6120

u6121:
	goto	l733
u6120:
	
l5069:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:_mb)),c,w
	movwf	((c:_mb)),c
	movlw	high(01h)
	addwfc	((c:_mb+1)),c,w
	movwf	1+((c:_mb)),c
	goto	l731
	
l733:; BSR set to: 0

	setf	((c:_mb)),c
	setf	((c:_mb+1)),c
	goto	l731
	
l735:; BSR set to: 0

	line	955
	
l731:
	line	956
	btfss	((c:3971)),c,6	;volatile
	goto	u6131
	goto	u6130
u6131:
	goto	l5073
u6130:
	
l5071:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	goto	l5073
	
l736:; BSR set to: 0

	line	957
	
l5073:
	btfss	((c:3971)),c,4	;volatile
	goto	u6141
	goto	u6140
u6141:
	goto	l5077
u6140:
	
l5075:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	goto	l5077
	
l737:; BSR set to: 0

	line	959
	
l5077:
	movff	(c:_ma),(c:___wmul@multiplier)
	movff	(c:_ma+1),(c:___wmul@multiplier+1)
	movlw	high(03E8h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03E8h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:MotorsSpeed@A)
	movff	1+?___wmul,(c:MotorsSpeed@A+1)
	movff	(c:_mb),(c:___wmul@multiplier)
	movff	(c:_mb+1),(c:___wmul@multiplier+1)
	movlw	high(03E8h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(03E8h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:MotorsSpeed@B)
	movff	1+?___wmul,(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	960
	goto	l5019
	line	961
	
l739:
	line	962
	
l5079:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6151
	goto	u6150

u6151:
	goto	l5085
u6150:
	line	963
	
l5081:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	964
	
l5083:; BSR set to: 0

		movlw	low(STR_2)
	movwf	((c:printf@f)),c
	movlw	high(STR_2)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	goto	l5085
	line	965
	
l740:
	line	966
	
l5085:
	bcf	((c:3969)),c,0	;volatile
	line	967
	
l5087:
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
	goto	u6160
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6161
	movlw	233
	subwf	 (0+?___almod),c,w
	movlw	3
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6161
	goto	u6160

u6161:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6178
u6160:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6178:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	968
	
l5089:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	969
	
l5091:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u6181
	goto	u6180
u6181:
	goto	l5019
u6180:
	line	970
	
l5093:; BSR set to: 0

		movlw	low(STR_3)
	movwf	((c:printf@f)),c
	movlw	high(STR_3)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	971
	
l5095:
	movlw	low(04h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	line	972
	
l5097:; BSR set to: 1

	call	_initLED	;wreg free
	goto	l5019
	line	973
	
l741:
	line	974
	goto	l5019
	line	975
	
l742:; BSR set to: 1

	line	976
	bsf	((c:3969)),c,5	;volatile
	line	977
	bcf	((c:3968)),c,4	;volatile
	line	978
	bcf	((c:3969)),c,0	;volatile
	line	979
	
l5099:; BSR set to: 1

	btfsc	((c:_TIME+3)),c,7
	goto	u6191
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u6190
	movlw	209
	subwf	 ((c:_TIME)),c,w
	movlw	7
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u6191
	goto	u6190

u6191:
	goto	l5019
u6190:
	
l5101:; BSR set to: 1

	movlw	low(02h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l5019
	
l743:; BSR set to: 1

	line	980
	goto	l5019
	line	981
	
l744:; BSR set to: 1

	line	982
	
l5103:; BSR set to: 1

	call	_EnhancedRead	;wreg free
	line	983
	
l5105:
	movlw	high(0)
	movwf	((c:_x+1)),c
	movlw	low(0)
	movwf	((c:_x)),c
	
l5107:
	btfsc	((c:_x+1)),c,7
	goto	u6201
	movf	((c:_x+1)),c,w
	bnz	u6200
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6201
	goto	u6200

u6201:
	goto	l5111
u6200:
	goto	l5125
	
l5109:
	goto	l5125
	
l745:
	line	984
	
l5111:
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
	goto	u6211
	goto	u6210

u6211:
	goto	l5115
u6210:
	
l5113:; BSR set to: 0

	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1919)
	movff	postdec2,(_main$1919+1)
	movlb	1	; () banked
	movlw	0
	btfsc	((_main$1919+1))&0ffh,7
	movlw	-1
	movwf	((_main$1919+2))&0ffh
	movwf	((_main$1919+3))&0ffh
	goto	l750
	
l748:; BSR set to: 1

	
l5115:
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

	movff	postinc2,(_main$1919)
	movff	postinc2,(_main$1919+1)
	movff	postinc2,(_main$1919+2)
	movff	postinc2,(_main$1919+3)
	
l750:
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

	movff	(_main$1919),postinc2
	movff	(_main$1919+1),postinc2
	movff	(_main$1919+2),postinc2
	movff	(_main$1919+3),postinc2

	line	985
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
	goto	u6221
	goto	u6220

u6221:
	goto	l5119
u6220:
	
l5117:; BSR set to: 0

	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1920)
	movff	postdec2,(_main$1920+1)
	movlb	1	; () banked
	movlw	0
	btfsc	((_main$1920+1))&0ffh,7
	movlw	-1
	movwf	((_main$1920+2))&0ffh
	movwf	((_main$1920+3))&0ffh
	goto	l754
	
l752:; BSR set to: 1

	
l5119:
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

	movff	postinc2,(_main$1920)
	movff	postinc2,(_main$1920+1)
	movff	postinc2,(_main$1920+2)
	movff	postinc2,(_main$1920+3)
	
l754:
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

	movff	(_main$1920),postinc2
	movff	(_main$1920+1),postinc2
	movff	(_main$1920+2),postinc2
	movff	(_main$1920+3),postinc2

	line	983
	
l5121:; BSR set to: 0

	infsnz	((c:_x)),c
	incf	((c:_x+1)),c
	
l5123:; BSR set to: 0

	btfsc	((c:_x+1)),c,7
	goto	u6231
	movf	((c:_x+1)),c,w
	bnz	u6230
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6231
	goto	u6230

u6231:
	goto	l5111
u6230:
	goto	l5125
	
l746:; BSR set to: 0

	line	988
	
l5125:
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
	goto	u6240
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6241
	movlw	201
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u6241
	goto	u6240

u6241:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6258
u6240:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6258:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	989
	
l5127:; BSR set to: 0

	movlw	low(0)
	movlb	1	; () banked
	movwf	((_main$1921))&0ffh
	
l5129:; BSR set to: 1

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
	goto	u6261
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6260
	movlw	101
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u6261
	goto	u6260

u6261:
	goto	l5135
u6260:
	
l5131:
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
	goto	u6270
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6271
	movlw	200
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u6271
	goto	u6270

u6271:
	goto	l5135
u6270:
	
l5133:
	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_main$1921))&0ffh
	goto	l5135
	
l756:; BSR set to: 1

	
l5135:
	movlb	1	; () banked
	btfsc	(_main$1921)&0ffh,0
	bra	u6285
	bcf	((c:3969)),c,5	;volatile
	bra	u6286
	u6285:
	bsf	((c:3969)),c,5	;volatile
	u6286:

	line	990
	
l5137:
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
	goto	u6291
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6290
	movlw	100
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u6291
	goto	u6290

u6291:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6308
u6290:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6308:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	992
	
l5139:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u6311
	goto	u6310
u6311:
	goto	l5147
u6310:
	line	993
	
l5141:; BSR set to: 0

		movlw	low(STR_4)
	movwf	((c:printf@f)),c
	movlw	high(STR_4)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	994
	
l5143:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	995
	
l5145:
	movlw	low(01h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l5147
	line	996
	
l757:; BSR set to: 1

	line	997
	
l5147:
	btfsc	((c:3971)),c,4	;volatile
	goto	u6321
	goto	u6320
u6321:
	goto	l5019
u6320:
	line	998
	
l5149:
		movlw	low(STR_5)
	movwf	((c:printf@f)),c
	movlw	high(STR_5)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	999
	
l5151:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	1000
	
l5153:
	movlw	low(03h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l5019
	line	1001
	
l758:; BSR set to: 1

	line	1002
	goto	l5019
	line	1003
	
l759:; BSR set to: 1

	line	1004
	bsf	((c:3969)),c,0	;volatile
	line	1005
	bcf	((c:3968)),c,4	;volatile
	line	1006
	bcf	((c:3969)),c,5	;volatile
	line	1009
	
l5155:; BSR set to: 1

	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	1011
	
l5157:
	call	_EnhancedRead	;wreg free
	line	1013
	
l5159:
	btfsc	((c:_TIME+3)),c,7
	goto	u6331
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u6330
	movlw	233
	subwf	 ((c:_TIME)),c,w
	movlw	3
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u6331
	goto	u6330

u6331:
	goto	l5167
u6330:
	line	1014
	
l5161:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	1020
	
l5163:
	call	_Line	;wreg free
	movff	0+?_Line,(main@line)
	movff	1+?_Line,(main@line+1)
	line	1021
	
l5165:
		movlw	low(STR_6)
	movwf	((c:printf@f)),c
	movlw	high(STR_6)
	movwf	((c:printf@f+1)),c

	movff	(main@line),0+((c:?_printf)+02h)
	movff	(main@line+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	goto	l5167
	line	1022
	
l760:
	line	1023
	
l5167:
	btfsc	((c:3971)),c,5	;volatile
	goto	u6341
	goto	u6340
u6341:
	goto	l5019
u6340:
	line	1024
	
l5169:
	movlw	low(05h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l5019
	line	1025
	
l761:; BSR set to: 1

	line	1026
	goto	l5019
	line	1027
	
l762:; BSR set to: 1

	line	1028
	bsf	((c:3969)),c,0	;volatile
	line	1029
	bsf	((c:3968)),c,4	;volatile
	line	1030
	bsf	((c:3969)),c,5	;volatile
	line	1031
	btfss	((c:3971)),c,5	;volatile
	goto	u6351
	goto	u6350
u6351:
	goto	l5019
u6350:
	line	1032
	
l5171:; BSR set to: 1

	movlw	low(06h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l5019
	line	1033
	
l763:; BSR set to: 1

	line	1034
	goto	l5019
	line	1035
	
l764:; BSR set to: 1

	line	1036
	bsf	((c:3969)),c,0	;volatile
	line	1037
	bsf	((c:3968)),c,4	;volatile
	line	1038
	bcf	((c:3969)),c,5	;volatile
	line	1040
	
l5173:; BSR set to: 1

	call	_EnhancedRead	;wreg free
	line	1041
	
l5175:
	call	_Line	;wreg free
	movff	0+?_Line,(main@a)
	movff	1+?_Line,(main@a+1)
	movlb	1	; () banked
	movlw	0
	btfsc	((main@a+1))&0ffh,7
	movlw	-1
	movwf	((main@a+2))&0ffh
	movwf	((main@a+3))&0ffh
	line	1042
	
l5177:; BSR set to: 1

	movff	(_prev2_line),??_main+0+0
	movff	(_prev2_line+1),??_main+0+0+1
	movff	(_prev2_line+2),??_main+0+0+2
	movff	(_prev2_line+3),??_main+0+0+3
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	comf	(??_main+0+2)&0ffh
	comf	(??_main+0+3)&0ffh
	incf	(??_main+0+0)&0ffh
	movlw	0
	addwfc	(??_main+0+1)&0ffh
	addwfc	(??_main+0+2)&0ffh
	addwfc	(??_main+0+3)&0ffh
	movlb	1	; () banked
	movf	((main@a))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((main@b))&0ffh
	movlb	1	; () banked
	movf	((main@a+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	1	; () banked
	movwf	1+((main@b))&0ffh
	
	movlb	1	; () banked
	movf	((main@a+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+2)&0ffh,w
	movlb	1	; () banked
	movwf	2+((main@b))&0ffh
	
	movlb	1	; () banked
	movf	((main@a+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+3)&0ffh,w
	movlb	1	; () banked
	movwf	3+((main@b))&0ffh
	line	1043
	
l5179:; BSR set to: 1

	movff	(main@a),(c:___lmul@multiplier)
	movff	(main@a+1),(c:___lmul@multiplier+1)
	movff	(main@a+2),(c:___lmul@multiplier+2)
	movff	(main@a+3),(c:___lmul@multiplier+3)
	movlw	low(06h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(06h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(06h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(06h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,??_main+0+0
	movff	1+?___lmul,??_main+0+0+1
	movff	2+?___lmul,??_main+0+0+2
	movff	3+?___lmul,??_main+0+0+3
	
	movff	(main@b),(c:___lmul@multiplier)
	movff	(main@b+1),(c:___lmul@multiplier+1)
	movff	(main@b+2),(c:___lmul@multiplier+2)
	movff	(main@b+3),(c:___lmul@multiplier+3)
	movlw	low(032h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(032h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(032h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(032h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movf	(0+?___lmul),c,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((main@rt))&0ffh
	movf	(1+?___lmul),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	1	; () banked
	movwf	1+((main@rt))&0ffh
	
	movf	(2+?___lmul),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+2)&0ffh,w
	movlb	1	; () banked
	movwf	2+((main@rt))&0ffh
	
	movf	(3+?___lmul),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+3)&0ffh,w
	movlb	1	; () banked
	movwf	3+((main@rt))&0ffh
	line	1051
	
l5181:; BSR set to: 1

	movlb	1	; () banked
	btfsc	((main@rt+3))&0ffh,7
	goto	u6361
	movlb	1	; () banked
	movf	((main@rt+3))&0ffh,w
	movlb	1	; () banked
	iorwf	((main@rt+2))&0ffh,w
	movlb	1	; () banked
	iorwf	((main@rt+1))&0ffh,w
	bnz	u6360
	movlb	1	; () banked
	decf	((main@rt))&0ffh,w
	btfss	status,0
	goto	u6361
	goto	u6360

u6361:
	goto	l5187
u6360:
	line	1052
	
l5183:; BSR set to: 1

	movff	(main@rt),??_main+0+0
	movff	(main@rt+1),??_main+0+0+1
	movff	(main@rt+2),??_main+0+0+2
	movff	(main@rt+3),??_main+0+0+3
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	comf	(??_main+0+2)&0ffh
	comf	(??_main+0+3)&0ffh
	incf	(??_main+0+0)&0ffh
	movlw	0
	addwfc	(??_main+0+1)&0ffh
	addwfc	(??_main+0+2)&0ffh
	addwfc	(??_main+0+3)&0ffh
	movlw	0C2h
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	1	; () banked
	movwf	((main@am))&0ffh
	movlw	01h
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	1	; () banked
	movwf	1+((main@am))&0ffh
	
	movlw	0
	movlb	0	; () banked
	addwfc	(??_main+0+2)&0ffh,w
	movlb	1	; () banked
	movwf	2+((main@am))&0ffh
	
	movlw	0
	movlb	0	; () banked
	addwfc	(??_main+0+3)&0ffh,w
	movlb	1	; () banked
	movwf	3+((main@am))&0ffh
	line	1053
	
l5185:; BSR set to: 1

	movlw	low(01C2h)
	movlb	1	; () banked
	movwf	((main@bm))&0ffh
	movlw	high(01C2h)
	movwf	((main@bm+1))&0ffh
	movlw	low highword(01C2h)
	movwf	((main@bm+2))&0ffh
	movlw	high highword(01C2h)
	movwf	((main@bm+3))&0ffh
	line	1054
	goto	l5191
	
l765:; BSR set to: 1

	line	1055
	
l5187:; BSR set to: 1

	movlw	low(01C2h)
	movlb	1	; () banked
	movwf	((main@am))&0ffh
	movlw	high(01C2h)
	movwf	((main@am+1))&0ffh
	movlw	low highword(01C2h)
	movwf	((main@am+2))&0ffh
	movlw	high highword(01C2h)
	movwf	((main@am+3))&0ffh
	line	1056
	
l5189:; BSR set to: 1

	movlw	0C2h
	movlb	1	; () banked
	addwf	((main@rt))&0ffh,w
	movlb	1	; () banked
	movwf	((main@bm))&0ffh
	movlw	01h
	movlb	1	; () banked
	addwfc	((main@rt+1))&0ffh,w
	movlb	1	; () banked
	movwf	1+((main@bm))&0ffh
	
	movlw	0
	movlb	1	; () banked
	addwfc	((main@rt+2))&0ffh,w
	movlb	1	; () banked
	movwf	2+((main@bm))&0ffh
	
	movlw	0
	movlb	1	; () banked
	addwfc	((main@rt+3))&0ffh,w
	movlb	1	; () banked
	movwf	3+((main@bm))&0ffh
	goto	l5191
	line	1057
	
l766:; BSR set to: 1

	line	1058
	
l5191:; BSR set to: 1

	movff	(main@am),(c:MotorsSpeed@A)
	movff	(main@am+1),(c:MotorsSpeed@A+1)
	movff	(main@bm),(c:MotorsSpeed@B)
	movff	(main@bm+1),(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	1059
	
l5193:
	movff	(main@a),(_prev2_line)
	movff	(main@a+1),(_prev2_line+1)
	movff	(main@a+2),(_prev2_line+2)
	movff	(main@a+3),(_prev2_line+3)
	line	1060
	
l5195:
	btfsc	((c:_TIME+3)),c,7
	goto	u6371
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u6370
	movlw	245
	subwf	 ((c:_TIME)),c,w
	movlw	1
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u6371
	goto	u6370

u6371:
	goto	l5207
u6370:
	line	1061
	
l5197:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	1062
	
l5199:
		movlw	low(STR_7)
	movwf	((c:printf@f)),c
	movlw	high(STR_7)
	movwf	((c:printf@f+1)),c

	movff	(main@a),0+((c:?_printf)+02h)
	movff	(main@a+1),1+((c:?_printf)+02h)
	movff	(main@a+2),2+((c:?_printf)+02h)
	movff	(main@a+3),3+((c:?_printf)+02h)
	call	_printf	;wreg free
	line	1063
	
l5201:
		movlw	low(STR_8)
	movwf	((c:printf@f)),c
	movlw	high(STR_8)
	movwf	((c:printf@f+1)),c

	movff	(main@rt),0+((c:?_printf)+02h)
	movff	(main@rt+1),1+((c:?_printf)+02h)
	movff	(main@rt+2),2+((c:?_printf)+02h)
	movff	(main@rt+3),3+((c:?_printf)+02h)
	call	_printf	;wreg free
	line	1064
	
l5203:
		movlw	low(STR_9)
	movwf	((c:printf@f)),c
	movlw	high(STR_9)
	movwf	((c:printf@f+1)),c

	movff	(main@am),0+((c:?_printf)+02h)
	movff	(main@am+1),1+((c:?_printf)+02h)
	movff	(main@am+2),2+((c:?_printf)+02h)
	movff	(main@am+3),3+((c:?_printf)+02h)
	call	_printf	;wreg free
	line	1065
	
l5205:
		movlw	low(STR_10)
	movwf	((c:printf@f)),c
	movlw	high(STR_10)
	movwf	((c:printf@f+1)),c

	movff	(main@bm),0+((c:?_printf)+02h)
	movff	(main@bm+1),1+((c:?_printf)+02h)
	movff	(main@bm+2),2+((c:?_printf)+02h)
	movff	(main@bm+3),3+((c:?_printf)+02h)
	call	_printf	;wreg free
	goto	l5207
	line	1066
	
l767:
	line	1067
	
l5207:
	btfsc	((c:3971)),c,6	;volatile
	goto	u6381
	goto	u6380
u6381:
	goto	l5019
u6380:
	line	1068
	
l5209:
	movlw	low(03h)
	movlb	1	; () banked
	movwf	((_status))&0ffh
	goto	l5019
	line	1069
	
l768:; BSR set to: 1

	line	1070
	goto	l5019
	line	1071
	
l5211:; BSR set to: 1

	goto	l5019
	line	926
	
l713:; BSR set to: 1

	
l5213:
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
	goto	l5021
	xorlw	1^0	; case 1
	skipnz
	goto	l742
	xorlw	2^1	; case 2
	skipnz
	goto	l5079
	xorlw	3^2	; case 3
	skipnz
	goto	l759
	xorlw	4^3	; case 4
	skipnz
	goto	l5103
	xorlw	5^4	; case 5
	skipnz
	goto	l762
	xorlw	6^5	; case 6
	skipnz
	goto	l764
	goto	l5019

	line	1071
	
l738:; BSR set to: 1

	goto	l5019
	line	1072
	
l769:; BSR set to: 1

	line	921
	goto	l5019
	
l770:; BSR set to: 1

	line	1073
	
l771:; BSR set to: 1

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 464 in file "/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2   26[COMRAM] PTR const unsigned char 
;;		 -> STR_10(58), STR_9(58), STR_8(59), STR_7(61), 
;;		 -> STR_6(61), STR_5(39), STR_4(44), STR_3(47), 
;;		 -> STR_2(37), STR_1(37), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  cp              3    0        PTR const unsigned char 
;;  val             2   37[COMRAM] unsigned int 
;;  ap              2   33[COMRAM] PTR void [1]
;;		 -> ?_printf(2), 
;;  len             2    0        unsigned int 
;;  c               1   39[COMRAM] char 
;;  prec            1   36[COMRAM] char 
;;  flag            1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   26[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
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
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	464
global __ptext1
__ptext1:
psect	text1
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:; BSR set to: 1

;incstack = 0
	opt	stack 28
	line	533
	
l4863:
		movlw	low(?_printf+02h)
	movwf	((c:printf@ap)),c
	movlw	high(?_printf+02h)
	movwf	((c:printf@ap+1)),c

	line	536
	goto	l4911
	
l783:
	line	538
	
l4865:
		movlw	37
	xorwf	((c:printf@c)),c,w
	btfsc	status,2
	goto	u5731
	goto	u5730

u5731:
	goto	l4869
u5730:
	line	541
	
l4867:
	movf	((c:printf@c)),c,w
	
	call	_putch
	line	542
	goto	l4911
	line	543
	
l784:
	line	548
	
l4869:
	movlw	low(0)
	movwf	((c:printf@flag)),c
	line	635
	goto	l4873
	line	637
	
l786:
	line	638
	goto	l801
	line	697
	
l788:
	goto	l4875
	line	698
	
l789:
	line	699
	goto	l4875
	line	802
	
l791:
	line	813
	goto	l4911
	line	822
	
l4871:
	goto	l4875
	line	635
	
l785:
	
l4873:
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
; Number of cases is 3, Range of values is 0 to 105
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l801
	xorlw	100^0	; case 100
	skipnz
	goto	l4875
	xorlw	105^100	; case 105
	skipnz
	goto	l4875
	goto	l4911

	line	822
	
l790:
	line	1259
	
l4875:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4877:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	line	1261
	
l4879:
	btfsc	((c:printf@val+1)),c,7
	goto	u5740
	goto	u5741

u5741:
	goto	l4885
u5740:
	line	1262
	
l4881:
	movlw	(03h)&0ffh
	iorwf	((c:printf@flag)),c
	line	1263
	
l4883:
	negf	((c:printf@val)),c
	comf	((c:printf@val+1)),c
	btfsc	status,0
	incf	((c:printf@val+1)),c
	goto	l4885
	line	1264
	
l792:
	line	1305
	
l4885:
	movlw	low(01h)
	movwf	((c:printf@c)),c
	
l4887:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5751
	goto	u5750

u5751:
	goto	l4891
u5750:
	goto	l4899
	
l4889:
	goto	l4899
	line	1306
	
l793:
	
l4891:
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
	goto	u5761
	goto	u5760

u5761:
	goto	l4895
u5760:
	goto	l4899
	line	1307
	
l4893:
	goto	l4899
	
l795:
	line	1305
	
l4895:
	incf	((c:printf@c)),c
	
l4897:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5771
	goto	u5770

u5771:
	goto	l4891
u5770:
	goto	l4899
	
l794:
	line	1438
	
l4899:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5781
	goto	u5780
u5781:
	goto	l4903
u5780:
	line	1439
	
l4901:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4903
	
l796:
	line	1472
	
l4903:
	movff	(c:printf@c),(c:printf@prec)
	line	1474
	goto	l4909
	
l798:
	line	1489
	
l4905:
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
	
l4907:
	movf	((c:printf@c)),c,w
	
	call	_putch
	goto	l4909
	line	1525
	
l797:
	line	1474
	
l4909:
	decf	((c:printf@prec)),c
		incf	((c:printf@prec)),c,w
	btfss	status,2
	goto	u5791
	goto	u5790

u5791:
	goto	l4905
u5790:
	goto	l4911
	
l799:
	goto	l4911
	line	1533
	
l782:
	line	536
	
l4911:
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
	goto	u5801
	goto	u5800
u5801:
	goto	l4865
u5800:
	goto	l801
	
l800:
	goto	l801
	line	1535
	
l787:
	line	1541
;	Return value of _printf is never used
	
l801:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_printf
	__end_of_printf:
	signat	_printf,602
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 208 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   14[COMRAM] unsigned char 
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
	line	208
global __ptext2
__ptext2:
psect	text2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	208
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 28
	movwf	((c:putch@data)),c
	line	209
	
l4179:
	goto	l200
	
l201:
	line	210
	
l200:
	line	209
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u4731
	goto	u4730
u4731:
	goto	l200
u4730:
	goto	l4181
	
l202:
	line	211
	
l4181:
	movff	(c:putch@data),(c:4013)	;volatile
	line	212
	
l203:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4216
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
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
	file	"/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
	line	8
global __ptext3
__ptext3:
psect	text3
	file	"/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 28
	line	13
	
l4411:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u4951
	goto	u4950

u4951:
	goto	l1332
u4950:
	line	14
	
l4413:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l4417
	
l1334:
	line	16
	
l4415:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l4417
	line	18
	
l1333:
	line	15
	
l4417:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u4961
	goto	u4960
u4961:
	goto	l4415
u4960:
	goto	l4419
	
l1335:
	goto	l4419
	line	19
	
l1336:
	line	20
	
l4419:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u4971
	goto	u4970

u4971:
	goto	l4423
u4970:
	line	21
	
l4421:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l4423
	
l1337:
	line	22
	
l4423:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l4425:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l4419
	goto	l1332
	
l1338:
	line	24
	
l1332:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1339:
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
	file	"/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
	line	8
global __ptext4
__ptext4:
psect	text4
	file	"/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 28
	line	14
	
l4389:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l4391:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u4921
	goto	u4920

u4921:
	goto	l1322
u4920:
	line	16
	
l4393:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l4397
	
l1324:
	line	18
	
l4395:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l4397
	line	20
	
l1323:
	line	17
	
l4397:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u4931
	goto	u4930
u4931:
	goto	l4395
u4930:
	goto	l4399
	
l1325:
	goto	l4399
	line	21
	
l1326:
	line	22
	
l4399:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l4401:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u4941
	goto	u4940

u4941:
	goto	l4407
u4940:
	line	24
	
l4403:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l4405:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l4407
	line	26
	
l1327:
	line	27
	
l4407:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l4409:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l4399
	goto	l1322
	
l1328:
	line	29
	
l1322:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1329:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_initYBOT

;; *************** function _initYBOT *****************
;; Defined at:
;;		line 331 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	331
global __ptext5
__ptext5:
psect	text5
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	331
	global	__size_of_initYBOT
	__size_of_initYBOT	equ	__end_of_initYBOT-_initYBOT
	
_initYBOT:
;incstack = 0
	opt	stack 27
	line	333
	
l4447:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	334
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_MS))&0ffh
	movlw	high(0)
	movwf	((_MS+1))&0ffh
	movlw	low highword(0)
	movwf	((_MS+2))&0ffh
	movlw	high highword(0)
	movwf	((_MS+3))&0ffh
	line	335
	
l4449:; BSR set to: 0

	call	_ResetCounter	;wreg free
	line	336
	
l4451:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_gstatus))&0ffh
	line	338
	call	_configurations_init	;wreg free
	line	339
	call	_InitAnalog	;wreg free
	line	340
	call	_InitTIMERS	;wreg free
	line	341
	call	_InitButtons	;wreg free
	line	342
	
l4453:
	call	_InitSP	;wreg free
	line	343
	
l4455:
	call	_MotorsPWM	;wreg free
	line	346
	
l313:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initYBOT
	__end_of_initYBOT:
	signat	_initYBOT,88
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 266 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	266
global __ptext6
__ptext6:
psect	text6
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	266
	global	__size_of_configurations_init
	__size_of_configurations_init	equ	__end_of_configurations_init-_configurations_init
	
_configurations_init:
;incstack = 0
	opt	stack 28
	line	267
	
l4183:
		bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	270
	
l4185:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	273
	
l4187:
	bcf	((c:3949)),c,3	;volatile
	line	274
	
l4189:
	bsf	((c:3951)),c,3	;volatile
	line	275
	
l245:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,88
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 453 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	line	453
global __ptext7
__ptext7:
psect	text7
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	453
	global	__size_of_ResetCounter
	__size_of_ResetCounter	equ	__end_of_ResetCounter-_ResetCounter
	
_ResetCounter:
;incstack = 0
	opt	stack 28
	line	454
	
l4191:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	455
	
l334:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetCounter
	__end_of_ResetCounter:
	signat	_ResetCounter,88
	global	_MotorsPWM

;; *************** function _MotorsPWM *****************
;; Defined at:
;;		line 770 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	line	770
global __ptext8
__ptext8:
psect	text8
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	770
	global	__size_of_MotorsPWM
	__size_of_MotorsPWM	equ	__end_of_MotorsPWM-_MotorsPWM
	
_MotorsPWM:
;incstack = 0
	opt	stack 28
	line	772
	
l4285:
	bcf	c:(32339/8),(32339)&7	;volatile
	line	773
	bcf	c:(32340/8),(32340)&7	;volatile
	line	774
	bcf	c:(32341/8),(32341)&7	;volatile
	line	775
	bcf	c:(32342/8),(32342)&7	;volatile
	line	777
	bsf	c:(32338/8),(32338)&7	;volatile
	line	778
	bcf	c:(32336/8),(32336)&7	;volatile
	line	779
	bcf	c:(32337/8),(32337)&7	;volatile
	line	781
	bsf	c:(32338/8),(32338)&7	;volatile
	line	784
	
l4287:
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<4)-1)<<3)
	iorlw	(0Bh & ((1<<4)-1))<<3
	movwf	((c:4042)),c	;volatile
	line	785
	movf	((c:4042)),c,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	((c:4042)),c	;volatile
	line	786
	
l4289:
	bcf	((c:4042)),c,2	;volatile
	line	787
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	788
	
l4291:
	bsf	((c:4042)),c,2	;volatile
	line	791
	movf	((c:4029)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4029)),c	;volatile
	line	792
	movf	((c:4026)),c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	((c:4026)),c	;volatile
	line	793
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	795
	
l610:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsPWM
	__end_of_MotorsPWM:
	signat	_MotorsPWM,88
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 373 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	373
global __ptext9
__ptext9:
psect	text9
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	373
	global	__size_of_InitTIMERS
	__size_of_InitTIMERS	equ	__end_of_InitTIMERS-_InitTIMERS
	
_InitTIMERS:
;incstack = 0
	opt	stack 28
	line	374
	
l4203:
	bcf	((c:4053)),c,7	;volatile
	line	375
	bcf	((c:4053)),c,6	;volatile
	line	376
	bcf	((c:4053)),c,5	;volatile
	line	378
	bsf	((c:4053)),c,3	;volatile
	line	379
	
l4205:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	380
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	383
	
l4207:
	bsf	((c:4081)),c,2	;volatile
	line	384
	
l4209:
	bcf	((c:4048)),c,7	;volatile
	line	385
	
l4211:
	bsf	((c:4082)),c,5	;volatile
	line	389
	
l4213:
	bsf	((c:4082)),c,7	;volatile
	line	391
	
l4215:
	bsf	((c:4053)),c,7	;volatile
	line	393
	
l4217:
	bcf	((c:4045)),c,0	;volatile
	line	394
	
l4219:
	bcf	((c:4045)),c,7	;volatile
	line	395
	
l4221:
	bcf	((c:4045)),c,6	;volatile
	line	396
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	397
	
l4223:
	bcf	((c:4045)),c,3	;volatile
	line	398
	
l4225:
	bcf	((c:4045)),c,1	;volatile
	line	399
	
l4227:
	bsf	((c:4045)),c,0	;volatile
	line	401
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	402
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	410
	
l4229:
	bcf	((c:3987)),c,5	;volatile
	line	412
	
l4231:
	bcf	((c:3986)),c,4	;volatile
	line	413
	
l4233:
	bcf	((c:3987)),c,0	;volatile
	line	415
	
l4235:
	bsf	((c:3989)),c,4	;volatile
	line	416
	
l4237:
	bsf	((c:3989)),c,5	;volatile
	line	417
	
l4239:
	bsf	((c:3989)),c,6	;volatile
	line	420
	
l4241:
	bcf	((c:3989)),c,1	;volatile
	line	421
	
l4243:
	bcf	((c:3989)),c,2	;volatile
	line	422
	
l4245:
	bsf	((c:3989)),c,0	;volatile
	line	423
	
l4247:
	bcf	((c:3989)),c,3	;volatile
	line	426
	
l4249:
	bcf	((c:3988)),c,1	;volatile
	line	427
	
l4251:
	bcf	((c:3988)),c,2	;volatile
	line	430
	
l4253:
	bsf	((c:3986)),c,0	;volatile
	line	431
	
l4255:
	bsf	((c:3986)),c,1	;volatile
	line	432
	
l4257:
	bsf	((c:3986)),c,2	;volatile
	line	433
	
l4259:
	bsf	((c:3986)),c,3	;volatile
	line	434
	
l4261:
	bsf	((c:3986)),c,5	;volatile
	line	436
	
l4263:
	bsf	((c:3990)),c,0	;volatile
	line	437
	
l4265:
	bsf	((c:3990)),c,1	;volatile
	line	438
	
l4267:
	bsf	((c:3990)),c,2	;volatile
	line	439
	
l4269:
	bsf	((c:3987)),c,2	;volatile
	line	441
	
l4271:
	bsf	((c:3987)),c,1	;volatile
	line	446
	
l4273:
	bcf	((c:3988)),c,6	;volatile
	line	447
	
l4275:
	bsf	((c:3988)),c,7	;volatile
	line	449
	
l4277:
	bsf	((c:3972)),c,7	;volatile
	line	450
	
l331:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,88
	global	_InitSP

;; *************** function _InitSP *****************
;; Defined at:
;;		line 694 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	694
global __ptext10
__ptext10:
psect	text10
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	694
	global	__size_of_InitSP
	__size_of_InitSP	equ	__end_of_InitSP-_InitSP
	
_InitSP:
;incstack = 0
	opt	stack 27
	line	695
	
l4281:
	movlw	low(0)
	movwf	((c:_PisoActual)),c
	line	696
	
l4283:
	movf	((c:_PisoActual)),c,w
	
	call	_ReadAnalog
	line	697
	
l554:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitSP
	__end_of_InitSP:
	signat	_InitSP,88
	global	_ReadAnalog

;; *************** function _ReadAnalog *****************
;; Defined at:
;;		line 698 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1   15[COMRAM] unsigned char 
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
	line	698
global __ptext11
__ptext11:
psect	text11
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	698
	global	__size_of_ReadAnalog
	__size_of_ReadAnalog	equ	__end_of_ReadAnalog-_ReadAnalog
	
_ReadAnalog:
;incstack = 0
	opt	stack 27
	movwf	((c:ReadAnalog@channel)),c
	line	699
	
l4123:
	
	btfsc	((c:ReadAnalog@channel)),c,(0)&7
	goto	u4591
	goto	u4590
u4591:
	bsf	c:(32274/8),(32274)&7	;volatile
	goto	u4605
u4590:
	bcf	c:(32274/8),(32274)&7	;volatile
u4605:
	line	700
	
l4125:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	03h
	andwf	(??_ReadAnalog+0+0),c
		movlw	02h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4611
	goto	u4610

u4611:
	bsf	c:(32275/8),(32275)&7	;volatile
	goto	u4625
u4610:
	bcf	c:(32275/8),(32275)&7	;volatile
u4625:
	line	701
	
l4127:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	07h
	andwf	(??_ReadAnalog+0+0),c
		movlw	04h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4631
	goto	u4630

u4631:
	bsf	c:(32276/8),(32276)&7	;volatile
	goto	u4645
u4630:
	bcf	c:(32276/8),(32276)&7	;volatile
u4645:
	line	702
	
l4129:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	0Fh
	andwf	(??_ReadAnalog+0+0),c
		movlw	08h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4651
	goto	u4650

u4651:
	bsf	c:(32277/8),(32277)&7	;volatile
	goto	u4665
u4650:
	bcf	c:(32277/8),(32277)&7	;volatile
u4665:
	line	704
	
l4131:
	bsf	c:(32272/8),(32272)&7	;volatile
	line	705
	
l4133:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	706
	
l557:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadAnalog
	__end_of_ReadAnalog:
	signat	_ReadAnalog,4216
	global	_InitButtons

;; *************** function _InitButtons *****************
;; Defined at:
;;		line 633 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	line	633
global __ptext12
__ptext12:
psect	text12
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	633
	global	__size_of_InitButtons
	__size_of_InitButtons	equ	__end_of_InitButtons-_InitButtons
	
_InitButtons:
;incstack = 0
	opt	stack 28
	line	634
	
l4279:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_ST_B_VERDE))&0ffh
	line	635
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_ST_B_AMARILLO))&0ffh
	line	636
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_ST_B_ROJO))&0ffh
	line	637
	
l521:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitButtons
	__end_of_InitButtons:
	signat	_InitButtons,88
	global	_InitAnalog

;; *************** function _InitAnalog *****************
;; Defined at:
;;		line 676 in file "/home/newtonis/Robots/Rayito2/main.c"
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
;;		_initYBOT
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	line	676
global __ptext13
__ptext13:
psect	text13
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	676
	global	__size_of_InitAnalog
	__size_of_InitAnalog	equ	__end_of_InitAnalog-_InitAnalog
	
_InitAnalog:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	677
	
l4193:
	bcf	((c:4033)),c,5	;volatile
	line	678
	bcf	((c:4033)),c,4	;volatile
	line	680
	bcf	((c:4033)),c,3	;volatile
	line	681
	bsf	((c:4033)),c,2	;volatile
	line	682
	bcf	((c:4033)),c,1	;volatile
	line	683
	bcf	((c:4033)),c,0	;volatile
	line	687
	bcf	((c:4032)),c,7	;volatile
	line	688
		bsf	((c:4032)),c, 3+0	;volatile
	bsf	((c:4032)),c, 3+1	;volatile
	bsf	((c:4032)),c, 3+2	;volatile

	line	689
	
l4195:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	690
	
l4197:
		bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	691
	
l4199:
	bcf	((c:4034)),c,1	;volatile
	line	692
	
l4201:
	bsf	((c:4034)),c,0	;volatile
	line	693
	
l551:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,88
	global	_initLED

;; *************** function _initLED *****************
;; Defined at:
;;		line 818 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
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
	
l4797:
	movlw	high(0)
	movwf	((c:initLED@x+1)),c
	movlw	low(0)
	movwf	((c:initLED@x)),c
	
l4799:
	btfsc	((c:initLED@x+1)),c,7
	goto	u5631
	movf	((c:initLED@x+1)),c,w
	bnz	u5630
	movlw	11
	subwf	 ((c:initLED@x)),c,w
	btfss	status,0
	goto	u5631
	goto	u5630

u5631:
	goto	l4803
u5630:
	goto	l645
	
l4801:
	goto	l645
	
l643:
	line	821
	
l4803:
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
	
l4805:
	infsnz	((c:initLED@x)),c
	incf	((c:initLED@x+1)),c
	
l4807:
	btfsc	((c:initLED@x+1)),c,7
	goto	u5641
	movf	((c:initLED@x+1)),c,w
	bnz	u5640
	movlw	11
	subwf	 ((c:initLED@x)),c,w
	btfss	status,0
	goto	u5641
	goto	u5640

u5641:
	goto	l4803
u5640:
	goto	l645
	
l644:
	line	824
	
l645:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initLED
	__end_of_initLED:
	signat	_initLED,88
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
psect	text15,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/almod.c"
	line	8
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v1.34/sources/common/almod.c"
	line	8
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:
;incstack = 0
	opt	stack 29
	line	13
	
l4913:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l4915:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u5810
	goto	u5811

u5811:
	goto	l4921
u5810:
	line	15
	
l4917:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l4919:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l4921
	line	17
	
l876:
	line	18
	
l4921:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u5820
	goto	u5821

u5821:
	goto	l4925
u5820:
	line	19
	
l4923:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l4925
	
l877:
	line	20
	
l4925:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u5831
	goto	u5830

u5831:
	goto	l4941
u5830:
	line	21
	
l4927:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l4931
	
l880:
	line	23
	
l4929:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l4931
	line	25
	
l879:
	line	22
	
l4931:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u5841
	goto	u5840
u5841:
	goto	l4929
u5840:
	goto	l4933
	
l881:
	goto	l4933
	line	26
	
l882:
	line	27
	
l4933:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u5851
	goto	u5850

u5851:
	goto	l4937
u5850:
	line	28
	
l4935:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l4937
	
l883:
	line	29
	
l4937:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l4939:
	decfsz	((c:___almod@counter)),c
	
	goto	l4933
	goto	l4941
	
l884:
	goto	l4941
	line	31
	
l878:
	line	32
	
l4941:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u5861
	goto	u5860
u5861:
	goto	l4945
u5860:
	line	33
	
l4943:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l4945
	
l885:
	line	34
	
l4945:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l886
	
l4947:
	line	35
	
l886:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___almod
	__end_of___almod:
	signat	___almod,8316
	global	_Wixel

;; *************** function _Wixel *****************
;; Defined at:
;;		line 188 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text16,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	188
global __ptext16
__ptext16:
psect	text16
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	188
	global	__size_of_Wixel
	__size_of_Wixel	equ	__end_of_Wixel-_Wixel
	
_Wixel:
;incstack = 0
	opt	stack 29
	line	189
	
l4427:
	bcf	((c:4024)),c,5	;volatile
	line	190
	bcf	((c:4024)),c,4	;volatile
	line	191
	bsf	((c:4024)),c,3	;volatile
	line	193
	bcf	((c:4024)),c,1	;volatile
	line	194
	bcf	((c:4024)),c,0	;volatile
	line	195
	
l4429:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	196
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	197
	
l4431:
	bcf	((c:4012)),c,7	;volatile
	line	198
	
l4433:
	bcf	((c:4012)),c,6	;volatile
	line	199
	
l4435:
	bsf	((c:4012)),c,5	;volatile
	line	200
	
l4437:
	bcf	((c:4012)),c,4	;volatile
	line	202
	
l4439:
	bcf	((c:4012)),c,2	;volatile
	line	203
	
l4441:
	bcf	((c:4011)),c,6	;volatile
	line	204
	
l4443:
	bsf	((c:4011)),c,4	;volatile
	line	205
	
l4445:
	bsf	((c:4011)),c,7	;volatile
	line	207
	
l197:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,88
	global	_MotorsSpeed

;; *************** function _MotorsSpeed *****************
;; Defined at:
;;		line 753 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text17,class=CODE,space=0,reloc=2
	line	753
global __ptext17
__ptext17:
psect	text17
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	753
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 27
	line	754
	
l4767:
	goto	l592
	
l4769:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1853)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1853+1)
	goto	l4771
	
l592:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1853)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1853+1)
	goto	l4771
	
l594:
	
l4771:
	movff	(c:_MotorsSpeed$1853),(c:MotorASpeed@S)
	movff	(c:_MotorsSpeed$1853+1),(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	755
	
l4773:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1854)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1854+1)
	goto	l4775
	
l596:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1854)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1854+1)
	goto	l4775
	
l598:
	
l4775:
	movff	(c:_MotorsSpeed$1854),(c:MotorBSpeed@S)
	movff	(c:_MotorsSpeed$1854+1),(c:MotorBSpeed@S+1)
	call	_MotorBSpeed	;wreg free
	line	756
	
l599:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8312
	global	_MotorBSpeed

;; *************** function _MotorBSpeed *****************
;; Defined at:
;;		line 807 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text18,class=CODE,space=0,reloc=2
	line	807
global __ptext18
__ptext18:
psect	text18
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	807
	global	__size_of_MotorBSpeed
	__size_of_MotorBSpeed	equ	__end_of_MotorBSpeed-_MotorBSpeed
	
_MotorBSpeed:
;incstack = 0
	opt	stack 27
	line	808
	
l4311:
	negf	((c:MotorBSpeed@S)),c
	comf	((c:MotorBSpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorBSpeed@S+1)),c
	line	809
	
l4313:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4791
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u4791
	goto	u4790

u4791:
	goto	l4317
u4790:
	
l4315:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4317
	
l629:
	goto	l4317
	
l631:
	line	810
	
l4317:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u4801
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u4801
	goto	u4800

u4801:
	goto	l4321
u4800:
	
l4319:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4321
	
l633:
	goto	l4321
	
l635:
	line	812
	
l4321:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4811
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u4810
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u4811
	goto	u4810

u4811:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u4828
u4810:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u4828:
	rlncf	(??_MotorBSpeed+0+0),c
	rlncf	(??_MotorBSpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	813
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4830
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u4831
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u4831
	goto	u4830

u4831:
	goto	l4325
u4830:
	
l4323:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l4325
	
l637:
	goto	l4325
	
l639:
	line	815
	
l4325:
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
	
l4327:
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
	signat	_MotorBSpeed,4216
	global	_MotorASpeed

;; *************** function _MotorASpeed *****************
;; Defined at:
;;		line 796 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text19,class=CODE,space=0,reloc=2
	line	796
global __ptext19
__ptext19:
psect	text19
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	796
	global	__size_of_MotorASpeed
	__size_of_MotorASpeed	equ	__end_of_MotorASpeed-_MotorASpeed
	
_MotorASpeed:
;incstack = 0
	opt	stack 27
	line	797
	
l4293:
	negf	((c:MotorASpeed@S)),c
	comf	((c:MotorASpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorASpeed@S+1)),c
	line	798
	
l4295:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4741
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u4741
	goto	u4740

u4741:
	goto	l4299
u4740:
	
l4297:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l4299
	
l614:
	goto	l4299
	
l616:
	line	799
	
l4299:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u4751
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u4751
	goto	u4750

u4751:
	goto	l4303
u4750:
	
l4301:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l4303
	
l618:
	goto	l4303
	
l620:
	line	801
	
l4303:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4761
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u4760
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u4761
	goto	u4760

u4761:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u4778
u4760:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u4778:
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	802
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4780
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u4781
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u4781
	goto	u4780

u4781:
	goto	l4307
u4780:
	
l4305:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l4307
	
l622:
	goto	l4307
	
l624:
	line	804
	
l4307:
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
	line	805
	
l4309:
	movff	(c:MotorASpeed@S),(c:___awdiv@dividend)
	movff	(c:MotorASpeed@S+1),(c:___awdiv@dividend+1)
	movlw	high(04h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(04h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movf	(0+?___awdiv),c,w
	movwf	((c:4030)),c	;volatile
	line	806
	
l625:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorASpeed
	__end_of_MotorASpeed:
	signat	_MotorASpeed,4216
	global	_Line

;; *************** function _Line *****************
;; Defined at:
;;		line 873 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  v               4   42[BANK0 ] long 
;;  b               4   38[BANK0 ] long 
;;  a               4   34[BANK0 ] long 
;;  i               2   46[BANK0 ] int 
;;  g               2   30[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2   46[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0      30       0       0       0       0       0       0       0
;;      Temps:          0      18       0       0       0       0       0       0       0
;;      Totals:         2      48       0       0       0       0       0       0       0
;;Total ram usage:       50 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___aldiv
;;		___lmul
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
	line	873
global __ptext20
__ptext20:
psect	text20
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	873
	global	__size_of_Line
	__size_of_Line	equ	__end_of_Line-_Line
	
_Line:
;incstack = 0
	opt	stack 28
	line	874
	
l4809:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((Line@a))&0ffh
	movlw	high(0)
	movwf	((Line@a+1))&0ffh
	movlw	low highword(0)
	movwf	((Line@a+2))&0ffh
	movlw	high highword(0)
	movwf	((Line@a+3))&0ffh
	line	875
	movlw	low(0)
	movlb	0	; () banked
	movwf	((Line@b))&0ffh
	movlw	high(0)
	movwf	((Line@b+1))&0ffh
	movlw	low highword(0)
	movwf	((Line@b+2))&0ffh
	movlw	high highword(0)
	movwf	((Line@b+3))&0ffh
	line	878
	movlw	high(0)
	movlb	0	; () banked
	movwf	((Line@g+1))&0ffh
	movlw	low(0)
	movwf	((Line@g))&0ffh
	line	879
	movlw	high(0)
	movlb	0	; () banked
	movwf	((Line@i+1))&0ffh
	movlw	low(0)
	movwf	((Line@i))&0ffh
	
l4811:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@i+1))&0ffh,7
	goto	u5651
	movlb	0	; () banked
	movf	((Line@i+1))&0ffh,w
	bnz	u5650
	movlw	5
	movlb	0	; () banked
	subwf	 ((Line@i))&0ffh,w
	btfss	status,0
	goto	u5651
	goto	u5650

u5651:
	goto	l4815
u5650:
	goto	l4845
	
l4813:; BSR set to: 0

	goto	l4845
	
l686:; BSR set to: 0

	line	880
	
l4815:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlw	low(_amax)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amax)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr1l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_fw)
	addwf	fsr1l
	movlw	high(_fw)
	addwfc	fsr1h
	movff	postinc1,??_Line+6+0
	movff	postdec1,??_Line+6+0+1
	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_Line+6+0)&0ffh,f
	rlcf	(??_Line+6+1)&0ffh,f
	movlw	low(_V)
	movlb	0	; () banked
	addwf	(??_Line+6+0)&0ffh,w
	movwf	c:fsr1l
	movlw	high(_V)
	movlb	0	; () banked
	addwfc	(??_Line+6+1)&0ffh,w
	movwf	1+c:fsr1l
	movff	postinc1,??_Line+8+0
	movff	postdec1,??_Line+8+0+1
	movff	??_Line+8+0,??_Line+10+0
	movff	??_Line+8+1,??_Line+10+0+1
	movlw	0
	movlb	0	; () banked
	btfsc	(??_Line+10+0+1)&0ffh,7
	movlw	255
	movwf	(??_Line+10+0+2)&0ffh
	movwf	(??_Line+10+0+3)&0ffh
		movf	postinc2,w
	movlb	0	; () banked
	subwf	(??_Line+10+0)&0ffh,w
	movf	postinc2,w
	movlb	0	; () banked
	subwfb	(??_Line+10+1)&0ffh,w
	movf	postinc2,w
	movlb	0	; () banked
	subwfb	(??_Line+10+2)&0ffh,w
	movlb	0	; () banked
	movf	(??_Line+10+3)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_Line+14+0)&0ffh
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_Line+14+0)&0ffh,w
	btfss	status,0
	goto	u5661
	goto	u5660

u5661:
	goto	l4819
u5660:
	
l4817:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlw	low(_amax)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amax)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,(_Line$1907)
	movff	postinc2,(_Line$1907+1)
	movff	postinc2,(_Line$1907+2)
	movff	postinc2,(_Line$1907+3)
	goto	l695
	
l693:; BSR set to: 0

	
l4819:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_Line+0+0)&0ffh,f
	rlcf	(??_Line+0+1)&0ffh,f
	movlw	low(_V)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_V)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,(_Line$1907)
	movff	postdec2,(_Line$1907+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((_Line$1907+1))&0ffh,7
	movlw	-1
	movwf	((_Line$1907+2))&0ffh
	movwf	((_Line$1907+3))&0ffh
	
l695:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlw	low(_amin)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amin)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movlb	0	; () banked
		movf	((_Line$1907))&0ffh,w
	subwf	postinc2,w
	movlb	0	; () banked
	movf	((_Line$1907+1))&0ffh,w
	subwfb	postinc2,w
	movlb	0	; () banked
	movf	((_Line$1907+2))&0ffh,w
	subwfb	postinc2,w
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_Line+6+0)&0ffh
	movlb	0	; () banked
	movf	((_Line$1907+3))&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_Line+6+0)&0ffh,w
	btfss	status,0
	goto	u5671
	goto	u5670

u5671:
	goto	l4823
u5670:
	
l4821:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlw	low(_amin)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amin)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,(_Line$1906)
	movff	postinc2,(_Line$1906+1)
	movff	postinc2,(_Line$1906+2)
	movff	postinc2,(_Line$1906+3)
	goto	l4831
	
l689:; BSR set to: 0

	
l4823:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlw	low(_amax)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amax)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr1l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr1h
	movlw	low(_fw)
	addwf	fsr1l
	movlw	high(_fw)
	addwfc	fsr1h
	movff	postinc1,??_Line+6+0
	movff	postdec1,??_Line+6+0+1
	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_Line+6+0)&0ffh,f
	rlcf	(??_Line+6+1)&0ffh,f
	movlw	low(_V)
	movlb	0	; () banked
	addwf	(??_Line+6+0)&0ffh,w
	movwf	c:fsr1l
	movlw	high(_V)
	movlb	0	; () banked
	addwfc	(??_Line+6+1)&0ffh,w
	movwf	1+c:fsr1l
	movff	postinc1,??_Line+8+0
	movff	postdec1,??_Line+8+0+1
	movff	??_Line+8+0,??_Line+10+0
	movff	??_Line+8+1,??_Line+10+0+1
	movlw	0
	movlb	0	; () banked
	btfsc	(??_Line+10+0+1)&0ffh,7
	movlw	255
	movwf	(??_Line+10+0+2)&0ffh
	movwf	(??_Line+10+0+3)&0ffh
		movf	postinc2,w
	movlb	0	; () banked
	subwf	(??_Line+10+0)&0ffh,w
	movf	postinc2,w
	movlb	0	; () banked
	subwfb	(??_Line+10+1)&0ffh,w
	movf	postinc2,w
	movlb	0	; () banked
	subwfb	(??_Line+10+2)&0ffh,w
	movlb	0	; () banked
	movf	(??_Line+10+3)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_Line+14+0)&0ffh
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_Line+14+0)&0ffh,w
	btfss	status,0
	goto	u5681
	goto	u5680

u5681:
	goto	l4827
u5680:
	
l4825:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlw	low(_amax)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amax)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,(_Line$1908)
	movff	postinc2,(_Line$1908+1)
	movff	postinc2,(_Line$1908+2)
	movff	postinc2,(_Line$1908+3)
	goto	l4829
	
l697:; BSR set to: 0

	
l4827:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	movlb	0	; () banked
	rlcf	(??_Line+0+0)&0ffh,f
	rlcf	(??_Line+0+1)&0ffh,f
	movlw	low(_V)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_V)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,(_Line$1908)
	movff	postdec2,(_Line$1908+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((_Line$1908+1))&0ffh,7
	movlw	-1
	movwf	((_Line$1908+2))&0ffh
	movwf	((_Line$1908+3))&0ffh
	goto	l4829
	
l699:; BSR set to: 0

	
l4829:; BSR set to: 0

	movff	(_Line$1908),(_Line$1906)
	movff	(_Line$1908+1),(_Line$1906+1)
	movff	(_Line$1908+2),(_Line$1906+2)
	movff	(_Line$1908+3),(_Line$1906+3)
	goto	l4831
	
l691:; BSR set to: 0

	
l4831:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+0+0)&0ffh
	rlcf	(??_Line+0+1)&0ffh
	movlw	low(_amin)
	movlb	0	; () banked
	addwf	(??_Line+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amin)
	movlb	0	; () banked
	addwfc	(??_Line+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,??_Line+2+0
	movff	postinc2,??_Line+2+0+1
	movff	postinc2,??_Line+2+0+2
	movff	postinc2,??_Line+2+0+3
	movlb	0	; () banked
	comf	(??_Line+2+0)&0ffh
	comf	(??_Line+2+1)&0ffh
	comf	(??_Line+2+2)&0ffh
	comf	(??_Line+2+3)&0ffh
	incf	(??_Line+2+0)&0ffh
	movlw	0
	addwfc	(??_Line+2+1)&0ffh
	addwfc	(??_Line+2+2)&0ffh
	addwfc	(??_Line+2+3)&0ffh
	movlb	0	; () banked
	movf	((_Line$1906))&0ffh,w
	movlb	0	; () banked
	addwf	(??_Line+2+0)&0ffh,w
	movwf	((c:___lmul@multiplier)),c
	movlb	0	; () banked
	movf	((_Line$1906+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_Line+2+1)&0ffh,w
	movwf	1+((c:___lmul@multiplier)),c
	
	movlb	0	; () banked
	movf	((_Line$1906+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_Line+2+2)&0ffh,w
	movwf	2+((c:___lmul@multiplier)),c
	
	movlb	0	; () banked
	movf	((_Line$1906+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_Line+2+3)&0ffh,w
	movwf	3+((c:___lmul@multiplier)),c
	movlw	low(064h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(064h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(064h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(064h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(c:___aldiv@dividend)
	movff	1+?___lmul,(c:___aldiv@dividend+1)
	movff	2+?___lmul,(c:___aldiv@dividend+2)
	movff	3+?___lmul,(c:___aldiv@dividend+3)
	
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+6+0
	movff	postdec2,??_Line+6+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+6+0)&0ffh
	rlcf	(??_Line+6+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+6+0)&0ffh
	rlcf	(??_Line+6+1)&0ffh
	movlw	low(_amax)
	movlb	0	; () banked
	addwf	(??_Line+6+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amax)
	movlb	0	; () banked
	addwfc	(??_Line+6+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,??_Line+8+0
	movff	postinc2,??_Line+8+0+1
	movff	postinc2,??_Line+8+0+2
	movff	postinc2,??_Line+8+0+3
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,??_Line+12+0
	movff	postdec2,??_Line+12+0+1
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+12+0)&0ffh
	rlcf	(??_Line+12+1)&0ffh
	movlb	0	; () banked
	bcf	status,0
	rlcf	(??_Line+12+0)&0ffh
	rlcf	(??_Line+12+1)&0ffh
	movlw	low(_amin)
	movlb	0	; () banked
	addwf	(??_Line+12+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_amin)
	movlb	0	; () banked
	addwfc	(??_Line+12+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	postinc2,??_Line+14+0
	movff	postinc2,??_Line+14+0+1
	movff	postinc2,??_Line+14+0+2
	movff	postinc2,??_Line+14+0+3
	movlb	0	; () banked
	comf	(??_Line+14+0)&0ffh
	comf	(??_Line+14+1)&0ffh
	comf	(??_Line+14+2)&0ffh
	comf	(??_Line+14+3)&0ffh
	incf	(??_Line+14+0)&0ffh
	movlw	0
	addwfc	(??_Line+14+1)&0ffh
	addwfc	(??_Line+14+2)&0ffh
	addwfc	(??_Line+14+3)&0ffh
	movlb	0	; () banked
	movf	(??_Line+8+0)&0ffh,w
	movlb	0	; () banked
	addwf	(??_Line+14+0)&0ffh,w
	movwf	((c:___aldiv@divisor)),c
	movlb	0	; () banked
	movf	(??_Line+8+1)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_Line+14+1)&0ffh,w
	movwf	1+((c:___aldiv@divisor)),c
	
	movlb	0	; () banked
	movf	(??_Line+8+2)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_Line+14+2)&0ffh,w
	movwf	2+((c:___aldiv@divisor)),c
	
	movlb	0	; () banked
	movf	(??_Line+8+3)&0ffh,w
	movlb	0	; () banked
	addwfc	(??_Line+14+3)&0ffh,w
	movwf	3+((c:___aldiv@divisor)),c
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(Line@v)
	movff	1+?___aldiv,(Line@v+1)
	movff	2+?___aldiv,(Line@v+2)
	movff	3+?___aldiv,(Line@v+3)
	
	line	881
	
l4833:
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_pd)
	addwf	fsr2l
	movlw	high(_pd)
	addwfc	fsr2h
	movff	postinc2,(c:___wmul@multiplier)
	movff	postdec2,(c:___wmul@multiplier+1)
	movlw	high(064h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(064h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,(c:___lmul@multiplier)
	movff	1+?___wmul,(c:___lmul@multiplier+1)
	movlw	0
	btfsc	((c:___lmul@multiplier+1)),c,7
	movlw	-1
	movwf	((c:___lmul@multiplier+2)),c
	movwf	((c:___lmul@multiplier+3)),c
	movff	(Line@v),(c:___lmul@multiplicand)
	movff	(Line@v+1),(c:___lmul@multiplicand+1)
	movff	(Line@v+2),(c:___lmul@multiplicand+2)
	movff	(Line@v+3),(c:___lmul@multiplicand+3)
	call	___lmul	;wreg free
	movf	(0+?___lmul),c,w
	movlb	0	; () banked
	addwf	((Line@a))&0ffh
	movf	(1+?___lmul),c,w
	movlb	0	; () banked
	addwfc	((Line@a+1))&0ffh
	movf	(2+?___lmul),c,w
	movlb	0	; () banked
	addwfc	((Line@a+2))&0ffh
	movf	(3+?___lmul),c,w
	movlb	0	; () banked
	addwfc	((Line@a+3))&0ffh

	line	882
	
l4835:; BSR set to: 0

	movlb	0	; () banked
	movf	((Line@v))&0ffh,w
	movlb	0	; () banked
	addwf	((Line@b))&0ffh
	movlb	0	; () banked
	movf	((Line@v+1))&0ffh,w
	movlb	0	; () banked
	addwfc	((Line@b+1))&0ffh
	movlb	0	; () banked
	movf	((Line@v+2))&0ffh,w
	movlb	0	; () banked
	addwfc	((Line@b+2))&0ffh
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	movlb	0	; () banked
	addwfc	((Line@b+3))&0ffh
	line	883
	
l4837:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@v+3))&0ffh,7
	goto	u5691
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((Line@v+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((Line@v+1))&0ffh,w
	bnz	u5690
	movlw	51
	movlb	0	; () banked
	subwf	 ((Line@v))&0ffh,w
	btfss	status,0
	goto	u5691
	goto	u5690

u5691:
	goto	l4841
u5690:
	line	884
	
l4839:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((Line@g+1))&0ffh
	movlw	low(01h)
	movwf	((Line@g))&0ffh
	goto	l4841
	line	885
	
l700:; BSR set to: 0

	line	879
	
l4841:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((Line@i))&0ffh
	incf	((Line@i+1))&0ffh
	
l4843:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@i+1))&0ffh,7
	goto	u5701
	movlb	0	; () banked
	movf	((Line@i+1))&0ffh,w
	bnz	u5700
	movlw	5
	movlb	0	; () banked
	subwf	 ((Line@i))&0ffh,w
	btfss	status,0
	goto	u5701
	goto	u5700

u5701:
	goto	l4815
u5700:
	goto	l4845
	
l687:; BSR set to: 0

	line	887
	
l4845:; BSR set to: 0

	movlb	0	; () banked
	movf	((Line@g))&0ffh,w
	movlb	0	; () banked
iorwf	((Line@g+1))&0ffh,w
	btfss	status,2
	goto	u5711
	goto	u5710

u5711:
	goto	l4859
u5710:
	line	888
	
l4847:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_prev_line+3))&0ffh,7
	goto	u5720
	movlb	0	; () banked
	movf	((_prev_line+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_prev_line+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_prev_line+1))&0ffh,w
	bnz	u5721
	movlb	0	; () banked
	decf	((_prev_line))&0ffh,w
	btfsc	status,0
	goto	u5721
	goto	u5720

u5721:
	goto	l4851
u5720:
	
l4849:; BSR set to: 0

	movlw	high(-130)
	movlb	0	; () banked
	movwf	((_Line$1909+1))&0ffh
	movlw	low(-130)
	movwf	((_Line$1909))&0ffh
	goto	l4853
	
l703:; BSR set to: 0

	
l4851:; BSR set to: 0

	movlw	high(082h)
	movlb	0	; () banked
	movwf	((_Line$1909+1))&0ffh
	movlw	low(082h)
	movwf	((_Line$1909))&0ffh
	goto	l4853
	
l705:; BSR set to: 0

	
l4853:; BSR set to: 0

	movff	(_Line$1909),(_prev_line)
	movff	(_Line$1909+1),(_prev_line+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((_prev_line+1))&0ffh,7
	movlw	-1
	movwf	((_prev_line+2))&0ffh
	movwf	((_prev_line+3))&0ffh
	line	889
	
l4855:; BSR set to: 0

	movff	(_prev_line),(c:?_Line)
	movff	(_prev_line+1),(c:?_Line+1)
	goto	l706
	
l4857:; BSR set to: 0

	goto	l706
	line	890
	
l701:; BSR set to: 0

	line	891
	
l4859:; BSR set to: 0

	movff	(Line@a),(c:___aldiv@dividend)
	movff	(Line@a+1),(c:___aldiv@dividend+1)
	movff	(Line@a+2),(c:___aldiv@dividend+2)
	movff	(Line@a+3),(c:___aldiv@dividend+3)
	movff	(Line@b),(c:___aldiv@divisor)
	movff	(Line@b+1),(c:___aldiv@divisor+1)
	movff	(Line@b+2),(c:___aldiv@divisor+2)
	movff	(Line@b+3),(c:___aldiv@divisor+3)
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(_prev_line)
	movff	1+?___aldiv,(_prev_line+1)
	movff	2+?___aldiv,(_prev_line+2)
	movff	3+?___aldiv,(_prev_line+3)
	
	line	892
	movff	(Line@a),(c:___aldiv@dividend)
	movff	(Line@a+1),(c:___aldiv@dividend+1)
	movff	(Line@a+2),(c:___aldiv@dividend+2)
	movff	(Line@a+3),(c:___aldiv@dividend+3)
	movff	(Line@b),(c:___aldiv@divisor)
	movff	(Line@b+1),(c:___aldiv@divisor+1)
	movff	(Line@b+2),(c:___aldiv@divisor+2)
	movff	(Line@b+3),(c:___aldiv@divisor+3)
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:?_Line)
	movff	1+?___aldiv,(c:?_Line+1)
	goto	l706
	
l4861:
	line	893
	
l706:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Line
	__end_of_Line:
	signat	_Line,90
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
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
;;		_Line
;;		_main
;;		_Ponderado
;;		_LineFollow
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
	line	15
global __ptext21
__ptext21:
psect	text21
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 29
	line	37
	
l4329:
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
	
l4331:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l804
	
l4333:
	line	53
	
l804:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.34/sources/common/Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4   20[COMRAM] unsigned long 
;;  multiplicand    4   24[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   28[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4   20[COMRAM] unsigned long 
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
;;		_main
;;		_millis
;;		_Ponderado
;;		_LineFollow
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul32.c"
	line	15
global __ptext22
__ptext22:
psect	text22
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
;incstack = 0
	opt	stack 29
	line	119
	
l4335:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l4337
	line	120
	
l813:
	line	121
	
l4337:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u4841
	goto	u4840
u4841:
	goto	l4341
u4840:
	line	122
	
l4339:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l4341
	
l814:
	line	123
	
l4341:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l4343:
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
	goto	u4851
	goto	u4850

u4851:
	goto	l4337
u4850:
	
l815:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l816:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/aldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   32[COMRAM] long 
;;  divisor         4   36[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   42[COMRAM] long 
;;  sign            1   41[COMRAM] unsigned char 
;;  counter         1   40[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   32[COMRAM] long 
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
psect	text23,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/aldiv.c"
	line	8
global __ptext23
__ptext23:
psect	text23
	file	"/opt/microchip/xc8/v1.34/sources/common/aldiv.c"
	line	8
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	stack 28
	line	14
	
l4345:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l4347:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u4860
	goto	u4861

u4861:
	goto	l4353
u4860:
	line	16
	
l4349:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l4351:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l4353
	line	18
	
l863:
	line	19
	
l4353:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u4870
	goto	u4871

u4871:
	goto	l4359
u4870:
	line	20
	
l4355:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l4357:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l4359
	line	22
	
l864:
	line	23
	
l4359:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l4361:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u4881
	goto	u4880

u4881:
	goto	l4381
u4880:
	line	25
	
l4363:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l4367
	
l867:
	line	27
	
l4365:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l4367
	line	29
	
l866:
	line	26
	
l4367:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u4891
	goto	u4890
u4891:
	goto	l4365
u4890:
	goto	l4369
	
l868:
	goto	l4369
	line	30
	
l869:
	line	31
	
l4369:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l4371:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u4901
	goto	u4900

u4901:
	goto	l4377
u4900:
	line	33
	
l4373:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l4375:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l4377
	line	35
	
l870:
	line	36
	
l4377:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l4379:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l4369
	goto	l4381
	
l871:
	goto	l4381
	line	38
	
l865:
	line	39
	
l4381:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l4385
u4910:
	line	40
	
l4383:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l4385
	
l872:
	line	41
	
l4385:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l873
	
l4387:
	line	42
	
l873:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_EnhancedRead

;; *************** function _EnhancedRead *****************
;; Defined at:
;;		line 757 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  aux             2   23[COMRAM] unsigned int 
;;  i               1   25[COMRAM] unsigned char 
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
psect	text24,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	757
global __ptext24
__ptext24:
psect	text24
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	757
	global	__size_of_EnhancedRead
	__size_of_EnhancedRead	equ	__end_of_EnhancedRead-_EnhancedRead
	
_EnhancedRead:
;incstack = 0
	opt	stack 28
	line	760
	
l4777:
	movlw	low(0)
	movwf	((c:EnhancedRead@i)),c
	
l4779:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u5601
	goto	u5600

u5601:
	goto	l4783
u5600:
	goto	l607
	
l4781:
	goto	l607
	
l602:
	line	761
	
l4783:
	movff	(c:EnhancedRead@i),??_EnhancedRead+0+0
	rlncf	(??_EnhancedRead+0+0),c
	rlncf	(??_EnhancedRead+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_EnhancedRead+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_EnhancedRead+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	762
	
l4785:
	bsf	((c:4034)),c,1	;volatile
	line	763
	goto	l604
	
l605:
	
l604:
	btfsc	((c:4034)),c,1	;volatile
	goto	u5611
	goto	u5610
u5611:
	goto	l604
u5610:
	goto	l4787
	
l606:
	line	764
	
l4787:
	movf	((c:4036)),c,w	;volatile
	mullw	04h
	movff	prodl,(c:EnhancedRead@aux)
	movff	prodh,(c:EnhancedRead@aux+1)
	line	765
	
l4789:
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
	line	766
	
l4791:
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
	line	760
	
l4793:
	incf	((c:EnhancedRead@i)),c
	
l4795:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u5621
	goto	u5620

u5621:
	goto	l4783
u5620:
	goto	l607
	
l603:
	line	768
	
l607:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_EnhancedRead
	__end_of_EnhancedRead:
	signat	_EnhancedRead,88
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
;;		_EnhancedRead
;;		_MotorASpeed
;;		_MotorBSpeed
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	8
global __ptext25
__ptext25:
psect	text25
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 27
	line	14
	
l4135:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l4137:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u4670
	goto	u4671

u4671:
	goto	l4143
u4670:
	line	16
	
l4139:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l4141:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l4143
	line	18
	
l987:
	line	19
	
l4143:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u4680
	goto	u4681

u4681:
	goto	l4149
u4680:
	line	20
	
l4145:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l4147:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l4149
	line	22
	
l988:
	line	23
	
l4149:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l4151:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u4691
	goto	u4690

u4691:
	goto	l4171
u4690:
	line	25
	
l4153:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l4157
	
l991:
	line	27
	
l4155:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l4157
	line	29
	
l990:
	line	26
	
l4157:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u4701
	goto	u4700
u4701:
	goto	l4155
u4700:
	goto	l4159
	
l992:
	goto	l4159
	line	30
	
l993:
	line	31
	
l4159:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l4161:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u4711
	goto	u4710

u4711:
	goto	l4167
u4710:
	line	33
	
l4163:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l4165:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l4167
	line	35
	
l994:
	line	36
	
l4167:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l4169:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l4159
	goto	l4171
	
l995:
	goto	l4171
	line	38
	
l989:
	line	39
	
l4171:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l4175
u4720:
	line	40
	
l4173:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l4175
	
l996:
	line	41
	
l4175:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l997
	
l4177:
	line	42
	
l997:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 594 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	594
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
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
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
	line	595
	
i2l2367:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u151_41
	goto	i2u151_40
i2u151_41:
	goto	i2l511
i2u151_40:
	line	596
	
i2l2369:
	movlw	low(01h)
	addwf	((c:_TIME)),c
	movlw	0
	addwfc	((c:_TIME+1)),c
	addwfc	((c:_TIME+2)),c
	addwfc	((c:_TIME+3)),c
	line	597
	
i2l2371:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	598
	
i2l2373:
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	601
	
i2l2375:
	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l511
	line	602
	
i2l510:
	line	603
	
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
	retfie f
	opt stack 0
GLOBAL	__end_of_enc
	__end_of_enc:
	signat	_enc,88
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
	end
