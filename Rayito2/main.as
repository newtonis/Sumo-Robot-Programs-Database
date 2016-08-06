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
	FNCALL	_main,_AdvanceLow
	FNCALL	_main,_CheckMem
	FNCALL	_main,_EnhancedRead
	FNCALL	_main,_EreaseAll
	FNCALL	_main,_Line
	FNCALL	_main,_Load
	FNCALL	_main,_MotorsSpeed
	FNCALL	_main,_Save
	FNCALL	_main,_ShowMem
	FNCALL	_main,_UpdateDir
	FNCALL	_main,_Wixel
	FNCALL	_main,___aldiv
	FNCALL	_main,___almod
	FNCALL	_main,___awdiv
	FNCALL	_main,___awtoft
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___lmul
	FNCALL	_main,___wmul
	FNCALL	_main,_initLED
	FNCALL	_main,_initYBOT
	FNCALL	_main,_printf
	FNCALL	_initYBOT,_InitAnalog
	FNCALL	_initYBOT,_InitTIMERS
	FNCALL	_initYBOT,_MotorsPWM
	FNCALL	_initYBOT,_ResetCounter
	FNCALL	_initYBOT,_configurations_init
	FNCALL	_UpdateDir,_MotorsSpeed
	FNCALL	_UpdateDir,___awtoft
	FNCALL	_UpdateDir,___ftadd
	FNCALL	_UpdateDir,___ftmul
	FNCALL	_UpdateDir,___fttol
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
	global	_CURVE_ACEL_TIME
	global	_VKD
	global	_VKP
	global	_VEL
	global	_fw
	global	_pd
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	174

;initializer for _sd
	dw	(01h)&0ffffh
	dw	(07h)&0ffffh
	db   0
	db   0
	db   0
	db   0
	db   0
	db   0
	line	167

;initializer for _test_kp
	db	low(float24(7.0000000000000000))
	db	high(float24(7.0000000000000000))
	db	low highword(float24(7.0000000000000000))
	line	14

;initializer for _CURVE_ACEL_TIME
	dw	(01F4h)&0ffffh
	line	166

;initializer for _LOW_SPEED
	dw	(0208h)&0ffffh
	line	15

;initializer for _RECT_ACEL_TIME
	dw	(01F4h)&0ffffh
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	12

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
	line	11

;initializer for _VKP
	db	low(float24(5.0000000000000000))
	db	high(float24(5.0000000000000000))
	db	low highword(float24(5.0000000000000000))
	db	low(float24(6.5000000000000000))
	db	high(float24(6.5000000000000000))
	db	low highword(float24(6.5000000000000000))
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
	line	10

;initializer for _VEL
	dw	(01C2h)&0ffffh
	dw	(0320h)&0ffffh
	dw	(01A4h)&0ffffh
	dw	(03E8h)&0ffffh
	dw	(-1000)&0ffffh
	dw	(01C2h)&0ffffh
	line	172

;initializer for _fw
	dw	(06h)&0ffffh
	dw	(05h)&0ffffh
	dw	(04h)&0ffffh
	dw	(03h)&0ffffh
	dw	(02h)&0ffffh
	line	173

;initializer for _pd
	dw	(-200)&0ffffh
	dw	(-100)&0ffffh
	dw	(0)&0ffffh
	dw	(064h)&0ffffh
	dw	(0C8h)&0ffffh
	line	47

;initializer for _TIMEFRENO
	dw	(0C8h) & 0xffff
	dw	highword(0C8h)
	line	168

;initializer for _test_kd
	db	low(float24(20.000000000000000))
	db	high(float24(20.000000000000000))
	db	low highword(float24(20.000000000000000))
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
	global	_der
	global	_formula
	global	_last
	global	_line
	global	_speed
	global	_x
	global	_MF
	global	_TOTAL
	global	_TIME
	global	_TIME2
	global	_TIME3
	global	_TIME4
	global	_kd
	global	_kp
	global	_f
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
	global	_P
	global	_V
	global	_amax
	global	_amin
	global	_TIME5
	global	_LEN
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
	
STR_15:
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
	
STR_14:
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
	
STR_29:
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
	db	87	;'W'
	db	114	;'r'
	db	105	;'i'
	db	116	;'t'
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
	db	77	;'M'
	db	101	;'e'
	db	109	;'m'
	db	111	;'o'
	db	114	;'r'
	db	121	;'y'
	db	39
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
	
STR_16:
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
	
STR_22:
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
	
STR_30:
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
STR_28	equ	STR_26+0
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
	global	_speed
_speed:
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
	global	_kd
_kd:
       ds      3
	global	_kp
_kp:
       ds      3
	global	_ca
	global	_ca
_ca:
       ds      2
	global	_cb
	global	_cb
_cb:
       ds      2
	global	_cox
	global	_cox
_cox:
       ds      2
	global	_f
_f:
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
	global	_mod
	global	_mod
_mod:
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
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	174
	global	_sd
_sd:
       ds      10
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	167
	global	_test_kp
	global	_test_kp
_test_kp:
       ds      3
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	14
	global	_CURVE_ACEL_TIME
_CURVE_ACEL_TIME:
       ds      2
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	166
	global	_LOW_SPEED
	global	_LOW_SPEED
_LOW_SPEED:
       ds      2
psect	dataBANK0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	15
	global	_RECT_ACEL_TIME
	global	_RECT_ACEL_TIME
_RECT_ACEL_TIME:
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
	global	_TIME5
_TIME5:
       ds      4
	global	_WAITFRENAR
	global	_WAITFRENAR
_WAITFRENAR:
       ds      4
	global	_WAITIME
	global	_WAITIME
_WAITIME:
       ds      4
psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	12
	global	_VKD
_VKD:
       ds      18
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	11
	global	_VKP
_VKP:
       ds      18
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	10
	global	_VEL
_VEL:
       ds      12
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	172
	global	_fw
_fw:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	173
	global	_pd
_pd:
       ds      10
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	47
	global	_TIMEFRENO
	global	_TIMEFRENO
_TIMEFRENO:
       ds      4
psect	dataBANK1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	168
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
; Clear objects allocated to BANK2 (200 bytes)
	global __pbssBANK2
lfsr	0,__pbssBANK2
movlw	200
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK1 (140 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	140
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (55 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	55
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (17 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	17
clear_3:
clrf	postinc0,c
decf	wreg
bnz	clear_3
	line	#
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
; Initialize objects allocated to BANK0 (19 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,19
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
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	main@kp
main@kp:	; 3 bytes @ 0x0
	ds   3
	global	main@kd
main@kd:	; 3 bytes @ 0x3
	ds   3
	global	_main$2438
_main$2438:	; 2 bytes @ 0x6
	ds   2
	global	_main$2439
_main$2439:	; 2 bytes @ 0x8
	ds   2
	global	_main$2440
_main$2440:	; 2 bytes @ 0xA
	ds   2
	global	_main$2441
_main$2441:	; 2 bytes @ 0xC
	ds   2
	global	_main$2442
_main$2442:	; 2 bytes @ 0xE
	ds   2
	global	_main$2443
_main$2443:	; 2 bytes @ 0x10
	ds   2
	global	_main$445
_main$445:	; 2 bytes @ 0x12
	ds   2
	global	_main$446
_main$446:	; 2 bytes @ 0x14
	ds   2
	global	_main$447
_main$447:	; 2 bytes @ 0x16
	ds   2
	global	_main$448
_main$448:	; 2 bytes @ 0x18
	ds   2
	global	_main$451
_main$451:	; 2 bytes @ 0x1A
	ds   2
	global	_main$452
_main$452:	; 2 bytes @ 0x1C
	ds   2
	global	_main$461
_main$461:	; 2 bytes @ 0x1E
	ds   2
	global	_main$462
_main$462:	; 2 bytes @ 0x20
	ds   2
	global	main@old_431
main@old_431:	; 1 bytes @ 0x22
	ds   1
	global	main@old_436
main@old_436:	; 1 bytes @ 0x23
	ds   1
	global	_main$2444
_main$2444:	; 4 bytes @ 0x24
	ds   4
	global	_main$2445
_main$2445:	; 2 bytes @ 0x28
	ds   2
	global	_main$2446
_main$2446:	; 2 bytes @ 0x2A
	ds   2
	global	_main$2447
_main$2447:	; 2 bytes @ 0x2C
	ds   2
	global	_main$2448
_main$2448:	; 2 bytes @ 0x2E
	ds   2
	global	_main$2449
_main$2449:	; 2 bytes @ 0x30
	ds   2
	global	_main$2450
_main$2450:	; 2 bytes @ 0x32
	ds   2
	global	main@old_428
main@old_428:	; 1 bytes @ 0x34
	ds   1
	global	main@old_433
main@old_433:	; 1 bytes @ 0x35
	ds   1
	global	_main$416
_main$416:	; 2 bytes @ 0x36
	ds   2
	global	_main$422
_main$422:	; 2 bytes @ 0x38
	ds   2
	global	main@j_420
main@j_420:	; 2 bytes @ 0x3A
	ds   2
	global	main@i
main@i:	; 2 bytes @ 0x3C
	ds   2
	global	main@i_419
main@i_419:	; 2 bytes @ 0x3E
	ds   2
	global	main@j_425
main@j_425:	; 2 bytes @ 0x40
	ds   2
	global	main@mod
main@mod:	; 2 bytes @ 0x42
	ds   2
	global	main@speed
main@speed:	; 2 bytes @ 0x44
	ds   2
	global	main@old
main@old:	; 1 bytes @ 0x46
	ds   1
	global	main@j
main@j:	; 2 bytes @ 0x47
	ds   2
	global	main@i_424
main@i_424:	; 2 bytes @ 0x49
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x0
	global	Line@w
Line@w:	; 4 bytes @ 0x0
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x1
	ds   3
	global	Line@a
Line@a:	; 4 bytes @ 0x4
	ds   1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x5
	ds   1
	global	AdvanceLow@kp
AdvanceLow@kp:	; 3 bytes @ 0x6
	ds   2
	global	Line@b
Line@b:	; 4 bytes @ 0x8
	ds   1
	global	AdvanceLow@kd
AdvanceLow@kd:	; 3 bytes @ 0x9
	ds   3
	global	Line@g
Line@g:	; 1 bytes @ 0xC
	global	AdvanceLow@speed
AdvanceLow@speed:	; 2 bytes @ 0xC
	ds   1
	global	Line@j_367
Line@j_367:	; 2 bytes @ 0xD
	ds   2
	global	Line@j
Line@j:	; 2 bytes @ 0xF
	ds   2
	global	Line@i
Line@i:	; 2 bytes @ 0x11
	ds   2
	global	Line@i_368
Line@i_368:	; 2 bytes @ 0x13
	ds   2
	global	Line@v
Line@v:	; 4 bytes @ 0x15
	ds   4
?_main:	; 2 bytes @ 0x19
main@argc:	; 2 bytes @ 0x19
	ds   2
main@argv:	; 3 bytes @ 0x1B
	ds   3
??_main:	; 0 bytes @ 0x1E
	ds   5
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_ResetCounter:	; 0 bytes @ 0x0
?_configurations_init:	; 0 bytes @ 0x0
?_InitAnalog:	; 0 bytes @ 0x0
?_InitTIMERS:	; 0 bytes @ 0x0
?_MotorsPWM:	; 0 bytes @ 0x0
?_Wixel:	; 0 bytes @ 0x0
?_EnhancedRead:	; 0 bytes @ 0x0
?_isdigit:	; 1 bit 
?_EreaseAll:	; 0 bytes @ 0x0
?_initYBOT:	; 0 bytes @ 0x0
?_enc:	; 0 bytes @ 0x0
??_enc:	; 0 bytes @ 0x0
?_initLED:	; 0 bytes @ 0x0
?_ShowMem:	; 0 bytes @ 0x0
?_Save:	; 0 bytes @ 0x0
?_Load:	; 0 bytes @ 0x0
?_UpdateDir:	; 0 bytes @ 0x0
?_Line:	; 0 bytes @ 0x0
?_AdvanceLow:	; 0 bytes @ 0x0
?_putch:	; 0 bytes @ 0x0
	ds   14
?_WriteMem:	; 0 bytes @ 0xE
??_ResetCounter:	; 0 bytes @ 0xE
??_configurations_init:	; 0 bytes @ 0xE
??_InitAnalog:	; 0 bytes @ 0xE
??_InitTIMERS:	; 0 bytes @ 0xE
??_MotorsPWM:	; 0 bytes @ 0xE
?_ReadMem:	; 0 bytes @ 0xE
??_Wixel:	; 0 bytes @ 0xE
??_isdigit:	; 0 bytes @ 0xE
??_initYBOT:	; 0 bytes @ 0xE
??_initLED:	; 0 bytes @ 0xE
??_putch:	; 0 bytes @ 0xE
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0xE
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0xE
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0xE
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
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0xE
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0xE
	ds   1
??_WriteMem:	; 0 bytes @ 0xF
	global	WriteMem@addr
WriteMem@addr:	; 1 bytes @ 0xF
	global	_isdigit$2189
_isdigit$2189:	; 1 bytes @ 0xF
	ds   1
??_ReadMem:	; 0 bytes @ 0x10
??_EreaseAll:	; 0 bytes @ 0x10
	global	ReadMem@addr
ReadMem@addr:	; 1 bytes @ 0x10
	global	isdigit@c
isdigit@c:	; 1 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x10
	ds   1
?_GetValue:	; 0 bytes @ 0x11
?_CheckMem:	; 0 bytes @ 0x11
?_Length:	; 0 bytes @ 0x11
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x11
	global	CheckMem@data
CheckMem@data:	; 2 bytes @ 0x11
	global	Length@data
Length@data:	; 2 bytes @ 0x11
	global	GetValue@item
GetValue@item:	; 2 bytes @ 0x11
	ds   1
??___awdiv:	; 0 bytes @ 0x12
??___lwdiv:	; 0 bytes @ 0x12
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x12
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x12
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x12
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x12
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x12
	ds   1
??___ftpack:	; 0 bytes @ 0x13
??_CheckMem:	; 0 bytes @ 0x13
??_Length:	; 0 bytes @ 0x13
	global	_CheckMem$337
_CheckMem$337:	; 1 bytes @ 0x13
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
??_GetValue:	; 0 bytes @ 0x15
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x15
	global	Length@add
Length@add:	; 1 bytes @ 0x15
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x15
	ds   1
??_EnhancedRead:	; 0 bytes @ 0x16
?_MotorASpeed:	; 0 bytes @ 0x16
?_MotorBSpeed:	; 0 bytes @ 0x16
??___aldiv:	; 0 bytes @ 0x16
??___almod:	; 0 bytes @ 0x16
	global	?___wmul
?___wmul:	; 2 bytes @ 0x16
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x16
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0x16
	global	_Length$346
_Length$346:	; 2 bytes @ 0x16
	global	MotorASpeed@S
MotorASpeed@S:	; 2 bytes @ 0x16
	global	MotorBSpeed@S
MotorBSpeed@S:	; 2 bytes @ 0x16
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
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
??_MotorASpeed:	; 0 bytes @ 0x18
??_MotorBSpeed:	; 0 bytes @ 0x18
	global	Length@rta
Length@rta:	; 1 bytes @ 0x18
	global	_GetValue$356
_GetValue$356:	; 2 bytes @ 0x18
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x18
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x18
	ds   1
??___awtoft:	; 0 bytes @ 0x19
??___lwmod:	; 0 bytes @ 0x19
	global	EnhancedRead@i
EnhancedRead@i:	; 1 bytes @ 0x19
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x19
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x19
	ds   1
??___wmul:	; 0 bytes @ 0x1A
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x1A
	global	GetValue@rta
GetValue@rta:	; 1 bytes @ 0x1A
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x1A
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x1A
	ds   1
??_Load:	; 0 bytes @ 0x1B
	ds   1
?_MotorsSpeed:	; 0 bytes @ 0x1C
	global	?_printf
?_printf:	; 2 bytes @ 0x1C
	global	?___lmul
?___lmul:	; 4 bytes @ 0x1C
	global	MotorsSpeed@A
MotorsSpeed@A:	; 2 bytes @ 0x1C
	global	printf@f
printf@f:	; 2 bytes @ 0x1C
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x1C
	ds   1
	global	Load@x
Load@x:	; 2 bytes @ 0x1D
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x1D
	ds   1
	global	MotorsSpeed@B
MotorsSpeed@B:	; 2 bytes @ 0x1E
	ds   2
??_MotorsSpeed:	; 0 bytes @ 0x20
??___ftmul:	; 0 bytes @ 0x20
	global	_MotorsSpeed$1868
_MotorsSpeed$1868:	; 2 bytes @ 0x20
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x20
	ds   2
	global	_MotorsSpeed$1870
_MotorsSpeed$1870:	; 2 bytes @ 0x22
	ds   1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x23
	ds   1
??___lmul:	; 0 bytes @ 0x24
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x24
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x24
	ds   3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x27
	ds   1
??_printf:	; 0 bytes @ 0x28
??_Line:	; 0 bytes @ 0x28
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x28
	ds   1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x29
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x29
	ds   3
	global	printf@prec
printf@prec:	; 1 bytes @ 0x2C
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x2C
	ds   1
	global	printf@ap
printf@ap:	; 2 bytes @ 0x2D
	ds   2
??___ftadd:	; 0 bytes @ 0x2F
	global	printf@val
printf@val:	; 2 bytes @ 0x2F
	ds   2
	global	printf@flag
printf@flag:	; 1 bytes @ 0x31
	ds   1
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x32
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
	ds   1
??_ShowMem:	; 0 bytes @ 0x35
	global	?___fttol
?___fttol:	; 4 bytes @ 0x35
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x35
	ds   1
	global	ShowMem@x
ShowMem@x:	; 2 bytes @ 0x36
	ds   2
??_Save:	; 0 bytes @ 0x38
	ds   1
??___fttol:	; 0 bytes @ 0x39
	global	_Save$340
_Save$340:	; 2 bytes @ 0x39
	ds   2
	global	Save@sum
Save@sum:	; 1 bytes @ 0x3B
	ds   1
	global	Save@x
Save@x:	; 2 bytes @ 0x3C
	ds   2
??_UpdateDir:	; 0 bytes @ 0x3E
??_AdvanceLow:	; 0 bytes @ 0x3E
	ds   2
;!
;!Data Sizes:
;!    Strings     1248
;!    Constant    10
;!    Data        94
;!    BSS         412
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     64      81
;!    BANK0           160     35     109
;!    BANK1           256      0     217
;!    BANK2           256      0     200
;!    BANK3           256     75      75
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 63
;!		 -> STR_30(CODE[16]), STR_29(CODE[57]), STR_28(CODE[63]), STR_27(CODE[41]), 
;!		 -> STR_26(CODE[63]), STR_25(CODE[36]), STR_24(CODE[42]), STR_23(CODE[40]), 
;!		 -> STR_22(CODE[19]), STR_21(CODE[40]), STR_20(CODE[49]), STR_19(CODE[47]), 
;!		 -> STR_18(CODE[38]), STR_17(CODE[47]), STR_16(CODE[45]), STR_15(CODE[61]), 
;!		 -> STR_14(CODE[60]), STR_13(CODE[53]), STR_12(CODE[39]), STR_11(CODE[44]), 
;!		 -> STR_10(CODE[47]), STR_9(CODE[48]), STR_8(CODE[38]), STR_7(CODE[43]), 
;!		 -> STR_6(CODE[39]), STR_5(CODE[45]), STR_4(CODE[41]), STR_3(CODE[37]), 
;!		 -> STR_2(CODE[37]), STR_1(CODE[36]), 
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
;!		 -> main@old_436(BANK3[1]), main@old_433(BANK3[1]), main@old_431(BANK3[1]), main@old_428(BANK3[1]), 
;!		 -> main@old(BANK3[1]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_AdvanceLow
;!    _main->_UpdateDir
;!    _UpdateDir->___fttol
;!    _Save->_ShowMem
;!    _ShowMem->_printf
;!    _printf->___wmul
;!    ___wmul->___awdiv
;!    ___lwmod->___lwdiv
;!    _Load->_GetValue
;!    _Length->_ReadMem
;!    _GetValue->_ReadMem
;!    _Line->___lmul
;!    ___lmul->___aldiv
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
;!    _main->_Line
;!    _UpdateDir->___fttol
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
;;Main: autosize = 0, tempsize = 5, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                               145   140      5  129709
;!                                             25 BANK0     10     5      5
;!                                              0 BANK3     75    75      0
;!                         _AdvanceLow
;!                           _CheckMem
;!                       _EnhancedRead
;!                          _EreaseAll
;!                               _Line
;!                               _Load
;!                        _MotorsSpeed
;!                               _Save
;!                            _ShowMem
;!                          _UpdateDir
;!                              _Wixel
;!                            ___aldiv
;!                            ___almod
;!                            ___awdiv
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___fttol
;!                             ___lmul
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
;! (1) ___almod                                             10     2      8    1819
;!                                             14 COMRAM    10     2      8
;! ---------------------------------------------------------------------------------
;! (1) _Wixel                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _UpdateDir                                            2     2      0   24700
;!                                             62 COMRAM     2     2      0
;!                        _MotorsSpeed
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___fttol
;! ---------------------------------------------------------------------------------
;! (1) _Save                                                 6     6      0    8825
;!                                             56 COMRAM     6     6      0
;!                            _ShowMem
;!                           _WriteMem
;! ---------------------------------------------------------------------------------
;! (1) _ShowMem                                              3     3      0    8254
;!                                             53 COMRAM     3     3      0
;!                             _printf
;! ---------------------------------------------------------------------------------
;! (1) _printf                                              34    22     12    8155
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
;! (2) ___wmul                                               6     2      4    3774
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
;! (1) _Line                                                32    32      0    4022
;!                                             40 COMRAM     7     7      0
;!                                              0 BANK0     25    25      0
;!                            ___aldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (1) ___lmul                                              12     4      8     866
;!                                             28 COMRAM    12     4      8
;!                            ___aldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___aldiv                                             14     6      8    1677
;!                                             14 COMRAM    14     6      8
;! ---------------------------------------------------------------------------------
;! (1) _EreaseAll                                            0     0      0     370
;!                           _WriteMem
;! ---------------------------------------------------------------------------------
;! (2) _WriteMem                                             2     1      1     370
;!                                             14 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! (1) _EnhancedRead                                         4     4      0    5417
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
;! (1) _AdvanceLow                                          12    12      0   24895
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
;! (2) _MotorsSpeed                                          8     4      4   12850
;!                                             28 COMRAM     8     4      4
;!                        _MotorASpeed
;!                        _MotorBSpeed
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _MotorBSpeed                                          3     1      2    5556
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) _MotorASpeed                                          3     1      2    5556
;!                                             22 COMRAM     3     1      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              8     4      4    5219
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
;!       ___aldiv (ARG)
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
;!   _UpdateDir
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
;!   ___lmul
;!     ___aldiv (ARG)
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
;!BANK3              100     4B      4B      11       29.3%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0      C8       9       78.1%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      D9       7       84.8%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     23      6D       5       68.1%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     40      51       1       85.3%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     2AA      20        0.0%
;!DATA                 0      0     2AA       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 319 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   25[BANK0 ] int 
;;  argv            3   27[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  old             1   35[BANK3 ] unsigned char 
;;  old             1   34[BANK3 ] unsigned char 
;;  kd              3    3[BANK3 ] unsigned char 
;;  kp              3    0[BANK3 ] unsigned char 
;;  speed           2   68[BANK3 ] int 
;;  mod             2   66[BANK3 ] int 
;;  old             1   53[BANK3 ] unsigned char 
;;  old             1   52[BANK3 ] unsigned char 
;;  i               2   73[BANK3 ] int 
;;  j               2   64[BANK3 ] int 
;;  i               2   62[BANK3 ] int 
;;  j               2   58[BANK3 ] int 
;;  old             1   70[BANK3 ] unsigned char 
;;  j               2   71[BANK3 ] int 
;;  i               2   60[BANK3 ] int 
;; Return value:  Size  Location     Type
;;                  2   25[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       5       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0      75       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0
;;      Totals:         0      10       0       0      75       0       0       0       0
;;Total ram usage:       85 bytes
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
;;		_UpdateDir
;;		_Wixel
;;		___aldiv
;;		___almod
;;		___awdiv
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___fttol
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
	line	319
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	319
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 26
	line	320
	
l5476:
	call	_initYBOT	;wreg free
	line	322
	
l5478:
	movlw	high(07h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	line	323
	
l5480:; BSR set to: 1

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
	
l5482:
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
	
l5484:
	bsf	((c:3971)),c,3	;volatile
	line	329
	
l5486:
	movlw	high(07h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	line	330
	goto	l5490
	
l238:; BSR set to: 1

	line	335
	
l5488:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	goto	l5490
	
l237:; BSR set to: 0

	line	330
	
l5490:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6691
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6690
	movlw	136
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	19
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6691
	goto	u6690

u6691:
	goto	l5488
u6690:
	goto	l6062
	
l239:; BSR set to: 0

	goto	l6062
	line	336
	
l240:; BSR set to: 0

	line	341
	goto	l6062
	line	342
	
l242:; BSR set to: 0

	line	343
	
l5492:; BSR set to: 0

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
	goto	u6700
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6701
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6701
	goto	u6700

u6701:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6718
u6700:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6718:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	344
	
l5494:; BSR set to: 0

	movlb	0	; () banked
	movf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6721
	goto	u6720

u6721:
	goto	l5498
u6720:
	line	345
	
l5496:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	346
	goto	l5506
	
l243:; BSR set to: 0

	
l5498:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6731
	goto	u6730

u6731:
	goto	l5502
u6730:
	line	347
	
l5500:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	line	348
	goto	l5506
	
l245:; BSR set to: 0

	
l5502:; BSR set to: 0

	movlb	0	; () banked
		incf	((_ma))&0ffh,w
	bnz	u6741
	movlb	0	; () banked
	incf	((_ma+1))&0ffh,w
	btfss	status,2
	goto	u6741
	goto	u6740

u6741:
	goto	l5506
u6740:
	line	349
	
l5504:; BSR set to: 0

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
	goto	u6750
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6751
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6751
	goto	u6750

u6751:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6768
u6750:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6768:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5506
	line	350
	
l247:; BSR set to: 0

	goto	l5506
	line	351
	
l246:; BSR set to: 0

	goto	l5506
	
l244:; BSR set to: 0

	
l5506:; BSR set to: 0

	movlb	0	; () banked
	movf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6771
	goto	u6770

u6771:
	goto	l5510
u6770:
	line	352
	
l5508:; BSR set to: 0

	bcf	((c:3969)),c,0	;volatile
	line	353
	goto	l5518
	
l248:; BSR set to: 0

	
l5510:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6781
	goto	u6780

u6781:
	goto	l5514
u6780:
	line	354
	
l5512:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	355
	goto	l5518
	
l250:; BSR set to: 0

	
l5514:; BSR set to: 0

	movlb	0	; () banked
		incf	((_mb))&0ffh,w
	bnz	u6791
	movlb	0	; () banked
	incf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6791
	goto	u6790

u6791:
	goto	l5518
u6790:
	line	356
	
l5516:; BSR set to: 0

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
	goto	u6800
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6801
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
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
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5518
	line	357
	
l252:; BSR set to: 0

	goto	l5518
	line	359
	
l251:; BSR set to: 0

	goto	l5518
	
l249:; BSR set to: 0

	
l5518:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6821
	goto	u6820

u6821:
	goto	l5524
u6820:
	line	360
	
l5520:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	361
	
l5522:; BSR set to: 0

		movlw	low(STR_2)
	movwf	((c:printf@f)),c
	movlw	high(STR_2)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	goto	l5524
	line	362
	
l253:
	line	364
	
l5524:
	btfsc	((c:3971)),c,6	;volatile
	goto	u6831
	goto	u6830
u6831:
	goto	l254
u6830:
	
l5526:
	movlb	0	; () banked
	movf	((_fa))&0ffh,w
	movlb	0	; () banked
iorwf	((_fa+1))&0ffh,w
	btfss	status,2
	goto	u6841
	goto	u6840

u6841:
	goto	l254
u6840:
	line	365
	
l5528:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(01h)
	movwf	((_fa))&0ffh
	line	366
	
l5530:; BSR set to: 0

	movlb	0	; () banked
		decf	((_ma))&0ffh,w
	movlb	0	; () banked
iorwf	((_ma+1))&0ffh,w
	btfsc	status,2
	goto	u6851
	goto	u6850

u6851:
	goto	l256
u6850:
	
l5532:; BSR set to: 0

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
	goto	l254
	
l256:; BSR set to: 0

	movlb	0	; () banked
	setf	((_ma))&0ffh
	setf	((_ma+1))&0ffh
	goto	l254
	
l258:; BSR set to: 0

	line	367
	
l254:
	line	368
	btfsc	((c:3971)),c,4	;volatile
	goto	u6861
	goto	u6860
u6861:
	goto	l259
u6860:
	
l5534:
	movlb	0	; () banked
	movf	((_fb))&0ffh,w
	movlb	0	; () banked
iorwf	((_fb+1))&0ffh,w
	btfss	status,2
	goto	u6871
	goto	u6870

u6871:
	goto	l259
u6870:
	line	369
	
l5536:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(01h)
	movwf	((_fb))&0ffh
	line	370
	
l5538:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfsc	status,2
	goto	u6881
	goto	u6880

u6881:
	goto	l261
u6880:
	
l5540:; BSR set to: 0

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
	goto	l259
	
l261:; BSR set to: 0

	movlb	0	; () banked
	setf	((_mb))&0ffh
	setf	((_mb+1))&0ffh
	goto	l259
	
l263:; BSR set to: 0

	line	371
	
l259:
	line	372
	btfss	((c:3971)),c,6	;volatile
	goto	u6891
	goto	u6890
u6891:
	goto	l5544
u6890:
	
l5542:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	goto	l5544
	
l264:; BSR set to: 0

	line	373
	
l5544:
	btfss	((c:3971)),c,4	;volatile
	goto	u6901
	goto	u6900
u6901:
	goto	l5548
u6900:
	
l5546:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	goto	l5548
	
l265:; BSR set to: 0

	line	375
	
l5548:
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
	goto	l6062
	line	377
	
l267:
	line	378
	
l5550:
	call	_EnhancedRead	;wreg free
	line	379
	
l5552:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6911
	goto	u6910

u6911:
	goto	l5586
u6910:
	line	380
	
l5554:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	381
	
l5556:; BSR set to: 0

		movlw	low(STR_3)
	movwf	((c:printf@f)),c
	movlw	high(STR_3)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	382
	
l5558:
		movlw	low(STR_4)
	movwf	((c:printf@f)),c
	movlw	high(STR_4)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	383
	movlw	low(01h)
	movwf	((c:_MF)),c
	
l5560:
		movlw	low(main@old)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	384
	
l5562:
	movlb	3	; () banked
	movf	((main@old))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u6921
	goto	u6920
u6921:
	goto	l5566
u6920:
	line	385
	
l5564:; BSR set to: 3

		movlw	low(STR_5)
	movwf	((c:printf@f)),c
	movlw	high(STR_5)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	386
	goto	l5572
	
l269:
	line	387
	
l5566:
	call	_Load	;wreg free
	line	388
	
l5568:
		movlw	low(STR_6)
	movwf	((c:printf@f)),c
	movlw	high(STR_6)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	389
	
l5570:
	call	_ShowMem	;wreg free
	goto	l5572
	line	390
	
l270:
	line	391
	
l5572:
	movlw	low(0)
	movwf	((c:_MF)),c
	
l5574:
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
	goto	u6931
	goto	u6930
u6931:
	goto	l5578
u6930:
	line	393
	
l5576:; BSR set to: 3

		movlw	low(STR_7)
	movwf	((c:printf@f)),c
	movlw	high(STR_7)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	394
	goto	l5584
	
l271:
	line	395
	
l5578:
	call	_Load	;wreg free
	line	396
	
l5580:
		movlw	low(STR_8)
	movwf	((c:printf@f)),c
	movlw	high(STR_8)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	397
	
l5582:
	call	_ShowMem	;wreg free
	goto	l5584
	line	398
	
l272:
	line	400
	
l5584:
		movlw	low(STR_9)
	movwf	((c:printf@f)),c
	movlw	high(STR_9)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	goto	l5586
	line	412
	
l268:
	line	416
	
l5586:
	bcf	((c:3969)),c,0	;volatile
	line	417
	
l5588:
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
	goto	u6940
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6941
	movlw	233
	subwf	 (0+?___almod),c,w
	movlw	3
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6941
	goto	u6940

u6941:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6958
u6940:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6958:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	418
	
l5590:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	419
	
l5592:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u6961
	goto	u6960
u6961:
	goto	l6062
u6960:
	line	420
	
l5594:; BSR set to: 0

		movlw	low(STR_10)
	movwf	((c:printf@f)),c
	movlw	high(STR_10)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	421
	
l5596:
	movlw	high(09h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(09h)
	movwf	((_status))&0ffh
	line	422
	
l5598:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	423
	
l5600:; BSR set to: 0

	call	_initLED	;wreg free
	goto	l6062
	line	424
	
l273:
	line	435
	goto	l6062
	line	436
	
l274:; BSR set to: 0

	line	437
	bsf	((c:3969)),c,5	;volatile
	line	438
	bcf	((c:3968)),c,4	;volatile
	line	439
	bcf	((c:3969)),c,0	;volatile
	line	440
	
l5602:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u6971
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u6970
	movlw	209
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	7
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u6971
	goto	u6970

u6971:
	goto	l6062
u6970:
	
l5604:; BSR set to: 0

	movlw	high(07h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(07h)
	movwf	((_status))&0ffh
	goto	l6062
	
l275:; BSR set to: 1

	line	441
	goto	l6062
	line	442
	
l276:; BSR set to: 1

	line	443
	
l5606:
	call	_EnhancedRead	;wreg free
	line	458
	
l5608:
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movwf	((main@i))&0ffh
	
l5610:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u6981
	movlb	3	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u6980
	movlw	11
	movlb	3	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u6981
	goto	u6980

u6981:
	goto	l277
u6980:
	goto	l5626
	
l5612:; BSR set to: 3

	goto	l5626
	
l277:; BSR set to: 3

	line	461
	movff	(main@i),(main@j)
	movff	(main@i+1),(main@j+1)
	line	462
	
l5614:; BSR set to: 3

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
	goto	u6991
	goto	u6990

u6991:
	goto	l5618
u6990:
	line	463
	
l5616:; BSR set to: 3

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
	goto	l5618
	line	464
	
l279:; BSR set to: 3

	line	465
	
l5618:; BSR set to: 3

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
	goto	u7001
	goto	u7000

u7001:
	goto	l5622
u7000:
	line	466
	
l5620:; BSR set to: 3

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
	goto	l5622
	line	467
	
l280:; BSR set to: 3

	line	458
	
l5622:; BSR set to: 3

	movlb	3	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l5624:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i+1))&0ffh,7
	goto	u7011
	movlb	3	; () banked
	movf	((main@i+1))&0ffh,w
	bnz	u7010
	movlw	11
	movlb	3	; () banked
	subwf	 ((main@i))&0ffh,w
	btfss	status,0
	goto	u7011
	goto	u7010

u7011:
	goto	l277
u7010:
	goto	l5626
	
l278:; BSR set to: 3

	line	470
	
l5626:; BSR set to: 3

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
	goto	u7020
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u7021
	movlw	201
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u7021
	goto	u7020

u7021:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7038
u7020:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7038:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	471
	
l5628:; BSR set to: 0

	movlw	low(0)
	movlb	3	; () banked
	movwf	((_main$416))&0ffh
	
l5630:; BSR set to: 3

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
	goto	u7041
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u7040
	movlw	101
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u7041
	goto	u7040

u7041:
	goto	l5636
u7040:
	
l5632:
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
	goto	u7050
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u7051
	movlw	200
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u7051
	goto	u7050

u7051:
	goto	l5636
u7050:
	
l5634:
	movlw	low(01h)
	movlb	3	; () banked
	movwf	((_main$416))&0ffh
	goto	l5636
	
l282:; BSR set to: 3

	
l5636:
	movlb	3	; () banked
	btfsc	(_main$416)&0ffh,0
	bra	u7065
	bcf	((c:3969)),c,5	;volatile
	bra	u7066
	u7065:
	bsf	((c:3969)),c,5	;volatile
	u7066:

	line	472
	
l5638:
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
	goto	u7071
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u7070
	movlw	100
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u7071
	goto	u7070

u7071:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7088
u7070:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7088:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	474
	
l5640:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u7091
	goto	u7090
u7091:
	goto	l5648
u7090:
	line	475
	
l5642:; BSR set to: 0

		movlw	low(STR_11)
	movwf	((c:printf@f)),c
	movlw	high(STR_11)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	476
	
l5644:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	477
	
l5646:; BSR set to: 0

	movlw	high(06h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(06h)
	movwf	((_status))&0ffh
	goto	l5648
	line	478
	
l283:; BSR set to: 1

	line	479
	
l5648:
	btfsc	((c:3971)),c,4	;volatile
	goto	u7101
	goto	u7100
u7101:
	goto	l6062
u7100:
	line	480
	
l5650:
		movlw	low(STR_12)
	movwf	((c:printf@f)),c
	movlw	high(STR_12)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	481
	
l5652:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	482
	
l5654:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	483
	
l5656:; BSR set to: 0

	movlw	high(01h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(01h)
	movwf	((_status))&0ffh
	line	485
	
l5658:; BSR set to: 1

	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@i_419+1))&0ffh
	movlw	low(0)
	movwf	((main@i_419))&0ffh
	
l5660:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i_419+1))&0ffh,7
	goto	u7111
	movlb	3	; () banked
	movf	((main@i_419+1))&0ffh,w
	bnz	u7110
	movlw	5
	movlb	3	; () banked
	subwf	 ((main@i_419))&0ffh,w
	btfss	status,0
	goto	u7111
	goto	u7110

u7111:
	goto	l5664
u7110:
	goto	l6062
	
l5662:; BSR set to: 3

	goto	l6062
	
l285:; BSR set to: 3

	line	486
	
l5664:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i_419))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i_419+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(main@j_420)
	movff	postdec2,(main@j_420+1)
	line	487
	
l5666:; BSR set to: 3

		movlw	low(STR_13)
	movwf	((c:printf@f)),c
	movlw	high(STR_13)
	movwf	((c:printf@f+1)),c

	movff	(main@j_420),0+((c:?_printf)+02h)
	movff	(main@j_420+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_420))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_420+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_420))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_420+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+06h)
	movff	postdec2,1+((c:?_printf)+06h)
	call	_printf	;wreg free
	line	485
	
l5668:
	movlb	3	; () banked
	infsnz	((main@i_419))&0ffh
	incf	((main@i_419+1))&0ffh
	
l5670:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@i_419+1))&0ffh,7
	goto	u7121
	movlb	3	; () banked
	movf	((main@i_419+1))&0ffh,w
	bnz	u7120
	movlw	5
	movlb	3	; () banked
	subwf	 ((main@i_419))&0ffh,w
	btfss	status,0
	goto	u7121
	goto	u7120

u7121:
	goto	l5664
u7120:
	goto	l6062
	
l286:; BSR set to: 3

	goto	l6062
	line	489
	
l284:; BSR set to: 3

	line	490
	goto	l6062
	line	491
	
l287:; BSR set to: 0

	line	492
	bsf	((c:3969)),c,0	;volatile
	line	493
	bcf	((c:3968)),c,4	;volatile
	line	494
	bcf	((c:3969)),c,5	;volatile
	line	495
	btfss	((c:3971)),c,4	;volatile
	goto	u7131
	goto	u7130
u7131:
	goto	l6062
u7130:
	line	496
	
l5672:; BSR set to: 0

	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6062
	line	497
	
l288:; BSR set to: 1

	line	498
	goto	l6062
	line	499
	
l289:; BSR set to: 1

	line	500
	
l5674:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u7141
	goto	u7140

u7141:
	goto	l5678
u7140:
	line	501
	
l5676:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_rf+1))&0ffh
	movlw	low(01h)
	movwf	((_rf))&0ffh
	line	502
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_gf+1))&0ffh
	movlw	low(01h)
	movwf	((_gf))&0ffh
	line	503
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	goto	l5678
	line	504
	
l290:; BSR set to: 0

	line	505
	
l5678:; BSR set to: 0

		decf	((c:_MF)),c,w
	btfsc	status,2
	goto	u7151
	goto	u7150

u7151:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7168
u7150:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7168:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	506
	
l5680:; BSR set to: 0

	movlw	low(01h)
	movlb	3	; () banked
	movwf	((_main$422))&0ffh
	
l5682:; BSR set to: 3

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
	goto	u7171
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7171
	goto	u7170

u7171:
	goto	l5690
u7170:
	
l5684:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7180
	movf	((c:_line+1)),c,w
	bnz	u7181
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7181
	goto	u7180

u7181:
	goto	l4520
u7180:
	
l5686:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$416)
	movff	??_main+0+1,(_main$416+1)
	goto	l5688
	
l4520:; BSR set to: 0

	movff	(c:_line),(_main$416)
	movff	(c:_line+1),(_main$416+1)
	goto	l5688
	
l4522:; BSR set to: 0

	
l5688:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$416+1))&0ffh,7
	goto	u7191
	movlb	3	; () banked
	movf	((_main$416+1))&0ffh,w
	bnz	u7190
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$416))&0ffh,w
	btfss	status,0
	goto	u7191
	goto	u7190

u7191:
	goto	l5700
u7190:
	goto	l5690
	
l4518:; BSR set to: 3

	
l5690:
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
	goto	u7201
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7201
	goto	u7200

u7201:
	goto	l5698
u7200:
	
l5692:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7210
	movf	((c:_line+1)),c,w
	bnz	u7211
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7211
	goto	u7210

u7211:
	goto	l4526
u7210:
	
l5694:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$422)
	movff	??_main+0+1,(_main$422+1)
	goto	l5696
	
l4526:; BSR set to: 0

	movff	(c:_line),(_main$422)
	movff	(c:_line+1),(_main$422+1)
	goto	l5696
	
l4528:; BSR set to: 0

	
l5696:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$422+1))&0ffh,7
	goto	u7221
	movlb	3	; () banked
	movf	((_main$422+1))&0ffh,w
	bnz	u7220
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$422))&0ffh,w
	btfss	status,0
	goto	u7221
	goto	u7220

u7221:
	goto	l5700
u7220:
	goto	l5698
	
l4524:; BSR set to: 3

	
l5698:
	movlw	low(0)
	movlb	3	; () banked
	movwf	((_main$422))&0ffh
	goto	l5700
	
l292:; BSR set to: 3

	
l5700:; BSR set to: 3

	movlb	3	; () banked
	btfsc	(_main$422)&0ffh,0
	bra	u7235
	bcf	((c:3968)),c,4	;volatile
	bra	u7236
	u7235:
	bsf	((c:3968)),c,4	;volatile
	u7236:

	line	507
	
l5702:
	movf	((c:_MF)),c,w
	btfsc	status,2
	goto	u7241
	goto	u7240
u7241:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7258
u7240:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7258:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	510
	
l5704:; BSR set to: 0

	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	512
	
l5706:
	call	_EnhancedRead	;wreg free
	line	513
	
l5708:
	call	_Line	;wreg free
	line	514
	
l5710:
	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7261
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7260
	movlw	245
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	1
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7261
	goto	u7260

u7261:
	goto	l5740
u7260:
	line	515
	
l5712:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	521
	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@j_425+1))&0ffh
	movlw	low(0)
	movwf	((main@j_425))&0ffh
	
l5714:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j_425+1))&0ffh,7
	goto	u7271
	movlb	3	; () banked
	movf	((main@j_425+1))&0ffh,w
	bnz	u7270
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j_425))&0ffh,w
	btfss	status,0
	goto	u7271
	goto	u7270

u7271:
	goto	l5718
u7270:
	goto	l5738
	
l5716:; BSR set to: 3

	goto	l5738
	
l294:; BSR set to: 3

	line	522
	
l5718:; BSR set to: 3

	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@j_425))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@j_425+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(main@i_424)
	movff	postdec2,(main@i_424+1)
	line	523
	
l5720:; BSR set to: 3

	movff	(main@i_424),(c:___wmul@multiplier)
	movff	(main@i_424+1),(c:___wmul@multiplier+1)
	movff	(main@i_424),(c:___wmul@multiplicand)
	movff	(main@i_424+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2438)
	movff	1+?___wmul,(_main$2438+1)
	
l5722:
	movff	(main@i_424),(c:___wmul@multiplier)
	movff	(main@i_424+1),(c:___wmul@multiplier+1)
	movff	(main@i_424),(c:___wmul@multiplicand)
	movff	(main@i_424+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2439)
	movff	1+?___wmul,(_main$2439+1)
	
l5724:
	movff	(main@i_424),(c:___wmul@multiplier)
	movff	(main@i_424+1),(c:___wmul@multiplier+1)
	movff	(main@i_424),(c:___wmul@multiplicand)
	movff	(main@i_424+1),(c:___wmul@multiplicand+1)
	call	___wmul	;wreg free
	movff	0+?___wmul,(_main$2440)
	movff	1+?___wmul,(_main$2440+1)
	
l5726:
	movff	(_main$2438),(c:___wmul@multiplier)
	movff	(_main$2438+1),(c:___wmul@multiplier+1)
	movlw	high(0384h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0384h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2441))&0ffh
	clrf	((_main$2441+1))&0ffh
	
l5728:; BSR set to: 3

	movff	(_main$2439),(c:___wmul@multiplier)
	movff	(_main$2439+1),(c:___wmul@multiplier+1)
	movlw	high(024h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(024h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2442))&0ffh
	clrf	((_main$2442+1))&0ffh
	
l5730:; BSR set to: 3

	movff	(_main$2440),(c:___wmul@multiplier)
	movff	(_main$2440+1),(c:___wmul@multiplier+1)
	movlw	high(0144h)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0144h)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movf	(0+?___wmul),c,w
	movlb	3	; () banked
	movwf	((_main$2443))&0ffh
	clrf	((_main$2443+1))&0ffh
	
l5732:; BSR set to: 3

		movlw	low(STR_14)
	movwf	((c:printf@f)),c
	movlw	high(STR_14)
	movwf	((c:printf@f+1)),c

	movff	(main@i_424),0+((c:?_printf)+02h)
	movff	(main@i_424+1),1+((c:?_printf)+02h)
	bcf	status,0
	movlb	3	; () banked
	rlcf	((main@i_424))&0ffh,w
	movwf	fsr2l
	movlb	3	; () banked
	rlcf	((main@i_424+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	postinc2,0+((c:?_printf)+04h)
	movff	postdec2,1+((c:?_printf)+04h)
	movff	(_main$2441),0+((c:?_printf)+06h)
	movff	(_main$2441+1),1+((c:?_printf)+06h)
	movff	(_main$2442),0+((c:?_printf)+08h)
	movff	(_main$2442+1),1+((c:?_printf)+08h)
	movff	(_main$2443),0+((c:?_printf)+0Ah)
	movff	(_main$2443+1),1+((c:?_printf)+0Ah)
	call	_printf	;wreg free
	line	521
	
l5734:
	movlb	3	; () banked
	infsnz	((main@j_425))&0ffh
	incf	((main@j_425+1))&0ffh
	
l5736:; BSR set to: 3

	movlb	3	; () banked
	btfsc	((main@j_425+1))&0ffh,7
	goto	u7281
	movlb	3	; () banked
	movf	((main@j_425+1))&0ffh,w
	bnz	u7280
	movlw	2
	movlb	3	; () banked
	subwf	 ((main@j_425))&0ffh,w
	btfss	status,0
	goto	u7281
	goto	u7280

u7281:
	goto	l5718
u7280:
	goto	l5738
	
l295:; BSR set to: 3

	line	525
	
l5738:; BSR set to: 3

		movlw	low(STR_15)
	movwf	((c:printf@f)),c
	movlw	high(STR_15)
	movwf	((c:printf@f+1)),c

	movff	(c:_line),0+((c:?_printf)+02h)
	movff	(c:_line+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	goto	l5740
	line	526
	
l293:
	line	527
	
l5740:
	btfsc	((c:3971)),c,5	;volatile
	goto	u7291
	goto	u7290
u7291:
	goto	l5744
u7290:
	line	528
	
l5742:
	movlw	high(0Ah)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(0Ah)
	movwf	((_status))&0ffh
	goto	l5744
	line	529
	
l296:; BSR set to: 1

	line	530
	
l5744:
	btfsc	((c:3971)),c,6	;volatile
	goto	u7301
	goto	u7300
u7301:
	goto	l5768
u7300:
	line	531
	
l5746:
	movlw	low(0)
	movwf	((c:_MF)),c
	line	532
	
l5748:
		movlw	low(main@old_428)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_428)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	533
	
l5750:
	movlb	3	; () banked
	movf	((main@old_428))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u7311
	goto	u7310
u7311:
	goto	l5756
u7310:
	line	534
	
l5752:; BSR set to: 3

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_RWM))&0ffh
	line	535
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	536
	movlw	high(04h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	537
	
l5754:; BSR set to: 1

		movlw	low(STR_16)
	movwf	((c:printf@f)),c
	movlw	high(STR_16)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	538
	goto	l5768
	
l298:
	line	539
	
l5756:
		movlw	low(STR_17)
	movwf	((c:printf@f)),c
	movlw	high(STR_17)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	540
	
l5758:
	movlw	low(0)
	movwf	((c:_MF)),c
	
l5760:
		movlw	low(main@old_431)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_431)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	541
	
l5762:
	call	_Load	;wreg free
	line	542
	
l5764:
		movlw	low(STR_18)
	movwf	((c:printf@f)),c
	movlw	high(STR_18)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	543
	
l5766:
	call	_ShowMem	;wreg free
	goto	l5768
	line	544
	
l299:
	goto	l5768
	line	546
	
l297:
	line	547
	
l5768:
	btfsc	((c:3971)),c,4	;volatile
	goto	u7321
	goto	u7320
u7321:
	goto	l6062
u7320:
	line	548
	
l5770:
	movlw	low(01h)
	movwf	((c:_MF)),c
	line	549
	
l5772:
		movlw	low(main@old_433)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_433)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	550
	
l5774:
	movlb	3	; () banked
	movf	((main@old_433))&0ffh,w
	movlb	3	; () banked
	btfss	status,2
	goto	u7331
	goto	u7330
u7331:
	goto	l5780
u7330:
	line	551
	
l5776:; BSR set to: 3

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_RWM))&0ffh
	line	552
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	553
	movlw	high(04h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	line	554
	
l5778:; BSR set to: 1

		movlw	low(STR_19)
	movwf	((c:printf@f)),c
	movlw	high(STR_19)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	555
	goto	l6062
	
l301:
	line	556
	
l5780:
		movlw	low(STR_20)
	movwf	((c:printf@f)),c
	movlw	high(STR_20)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	557
	
l5782:
		movlw	low(main@old_436)
	movwf	((c:CheckMem@data)),c
	movlw	high(main@old_436)
	movwf	((c:CheckMem@data+1)),c

	call	_CheckMem	;wreg free
	line	558
	
l5784:
	call	_Load	;wreg free
	line	559
		movlw	low(STR_21)
	movwf	((c:printf@f)),c
	movlw	high(STR_21)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	560
	call	_ShowMem	;wreg free
	goto	l6062
	line	561
	
l302:
	goto	l6062
	line	563
	
l300:
	line	576
	goto	l6062
	line	577
	
l303:; BSR set to: 0

	line	578
	bsf	((c:3969)),c,0	;volatile
	line	579
	bsf	((c:3968)),c,4	;volatile
	line	580
	bsf	((c:3969)),c,5	;volatile
	line	581
	btfss	((c:3971)),c,5	;volatile
	goto	u7341
	goto	u7340
u7341:
	goto	l5790
u7340:
	line	582
	
l5786:; BSR set to: 0

	movlw	high(02h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(02h)
	movwf	((_status))&0ffh
	line	583
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	584
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	585
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME2))&0ffh
	movlw	high(0)
	movwf	((_TIME2+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME2+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME2+3))&0ffh
	line	586
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	587
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	588
	movlw	low(0)
	movlb	1	; () banked
	movwf	((_TIME5))&0ffh
	movlw	high(0)
	movwf	((_TIME5+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME5+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME5+3))&0ffh
	line	589
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_rcount+1))&0ffh
	movlw	low(0)
	movwf	((_rcount))&0ffh
	line	590
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	line	592
	
l5788:; BSR set to: 0

		movlw	low(STR_22)
	movwf	((c:printf@f)),c
	movlw	high(STR_22)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	goto	l5790
	line	593
	
l304:
	line	594
	
l5790:
	btfsc	((c:3971)),c,4	;volatile
	goto	u7351
	goto	u7350
u7351:
	goto	l6062
u7350:
	line	595
	
l5792:
	call	_EreaseAll	;wreg free
	line	596
	
l5794:
		movlw	low(STR_23)
	movwf	((c:printf@f)),c
	movlw	high(STR_23)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	597
	
l5796:
	movlw	high(01h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(01h)
	movwf	((_status))&0ffh
	goto	l6062
	line	598
	
l305:; BSR set to: 1

	line	599
	goto	l6062
	line	600
	
l306:; BSR set to: 1

	line	601
	
l5798:
		decf	((c:_MF)),c,w
	btfsc	status,2
	goto	u7361
	goto	u7360

u7361:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7378
u7360:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7378:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	602
	
l5800:; BSR set to: 0

	movff	(_TIME),(c:___almod@dividend)
	movff	(_TIME+1),(c:___almod@dividend+1)
	movff	(_TIME+2),(c:___almod@dividend+2)
	movff	(_TIME+3),(c:___almod@dividend+3)
	movlw	low(01770h)
	movwf	((c:___almod@divisor)),c
	movlw	high(01770h)
	movwf	((c:___almod@divisor+1)),c
	movlw	low highword(01770h)
	movwf	((c:___almod@divisor+2)),c
	movlw	high highword(01770h)
	movwf	((c:___almod@divisor+3)),c
	call	___almod	;wreg free
	btfsc	(3+?___almod),c,7
	goto	u7380
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u7381
	movlw	185
	subwf	 (0+?___almod),c,w
	movlw	11
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
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	603
	
l5802:; BSR set to: 0

	movf	((c:_MF)),c,w
	btfsc	status,2
	goto	u7401
	goto	u7400
u7401:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7418
u7400:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7418:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	604
	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	605
	
l5804:
	btfsc	((c:3971)),c,5	;volatile
	goto	u7421
	goto	u7420
u7421:
	goto	l5816
u7420:
	line	606
	
l5806:
		movlw	low(STR_24)
	movwf	((c:printf@f)),c
	movlw	high(STR_24)
	movwf	((c:printf@f+1)),c

	movff	(_rcount),0+((c:?_printf)+02h)
	movff	(_rcount+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	line	607
	
l5808:
	movlw	high(05h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(05h)
	movwf	((_status))&0ffh
	line	608
	
l5810:; BSR set to: 1

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	609
	
l5812:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	610
	
l5814:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	goto	l5816
	line	611
	
l307:; BSR set to: 0

	line	612
	
l5816:
	btfsc	((c:3971)),c,6	;volatile
	goto	u7431
	goto	u7430
u7431:
	goto	l6062
u7430:
	
l5818:
	movlb	0	; () banked
	btfsc	((_rcount+1))&0ffh,7
	goto	u7441
	movlb	0	; () banked
	movf	((_rcount+1))&0ffh,w
	bnz	u7440
	movlb	0	; () banked
	decf	((_rcount))&0ffh,w
	btfss	status,0
	goto	u7441
	goto	u7440

u7441:
	goto	l6062
u7440:
	line	613
	
l5820:; BSR set to: 0

		movlw	low(STR_25)
	movwf	((c:printf@f)),c
	movlw	high(STR_25)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	614
	
l5822:
	movff	(_rcount),(c:_TOTAL)
	movff	(_rcount+1),(c:_TOTAL+1)
	line	615
	call	_Save	;wreg free
	line	616
	
l5824:
	movlw	high(03h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(03h)
	movwf	((_status))&0ffh
	goto	l6062
	line	617
	
l308:; BSR set to: 1

	line	618
	goto	l6062
	line	619
	
l309:; BSR set to: 0

	line	620
	bsf	((c:3969)),c,0	;volatile
	line	621
	bsf	((c:3968)),c,4	;volatile
	line	622
	bsf	((c:3969)),c,5	;volatile
	line	623
	btfss	((c:3971)),c,6	;volatile
	goto	u7451
	goto	u7450
u7451:
	goto	l6062
u7450:
	line	624
	
l5826:; BSR set to: 0

	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6062
	line	625
	
l310:; BSR set to: 1

	line	626
	goto	l6062
	line	627
	
l311:; BSR set to: 1

	line	628
	
l5828:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u7461
	goto	u7460

u7461:
	goto	l5832
u7460:
	line	629
	
l5830:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	630
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_f+1))&0ffh
	movlw	low(0)
	movwf	((_f))&0ffh
	goto	l5832
	line	631
	
l312:; BSR set to: 0

	line	632
	
l5832:; BSR set to: 0

		decf	((c:_MF)),c,w
	btfsc	status,2
	goto	u7471
	goto	u7470

u7471:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7488
u7470:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7488:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	633
	
l5834:; BSR set to: 0

	movlb	0	; () banked
	movf	((_f))&0ffh,w
	movlb	0	; () banked
iorwf	((_f+1))&0ffh,w
	btfss	status,2
	goto	u7491
	goto	u7490

u7491:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7508
u7490:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7508:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	634
	
l5836:; BSR set to: 0

	movf	((c:_MF)),c,w
	btfsc	status,2
	goto	u7511
	goto	u7510
u7511:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u7528
u7510:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u7528:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	line	636
	
l5838:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7531
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7530
	movlw	6
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7531
	goto	u7530

u7531:
	goto	l6062
u7530:
	line	637
	
l5840:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	638
	
l5842:
	call	_Line	;wreg free
	line	639
	
l5844:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	640
	
l5846:; BSR set to: 0

	call	_AdvanceLow	;wreg free
	line	642
	
l5848:
	movlb	0	; () banked
	movf	((_f))&0ffh,w
	movlb	0	; () banked
iorwf	((_f+1))&0ffh,w
	btfss	status,2
	goto	u7541
	goto	u7540

u7541:
	goto	l5868
u7540:
	
l5850:; BSR set to: 0

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
	goto	u7551
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7551
	goto	u7550

u7551:
	goto	l5858
u7550:
	
l5852:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7560
	movf	((c:_line+1)),c,w
	bnz	u7561
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7561
	goto	u7560

u7561:
	goto	l320
u7560:
	
l5854:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$445)
	movff	??_main+0+1,(_main$445+1)
	goto	l5856
	
l320:; BSR set to: 0

	movff	(c:_line),(_main$445)
	movff	(c:_line+1),(_main$445+1)
	goto	l5856
	
l322:; BSR set to: 0

	
l5856:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$445+1))&0ffh,7
	goto	u7571
	movlb	3	; () banked
	movf	((_main$445+1))&0ffh,w
	bnz	u7570
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$445))&0ffh,w
	btfss	status,0
	goto	u7571
	goto	u7570

u7571:
	goto	l5866
u7570:
	goto	l5858
	
l318:; BSR set to: 3

	
l5858:
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
	goto	u7581
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7581
	goto	u7580

u7581:
	goto	l5868
u7580:
	
l5860:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7590
	movf	((c:_line+1)),c,w
	bnz	u7591
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7591
	goto	u7590

u7591:
	goto	l324
u7590:
	
l5862:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$446)
	movff	??_main+0+1,(_main$446+1)
	goto	l5864
	
l324:; BSR set to: 0

	movff	(c:_line),(_main$446)
	movff	(c:_line+1),(_main$446+1)
	goto	l5864
	
l326:; BSR set to: 0

	
l5864:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$446+1))&0ffh,7
	goto	u7600
	movlb	3	; () banked
	movf	((_main$446+1))&0ffh,w
	bnz	u7601
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$446))&0ffh,w
	btfsc	status,0
	goto	u7601
	goto	u7600

u7601:
	goto	l5868
u7600:
	goto	l5866
	
l316:; BSR set to: 3

	line	644
	
l5866:; BSR set to: 3

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_f+1))&0ffh
	movlw	low(01h)
	movwf	((_f))&0ffh
	line	645
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	647
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	goto	l5868
	line	650
	
l314:; BSR set to: 0

	line	651
	
l5868:
	movlb	0	; () banked
		decf	((_f))&0ffh,w
	movlb	0	; () banked
iorwf	((_f+1))&0ffh,w
	btfss	status,2
	goto	u7611
	goto	u7610

u7611:
	goto	l5874
u7610:
	line	652
	
l5870:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7621
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7620
	movlw	177
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	4
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7621
	goto	u7620

u7621:
	goto	l5874
u7620:
	line	653
	
l5872:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	654
	movlw	high(02h)
	movlb	0	; () banked
	movwf	((_f+1))&0ffh
	movlw	low(02h)
	movwf	((_f))&0ffh
	goto	l5874
	line	655
	
l328:; BSR set to: 0

	goto	l5874
	line	656
	
l327:; BSR set to: 0

	line	657
	
l5874:; BSR set to: 0

		movlw	2
	movlb	0	; () banked
	xorwf	((_f))&0ffh,w
	movlb	0	; () banked
iorwf	((_f+1))&0ffh,w
	btfss	status,2
	goto	u7631
	goto	u7630

u7631:
	goto	l6062
u7630:
	
l5876:; BSR set to: 0

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
	goto	u7641
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7641
	goto	u7640

u7641:
	goto	l5884
u7640:
	
l5878:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7650
	movf	((c:_line+1)),c,w
	bnz	u7651
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7651
	goto	u7650

u7651:
	goto	l335
u7650:
	
l5880:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$447)
	movff	??_main+0+1,(_main$447+1)
	goto	l5882
	
l335:; BSR set to: 0

	movff	(c:_line),(_main$447)
	movff	(c:_line+1),(_main$447+1)
	goto	l5882
	
l337:; BSR set to: 0

	
l5882:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$447+1))&0ffh,7
	goto	u7661
	movlb	3	; () banked
	movf	((_main$447+1))&0ffh,w
	bnz	u7660
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$447))&0ffh,w
	btfss	status,0
	goto	u7661
	goto	u7660

u7661:
	goto	l5892
u7660:
	goto	l5884
	
l333:; BSR set to: 3

	
l5884:
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
	goto	u7671
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7671
	goto	u7670

u7671:
	goto	l6062
u7670:
	
l5886:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7680
	movf	((c:_line+1)),c,w
	bnz	u7681
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7681
	goto	u7680

u7681:
	goto	l339
u7680:
	
l5888:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$448)
	movff	??_main+0+1,(_main$448+1)
	goto	l5890
	
l339:; BSR set to: 0

	movff	(c:_line),(_main$448)
	movff	(c:_line+1),(_main$448+1)
	goto	l5890
	
l341:; BSR set to: 0

	
l5890:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$448+1))&0ffh,7
	goto	u7690
	movlb	3	; () banked
	movf	((_main$448+1))&0ffh,w
	bnz	u7691
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$448))&0ffh,w
	btfsc	status,0
	goto	u7691
	goto	u7690

u7691:
	goto	l6062
u7690:
	goto	l5892
	
l331:; BSR set to: 3

	line	658
	
l5892:; BSR set to: 3

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
	movff	0+?___aldiv,(_main$2444)
	movff	1+?___aldiv,(_main$2444+1)
	movff	2+?___aldiv,(_main$2444+2)
	movff	3+?___aldiv,(_main$2444+3)
	
	
l5894:
	movff	(_main$2444),(c:___aldiv@dividend)
	movff	(_main$2444+1),(c:___aldiv@dividend+1)
	movff	(_main$2444+2),(c:___aldiv@dividend+2)
	movff	(_main$2444+3),(c:___aldiv@dividend+3)
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

	line	659
	
l5896:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	line	660
	
l5898:; BSR set to: 0

	movlw	high(04h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(04h)
	movwf	((_status))&0ffh
	goto	l6062
	line	661
	
l329:; BSR set to: 1

	goto	l6062
	line	662
	
l313:; BSR set to: 1

	line	663
	goto	l6062
	line	664
	
l342:; BSR set to: 1

	line	665
	
l5900:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u7701
	goto	u7700

u7701:
	goto	l5908
u7700:
	line	666
	
l5902:; BSR set to: 0

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
	movff	0+?___wmul,(_main$2445)
	movff	1+?___wmul,(_main$2445+1)
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
	movff	0+?___wmul,(_main$2446)
	movff	1+?___wmul,(_main$2446+1)
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
	movff	0+?___wmul,(_main$2447)
	movff	1+?___wmul,(_main$2447+1)
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
	movff	0+?___wmul,(_main$2448)
	movff	1+?___wmul,(_main$2448+1)
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
	movff	0+?___wmul,(_main$2449)
	movff	1+?___wmul,(_main$2449+1)
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
	movff	0+?___wmul,(_main$2450)
	movff	1+?___wmul,(_main$2450+1)
	
l5904:
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
	movff	(_main$2447),(c:___awdiv@dividend)
	movff	(_main$2447+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2446),(c:___awdiv@dividend)
	movff	(_main$2446+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2445),(c:___awdiv@dividend)
	movff	(_main$2445+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2450),(c:___awdiv@dividend)
	movff	(_main$2450+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+2+0
	movff	1+?___awdiv,??_main+2+0+1
	movff	(_main$2449),(c:___awdiv@dividend)
	movff	(_main$2449+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2448),(c:___awdiv@dividend)
	movff	(_main$2448+1),(c:___awdiv@dividend+1)
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
	line	667
	
l5906:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	goto	l5908
	line	668
	
l343:; BSR set to: 0

	line	669
	
l5908:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u7711
	goto	u7710
u7711:
	goto	l5912
u7710:
	line	670
	
l5910:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	671
	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l5912
	line	672
	
l344:; BSR set to: 1

	line	682
	
l5912:
	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7721
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7720
	movlw	11
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7721
	goto	u7720

u7721:
	goto	l6062
u7720:
	line	683
	
l5914:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	684
	
l5916:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	685
	
l5918:
	call	_Line	;wreg free
	line	687
	
l5920:
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((_rcount))&0ffh,(0)&7
	goto	u7731
	goto	u7730
u7731:
	goto	l346
u7730:
	line	688
	
l5922:; BSR set to: 0

	movff	(_CURVE_ACEL_TIME),??_main+0+0
	movff	(_CURVE_ACEL_TIME+1),??_main+0+0+1
	movlw	0
	movlb	0	; () banked
	btfsc	(??_main+0+0+1)&0ffh,7
	movlw	255
	movwf	(??_main+0+0+2)&0ffh
	movwf	(??_main+0+0+3)&0ffh
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
		movf	(??_main+0+0)&0ffh,w
	subwf	(0+?___aldiv),c,w
	movlb	0	; () banked
	movf	(??_main+0+1)&0ffh,w
	subwfb	(1+?___aldiv),c,w
	movlb	0	; () banked
	movf	(??_main+0+2)&0ffh,w
	subwfb	(2+?___aldiv),c,w
	movf	(3+?___aldiv),c,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+4+0)&0ffh
	movlb	0	; () banked
	movf	(??_main+0+3)&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+4+0)&0ffh,w
	btfsc	status,0
	goto	u7741
	goto	u7740

u7741:
	goto	l347
u7740:
	line	690
	
l5924:; BSR set to: 0

	lfsr	2,(_VEL)+0Ah
	movff	postinc2,??_main+0+0
	movff	postdec2,??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movlb	1	; () banked
	movf	(0+(_VEL+02h))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh
	movlb	1	; () banked
	movf	(1+(_VEL+02h))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh
	movff	??_main+0+0,(c:___lmul@multiplier)
	movff	??_main+0+1,(c:___lmul@multiplier+1)
	movlw	0
	btfsc	((c:___lmul@multiplier+1)),c,7
	movlw	-1
	movwf	((c:___lmul@multiplier+2)),c
	movwf	((c:___lmul@multiplier+3)),c
	movlw	low(06h)
	movwf	((c:___aldiv@divisor)),c
	movlw	high(06h)
	movwf	((c:___aldiv@divisor+1)),c
	movlw	low highword(06h)
	movwf	((c:___aldiv@divisor+2)),c
	movlw	high highword(06h)
	movwf	((c:___aldiv@divisor+3)),c
	movff	(_TIME4),(c:___aldiv@dividend)
	movff	(_TIME4+1),(c:___aldiv@dividend+1)
	movff	(_TIME4+2),(c:___aldiv@dividend+2)
	movff	(_TIME4+3),(c:___aldiv@dividend+3)
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:___lmul@multiplicand)
	movff	1+?___aldiv,(c:___lmul@multiplicand+1)
	movff	2+?___aldiv,(c:___lmul@multiplicand+2)
	movff	3+?___aldiv,(c:___lmul@multiplicand+3)
	
	call	___lmul	;wreg free
	movff	0+?___lmul,(_main$2444)
	movff	1+?___lmul,(_main$2444+1)
	movff	2+?___lmul,(_main$2444+2)
	movff	3+?___lmul,(_main$2444+3)
	
	
l5926:
	movff	(_main$2444),(c:___aldiv@dividend)
	movff	(_main$2444+1),(c:___aldiv@dividend+1)
	movff	(_main$2444+2),(c:___aldiv@dividend+2)
	movff	(_main$2444+3),(c:___aldiv@dividend+3)
	movff	(_CURVE_ACEL_TIME),(c:___aldiv@divisor)
	movff	(_CURVE_ACEL_TIME+1),(c:___aldiv@divisor+1)
	movlw	0
	btfsc	((c:___aldiv@divisor+1)),c,7
	movlw	-1
	movwf	((c:___aldiv@divisor+2)),c
	movwf	((c:___aldiv@divisor+3)),c
	call	___aldiv	;wreg free
	movlb	1	; () banked
	movf	(0+(_VEL+0Ah))&0ffh,w
	addwf	(0+?___aldiv),c,w
	movwf	((c:_speed)),c
	movlb	1	; () banked
	movf	(1+(_VEL+0Ah))&0ffh,w
	addwfc	(1+?___aldiv),c,w
	movwf	1+((c:_speed)),c
	line	691
	
l5928:; BSR set to: 1

	bcf	((c:3969)),c,0	;volatile
	line	692
	
l5930:; BSR set to: 1

	bcf	((c:3969)),c,5	;volatile
	line	693
	
l5932:; BSR set to: 1

	bcf	((c:3968)),c,4	;volatile
	line	694
	goto	l348
	
l347:; BSR set to: 0

	line	695
	bsf	((c:3969)),c,0	;volatile
	line	696
	bcf	((c:3969)),c,5	;volatile
	line	697
	bcf	((c:3968)),c,4	;volatile
	line	698
	movff	0+(_VEL+02h),(c:_speed)
	movff	1+(_VEL+02h),(c:_speed+1)
	line	699
	
l348:
	line	700
	movff	0+(_VKP+03h),(_kp)
	movff	1+(_VKP+03h),(_kp+1)
	movff	2+(_VKP+03h),(_kp+2)
	line	701
	movff	0+(_VKD+03h),(_kd)
	movff	1+(_VKD+03h),(_kd+1)
	movff	2+(_VKD+03h),(_kd+2)
	line	703
	goto	l5934
	
l346:; BSR set to: 0

	line	704
	bcf	((c:3969)),c,0	;volatile
	line	705
	bcf	((c:3969)),c,5	;volatile
	line	706
	bsf	((c:3968)),c,4	;volatile
	line	708
	movff	0+(_VEL+0Ah),(c:_speed)
	movff	1+(_VEL+0Ah),(c:_speed+1)
	line	709
	movff	0+(_VKP+0Fh),(_kp)
	movff	1+(_VKP+0Fh),(_kp+1)
	movff	2+(_VKP+0Fh),(_kp+2)
	line	710
	movff	0+(_VKD+0Fh),(_kd)
	movff	1+(_VKD+0Fh),(_kd+1)
	movff	2+(_VKD+0Fh),(_kd+2)
	goto	l5934
	line	711
	
l349:; BSR set to: 0

	line	716
	
l5934:
	call	_UpdateDir	;wreg free
	line	737
	
l5936:
	movlb	0	; () banked
	movf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7751
	goto	u7750

u7751:
	goto	l5970
u7750:
	line	738
	
l5938:; BSR set to: 0

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
	goto	u7761
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7761
	goto	u7760

u7761:
	goto	l5946
u7760:
	
l5940:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7770
	movf	((c:_line+1)),c,w
	bnz	u7771
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7771
	goto	u7770

u7771:
	goto	l357
u7770:
	
l5942:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$451)
	movff	??_main+0+1,(_main$451+1)
	goto	l5944
	
l357:; BSR set to: 0

	movff	(c:_line),(_main$451)
	movff	(c:_line+1),(_main$451+1)
	goto	l5944
	
l359:; BSR set to: 0

	
l5944:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$451+1))&0ffh,7
	goto	u7781
	movlb	3	; () banked
	movf	((_main$451+1))&0ffh,w
	bnz	u7780
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$451))&0ffh,w
	btfss	status,0
	goto	u7781
	goto	u7780

u7781:
	goto	l5954
u7780:
	goto	l5946
	
l355:; BSR set to: 3

	
l5946:
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
	goto	u7791
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7791
	goto	u7790

u7791:
	goto	l5970
u7790:
	
l5948:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7800
	movf	((c:_line+1)),c,w
	bnz	u7801
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7801
	goto	u7800

u7801:
	goto	l361
u7800:
	
l5950:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$452)
	movff	??_main+0+1,(_main$452+1)
	goto	l5952
	
l361:; BSR set to: 0

	movff	(c:_line),(_main$452)
	movff	(c:_line+1),(_main$452+1)
	goto	l5952
	
l363:; BSR set to: 0

	
l5952:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$452+1))&0ffh,7
	goto	u7810
	movlb	3	; () banked
	movf	((_main$452+1))&0ffh,w
	bnz	u7811
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$452))&0ffh,w
	btfsc	status,0
	goto	u7811
	goto	u7810

u7811:
	goto	l5970
u7810:
	goto	l5954
	
l353:; BSR set to: 3

	line	739
	
l5954:; BSR set to: 3

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(01h)
	movwf	((_flag_line))&0ffh
	line	740
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	741
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME4))&0ffh
	movlw	high(0)
	movwf	((_TIME4+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME4+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME4+3))&0ffh
	line	742
	
l5956:; BSR set to: 0

	btg	((c:3968)),c,4	;volatile
	line	743
	
l5958:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	line	744
	
l5960:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((_rcount))&0ffh,(0)&7
	goto	u7821
	goto	u7820
u7821:
	goto	l5964
u7820:
	line	745
	
l5962:; BSR set to: 0

		movlw	low(STR_27)
	movwf	((c:printf@f)),c
	movlw	high(STR_27)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	746
	goto	l5968
	
l364:
	line	747
	
l5964:
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
	movff	0+?___wmul,(_main$2445)
	movff	1+?___wmul,(_main$2445+1)
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
	movff	0+?___wmul,(_main$2446)
	movff	1+?___wmul,(_main$2446+1)
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
	movff	0+?___wmul,(_main$2447)
	movff	1+?___wmul,(_main$2447+1)
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
	movff	0+?___wmul,(_main$2448)
	movff	1+?___wmul,(_main$2448+1)
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
	movff	0+?___wmul,(_main$2449)
	movff	1+?___wmul,(_main$2449+1)
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
	movff	0+?___wmul,(_main$2450)
	movff	1+?___wmul,(_main$2450+1)
	
l5966:
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
	movff	(_main$2447),(c:___awdiv@dividend)
	movff	(_main$2447+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+0+0
	movff	1+?___awdiv,??_main+0+0+1
	movff	(_main$2446),(c:___awdiv@dividend)
	movff	(_main$2446+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2445),(c:___awdiv@dividend)
	movff	(_main$2445+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2450),(c:___awdiv@dividend)
	movff	(_main$2450+1),(c:___awdiv@dividend+1)
	movlw	high(02h)
	movwf	((c:___awdiv@divisor+1)),c
	movlw	low(02h)
	movwf	((c:___awdiv@divisor)),c
	call	___awdiv	;wreg free
	movff	0+?___awdiv,??_main+2+0
	movff	1+?___awdiv,??_main+2+0+1
	movff	(_main$2449),(c:___awdiv@dividend)
	movff	(_main$2449+1),(c:___awdiv@dividend+1)
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
	movff	(_main$2448),(c:___awdiv@dividend)
	movff	(_main$2448+1),(c:___awdiv@dividend+1)
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
	goto	l5968
	line	748
	
l365:
	line	749
	
l5968:
		movlw	low(STR_29)
	movwf	((c:printf@f)),c
	movlw	high(STR_29)
	movwf	((c:printf@f+1)),c

	movff	(_rcount),0+((c:?_printf)+02h)
	movff	(_rcount+1),1+((c:?_printf)+02h)
	call	_printf	;wreg free
	goto	l5970
	line	750
	
l351:
	goto	l5970
	line	751
	
l350:
	line	752
	
l5970:
	movlb	0	; () banked
		decf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7831
	goto	u7830

u7831:
	goto	l5976
u7830:
	line	753
	
l5972:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7841
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7840
	movlw	177
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	4
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7841
	goto	u7840

u7841:
	goto	l5976
u7840:
	line	754
	
l5974:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	755
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	goto	l5976
	line	756
	
l367:; BSR set to: 0

	goto	l5976
	line	757
	
l366:; BSR set to: 0

	line	758
	
l5976:; BSR set to: 0

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
	bnz	u7851
	movlb	0	; () banked
movf	((_rcount+1))&0ffh,w
	movlb	0	; () banked
xorwf	(??_main+2+1)&0ffh,w
	btfss	status,2
	goto	u7851
	goto	u7850

u7851:
	goto	l6062
u7850:
	line	759
	
l5978:; BSR set to: 0

		movlw	low(STR_30)
	movwf	((c:printf@f)),c
	movlw	high(STR_30)
	movwf	((c:printf@f+1)),c

	call	_printf	;wreg free
	line	760
	
l5980:
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	761
	
l5982:; BSR set to: 0

	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6062
	line	762
	
l368:; BSR set to: 1

	goto	l6062
	line	763
	
l345:; BSR set to: 1

	line	764
	goto	l6062
	line	767
	
l369:; BSR set to: 0

	line	768
	btfsc	((c:3971)),c,6	;volatile
	goto	u7861
	goto	u7860
u7861:
	goto	l5986
u7860:
	line	769
	
l5984:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	770
	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l5986
	line	771
	
l370:; BSR set to: 1

	line	772
	
l5986:
	bsf	((c:3969)),c,0	;volatile
	line	774
	
l5988:
	bcf	((c:3969)),c,5	;volatile
	line	775
	
l5990:
	movlb	0	; () banked
	btfsc	((_TIME3+3))&0ffh,7
	goto	u7871
	movlb	0	; () banked
	movf	((_TIME3+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME3+1))&0ffh,w
	bnz	u7870
	movlw	6
	movlb	0	; () banked
	subwf	 ((_TIME3))&0ffh,w
	btfss	status,0
	goto	u7871
	goto	u7870

u7871:
	goto	l6062
u7870:
	line	776
	
l5992:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME3))&0ffh
	movlw	high(0)
	movwf	((_TIME3+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME3+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME3+3))&0ffh
	line	777
	
l5994:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	778
	
l5996:
	call	_Line	;wreg free
	goto	l372
	line	784
	
l5998:
	line	786
	
l372:
	line	787
	movlb	0	; () banked
	
	movlb	0	; () banked
	btfsc	((_rcount))&0ffh,(0)&7
	goto	u7881
	goto	u7880
u7881:
	goto	l6002
u7880:
	line	788
	
l6000:; BSR set to: 0

	movlw	high(0)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(0)
	movwf	((main@mod))&0ffh
	line	789
	goto	l6004
	
l373:; BSR set to: 3

	line	790
	
l6002:
	movlw	high(01h)
	movlb	3	; () banked
	movwf	((main@mod+1))&0ffh
	movlw	low(01h)
	movwf	((main@mod))&0ffh
	goto	l6004
	line	791
	
l374:; BSR set to: 3

	line	792
	
l6004:; BSR set to: 3

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
	line	793
	
l6006:; BSR set to: 3

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
	line	794
	
l6008:
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
	line	796
	
l6010:
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
	line	797
	
l6012:; BSR set to: 0

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
	line	799
	
l6014:
	btfsc	((c:_formula+1)),c,7
	goto	u7891
	movf	((c:_formula+1)),c,w
	bnz	u7890
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u7891
	goto	u7890

u7891:
	goto	l6018
u7890:
	line	800
	
l6016:
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
	line	801
	goto	l6020
	
l375:
	line	802
	
l6018:
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
	goto	l6020
	line	803
	
l376:
	line	804
	
l6020:
	movlb	0	; () banked
	movf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7901
	goto	u7900

u7901:
	goto	l6044
u7900:
	line	805
	
l6022:; BSR set to: 0

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
	goto	u7911
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7911
	goto	u7910

u7911:
	goto	l6030
u7910:
	
l6024:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7920
	movf	((c:_line+1)),c,w
	bnz	u7921
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7921
	goto	u7920

u7921:
	goto	l384
u7920:
	
l6026:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$461)
	movff	??_main+0+1,(_main$461+1)
	goto	l6028
	
l384:; BSR set to: 0

	movff	(c:_line),(_main$461)
	movff	(c:_line+1),(_main$461+1)
	goto	l6028
	
l386:; BSR set to: 0

	
l6028:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$461+1))&0ffh,7
	goto	u7931
	movlb	3	; () banked
	movf	((_main$461+1))&0ffh,w
	bnz	u7930
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$461))&0ffh,w
	btfss	status,0
	goto	u7931
	goto	u7930

u7931:
	goto	l6038
u7930:
	goto	l6030
	
l382:; BSR set to: 3

	
l6030:
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
	goto	u7941
	movlw	245
	subwf	 postinc2,w
	movlw	1
	subwfb	postinc2,w
	btfss	status,0
	goto	u7941
	goto	u7940

u7941:
	goto	l6044
u7940:
	
l6032:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u7950
	movf	((c:_line+1)),c,w
	bnz	u7951
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u7951
	goto	u7950

u7951:
	goto	l388
u7950:
	
l6034:; BSR set to: 0

	movff	(c:_line),??_main+0+0
	movff	(c:_line+1),??_main+0+0+1
	movlb	0	; () banked
	comf	(??_main+0+0)&0ffh
	comf	(??_main+0+1)&0ffh
	infsnz	(??_main+0+0)&0ffh
	incf	(??_main+0+1)&0ffh
	movff	??_main+0+0,(_main$462)
	movff	??_main+0+1,(_main$462+1)
	goto	l6036
	
l388:; BSR set to: 0

	movff	(c:_line),(_main$462)
	movff	(c:_line+1),(_main$462+1)
	goto	l6036
	
l390:; BSR set to: 0

	
l6036:; BSR set to: 0

	movlb	3	; () banked
	btfsc	((_main$462+1))&0ffh,7
	goto	u7960
	movlb	3	; () banked
	movf	((_main$462+1))&0ffh,w
	bnz	u7961
	movlw	50
	movlb	3	; () banked
	subwf	 ((_main$462))&0ffh,w
	btfsc	status,0
	goto	u7961
	goto	u7960

u7961:
	goto	l6044
u7960:
	goto	l6038
	
l380:; BSR set to: 3

	line	806
	
l6038:; BSR set to: 3

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(01h)
	movwf	((_flag_line))&0ffh
	line	807
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	808
	
l6040:; BSR set to: 0

	btg	((c:3968)),c,4	;volatile
	line	809
	
l6042:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((_rcount))&0ffh
	incf	((_rcount+1))&0ffh
	goto	l6044
	line	811
	
l378:; BSR set to: 0

	goto	l6044
	line	812
	
l377:; BSR set to: 0

	line	813
	
l6044:
	movlb	0	; () banked
		decf	((_flag_line))&0ffh,w
	movlb	0	; () banked
iorwf	((_flag_line+1))&0ffh,w
	btfss	status,2
	goto	u7971
	goto	u7970

u7971:
	goto	l6050
u7970:
	line	814
	
l6046:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_TIME+3))&0ffh,7
	goto	u7981
	movlb	0	; () banked
	movf	((_TIME+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME+2))&0ffh,w
	bnz	u7980
	movlw	185
	movlb	0	; () banked
	subwf	 ((_TIME))&0ffh,w
	movlw	11
	movlb	0	; () banked
	subwfb	((_TIME+1))&0ffh,w
	btfss	status,0
	goto	u7981
	goto	u7980

u7981:
	goto	l6050
u7980:
	line	815
	
l6048:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	816
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_flag_line+1))&0ffh
	movlw	low(0)
	movwf	((_flag_line))&0ffh
	goto	l6050
	line	817
	
l392:; BSR set to: 0

	goto	l6050
	line	818
	
l391:; BSR set to: 0

	line	819
	
l6050:; BSR set to: 0

		movlw	7
	movlb	0	; () banked
	xorwf	((_rcount))&0ffh,w
	movlb	0	; () banked
iorwf	((_rcount+1))&0ffh,w
	btfss	status,2
	goto	u7991
	goto	u7990

u7991:
	goto	l6054
u7990:
	line	820
	
l6052:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	line	821
	movlw	high(08h)
	movlb	1	; () banked
	movwf	((_status+1))&0ffh
	movlw	low(08h)
	movwf	((_status))&0ffh
	goto	l6054
	line	822
	
l393:; BSR set to: 1

	line	823
	
l6054:
	movlb	0	; () banked
	btfsc	((_TIME2+3))&0ffh,7
	goto	u8001
	movlb	0	; () banked
	movf	((_TIME2+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_TIME2+2))&0ffh,w
	bnz	u8000
	movlw	233
	movlb	0	; () banked
	subwf	 ((_TIME2))&0ffh,w
	movlw	3
	movlb	0	; () banked
	subwfb	((_TIME2+1))&0ffh,w
	btfss	status,0
	goto	u8001
	goto	u8000

u8001:
	goto	l6058
u8000:
	line	827
	
l6056:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME2))&0ffh
	movlw	high(0)
	movwf	((_TIME2+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME2+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME2+3))&0ffh
	goto	l6058
	line	828
	
l394:; BSR set to: 0

	line	829
	
l6058:; BSR set to: 0

	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	goto	l6062
	line	830
	
l371:; BSR set to: 0

	line	832
	goto	l6062
	line	833
	
l6060:; BSR set to: 0

	goto	l6062
	line	341
	
l241:; BSR set to: 0

	
l6062:
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
	goto	l6100
	goto	l6062
	
l6100:; BSR set to: 0

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
	goto	l5492
	xorlw	1^0	; case 1
	skipnz
	goto	l287
	xorlw	2^1	; case 2
	skipnz
	goto	l5900
	xorlw	3^2	; case 3
	skipnz
	goto	l309
	xorlw	4^3	; case 4
	skipnz
	goto	l5798
	xorlw	5^4	; case 5
	skipnz
	goto	l5828
	xorlw	6^5	; case 6
	skipnz
	goto	l274
	xorlw	7^6	; case 7
	skipnz
	goto	l5550
	xorlw	8^7	; case 8
	skipnz
	goto	l5674
	xorlw	9^8	; case 9
	skipnz
	goto	l5606
	xorlw	10^9	; case 10
	skipnz
	goto	l303
	xorlw	11^10	; case 11
	skipnz
	goto	l369
	goto	l6062

	line	833
	
l266:; BSR set to: 0

	goto	l6062
	line	834
	
l395:; BSR set to: 0

	line	336
	goto	l6062
	
l396:; BSR set to: 0

	line	835
	
l397:; BSR set to: 0

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_initYBOT

;; *************** function _initYBOT *****************
;; Defined at:
;;		line 103 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
	line	103
global __ptext1
__ptext1:
psect	text1
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	103
	global	__size_of_initYBOT
	__size_of_initYBOT	equ	__end_of_initYBOT-_initYBOT
	
_initYBOT:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	104
	
l5218:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((_TIME))&0ffh
	movlw	high(0)
	movwf	((_TIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_TIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_TIME+3))&0ffh
	line	105
	
l5220:; BSR set to: 0

	call	_ResetCounter	;wreg free
	line	106
	
l5222:
	call	_configurations_init	;wreg free
	line	107
	
l5224:
	call	_InitAnalog	;wreg free
	line	108
	
l5226:
	call	_InitTIMERS	;wreg free
	line	109
	
l5228:
	call	_MotorsPWM	;wreg free
	line	110
	
l90:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initYBOT
	__end_of_initYBOT:
	signat	_initYBOT,88
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 35 in file "/home/newtonis/Robots/Rayito2/config.c"
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
	
l4842:
		bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	39
	
l4844:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	42
	
l4846:
	bcf	((c:3949)),c,3	;volatile
	line	43
	
l4848:
	bsf	((c:3951)),c,3	;volatile
	line	44
	
l509:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,88
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 112 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text3,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	112
global __ptext3
__ptext3:
psect	text3
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	112
	global	__size_of_ResetCounter
	__size_of_ResetCounter	equ	__end_of_ResetCounter-_ResetCounter
	
_ResetCounter:
;incstack = 0
	opt	stack 28
	line	113
	
l4840:
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
	
l93:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ResetCounter
	__end_of_ResetCounter:
	signat	_ResetCounter,88
	global	_MotorsPWM

;; *************** function _MotorsPWM *****************
;; Defined at:
;;		line 144 in file "/home/newtonis/Robots/Rayito2/config.c"
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
	
l4936:
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
	
l4938:
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
	
l4940:
	bcf	((c:4042)),c,2	;volatile
	line	161
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	162
	
l4942:
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
	
l518:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsPWM
	__end_of_MotorsPWM:
	signat	_MotorsPWM,88
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 46 in file "/home/newtonis/Robots/Rayito2/config.c"
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
	
l4860:
	bcf	((c:4053)),c,7	;volatile
	line	48
	bcf	((c:4053)),c,6	;volatile
	line	49
	bcf	((c:4053)),c,5	;volatile
	line	51
	bsf	((c:4053)),c,3	;volatile
	line	52
	
l4862:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	53
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	56
	
l4864:
	bsf	((c:4081)),c,2	;volatile
	line	57
	
l4866:
	bcf	((c:4048)),c,7	;volatile
	line	58
	
l4868:
	bsf	((c:4082)),c,5	;volatile
	line	62
	
l4870:
	bsf	((c:4082)),c,7	;volatile
	line	64
	
l4872:
	bsf	((c:4053)),c,7	;volatile
	line	66
	
l4874:
	bcf	((c:4045)),c,0	;volatile
	line	67
	
l4876:
	bcf	((c:4045)),c,7	;volatile
	line	68
	
l4878:
	bcf	((c:4045)),c,6	;volatile
	line	69
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	70
	
l4880:
	bcf	((c:4045)),c,3	;volatile
	line	71
	
l4882:
	bcf	((c:4045)),c,1	;volatile
	line	72
	
l4884:
	bsf	((c:4045)),c,0	;volatile
	line	74
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	75
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	83
	
l4886:
	bcf	((c:3987)),c,5	;volatile
	line	85
	
l4888:
	bcf	((c:3986)),c,4	;volatile
	line	86
	
l4890:
	bcf	((c:3987)),c,0	;volatile
	line	88
	
l4892:
	bsf	((c:3989)),c,4	;volatile
	line	89
	
l4894:
	bsf	((c:3989)),c,5	;volatile
	line	90
	
l4896:
	bsf	((c:3989)),c,6	;volatile
	line	93
	
l4898:
	bcf	((c:3989)),c,1	;volatile
	line	94
	
l4900:
	bcf	((c:3989)),c,2	;volatile
	line	95
	
l4902:
	bsf	((c:3989)),c,0	;volatile
	line	96
	
l4904:
	bcf	((c:3989)),c,3	;volatile
	line	99
	
l4906:
	bcf	((c:3988)),c,1	;volatile
	line	100
	
l4908:
	bcf	((c:3988)),c,2	;volatile
	line	103
	
l4910:
	bsf	((c:3986)),c,0	;volatile
	line	104
	
l4912:
	bsf	((c:3986)),c,1	;volatile
	line	105
	
l4914:
	bsf	((c:3986)),c,2	;volatile
	line	106
	
l4916:
	bsf	((c:3986)),c,3	;volatile
	line	107
	
l4918:
	bsf	((c:3986)),c,5	;volatile
	line	109
	
l4920:
	bsf	((c:3990)),c,0	;volatile
	line	110
	
l4922:
	bsf	((c:3990)),c,1	;volatile
	line	111
	
l4924:
	bsf	((c:3990)),c,2	;volatile
	line	112
	
l4926:
	bsf	((c:3987)),c,2	;volatile
	line	114
	
l4928:
	bsf	((c:3987)),c,1	;volatile
	line	119
	
l4930:
	bcf	((c:3988)),c,6	;volatile
	line	120
	
l4932:
	bsf	((c:3988)),c,7	;volatile
	line	122
	
l4934:
	bsf	((c:3972)),c,7	;volatile
	line	123
	
l512:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,88
	global	_InitAnalog

;; *************** function _InitAnalog *****************
;; Defined at:
;;		line 125 in file "/home/newtonis/Robots/Rayito2/config.c"
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
	
l4850:
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
	
l4852:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	139
	
l4854:
		bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	140
	
l4856:
	bcf	((c:4034)),c,1	;volatile
	line	141
	
l4858:
	bsf	((c:4034)),c,0	;volatile
	line	142
	
l515:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,88
	global	_initLED

;; *************** function _initLED *****************
;; Defined at:
;;		line 135 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
	line	135
global __ptext7
__ptext7:
psect	text7
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	135
	global	__size_of_initLED
	__size_of_initLED	equ	__end_of_initLED-_initLED
	
_initLED:
;incstack = 0
	opt	stack 29
	line	136
	
l5230:
	movlw	high(0)
	movwf	((c:_x+1)),c
	movlw	low(0)
	movwf	((c:_x)),c
	
l5232:
	btfsc	((c:_x+1)),c,7
	goto	u6371
	movf	((c:_x+1)),c,w
	bnz	u6370
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6371
	goto	u6370

u6371:
	goto	l5236
u6370:
	goto	l102
	
l5234:
	goto	l102
	
l100:
	line	137
	
l5236:
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
	line	138
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
	line	136
	
l5238:
	infsnz	((c:_x)),c
	incf	((c:_x+1)),c
	
l5240:
	btfsc	((c:_x+1)),c,7
	goto	u6381
	movf	((c:_x+1)),c,w
	bnz	u6380
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6381
	goto	u6380

u6381:
	goto	l5236
u6380:
	goto	l102
	
l101:
	line	140
	
l102:
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
psect	text8,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/almod.c"
	line	8
global __ptext8
__ptext8:
psect	text8
	file	"/opt/microchip/xc8/v1.34/sources/common/almod.c"
	line	8
	global	__size_of___almod
	__size_of___almod	equ	__end_of___almod-___almod
	
___almod:
;incstack = 0
	opt	stack 29
	line	13
	
l5440:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l5442:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u6630
	goto	u6631

u6631:
	goto	l5448
u6630:
	line	15
	
l5444:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l5446:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l5448
	line	17
	
l710:
	line	18
	
l5448:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u6640
	goto	u6641

u6641:
	goto	l5452
u6640:
	line	19
	
l5450:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l5452
	
l711:
	line	20
	
l5452:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u6651
	goto	u6650

u6651:
	goto	l5468
u6650:
	line	21
	
l5454:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l5458
	
l714:
	line	23
	
l5456:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l5458
	line	25
	
l713:
	line	22
	
l5458:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u6661
	goto	u6660
u6661:
	goto	l5456
u6660:
	goto	l5460
	
l715:
	goto	l5460
	line	26
	
l716:
	line	27
	
l5460:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u6671
	goto	u6670

u6671:
	goto	l5464
u6670:
	line	28
	
l5462:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l5464
	
l717:
	line	29
	
l5464:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l5466:
	decfsz	((c:___almod@counter)),c
	
	goto	l5460
	goto	l5468
	
l718:
	goto	l5468
	line	31
	
l712:
	line	32
	
l5468:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u6681
	goto	u6680
u6681:
	goto	l5472
u6680:
	line	33
	
l5470:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l5472
	
l719:
	line	34
	
l5472:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l720
	
l5474:
	line	35
	
l720:
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
	
l5400:
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
	
l5402:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	17
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	18
	
l5404:
	bcf	((c:4012)),c,7	;volatile
	line	19
	
l5406:
	bcf	((c:4012)),c,6	;volatile
	line	20
	
l5408:
	bsf	((c:4012)),c,5	;volatile
	line	21
	
l5410:
	bcf	((c:4012)),c,4	;volatile
	line	23
	
l5412:
	bcf	((c:4012)),c,2	;volatile
	line	24
	
l5414:
	bcf	((c:4011)),c,6	;volatile
	line	25
	
l5416:
	bsf	((c:4011)),c,4	;volatile
	line	26
	
l5418:
	bsf	((c:4011)),c,7	;volatile
	line	28
	
l500:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,88
	global	_UpdateDir

;; *************** function _UpdateDir *****************
;; Defined at:
;;		line 237 in file "/home/newtonis/Robots/Rayito2/main.c"
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
psect	text10,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	237
global __ptext10
__ptext10:
psect	text10
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	237
	global	__size_of_UpdateDir
	__size_of_UpdateDir	equ	__end_of_UpdateDir-_UpdateDir
	
_UpdateDir:
;incstack = 0
	opt	stack 26
	line	238
	
l5290:
	movff	(c:_last),??_UpdateDir+0+0
	movff	(c:_last+1),??_UpdateDir+0+0+1
	comf	(??_UpdateDir+0+0),c
	comf	(??_UpdateDir+0+1),c
	infsnz	(??_UpdateDir+0+0),c
	incf	(??_UpdateDir+0+1),c
	movf	((c:_line)),c,w
	addwf	(??_UpdateDir+0+0),c,w
	movwf	((c:_der)),c
	movf	((c:_line+1)),c,w
	addwfc	(??_UpdateDir+0+1),c,w
	movwf	1+((c:_der)),c
	line	239
	
l5292:
	movff	(_kd),(c:___ftmul@f2)
	movff	(_kd+1),(c:___ftmul@f2+1)
	movff	(_kd+2),(c:___ftmul@f2+2)
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
	movff	(_kp),(c:___ftmul@f2)
	movff	(_kp+1),(c:___ftmul@f2+1)
	movff	(_kp+2),(c:___ftmul@f2+2)
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
	line	240
	
l5294:
	btfsc	((c:_formula+1)),c,7
	goto	u6461
	movf	((c:_formula+1)),c,w
	bnz	u6460
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u6461
	goto	u6460

u6461:
	goto	l5298
u6460:
	line	241
	
l5296:
	movff	(c:_formula),??_UpdateDir+0+0
	movff	(c:_formula+1),??_UpdateDir+0+0+1
	comf	(??_UpdateDir+0+0),c
	comf	(??_UpdateDir+0+1),c
	infsnz	(??_UpdateDir+0+0),c
	incf	(??_UpdateDir+0+1),c
	movf	((c:_speed)),c,w
	addwf	(??_UpdateDir+0+0),c,w
	movwf	((c:MotorsSpeed@A)),c
	movf	((c:_speed+1)),c,w
	addwfc	(??_UpdateDir+0+1),c,w
	movwf	1+((c:MotorsSpeed@A)),c
	movff	(c:_speed),(c:MotorsSpeed@B)
	movff	(c:_speed+1),(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	242
	goto	l5300
	
l209:
	line	243
	
l5298:
	movff	(c:_speed),(c:MotorsSpeed@A)
	movff	(c:_speed+1),(c:MotorsSpeed@A+1)
	movf	((c:_formula)),c,w
	addwf	((c:_speed)),c,w
	movwf	((c:MotorsSpeed@B)),c
	movf	((c:_formula+1)),c,w
	addwfc	((c:_speed+1)),c,w
	movwf	1+((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	goto	l5300
	line	244
	
l210:
	line	245
	
l5300:
	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	line	246
	
l211:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_UpdateDir
	__end_of_UpdateDir:
	signat	_UpdateDir,88
	global	_Save

;; *************** function _Save *****************
;; Defined at:
;;		line 206 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   60[COMRAM] int 
;;  sum             1   59[COMRAM] unsigned char 
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
psect	text11,class=CODE,space=0,reloc=2
	line	206
global __ptext11
__ptext11:
psect	text11
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	206
	global	__size_of_Save
	__size_of_Save	equ	__end_of_Save-_Save
	
_Save:
;incstack = 0
	opt	stack 26
	line	207
	
l5260:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u6431
	goto	u6430
u6431:
	goto	l5264
u6430:
	
l5262:
	movlw	high(0)
	movwf	((c:_Save$340+1)),c
	movlw	low(0)
	movwf	((c:_Save$340)),c
	goto	l5266
	
l180:
	
l5264:
	movlw	high(080h)
	movwf	((c:_Save$340+1)),c
	movlw	low(080h)
	movwf	((c:_Save$340)),c
	goto	l5266
	
l182:
	
l5266:
	movff	(c:_Save$340),(c:Save@sum)
	line	208
	
l5268:
	movff	(c:_TOTAL),(c:WriteMem@data)
	movf	((c:Save@sum)),c,w
	
	call	_WriteMem
	line	210
	
l5270:
	movlw	high(0)
	movwf	((c:Save@x+1)),c
	movlw	low(0)
	movwf	((c:Save@x)),c
	goto	l5276
	
l184:
	line	211
	
l5272:
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
	line	210
	
l5274:
	infsnz	((c:Save@x)),c
	incf	((c:Save@x+1)),c
	goto	l5276
	
l183:
	
l5276:
		movf	((c:_TOTAL)),c,w
	subwf	((c:Save@x)),c,w
	movf	((c:Save@x+1)),c,w
	xorlw	80h
	movwf	(??_Save+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_Save+0+0)&0ffh,c,w
	btfss	status,0
	goto	u6441
	goto	u6440

u6441:
	goto	l5272
u6440:
	goto	l5278
	
l185:
	line	213
	
l5278:
	call	_ShowMem	;wreg free
	line	214
	
l186:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Save
	__end_of_Save:
	signat	_Save,88
	global	_ShowMem

;; *************** function _ShowMem *****************
;; Defined at:
;;		line 193 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   54[COMRAM] int 
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
psect	text12,class=CODE,space=0,reloc=2
	line	193
global __ptext12
__ptext12:
psect	text12
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	193
	global	__size_of_ShowMem
	__size_of_ShowMem	equ	__end_of_ShowMem-_ShowMem
	
_ShowMem:
;incstack = 0
	opt	stack 27
	line	195
	
l4944:
	movlw	high(0)
	movwf	((c:ShowMem@x+1)),c
	movlw	low(0)
	movwf	((c:ShowMem@x)),c
	goto	l4950
	
l166:
	
l4946:
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
	
l4948:
	infsnz	((c:ShowMem@x)),c
	incf	((c:ShowMem@x+1)),c
	goto	l4950
	
l165:
	
l4950:
		movf	((c:_TOTAL)),c,w
	subwf	((c:ShowMem@x)),c,w
	movf	((c:ShowMem@x+1)),c,w
	xorlw	80h
	movwf	(??_ShowMem+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_ShowMem+0+0)&0ffh,c,w
	btfss	status,0
	goto	u5901
	goto	u5900

u5901:
	goto	l4946
u5900:
	goto	l168
	
l167:
	line	196
	
l168:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ShowMem
	__end_of_ShowMem:
	signat	_ShowMem,88
	global	_printf

;; *************** function _printf *****************
;; Defined at:
;;		line 464 in file "/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
;; Parameters:    Size  Location     Type
;;  f               2   28[COMRAM] PTR const unsigned char 
;;		 -> STR_30(16), STR_29(57), STR_28(63), STR_27(41), 
;;		 -> STR_26(63), STR_25(36), STR_24(42), STR_23(40), 
;;		 -> STR_22(19), STR_21(40), STR_20(49), STR_19(47), 
;;		 -> STR_18(38), STR_17(47), STR_16(45), STR_15(61), 
;;		 -> STR_14(60), STR_13(53), STR_12(39), STR_11(44), 
;;		 -> STR_10(47), STR_9(48), STR_8(38), STR_7(43), 
;;		 -> STR_6(39), STR_5(45), STR_4(41), STR_3(37), 
;;		 -> STR_2(37), STR_1(36), 
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
psect	text13,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	464
global __ptext13
__ptext13:
psect	text13
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:
;incstack = 0
	opt	stack 28
	line	533
	
l4634:
		movlw	low(?_printf+02h)
	movwf	((c:printf@ap)),c
	movlw	high(?_printf+02h)
	movwf	((c:printf@ap+1)),c

	line	536
	goto	l4736
	
l593:
	line	538
	
l4636:
		movlw	37
	xorwf	((c:printf@c)),c,w
	btfsc	status,2
	goto	u5501
	goto	u5500

u5501:
	goto	l4640
u5500:
	line	541
	
l4638:
	movf	((c:printf@c)),c,w
	
	call	_putch
	line	542
	goto	l4736
	line	543
	
l594:
	line	546
	
l4640:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	line	548
	movlw	low(0)
	movwf	((c:printf@flag)),c
	goto	l4646
	line	550
	
l595:
	line	551
	goto	l4646
	line	579
	
l597:
	line	580
	
l4642:
	bsf	(0+(2/8)+(c:printf@flag)),c,(2)&7
	line	581
	infsnz	((c:printf@f)),c
	incf	((c:printf@f+1)),c
	line	582
	goto	l4646
	line	584
	
l4644:
	goto	l4648
	line	551
	
l596:
	
l4646:
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
	goto	l4642
	goto	l4648

	line	584
	
l599:
	line	585
	goto	l4648
	line	586
	
l598:
	goto	l4646
	
l600:
	line	597
	
l4648:
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
	goto	u5511
	goto	u5510
u5511:
	goto	l4664
u5510:
	line	598
	
l4650:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	goto	l4652
	line	599
	
l602:
	line	600
	
l4652:
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
	
l4654:
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

	
l4656:
	infsnz	((c:printf@f)),c
	incf	((c:printf@f+1)),c
	line	602
	
l4658:
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
	goto	u5521
	goto	u5520
u5521:
	goto	l4652
u5520:
	goto	l4664
	
l603:
	goto	l4664
	line	608
	
l601:
	line	635
	goto	l4664
	line	637
	
l605:
	line	638
	goto	l635
	line	697
	
l607:
	goto	l609
	line	698
	
l608:
	line	699
	goto	l609
	line	802
	
l610:
	line	813
	goto	l4736
	line	817
	
l611:
	line	818
	
l4660:
	bsf	(0+(6/8)+(c:printf@flag)),c,(6)&7
	line	819
	goto	l609
	line	822
	
l4662:
	goto	l609
	line	635
	
l604:
	
l4664:
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
	goto	l635
	xorlw	100^0	; case 100
	skipnz
	goto	l609
	xorlw	105^100	; case 105
	skipnz
	goto	l609
	xorlw	117^105	; case 117
	skipnz
	goto	l4660
	goto	l4736

	line	822
	
l609:
	line	1251
	
	btfsc	((c:printf@flag)),c,(6)&7
	goto	u5531
	goto	u5530
u5531:
	goto	l4676
u5530:
	line	1259
	
l4666:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4668:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	line	1261
	
l4670:
	btfsc	((c:printf@val+1)),c,7
	goto	u5540
	goto	u5541

u5541:
	goto	l4680
u5540:
	line	1262
	
l4672:
	movlw	(03h)&0ffh
	iorwf	((c:printf@flag)),c
	line	1263
	
l4674:
	negf	((c:printf@val)),c
	comf	((c:printf@val+1)),c
	btfsc	status,0
	incf	((c:printf@val+1)),c
	goto	l4680
	line	1264
	
l613:
	line	1266
	goto	l4680
	line	1268
	
l612:
	line	1286
	
l4676:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4678:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	goto	l4680
	line	1287
	
l614:
	line	1305
	
l4680:
	movlw	low(01h)
	movwf	((c:printf@c)),c
	
l4682:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5551
	goto	u5550

u5551:
	goto	l4686
u5550:
	goto	l4694
	
l4684:
	goto	l4694
	line	1306
	
l615:
	
l4686:
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
	goto	u5561
	goto	u5560

u5561:
	goto	l4690
u5560:
	goto	l4694
	line	1307
	
l4688:
	goto	l4694
	
l617:
	line	1305
	
l4690:
	incf	((c:printf@c)),c
	
l4692:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5571
	goto	u5570

u5571:
	goto	l4686
u5570:
	goto	l4694
	
l616:
	line	1345
	
l4694:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5581
	goto	u5580

u5581:
	goto	l4700
u5580:
	
l4696:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5591
	goto	u5590
u5591:
	goto	l4700
u5590:
	line	1346
	
l4698:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	goto	l4700
	
l618:
	line	1381
	
l4700:
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
	goto	u5601
	goto	u5600
u5601:
	goto	l4704
u5600:
	line	1382
	
l4702:
	movf	((c:printf@c)),c,w
	subwf	((c:printf@width)),c
	movlw	0
	btfsc	((c:printf@c)),c,7
	movlw	0ffh
	subwfb	((c:printf@width+1)),c

	goto	l4706
	line	1383
	
l619:
	line	1384
	
l4704:
	movlw	high(0)
	movwf	((c:printf@width+1)),c
	movlw	low(0)
	movwf	((c:printf@width)),c
	goto	l4706
	
l620:
	line	1387
	
l4706:
	
	btfss	((c:printf@flag)),c,(2)&7
	goto	u5611
	goto	u5610
u5611:
	goto	l4718
u5610:
	line	1392
	
l4708:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l4712
u5620:
	line	1393
	
l4710:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4712
	
l622:
	line	1415
	
l4712:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5631
	goto	u5630

u5631:
	goto	l4728
u5630:
	goto	l4714
	line	1416
	
l624:
	line	1417
	
l4714:
	movlw	(030h)&0ffh
	
	call	_putch
	line	1418
	
l4716:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfss	status,2
	goto	u5641
	goto	u5640

u5641:
	goto	l4714
u5640:
	goto	l4728
	
l625:
	goto	l4728
	
l623:
	line	1420
	goto	l4728
	
l621:
	line	1428
	
l4718:
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfsc	status,2
	goto	u5651
	goto	u5650

u5651:
	goto	l4724
u5650:
	goto	l4720
	line	1429
	
l628:
	line	1430
	
l4720:
	movlw	(020h)&0ffh
	
	call	_putch
	line	1431
	
l4722:
	decf	((c:printf@width)),c
	btfss	status,0
	decf	((c:printf@width+1)),c
	movf	((c:printf@width)),c,w
iorwf	((c:printf@width+1)),c,w
	btfss	status,2
	goto	u5661
	goto	u5660

u5661:
	goto	l4720
u5660:
	goto	l4724
	
l629:
	goto	l4724
	
l627:
	line	1438
	
l4724:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5671
	goto	u5670
u5671:
	goto	l4728
u5670:
	line	1439
	
l4726:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4728
	
l630:
	goto	l4728
	line	1469
	
l626:
	line	1472
	
l4728:
	movff	(c:printf@c),(c:printf@prec)
	line	1474
	goto	l4734
	
l632:
	line	1489
	
l4730:
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
	
l4732:
	movf	((c:printf@c)),c,w
	
	call	_putch
	goto	l4734
	line	1525
	
l631:
	line	1474
	
l4734:
	decf	((c:printf@prec)),c
		incf	((c:printf@prec)),c,w
	btfss	status,2
	goto	u5681
	goto	u5680

u5681:
	goto	l4730
u5680:
	goto	l4736
	
l633:
	goto	l4736
	line	1533
	
l592:
	line	536
	
l4736:
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
	goto	u5691
	goto	u5690
u5691:
	goto	l4636
u5690:
	goto	l635
	
l634:
	goto	l635
	line	1535
	
l606:
	line	1541
;	Return value of _printf is never used
	
l635:
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
psect	text14,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	29
global __ptext14
__ptext14:
psect	text14
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	29
	global	__size_of_putch
	__size_of_putch	equ	__end_of_putch-_putch
	
_putch:
;incstack = 0
	opt	stack 28
	movwf	((c:putch@data)),c
	line	30
	
l4530:
	goto	l503
	
l504:
	line	31
	
l503:
	line	30
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u5351
	goto	u5350
u5351:
	goto	l503
u5350:
	goto	l4532
	
l505:
	line	32
	
l4532:
	movff	(c:putch@data),(c:4013)	;volatile
	line	33
	
l506:
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
psect	text15,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/isdigit.c"
	line	8
global __ptext15
__ptext15:
psect	text15
	file	"/opt/microchip/xc8/v1.34/sources/common/isdigit.c"
	line	8
	global	__size_of_isdigit
	__size_of_isdigit	equ	__end_of_isdigit-_isdigit
	
_isdigit:
;incstack = 0
	opt	stack 28
	movwf	((c:isdigit@c)),c
	line	14
	
l4534:
	movlw	low(0)
	movwf	((c:_isdigit$2189)),c
	
l4536:
		movlw	03Ah-0
	cpfslt	((c:isdigit@c)),c
	goto	u5361
	goto	u5360

u5361:
	goto	l4542
u5360:
	
l4538:
		movlw	030h-1
	cpfsgt	((c:isdigit@c)),c
	goto	u5371
	goto	u5370

u5371:
	goto	l4542
u5370:
	
l4540:
	movlw	low(01h)
	movwf	((c:_isdigit$2189)),c
	goto	l4542
	
l1068:
	
l4542:
	movff	(c:_isdigit$2189),??_isdigit+0+0
	rrcf	(??_isdigit+0+0),c,w
	goto	l1069
	
l4544:
	line	15
	
l1069:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_isdigit
	__end_of_isdigit:
	signat	_isdigit,4216
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
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
psect	text16,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
	line	15
global __ptext16
__ptext16:
psect	text16
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:
;incstack = 0
	opt	stack 28
	line	37
	
l4546:
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
	
l4548:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l638
	
l4550:
	line	53
	
l638:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
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
psect	text17,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
	line	8
global __ptext17
__ptext17:
psect	text17
	file	"/opt/microchip/xc8/v1.34/sources/common/lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:
;incstack = 0
	opt	stack 28
	line	13
	
l4618:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u5471
	goto	u5470

u5471:
	goto	l1171
u5470:
	line	14
	
l4620:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l4624
	
l1173:
	line	16
	
l4622:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l4624
	line	18
	
l1172:
	line	15
	
l4624:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u5481
	goto	u5480
u5481:
	goto	l4622
u5480:
	goto	l4626
	
l1174:
	goto	l4626
	line	19
	
l1175:
	line	20
	
l4626:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u5491
	goto	u5490

u5491:
	goto	l4630
u5490:
	line	21
	
l4628:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l4630
	
l1176:
	line	22
	
l4630:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l4632:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l4626
	goto	l1171
	
l1177:
	line	24
	
l1171:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1178:
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
psect	text18,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
	line	8
global __ptext18
__ptext18:
psect	text18
	file	"/opt/microchip/xc8/v1.34/sources/common/lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 28
	line	14
	
l4596:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l4598:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u5441
	goto	u5440

u5441:
	goto	l1161
u5440:
	line	16
	
l4600:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l4604
	
l1163:
	line	18
	
l4602:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l4604
	line	20
	
l1162:
	line	17
	
l4604:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u5451
	goto	u5450
u5451:
	goto	l4602
u5450:
	goto	l4606
	
l1164:
	goto	l4606
	line	21
	
l1165:
	line	22
	
l4606:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l4608:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u5461
	goto	u5460

u5461:
	goto	l4614
u5460:
	line	24
	
l4610:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l4612:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l4614
	line	26
	
l1166:
	line	27
	
l4614:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l4616:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l4606
	goto	l1161
	
l1167:
	line	29
	
l1161:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1168:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Load

;; *************** function _Load *****************
;; Defined at:
;;		line 222 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   29[COMRAM] int 
;; Return value:  Size  Location     Type
;;		None               void
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
psect	text19,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	222
global __ptext19
__ptext19:
psect	text19
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	222
	global	__size_of_Load
	__size_of_Load	equ	__end_of_Load-_Load
	
_Load:
;incstack = 0
	opt	stack 27
	line	223
	
l5280:
		movlw	low(_TOTAL)
	movwf	((c:Length@data)),c
	movlw	high(_TOTAL)
	movwf	((c:Length@data+1)),c

	call	_Length	;wreg free
	line	225
	
l5282:
	movlw	high(0)
	movwf	((c:Load@x+1)),c
	movlw	low(0)
	movwf	((c:Load@x)),c
	goto	l5288
	
l197:
	
l5284:
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
	
l5286:
	infsnz	((c:Load@x)),c
	incf	((c:Load@x+1)),c
	goto	l5288
	
l196:
	
l5288:
		movf	((c:_TOTAL)),c,w
	subwf	((c:Load@x)),c,w
	movf	((c:Load@x+1)),c,w
	xorlw	80h
	movwf	(??_Load+0+0)&0ffh,c
	movf	((c:_TOTAL+1)),c,w
	xorlw	80h
	subwfb	(??_Load+0+0)&0ffh,c,w
	btfss	status,0
	goto	u6451
	goto	u6450

u6451:
	goto	l5284
u6450:
	goto	l199
	
l198:
	line	226
	
l199:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Load
	__end_of_Load:
	signat	_Load,88
	global	_Length

;; *************** function _Length *****************
;; Defined at:
;;		line 216 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  data            2   17[COMRAM] PTR int 
;;		 -> TOTAL(2), 
;; Auto vars:     Size  Location     Type
;;  rta             1   24[COMRAM] unsigned char 
;;  add             1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
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
psect	text20,class=CODE,space=0,reloc=2
	line	216
global __ptext20
__ptext20:
psect	text20
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	216
	global	__size_of_Length
	__size_of_Length	equ	__end_of_Length-_Length
	
_Length:
;incstack = 0
	opt	stack 27
	line	217
	
l4952:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u5911
	goto	u5910
u5911:
	goto	l4956
u5910:
	
l4954:
	movlw	high(0)
	movwf	((c:_Length$346+1)),c
	movlw	low(0)
	movwf	((c:_Length$346)),c
	goto	l4958
	
l190:
	
l4956:
	movlw	high(080h)
	movwf	((c:_Length$346+1)),c
	movlw	low(080h)
	movwf	((c:_Length$346)),c
	goto	l4958
	
l192:
	
l4958:
	movff	(c:_Length$346),(c:Length@add)
	line	219
	
l4960:
		movlw	low(Length@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(Length@rta)
	movwf	((c:ReadMem@data+1)),c

	movf	((c:Length@add)),c,w
	
	call	_ReadMem
	line	220
	
l4962:
	movf	((c:Length@rta)),c,w
	movwf	(??_Length+0+0)&0ffh,c
	clrf	(??_Length+0+0+1)&0ffh,c

	movff	(c:Length@data),fsr2l
	movff	(c:Length@data+1),fsr2h
	movff	??_Length+0+0,postinc2
	movff	??_Length+0+1,postdec2

	line	221
	
l193:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Length
	__end_of_Length:
	signat	_Length,4216
	global	_GetValue

;; *************** function _GetValue *****************
;; Defined at:
;;		line 227 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  item            2   17[COMRAM] int 
;;  data            2   19[COMRAM] PTR int 
;;		 -> RAM(2047), 
;; Auto vars:     Size  Location     Type
;;  rta             1   26[COMRAM] unsigned char 
;;  add             1   23[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
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
psect	text21,class=CODE,space=0,reloc=2
	line	227
global __ptext21
__ptext21:
psect	text21
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	227
	global	__size_of_GetValue
	__size_of_GetValue	equ	__end_of_GetValue-_GetValue
	
_GetValue:
;incstack = 0
	opt	stack 27
	line	228
	
l4964:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u5921
	goto	u5920
u5921:
	goto	l4968
u5920:
	
l4966:
	movlw	high(0)
	movwf	((c:_GetValue$356+1)),c
	movlw	low(0)
	movwf	((c:_GetValue$356)),c
	goto	l4970
	
l203:
	
l4968:
	movlw	high(080h)
	movwf	((c:_GetValue$356+1)),c
	movlw	low(080h)
	movwf	((c:_GetValue$356)),c
	goto	l4970
	
l205:
	
l4970:
	movff	(c:_GetValue$356),(c:GetValue@add)
	line	230
	
l4972:
		movlw	low(GetValue@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(GetValue@rta)
	movwf	((c:ReadMem@data+1)),c

	movf	((c:GetValue@add)),c,w
	addwf	((c:GetValue@item)),c,w
	movwf	(??_GetValue+0+0)&0ffh,c
	incf	((??_GetValue+0+0)),c,w
	
	call	_ReadMem
	line	231
	
l4974:
	movf	((c:GetValue@rta)),c,w
	movwf	(??_GetValue+0+0)&0ffh,c
	clrf	(??_GetValue+0+0+1)&0ffh,c

	movff	(c:GetValue@data),fsr2l
	movff	(c:GetValue@data+1),fsr2h
	movff	??_GetValue+0+0,postinc2
	movff	??_GetValue+0+1,postdec2

	line	232
	
l206:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_GetValue
	__end_of_GetValue:
	signat	_GetValue,8312
	global	_Line

;; *************** function _Line *****************
;; Defined at:
;;		line 247 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   19[BANK0 ] int 
;;  i               2   17[BANK0 ] int 
;;  j               2   13[BANK0 ] int 
;;  v               4   21[BANK0 ] long 
;;  b               4    8[BANK0 ] long 
;;  a               4    4[BANK0 ] long 
;;  w               4    0[BANK0 ] long 
;;  j               2   15[BANK0 ] int 
;;  g               1   12[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0      25       0       0       0       0       0       0       0
;;      Temps:          7       0       0       0       0       0       0       0       0
;;      Totals:         7      25       0       0       0       0       0       0       0
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
psect	text22,class=CODE,space=0,reloc=2
	line	247
global __ptext22
__ptext22:
psect	text22
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	247
	global	__size_of_Line
	__size_of_Line	equ	__end_of_Line-_Line
	
_Line:
;incstack = 0
	opt	stack 28
	line	248
	
l5302:
	movlw	low(0)
	movlb	0	; () banked
	movwf	((Line@a))&0ffh
	movlw	high(0)
	movwf	((Line@a+1))&0ffh
	movlw	low highword(0)
	movwf	((Line@a+2))&0ffh
	movlw	high highword(0)
	movwf	((Line@a+3))&0ffh
	line	249
	movlw	low(0)
	movlb	0	; () banked
	movwf	((Line@b))&0ffh
	movlw	high(0)
	movwf	((Line@b+1))&0ffh
	movlw	low highword(0)
	movwf	((Line@b+2))&0ffh
	movlw	high highword(0)
	movwf	((Line@b+3))&0ffh
	line	250
	movlw	low(0)
	movlb	0	; () banked
	movwf	((Line@g))&0ffh
	line	254
	movlw	high(0)
	movlb	0	; () banked
	movwf	((Line@j+1))&0ffh
	movlw	low(0)
	movwf	((Line@j))&0ffh
	
l5304:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@j+1))&0ffh,7
	goto	u6471
	movlb	0	; () banked
	movf	((Line@j+1))&0ffh,w
	bnz	u6470
	movlw	5
	movlb	0	; () banked
	subwf	 ((Line@j))&0ffh,w
	btfss	status,0
	goto	u6471
	goto	u6470

u6471:
	goto	l5308
u6470:
	goto	l5346
	
l5306:; BSR set to: 0

	goto	l5346
	
l214:; BSR set to: 0

	line	255
	
l5308:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@j))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(Line@i)
	movff	postdec2,(Line@i+1)
	line	256
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(Line@v)
	movff	??_Line+0+1,(Line@v+1)
	movlb	0	; () banked
	clrf	((Line@v+2))&0ffh
	clrf	((Line@v+3))&0ffh

	line	257
	
l5310:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
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
	movlb	0	; () banked
	subwf	((Line@v))&0ffh,w
	movf	(??_Line+2+1),c,w
	movlb	0	; () banked
	subwfb	((Line@v+1))&0ffh,w
	movf	(??_Line+2+2),c,w
	movlb	0	; () banked
	subwfb	((Line@v+2))&0ffh,w
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	xorlw	80h
	movwf	(??_Line+6+0)&0ffh,c
	movf	(??_Line+2+3),c,w
	xorlw	80h
	subwfb	(??_Line+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u6481
	goto	u6480

u6481:
	goto	l5314
u6480:
	line	258
	
l5312:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(Line@v)
	movff	??_Line+0+1,(Line@v+1)
	movlb	0	; () banked
	clrf	((Line@v+2))&0ffh
	clrf	((Line@v+3))&0ffh

	goto	l5314
	line	259
	
l216:; BSR set to: 0

	line	260
	
l5314:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
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
	movlb	0	; () banked
		movf	((Line@v))&0ffh,w
	subwf	(??_Line+2+0),c,w
	movlb	0	; () banked
	movf	((Line@v+1))&0ffh,w
	subwfb	(??_Line+2+1),c,w
	movlb	0	; () banked
	movf	((Line@v+2))&0ffh,w
	subwfb	(??_Line+2+2),c,w
	movf	(??_Line+2+3),c,w
	xorlw	80h
	movwf	(??_Line+6+0)&0ffh,c
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	xorlw	80h
	subwfb	(??_Line+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u6491
	goto	u6490

u6491:
	goto	l5318
u6490:
	line	261
	
l5316:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(Line@v)
	movff	??_Line+0+1,(Line@v+1)
	movlb	0	; () banked
	clrf	((Line@v+2))&0ffh
	clrf	((Line@v+3))&0ffh

	goto	l5318
	line	262
	
l217:; BSR set to: 0

	line	263
	
l5318:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
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
	movlb	0	; () banked
	subwf	((Line@v))&0ffh
	movf	(??_Line+2+1),c,w
	movlb	0	; () banked
	subwfb	((Line@v+1))&0ffh
	movf	(??_Line+2+2),c,w
	movlb	0	; () banked
	subwfb	((Line@v+2))&0ffh
	movf	(??_Line+2+3),c,w
	movlb	0	; () banked
	subwfb	((Line@v+3))&0ffh

	line	264
	
l5320:; BSR set to: 0

	movff	(Line@v),(c:___lmul@multiplier)
	movff	(Line@v+1),(c:___lmul@multiplier+1)
	movff	(Line@v+2),(c:___lmul@multiplier+2)
	movff	(Line@v+3),(c:___lmul@multiplier+3)
	movlw	low(03E8h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(03E8h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(03E8h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(03E8h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(Line@v)
	movff	1+?___lmul,(Line@v+1)
	movff	2+?___lmul,(Line@v+2)
	movff	3+?___lmul,(Line@v+3)
	
	line	265
	
l5322:
	movff	(Line@v),(c:___aldiv@dividend)
	movff	(Line@v+1),(c:___aldiv@dividend+1)
	movff	(Line@v+2),(c:___aldiv@dividend+2)
	movff	(Line@v+3),(c:___aldiv@dividend+3)
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
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
	movff	0+?___aldiv,(Line@v)
	movff	1+?___aldiv,(Line@v+1)
	movff	2+?___aldiv,(Line@v+2)
	movff	3+?___aldiv,(Line@v+3)
	
	line	266
	
l5324:
	movff	(Line@v),??_Line+0+0
	movff	(Line@v+1),??_Line+0+0+1
	movff	(Line@v+2),??_Line+0+0+2
	movff	(Line@v+3),??_Line+0+0+3
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
	movlb	0	; () banked
	movwf	((Line@v))&0ffh
	movlw	03h
	addwfc	(??_Line+0+1),c,w
	movlb	0	; () banked
	movwf	1+((Line@v))&0ffh
	
	movlw	0
	addwfc	(??_Line+0+2),c,w
	movlb	0	; () banked
	movwf	2+((Line@v))&0ffh
	
	movlw	0
	addwfc	(??_Line+0+3),c,w
	movlb	0	; () banked
	movwf	3+((Line@v))&0ffh
	line	267
	
l5326:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@v+3))&0ffh,7
	goto	u6500
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((Line@v+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((Line@v+1))&0ffh,w
	bnz	u6501
	movlw	50
	movlb	0	; () banked
	subwf	 ((Line@v))&0ffh,w
	btfsc	status,0
	goto	u6501
	goto	u6500

u6501:
	goto	l5330
u6500:
	line	268
	
l5328:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((Line@v))&0ffh
	movlw	high(0)
	movwf	((Line@v+1))&0ffh
	movlw	low highword(0)
	movwf	((Line@v+2))&0ffh
	movlw	high highword(0)
	movwf	((Line@v+3))&0ffh
	goto	l5330
	line	269
	
l218:; BSR set to: 0

	line	270
	
l5330:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	(Line@v),postinc2
	movff	(Line@v+1),postdec2
	line	271
	
l5332:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@j))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_pd)
	addwf	fsr2l
	movlw	high(_pd)
	addwfc	fsr2h
	movff	postinc2,(Line@w)
	movff	postdec2,(Line@w+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((Line@w+1))&0ffh,7
	movlw	-1
	movwf	((Line@w+2))&0ffh
	movwf	((Line@w+3))&0ffh
	line	274
	
l5334:; BSR set to: 0

	movff	(Line@v),(c:___lmul@multiplier)
	movff	(Line@v+1),(c:___lmul@multiplier+1)
	movff	(Line@v+2),(c:___lmul@multiplier+2)
	movff	(Line@v+3),(c:___lmul@multiplier+3)
	movff	(Line@w),(c:___lmul@multiplicand)
	movff	(Line@w+1),(c:___lmul@multiplicand+1)
	movff	(Line@w+2),(c:___lmul@multiplicand+2)
	movff	(Line@w+3),(c:___lmul@multiplicand+3)
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

	line	275
	
l5336:; BSR set to: 0

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
	line	276
	
l5338:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@v+3))&0ffh,7
	goto	u6511
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((Line@v+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((Line@v+1))&0ffh,w
	bnz	u6510
	movlw	201
	movlb	0	; () banked
	subwf	 ((Line@v))&0ffh,w
	btfss	status,0
	goto	u6511
	goto	u6510

u6511:
	goto	l5342
u6510:
	line	277
	
l5340:; BSR set to: 0

	movlw	low(01h)
	movlb	0	; () banked
	movwf	((Line@g))&0ffh
	goto	l5342
	line	278
	
l219:; BSR set to: 0

	line	254
	
l5342:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((Line@j))&0ffh
	incf	((Line@j+1))&0ffh
	
l5344:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@j+1))&0ffh,7
	goto	u6521
	movlb	0	; () banked
	movf	((Line@j+1))&0ffh,w
	bnz	u6520
	movlw	5
	movlb	0	; () banked
	subwf	 ((Line@j))&0ffh,w
	btfss	status,0
	goto	u6521
	goto	u6520

u6521:
	goto	l5308
u6520:
	goto	l5346
	
l215:; BSR set to: 0

	line	281
	
l5346:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((Line@j_367+1))&0ffh
	movlw	low(0)
	movwf	((Line@j_367))&0ffh
	
l5348:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@j_367+1))&0ffh,7
	goto	u6531
	movlb	0	; () banked
	movf	((Line@j_367+1))&0ffh,w
	bnz	u6530
	movlw	2
	movlb	0	; () banked
	subwf	 ((Line@j_367))&0ffh,w
	btfss	status,0
	goto	u6531
	goto	u6530

u6531:
	goto	l5352
u6530:
	goto	l5374
	
l5350:; BSR set to: 0

	goto	l5374
	
l220:; BSR set to: 0

	line	282
	
l5352:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@j_367))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@j_367+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_sd)
	addwf	fsr2l
	movlw	high(_sd)
	addwfc	fsr2h
	movff	postinc2,(Line@i_368)
	movff	postdec2,(Line@i_368+1)
	line	283
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(Line@v)
	movff	??_Line+0+1,(Line@v+1)
	movlb	0	; () banked
	clrf	((Line@v+2))&0ffh
	clrf	((Line@v+3))&0ffh

	line	284
	
l5354:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
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
	movlb	0	; () banked
	subwf	((Line@v))&0ffh,w
	movf	(??_Line+2+1),c,w
	movlb	0	; () banked
	subwfb	((Line@v+1))&0ffh,w
	movf	(??_Line+2+2),c,w
	movlb	0	; () banked
	subwfb	((Line@v+2))&0ffh,w
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	xorlw	80h
	movwf	(??_Line+6+0)&0ffh,c
	movf	(??_Line+2+3),c,w
	xorlw	80h
	subwfb	(??_Line+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u6541
	goto	u6540

u6541:
	goto	l5358
u6540:
	
l5356:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amin)
	addwf	fsr2l
	movlw	high(_amin)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(Line@v)
	movff	??_Line+0+1,(Line@v+1)
	movlb	0	; () banked
	clrf	((Line@v+2))&0ffh
	clrf	((Line@v+3))&0ffh

	goto	l5358
	
l222:; BSR set to: 0

	line	285
	
l5358:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
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
	movlb	0	; () banked
		movf	((Line@v))&0ffh,w
	subwf	(??_Line+2+0),c,w
	movlb	0	; () banked
	movf	((Line@v+1))&0ffh,w
	subwfb	(??_Line+2+1),c,w
	movlb	0	; () banked
	movf	((Line@v+2))&0ffh,w
	subwfb	(??_Line+2+2),c,w
	movf	(??_Line+2+3),c,w
	xorlw	80h
	movwf	(??_Line+6+0)&0ffh,c
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	xorlw	80h
	subwfb	(??_Line+6+0)&0ffh,c,w
	btfsc	status,0
	goto	u6551
	goto	u6550

u6551:
	goto	l5362
u6550:
	
l5360:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	movff	??_Line+0+0,(Line@v)
	movff	??_Line+0+1,(Line@v+1)
	movlb	0	; () banked
	clrf	((Line@v+2))&0ffh
	clrf	((Line@v+3))&0ffh

	goto	l5362
	
l223:; BSR set to: 0

	line	286
	
l5362:; BSR set to: 0

	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
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
	movlb	0	; () banked
	subwf	((Line@v))&0ffh
	movf	(??_Line+2+1),c,w
	movlb	0	; () banked
	subwfb	((Line@v+1))&0ffh
	movf	(??_Line+2+2),c,w
	movlb	0	; () banked
	subwfb	((Line@v+2))&0ffh
	movf	(??_Line+2+3),c,w
	movlb	0	; () banked
	subwfb	((Line@v+3))&0ffh

	
l5364:; BSR set to: 0

	movff	(Line@v),(c:___lmul@multiplier)
	movff	(Line@v+1),(c:___lmul@multiplier+1)
	movff	(Line@v+2),(c:___lmul@multiplier+2)
	movff	(Line@v+3),(c:___lmul@multiplier+3)
	movlw	low(03E8h)
	movwf	((c:___lmul@multiplicand)),c
	movlw	high(03E8h)
	movwf	((c:___lmul@multiplicand+1)),c
	movlw	low highword(03E8h)
	movwf	((c:___lmul@multiplicand+2)),c
	movlw	high highword(03E8h)
	movwf	((c:___lmul@multiplicand+3)),c
	call	___lmul	;wreg free
	movff	0+?___lmul,(Line@v)
	movff	1+?___lmul,(Line@v+1)
	movff	2+?___lmul,(Line@v+2)
	movff	3+?___lmul,(Line@v+3)
	
	
l5366:
	movff	(Line@v),(c:___aldiv@dividend)
	movff	(Line@v+1),(c:___aldiv@dividend+1)
	movff	(Line@v+2),(c:___aldiv@dividend+2)
	movff	(Line@v+3),(c:___aldiv@dividend+3)
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_amax)
	addwf	fsr2l
	movlw	high(_amax)
	addwfc	fsr2h
	movff	postinc2,??_Line+0+0
	movff	postdec2,??_Line+0+0+1
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
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
	movff	0+?___aldiv,(Line@v)
	movff	1+?___aldiv,(Line@v+1)
	movff	2+?___aldiv,(Line@v+2)
	movff	3+?___aldiv,(Line@v+3)
	
	
l5368:
	movff	(Line@v),??_Line+0+0
	movff	(Line@v+1),??_Line+0+0+1
	movff	(Line@v+2),??_Line+0+0+2
	movff	(Line@v+3),??_Line+0+0+3
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
	movlb	0	; () banked
	movwf	((Line@v))&0ffh
	movlw	03h
	addwfc	(??_Line+0+1),c,w
	movlb	0	; () banked
	movwf	1+((Line@v))&0ffh
	
	movlw	0
	addwfc	(??_Line+0+2),c,w
	movlb	0	; () banked
	movwf	2+((Line@v))&0ffh
	
	movlw	0
	addwfc	(??_Line+0+3),c,w
	movlb	0	; () banked
	movwf	3+((Line@v))&0ffh
	line	287
	bcf	status,0
	movlb	0	; () banked
	rlcf	((Line@i_368))&0ffh,w
	movwf	fsr2l
	movlb	0	; () banked
	rlcf	((Line@i_368+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_P)
	addwf	fsr2l
	movlw	high(_P)
	addwfc	fsr2h
	movff	(Line@v),postinc2
	movff	(Line@v+1),postdec2
	line	281
	
l5370:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((Line@j_367))&0ffh
	incf	((Line@j_367+1))&0ffh
	
l5372:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@j_367+1))&0ffh,7
	goto	u6561
	movlb	0	; () banked
	movf	((Line@j_367+1))&0ffh,w
	bnz	u6560
	movlw	2
	movlb	0	; () banked
	subwf	 ((Line@j_367))&0ffh,w
	btfss	status,0
	goto	u6561
	goto	u6560

u6561:
	goto	l5352
u6560:
	goto	l5374
	
l221:; BSR set to: 0

	line	290
	
l5374:; BSR set to: 0

	movlb	0	; () banked
	movf	((Line@g))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6571
	goto	u6570
u6571:
	goto	l5384
u6570:
	line	291
	
l5376:; BSR set to: 0

	btfsc	((c:_line+1)),c,7
	goto	u6580
	movf	((c:_line+1)),c,w
	bnz	u6581
	decf	((c:_line)),c,w
	btfsc	status,0
	goto	u6581
	goto	u6580

u6581:
	goto	l5380
u6580:
	
l5378:; BSR set to: 0

	movlw	high(-200)
	movwf	((c:_line+1)),c
	movlw	low(-200)
	movwf	((c:_line)),c
	goto	l229
	
l226:; BSR set to: 0

	
l5380:; BSR set to: 0

	movlw	high(0C8h)
	movwf	((c:_line+1)),c
	movlw	low(0C8h)
	movwf	((c:_line)),c
	goto	l229
	
l228:; BSR set to: 0

	goto	l229
	line	292
	
l5382:; BSR set to: 0

	goto	l229
	line	293
	
l224:; BSR set to: 0

	line	294
	
l5384:; BSR set to: 0

	movff	(Line@a),(c:___aldiv@dividend)
	movff	(Line@a+1),(c:___aldiv@dividend+1)
	movff	(Line@a+2),(c:___aldiv@dividend+2)
	movff	(Line@a+3),(c:___aldiv@dividend+3)
	movff	(Line@b),(c:___aldiv@divisor)
	movff	(Line@b+1),(c:___aldiv@divisor+1)
	movff	(Line@b+2),(c:___aldiv@divisor+2)
	movff	(Line@b+3),(c:___aldiv@divisor+3)
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:_line)
	movff	1+?___aldiv,(c:_line+1)
	line	295
	
l229:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Line
	__end_of_Line:
	signat	_Line,88
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "/opt/microchip/xc8/v1.34/sources/common/Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4   28[COMRAM] unsigned long 
;;  multiplicand    4   32[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   36[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4   28[COMRAM] unsigned long 
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
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul32.c"
	line	15
global __ptext23
__ptext23:
psect	text23
	file	"/opt/microchip/xc8/v1.34/sources/common/Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:
;incstack = 0
	opt	stack 29
	line	119
	
l4986:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l4988
	line	120
	
l647:
	line	121
	
l4988:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u5931
	goto	u5930
u5931:
	goto	l4992
u5930:
	line	122
	
l4990:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l4992
	
l648:
	line	123
	
l4992:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l4994:
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
	goto	u5941
	goto	u5940

u5941:
	goto	l4988
u5940:
	
l649:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l650:
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
psect	text24,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/aldiv.c"
	line	8
global __ptext24
__ptext24:
psect	text24
	file	"/opt/microchip/xc8/v1.34/sources/common/aldiv.c"
	line	8
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	stack 29
	line	14
	
l4996:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l4998:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u5950
	goto	u5951

u5951:
	goto	l5004
u5950:
	line	16
	
l5000:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l5002:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l5004
	line	18
	
l697:
	line	19
	
l5004:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u5960
	goto	u5961

u5961:
	goto	l5010
u5960:
	line	20
	
l5006:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l5008:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l5010
	line	22
	
l698:
	line	23
	
l5010:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l5012:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u5971
	goto	u5970

u5971:
	goto	l5032
u5970:
	line	25
	
l5014:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l5018
	
l701:
	line	27
	
l5016:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l5018
	line	29
	
l700:
	line	26
	
l5018:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u5981
	goto	u5980
u5981:
	goto	l5016
u5980:
	goto	l5020
	
l702:
	goto	l5020
	line	30
	
l703:
	line	31
	
l5020:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l5022:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u5991
	goto	u5990

u5991:
	goto	l5028
u5990:
	line	33
	
l5024:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l5026:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l5028
	line	35
	
l704:
	line	36
	
l5028:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l5030:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l5020
	goto	l5032
	
l705:
	goto	l5032
	line	38
	
l699:
	line	39
	
l5032:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u6001
	goto	u6000
u6001:
	goto	l5036
u6000:
	line	40
	
l5034:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l5036
	
l706:
	line	41
	
l5036:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l707
	
l5038:
	line	42
	
l707:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_EreaseAll

;; *************** function _EreaseAll *****************
;; Defined at:
;;		line 82 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
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
psect	text25,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	82
global __ptext25
__ptext25:
psect	text25
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	82
	global	__size_of_EreaseAll
	__size_of_EreaseAll	equ	__end_of_EreaseAll-_EreaseAll
	
_EreaseAll:
;incstack = 0
	opt	stack 28
	line	85
	
l5216:
	movlw	low(0)
	movwf	((c:WriteMem@data)),c
	movlw	(0)&0ffh
	
	call	_WriteMem
	line	86
	movlw	low(0)
	movwf	((c:WriteMem@data)),c
	movlw	(080h)&0ffh
	
	call	_WriteMem
	line	87
	
l71:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_EreaseAll
	__end_of_EreaseAll:
	signat	_EreaseAll,88
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
;;		None               void
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
psect	text26,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	210
global __ptext26
__ptext26:
psect	text26
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	210
	global	__size_of_WriteMem
	__size_of_WriteMem	equ	__end_of_WriteMem-_WriteMem
	
_WriteMem:
;incstack = 0
	opt	stack 28
	movwf	((c:WriteMem@addr)),c
	line	211
	
l4820:
	movff	(c:WriteMem@addr),(c:4009)	;volatile
	line	212
	
l4822:
	movff	(c:WriteMem@data),(c:4008)	;volatile
	line	213
	
l4824:
	bcf	((c:4006)),c,7	;volatile
	line	214
	
l4826:
	bcf	((c:4006)),c,6	;volatile
	line	215
	
l4828:
	bsf	((c:4006)),c,2	;volatile
	line	216
	
l4830:
	bcf	((c:4082)),c,7	;volatile
	line	217
	
l4832:
	movlw	low(055h)
	movwf	((c:4007)),c	;volatile
	line	218
	
l4834:
	movlw	low(0AAh)
	movwf	((c:4007)),c	;volatile
	line	219
	
l4836:
	bsf	((c:4006)),c,1	;volatile
	line	220
	
l4838:
	bsf	((c:4082)),c,7	;volatile
	line	221
	goto	l570
	
l571:
	
l570:
	btfsc	((c:4006)),c,1	;volatile
	goto	u5891
	goto	u5890
u5891:
	goto	l570
u5890:
	
l572:
	line	222
	bcf	((c:4006)),c,2	;volatile
	line	223
	
l573:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_WriteMem
	__end_of_WriteMem:
	signat	_WriteMem,8312
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
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
	line	198
global __ptext27
__ptext27:
psect	text27
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	198
	global	__size_of_EnhancedRead
	__size_of_EnhancedRead	equ	__end_of_EnhancedRead-_EnhancedRead
	
_EnhancedRead:
;incstack = 0
	opt	stack 28
	line	201
	
l5420:
	movlw	low(0)
	movwf	((c:EnhancedRead@i)),c
	
l5422:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u6601
	goto	u6600

u6601:
	goto	l5426
u6600:
	goto	l567
	
l5424:
	goto	l567
	
l562:
	line	202
	
l5426:
	movff	(c:EnhancedRead@i),??_EnhancedRead+0+0
	rlncf	(??_EnhancedRead+0+0),c
	rlncf	(??_EnhancedRead+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_EnhancedRead+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_EnhancedRead+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	203
	
l5428:
	bsf	((c:4034)),c,1	;volatile
	line	204
	goto	l564
	
l565:
	
l564:
	btfsc	((c:4034)),c,1	;volatile
	goto	u6611
	goto	u6610
u6611:
	goto	l564
u6610:
	goto	l5430
	
l566:
	line	205
	
l5430:
	movf	((c:4036)),c,w	;volatile
	mullw	04h
	movff	prodl,(c:EnhancedRead@aux)
	movff	prodh,(c:EnhancedRead@aux+1)
	line	206
	
l5432:
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
	
l5434:
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
	
l5436:
	incf	((c:EnhancedRead@i)),c
	
l5438:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u6621
	goto	u6620

u6621:
	goto	l5426
u6620:
	goto	l567
	
l563:
	line	209
	
l567:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_EnhancedRead
	__end_of_EnhancedRead:
	signat	_EnhancedRead,88
	global	_CheckMem

;; *************** function _CheckMem *****************
;; Defined at:
;;		line 197 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  data            2   17[COMRAM] PTR unsigned char 
;;		 -> main@old_436(1), main@old_433(1), main@old_431(1), main@old_428(1), 
;;		 -> main@old(1), 
;; Auto vars:     Size  Location     Type
;;  rta             1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
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
psect	text28,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	197
global __ptext28
__ptext28:
psect	text28
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	197
	global	__size_of_CheckMem
	__size_of_CheckMem	equ	__end_of_CheckMem-_CheckMem
	
_CheckMem:
;incstack = 0
	opt	stack 28
	line	199
	
l5242:
	movf	((c:_MF)),c,w
	btfss	status,2
	goto	u6391
	goto	u6390
u6391:
	goto	l5246
u6390:
	line	200
	
l5244:
		movlw	low(CheckMem@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(CheckMem@rta)
	movwf	((c:ReadMem@data+1)),c

	movlw	(0)&0ffh
	
	call	_ReadMem
	line	201
	goto	l5250
	
l171:
	
l5246:
		decf	((c:_MF)),c,w
	btfss	status,2
	goto	u6401
	goto	u6400

u6401:
	goto	l5250
u6400:
	line	202
	
l5248:
		movlw	low(CheckMem@rta)
	movwf	((c:ReadMem@data)),c
	movlw	high(CheckMem@rta)
	movwf	((c:ReadMem@data+1)),c

	movlw	(080h)&0ffh
	
	call	_ReadMem
	goto	l5250
	line	203
	
l173:
	goto	l5250
	line	204
	
l172:
	
l5250:
	movlw	low(0)
	movwf	((c:_CheckMem$337)),c
	
l5252:
	movf	((c:CheckMem@rta)),c,w
	btfsc	status,2
	goto	u6411
	goto	u6410
u6411:
	goto	l5258
u6410:
	
l5254:
		incf	((c:CheckMem@rta)),c,w
	btfsc	status,2
	goto	u6421
	goto	u6420

u6421:
	goto	l5258
u6420:
	
l5256:
	movlw	low(01h)
	movwf	((c:_CheckMem$337)),c
	goto	l5258
	
l175:
	
l5258:
	movff	(c:CheckMem@data),fsr2l
	movff	(c:CheckMem@data+1),fsr2h
	movff	(c:_CheckMem$337),indf2

	line	205
	
l176:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_CheckMem
	__end_of_CheckMem:
	signat	_CheckMem,4216
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
;;		None               void
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
psect	text29,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	224
global __ptext29
__ptext29:
psect	text29
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	224
	global	__size_of_ReadMem
	__size_of_ReadMem	equ	__end_of_ReadMem-_ReadMem
	
_ReadMem:
;incstack = 0
	opt	stack 27
	movwf	((c:ReadMem@addr)),c
	line	225
	
l4738:
	movff	(c:ReadMem@addr),(c:4009)	;volatile
	line	226
	
l4740:
	bcf	((c:4006)),c,7	;volatile
	line	227
	
l4742:
	bcf	((c:4006)),c,6	;volatile
	line	228
	
l4744:
	bsf	((c:4006)),c,0	;volatile
	line	229
	goto	l576
	
l577:
	
l576:
	btfsc	((c:4006)),c,0	;volatile
	goto	u5701
	goto	u5700
u5701:
	goto	l576
u5700:
	goto	l4746
	
l578:
	line	230
	
l4746:
	movff	(c:ReadMem@data),fsr2l
	movff	(c:ReadMem@data+1),fsr2h
	movff	(c:4008),indf2	;volatile

	line	231
	
l579:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadMem
	__end_of_ReadMem:
	signat	_ReadMem,8312
	global	_AdvanceLow

;; *************** function _AdvanceLow *****************
;; Defined at:
;;		line 297 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  kd              3    9[BANK0 ] unsigned char 
;;  kp              3    6[BANK0 ] unsigned char 
;;  speed           2   12[BANK0 ] int 
;;  mod             2    0        int 
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
psect	text30,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	297
global __ptext30
__ptext30:
psect	text30
	file	"/home/newtonis/Robots/Rayito2/main.c"
	line	297
	global	__size_of_AdvanceLow
	__size_of_AdvanceLow	equ	__end_of_AdvanceLow-_AdvanceLow
	
_AdvanceLow:
;incstack = 0
	opt	stack 26
	line	301
	
l5386:
	movff	0+(_VEL+04h),(AdvanceLow@speed)
	movff	1+(_VEL+04h),(AdvanceLow@speed+1)
	line	302
	movff	0+(_VKP+06h),(AdvanceLow@kp)
	movff	1+(_VKP+06h),(AdvanceLow@kp+1)
	movff	2+(_VKP+06h),(AdvanceLow@kp+2)
	line	303
	movff	0+(_VKD+06h),(AdvanceLow@kd)
	movff	1+(_VKD+06h),(AdvanceLow@kd+1)
	movff	2+(_VKD+06h),(AdvanceLow@kd+2)
	line	305
	
l5388:
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
	line	306
	
l5390:
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
	line	307
	
l5392:
	btfsc	((c:_formula+1)),c,7
	goto	u6591
	movf	((c:_formula+1)),c,w
	bnz	u6590
	decf	((c:_formula)),c,w
	btfss	status,0
	goto	u6591
	goto	u6590

u6591:
	goto	l5396
u6590:
	line	308
	
l5394:
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
	line	309
	goto	l5398
	
l232:
	line	310
	
l5396:
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
	goto	l5398
	line	311
	
l233:
	line	312
	
l5398:
	movff	(c:_line),(c:_last)
	movff	(c:_line+1),(c:_last+1)
	line	313
	
l234:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_AdvanceLow
	__end_of_AdvanceLow:
	signat	_AdvanceLow,88
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "/opt/microchip/xc8/v1.34/sources/common/fttol.c"
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
;;		_UpdateDir
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/fttol.c"
	line	44
global __ptext31
__ptext31:
psect	text31
	file	"/opt/microchip/xc8/v1.34/sources/common/fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:
;incstack = 0
	opt	stack 29
	line	49
	
l5170:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)&0ffh,c
	clrf	(??___fttol+0+0+2)&0ffh,c
	rlcf	((c:___fttol@f1+1)),c,w
	rlcf	(??___fttol+0+0)&0ffh,c
	bnc	u6291
	bsf	(??___fttol+0+0+1)&0ffh,c,0
u6291:
	movf	(??___fttol+0+0),c,w
	movlb	0	; () banked
	movwf	((___fttol@exp1))&0ffh
	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	btfss	status,2
	goto	u6301
	goto	u6300
u6301:
	goto	l5176
u6300:
	line	50
	
l5172:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l1054
	
l5174:; BSR set to: 0

	goto	l1054
	
l1053:; BSR set to: 0

	line	51
	
l5176:; BSR set to: 0

	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)&0ffh,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0)),c,w
	movwf	(??___fttol+4+0)&0ffh,c
	goto	u6310
u6315:
	bcf	status,0
	rrcf	(??___fttol+1+2),c
	rrcf	(??___fttol+1+1),c
	rrcf	(??___fttol+1+0),c
u6310:
	decfsz	(??___fttol+4+0)&0ffh,c
	goto	u6315
	movf	(??___fttol+1+0),c,w
	movlb	0	; () banked
	movwf	((___fttol@sign1))&0ffh
	line	52
	
l5178:; BSR set to: 0

	bsf	(0+(15/8)+(c:___fttol@f1)),c,(15)&7
	line	53
	
l5180:; BSR set to: 0

	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2)),c

	line	54
	
l5182:; BSR set to: 0

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
	
l5184:; BSR set to: 0

	movlw	(08Eh)&0ffh
	movlb	0	; () banked
	subwf	((___fttol@exp1))&0ffh
	line	56
	
l5186:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___fttol@exp1))&0ffh,7
	goto	u6320
	goto	u6321

u6321:
	goto	l5198
u6320:
	line	57
	
l5188:; BSR set to: 0

	movlb	0	; () banked
		movf	((___fttol@exp1))&0ffh,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u6331
	goto	u6330

u6331:
	goto	l5194
u6330:
	line	58
	
l5190:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l1054
	
l5192:; BSR set to: 0

	goto	l1054
	
l1056:; BSR set to: 0

	goto	l5194
	line	59
	
l1057:; BSR set to: 0

	line	60
	
l5194:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___fttol@lval+3))&0ffh
	rrcf	((___fttol@lval+2))&0ffh
	rrcf	((___fttol@lval+1))&0ffh
	rrcf	((___fttol@lval))&0ffh
	line	61
	
l5196:; BSR set to: 0

	movlb	0	; () banked
	incfsz	((___fttol@exp1))&0ffh
	
	goto	l5194
	goto	l5208
	
l1058:; BSR set to: 0

	line	62
	goto	l5208
	
l1055:; BSR set to: 0

	line	63
	
l5198:; BSR set to: 0

		movlw	018h-1
	movlb	0	; () banked
	cpfsgt	((___fttol@exp1))&0ffh
	goto	u6341
	goto	u6340

u6341:
	goto	l5206
u6340:
	line	64
	
l5200:; BSR set to: 0

	movlw	low(0)
	movwf	((c:?___fttol)),c
	movlw	high(0)
	movwf	((c:?___fttol+1)),c
	movlw	low highword(0)
	movwf	((c:?___fttol+2)),c
	movlw	high highword(0)
	movwf	((c:?___fttol+3)),c
	goto	l1054
	
l5202:; BSR set to: 0

	goto	l1054
	
l1060:; BSR set to: 0

	line	65
	goto	l5206
	
l1062:; BSR set to: 0

	line	66
	
l5204:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___fttol@lval))&0ffh
	rlcf	((___fttol@lval+1))&0ffh
	rlcf	((___fttol@lval+2))&0ffh
	rlcf	((___fttol@lval+3))&0ffh
	line	67
	movlb	0	; () banked
	decf	((___fttol@exp1))&0ffh
	goto	l5206
	line	68
	
l1061:; BSR set to: 0

	line	65
	
l5206:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@exp1))&0ffh,w
	movlb	0	; () banked
	btfss	status,2
	goto	u6351
	goto	u6350
u6351:
	goto	l5204
u6350:
	goto	l5208
	
l1063:; BSR set to: 0

	goto	l5208
	line	69
	
l1059:; BSR set to: 0

	line	70
	
l5208:; BSR set to: 0

	movlb	0	; () banked
	movf	((___fttol@sign1))&0ffh,w
	movlb	0	; () banked
	btfsc	status,2
	goto	u6361
	goto	u6360
u6361:
	goto	l5212
u6360:
	line	71
	
l5210:; BSR set to: 0

	movlb	0	; () banked
	comf	((___fttol@lval+3))&0ffh
	comf	((___fttol@lval+2))&0ffh
	comf	((___fttol@lval+1))&0ffh
	negf	((___fttol@lval))&0ffh
	movlw	0
	addwfc	((___fttol@lval+1))&0ffh
	addwfc	((___fttol@lval+2))&0ffh
	addwfc	((___fttol@lval+3))&0ffh
	goto	l5212
	
l1064:; BSR set to: 0

	line	72
	
l5212:; BSR set to: 0

	movff	(___fttol@lval),(c:?___fttol)
	movff	(___fttol@lval+1),(c:?___fttol+1)
	movff	(___fttol@lval+2),(c:?___fttol+2)
	movff	(___fttol@lval+3),(c:?___fttol+3)
	goto	l1054
	
l5214:; BSR set to: 0

	line	73
	
l1054:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.34/sources/common/ftmul.c"
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
;;		_UpdateDir
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/ftmul.c"
	line	62
global __ptext32
__ptext32:
psect	text32
	file	"/opt/microchip/xc8/v1.34/sources/common/ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	67
	
l5110:
	movff	(c:___ftmul@f1+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f1+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u6221
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u6221:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@exp)),c
	movf	((c:___ftmul@exp)),c,w
	btfss	status,2
	goto	u6231
	goto	u6230
u6231:
	goto	l5116
u6230:
	line	68
	
l5112:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l1033
	
l5114:
	goto	l1033
	
l1032:
	line	69
	
l5116:
	movff	(c:___ftmul@f2+2),??___ftmul+0+0
	clrf	(??___ftmul+0+0+1)&0ffh,c
	clrf	(??___ftmul+0+0+2)&0ffh,c
	rlcf	((c:___ftmul@f2+1)),c,w
	rlcf	(??___ftmul+0+0)&0ffh,c
	bnc	u6241
	bsf	(??___ftmul+0+0+1)&0ffh,c,0
u6241:
	movf	(??___ftmul+0+0),c,w
	movwf	((c:___ftmul@sign)),c
	movf	((c:___ftmul@sign)),c,w
	btfss	status,2
	goto	u6251
	goto	u6250
u6251:
	goto	l5122
u6250:
	line	70
	
l5118:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftmul)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftmul+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftmul+2)),c

	goto	l1033
	
l5120:
	goto	l1033
	
l1034:
	line	71
	
l5122:
	movf	((c:___ftmul@sign)),c,w
	addlw	low(07Bh)
	addwf	((c:___ftmul@exp)),c
	line	72
	
l5124:
	movff	0+2+(c:___ftmul@f1),(c:___ftmul@sign)
	line	73
	movf	(0+2+(c:___ftmul@f2)),c,w
	xorwf	((c:___ftmul@sign)),c
	line	74
	movlw	(080h)&0ffh
	andwf	((c:___ftmul@sign)),c
	line	75
	
l5126:
	bsf	(0+(15/8)+(c:___ftmul@f1)),c,(15)&7
	line	77
	
l5128:
	bsf	(0+(15/8)+(c:___ftmul@f2)),c,(15)&7
	line	78
	
l5130:
	movlw	low(0FFFFh)
	andwf	((c:___ftmul@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftmul@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftmul@f2+2)),c

	line	79
	
l5132:
	movlw	low(0)
	movwf	((c:___ftmul@f3_as_product)),c
	movlw	high(0)
	movwf	((c:___ftmul@f3_as_product+1)),c
	movlw	low highword(0)
	movwf	((c:___ftmul@f3_as_product+2)),c

	line	134
	
l5134:
	movlw	low(07h)
	movwf	((c:___ftmul@cntr)),c
	goto	l5136
	line	135
	
l1035:
	line	136
	
l5136:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u6261
	goto	u6260
u6261:
	goto	l5140
u6260:
	line	137
	
l5138:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l5140
	
l1036:
	line	138
	
l5140:
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
	
l5142:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l5136
	goto	l5144
	
l1037:
	line	143
	
l5144:
	movlw	low(09h)
	movwf	((c:___ftmul@cntr)),c
	goto	l5146
	line	144
	
l1038:
	line	145
	
l5146:
	
	btfss	((c:___ftmul@f1)),c,(0)&7
	goto	u6271
	goto	u6270
u6271:
	goto	l5150
u6270:
	line	146
	
l5148:
	movf	((c:___ftmul@f2)),c,w
	addwf	((c:___ftmul@f3_as_product)),c
	movf	((c:___ftmul@f2+1)),c,w
	addwfc	((c:___ftmul@f3_as_product+1)),c
	movf	((c:___ftmul@f2+2)),c,w
	addwfc	((c:___ftmul@f3_as_product+2)),c

	goto	l5150
	
l1039:
	line	147
	
l5150:
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
	
l5152:
	decfsz	((c:___ftmul@cntr)),c
	
	goto	l5146
	goto	l5154
	
l1040:
	line	156
	
l5154:
	movff	(c:___ftmul@f3_as_product),(c:___ftpack@arg)
	movff	(c:___ftmul@f3_as_product+1),(c:___ftpack@arg+1)
	movff	(c:___ftmul@f3_as_product+2),(c:___ftpack@arg+2)
	movff	(c:___ftmul@exp),(c:___ftpack@exp)
	movff	(c:___ftmul@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftmul)
	movff	1+?___ftpack,(c:?___ftmul+1)
	movff	2+?___ftpack,(c:?___ftmul+2)
	goto	l1033
	
l5156:
	line	157
	
l1033:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "/opt/microchip/xc8/v1.34/sources/common/ftadd.c"
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
;;		_UpdateDir
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/ftadd.c"
	line	86
global __ptext33
__ptext33:
psect	text33
	file	"/opt/microchip/xc8/v1.34/sources/common/ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:
;incstack = 0
	opt	stack 28
	line	90
	
l5040:
	movff	(c:___ftadd@f1+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f1+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u6011
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u6011:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp1)),c
	line	91
	movff	(c:___ftadd@f2+2),??___ftadd+0+0
	clrf	(??___ftadd+0+0+1)&0ffh,c
	clrf	(??___ftadd+0+0+2)&0ffh,c
	rlcf	((c:___ftadd@f2+1)),c,w
	rlcf	(??___ftadd+0+0)&0ffh,c
	bnc	u6021
	bsf	(??___ftadd+0+0+1)&0ffh,c,0
u6021:
	movf	(??___ftadd+0+0),c,w
	movwf	((c:___ftadd@exp2)),c
	line	92
	
l5042:
	movf	((c:___ftadd@exp1)),c,w
	btfsc	status,2
	goto	u6031
	goto	u6030
u6031:
	goto	l986
u6030:
	
l5044:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u6041
	goto	u6040

u6041:
	goto	l5048
u6040:
	
l5046:
	movf	((c:___ftadd@exp1)),c,w
	sublw	0
	addwf	((c:___ftadd@exp2)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u6051
	goto	u6050

u6051:
	goto	l5048
u6050:
	
l986:
	line	93
	movff	(c:___ftadd@f2),(c:?___ftadd)
	movff	(c:___ftadd@f2+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f2+2),(c:?___ftadd+2)
	goto	l987
	
l984:
	line	94
	
l5048:
	movf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u6061
	goto	u6060
u6061:
	goto	l990
u6060:
	
l5050:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u6071
	goto	u6070

u6071:
	goto	l5054
u6070:
	
l5052:
	movf	((c:___ftadd@exp2)),c,w
	sublw	0
	addwf	((c:___ftadd@exp1)),c,w
	movwf	(??___ftadd+0+0)&0ffh,c
		movlw	019h-1
	cpfsgt	((??___ftadd+0+0)),c
	goto	u6081
	goto	u6080

u6081:
	goto	l5054
u6080:
	
l990:
	line	95
	movff	(c:___ftadd@f1),(c:?___ftadd)
	movff	(c:___ftadd@f1+1),(c:?___ftadd+1)
	movff	(c:___ftadd@f1+2),(c:?___ftadd+2)
	goto	l987
	
l988:
	line	96
	
l5054:
	movlw	low(06h)
	movwf	((c:___ftadd@sign)),c
	line	97
	
l5056:
	
	btfss	((c:___ftadd@f1+2)),c,(23)&7
	goto	u6091
	goto	u6090
u6091:
	goto	l5060
u6090:
	line	98
	
l5058:
	bsf	(0+(7/8)+(c:___ftadd@sign)),c,(7)&7
	goto	l5060
	
l991:
	line	99
	
l5060:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u6101
	goto	u6100
u6101:
	goto	l992
u6100:
	line	100
	
l5062:
	bsf	(0+(6/8)+(c:___ftadd@sign)),c,(6)&7
	
l992:
	line	101
	bsf	(0+(15/8)+(c:___ftadd@f1)),c,(15)&7
	line	102
	
l5064:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f1)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f1+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f1+2)),c

	line	103
	bsf	(0+(15/8)+(c:___ftadd@f2)),c,(15)&7
	line	104
	
l5066:
	movlw	low(0FFFFh)
	andwf	((c:___ftadd@f2)),c
	movlw	high(0FFFFh)
	andwf	((c:___ftadd@f2+1)),c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftadd@f2+2)),c

	line	106
	
l5068:
		movf	((c:___ftadd@exp2)),c,w
	subwf	((c:___ftadd@exp1)),c,w
	btfsc	status,0
	goto	u6111
	goto	u6110

u6111:
	goto	l5080
u6110:
	goto	l5070
	line	109
	
l994:
	line	110
	
l5070:
	bcf	status,0
	rlcf	((c:___ftadd@f2)),c
	rlcf	((c:___ftadd@f2+1)),c
	rlcf	((c:___ftadd@f2+2)),c
	line	111
	decf	((c:___ftadd@exp2)),c
	line	112
	
l5072:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u6121
	goto	u6120

u6121:
	goto	l5078
u6120:
	
l5074:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u6131
	goto	u6130
u6131:
	goto	l5070
u6130:
	goto	l5078
	
l996:
	goto	l5078
	
l997:
	line	113
	goto	l5078
	
l999:
	line	114
	
l5076:
	bcf	status,0
	rrcf	((c:___ftadd@f1+2)),c
	rrcf	((c:___ftadd@f1+1)),c
	rrcf	((c:___ftadd@f1)),c
	line	115
	incf	((c:___ftadd@exp1)),c
	goto	l5078
	line	116
	
l998:
	line	113
	
l5078:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u6141
	goto	u6140

u6141:
	goto	l5076
u6140:
	goto	l1001
	
l1000:
	line	117
	goto	l1001
	
l993:
	
l5080:
		movf	((c:___ftadd@exp1)),c,w
	subwf	((c:___ftadd@exp2)),c,w
	btfsc	status,0
	goto	u6151
	goto	u6150

u6151:
	goto	l1001
u6150:
	goto	l5082
	line	120
	
l1003:
	line	121
	
l5082:
	bcf	status,0
	rlcf	((c:___ftadd@f1)),c
	rlcf	((c:___ftadd@f1+1)),c
	rlcf	((c:___ftadd@f1+2)),c
	line	122
	decf	((c:___ftadd@exp1)),c
	line	123
	
l5084:
	movf	((c:___ftadd@exp1)),c,w
xorwf	((c:___ftadd@exp2)),c,w
	btfsc	status,2
	goto	u6161
	goto	u6160

u6161:
	goto	l5090
u6160:
	
l5086:
	decf	((c:___ftadd@sign)),c
	movff	(c:___ftadd@sign),??___ftadd+0+0
	movlw	07h
	andwf	(??___ftadd+0+0),c
	btfss	status,2
	goto	u6171
	goto	u6170
u6171:
	goto	l5082
u6170:
	goto	l5090
	
l1005:
	goto	l5090
	
l1006:
	line	124
	goto	l5090
	
l1008:
	line	125
	
l5088:
	bcf	status,0
	rrcf	((c:___ftadd@f2+2)),c
	rrcf	((c:___ftadd@f2+1)),c
	rrcf	((c:___ftadd@f2)),c
	line	126
	incf	((c:___ftadd@exp2)),c
	goto	l5090
	line	127
	
l1007:
	line	124
	
l5090:
	movf	((c:___ftadd@exp2)),c,w
xorwf	((c:___ftadd@exp1)),c,w
	btfss	status,2
	goto	u6181
	goto	u6180

u6181:
	goto	l5088
u6180:
	goto	l1001
	
l1009:
	goto	l1001
	line	128
	
l1002:
	line	129
	
l1001:
	
	btfss	((c:___ftadd@sign)),c,(7)&7
	goto	u6191
	goto	u6190
u6191:
	goto	l1010
u6190:
	line	131
	
l5092:
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
	
l1010:
	line	134
	
	btfss	((c:___ftadd@sign)),c,(6)&7
	goto	u6201
	goto	u6200
u6201:
	goto	l5096
u6200:
	line	136
	
l5094:
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

	goto	l5096
	line	138
	
l1011:
	line	139
	
l5096:
	movlw	low(0)
	movwf	((c:___ftadd@sign)),c
	line	140
	
l5098:
	movf	((c:___ftadd@f1)),c,w
	addwf	((c:___ftadd@f2)),c
	movf	((c:___ftadd@f1+1)),c,w
	addwfc	((c:___ftadd@f2+1)),c
	movf	((c:___ftadd@f1+2)),c,w
	addwfc	((c:___ftadd@f2+2)),c

	line	141
	
l5100:
	
	btfss	((c:___ftadd@f2+2)),c,(23)&7
	goto	u6211
	goto	u6210
u6211:
	goto	l5106
u6210:
	line	142
	
l5102:
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
	
l5104:
	movlw	low(01h)
	movwf	((c:___ftadd@sign)),c
	goto	l5106
	line	145
	
l1012:
	line	146
	
l5106:
	movff	(c:___ftadd@f2),(c:___ftpack@arg)
	movff	(c:___ftadd@f2+1),(c:___ftpack@arg+1)
	movff	(c:___ftadd@f2+2),(c:___ftpack@arg+2)
	movff	(c:___ftadd@exp1),(c:___ftpack@exp)
	movff	(c:___ftadd@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftadd)
	movff	1+?___ftpack,(c:?___ftadd+1)
	movff	2+?___ftpack,(c:?___ftadd+2)
	goto	l987
	
l5108:
	line	148
	
l987:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "/opt/microchip/xc8/v1.34/sources/common/awtoft.c"
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
;;		_UpdateDir
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/awtoft.c"
	line	32
global __ptext34
__ptext34:
psect	text34
	file	"/opt/microchip/xc8/v1.34/sources/common/awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:
;incstack = 0
	opt	stack 28
	line	36
	
l5158:
	movlw	low(0)
	movwf	((c:___awtoft@sign)),c
	line	37
	
l5160:
	btfsc	((c:___awtoft@c+1)),c,7
	goto	u6280
	goto	u6281

u6281:
	goto	l5166
u6280:
	line	38
	
l5162:
	negf	((c:___awtoft@c)),c
	comf	((c:___awtoft@c+1)),c
	btfsc	status,0
	incf	((c:___awtoft@c+1)),c
	line	39
	
l5164:
	movlw	low(01h)
	movwf	((c:___awtoft@sign)),c
	goto	l5166
	line	40
	
l855:
	line	41
	
l5166:
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
	goto	l856
	
l5168:
	line	42
	
l856:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "/opt/microchip/xc8/v1.34/sources/common/float.c"
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
psect	text35,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/float.c"
	line	62
global __ptext35
__ptext35:
psect	text35
	file	"/opt/microchip/xc8/v1.34/sources/common/float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:
;incstack = 0
	opt	stack 28
	line	64
	
l4784:
	movf	((c:___ftpack@exp)),c,w
	btfsc	status,2
	goto	u5811
	goto	u5810
u5811:
	goto	l4788
u5810:
	
l4786:
	movf	((c:___ftpack@arg)),c,w
iorwf	((c:___ftpack@arg+1)),c,w
iorwf	((c:___ftpack@arg+2)),c,w
	btfss	status,2
	goto	u5821
	goto	u5820

u5821:
	goto	l4794
u5820:
	goto	l4788
	
l945:
	line	65
	
l4788:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack)),c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1)),c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2)),c

	goto	l946
	
l4790:
	goto	l946
	
l943:
	line	66
	goto	l4794
	
l948:
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
	
l947:
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
	goto	u5831
	goto	u5830

u5831:
	goto	l4792
u5830:
	goto	l4800
	
l949:
	line	70
	goto	l4800
	
l951:
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
	
l950:
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
	goto	u5841
	goto	u5840

u5841:
	goto	l4796
u5840:
	goto	l4804
	
l952:
	line	75
	goto	l4804
	
l954:
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
	
l953:
	line	75
	
l4804:
	
	btfsc	((c:___ftpack@arg+1)),c,(15)&7
	goto	u5851
	goto	u5850
u5851:
	goto	l957
u5850:
	
l4806:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp)),c
	goto	u5861
	goto	u5860

u5861:
	goto	l4802
u5860:
	goto	l957
	
l956:
	
l957:
	line	79
	
	btfsc	((c:___ftpack@exp)),c,(0)&7
	goto	u5871
	goto	u5870
u5871:
	goto	l4810
u5870:
	line	80
	
l4808:
	bcf	(0+(15/8)+(c:___ftpack@arg)),c,(15)&7
	goto	l4810
	
l958:
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
	goto	u5881
	goto	u5880
u5881:
	goto	l4816
u5880:
	line	84
	
l4814:
	bsf	(0+(23/8)+(c:___ftpack@arg)),c,(23)&7
	goto	l4816
	
l959:
	line	85
	
l4816:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	goto	l946
	
l4818:
	line	86
	
l946:
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
;;		_UpdateDir
;;		_AdvanceLow
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	193
global __ptext36
__ptext36:
psect	text36
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	193
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 26
	line	194
	
l4976:
	goto	l552
	
l4978:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1868)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1868+1)
	goto	l4980
	
l552:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1868)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1868+1)
	goto	l4980
	
l554:
	
l4980:
	movff	(c:_MotorsSpeed$1868),(c:MotorASpeed@S)
	movff	(c:_MotorsSpeed$1868+1),(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	195
	
l4982:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1870)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1870+1)
	goto	l4984
	
l556:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1870)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1870+1)
	goto	l4984
	
l558:
	
l4984:
	movff	(c:_MotorsSpeed$1870),(c:MotorBSpeed@S)
	movff	(c:_MotorsSpeed$1870+1),(c:MotorBSpeed@S+1)
	call	_MotorBSpeed	;wreg free
	line	196
	
l559:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8312
	global	_MotorBSpeed

;; *************** function _MotorBSpeed *****************
;; Defined at:
;;		line 181 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text37,class=CODE,space=0,reloc=2
	line	181
global __ptext37
__ptext37:
psect	text37
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	181
	global	__size_of_MotorBSpeed
	__size_of_MotorBSpeed	equ	__end_of_MotorBSpeed-_MotorBSpeed
	
_MotorBSpeed:
;incstack = 0
	opt	stack 26
	line	182
	
l4766:
	negf	((c:MotorBSpeed@S)),c
	comf	((c:MotorBSpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorBSpeed@S+1)),c
	line	183
	
l4768:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5761
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u5761
	goto	u5760

u5761:
	goto	l4772
u5760:
	
l4770:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4772
	
l537:
	goto	l4772
	
l539:
	line	184
	
l4772:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u5771
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u5771
	goto	u5770

u5771:
	goto	l4776
u5770:
	
l4774:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4776
	
l541:
	goto	l4776
	
l543:
	line	186
	
l4776:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5781
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u5780
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u5781
	goto	u5780

u5781:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u5798
u5780:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u5798:
	rlncf	(??_MotorBSpeed+0+0),c
	rlncf	(??_MotorBSpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	187
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u5800
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u5801
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u5801
	goto	u5800

u5801:
	goto	l4780
u5800:
	
l4778:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l4780
	
l545:
	goto	l4780
	
l547:
	line	189
	
l4780:
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
	
l4782:
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
	
l548:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorBSpeed
	__end_of_MotorBSpeed:
	signat	_MotorBSpeed,4216
	global	_MotorASpeed

;; *************** function _MotorASpeed *****************
;; Defined at:
;;		line 170 in file "/home/newtonis/Robots/Rayito2/config.c"
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
psect	text38,class=CODE,space=0,reloc=2
	line	170
global __ptext38
__ptext38:
psect	text38
	file	"/home/newtonis/Robots/Rayito2/config.c"
	line	170
	global	__size_of_MotorASpeed
	__size_of_MotorASpeed	equ	__end_of_MotorASpeed-_MotorASpeed
	
_MotorASpeed:
;incstack = 0
	opt	stack 26
	line	171
	
l4748:
	negf	((c:MotorASpeed@S)),c
	comf	((c:MotorASpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorASpeed@S+1)),c
	line	172
	
l4750:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5711
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u5711
	goto	u5710

u5711:
	goto	l4754
u5710:
	
l4752:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l4754
	
l522:
	goto	l4754
	
l524:
	line	173
	
l4754:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u5721
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u5721
	goto	u5720

u5721:
	goto	l4758
u5720:
	
l4756:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l4758
	
l526:
	goto	l4758
	
l528:
	line	175
	
l4758:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5731
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u5730
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u5731
	goto	u5730

u5731:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u5748
u5730:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u5748:
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	176
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u5750
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u5751
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u5751
	goto	u5750

u5751:
	goto	l4762
u5750:
	
l4760:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l4762
	
l530:
	goto	l4762
	
l532:
	line	178
	
l4762:
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
	
l4764:
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
	
l533:
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
;;		_main
;;		_MotorASpeed
;;		_MotorBSpeed
;;		_EnhancedRead
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	8
global __ptext39
__ptext39:
psect	text39
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 29
	line	14
	
l4552:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l4554:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u5380
	goto	u5381

u5381:
	goto	l4560
u5380:
	line	16
	
l4556:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l4558:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l4560
	line	18
	
l821:
	line	19
	
l4560:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u5390
	goto	u5391

u5391:
	goto	l4566
u5390:
	line	20
	
l4562:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l4564:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l4566
	line	22
	
l822:
	line	23
	
l4566:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l4568:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u5401
	goto	u5400

u5401:
	goto	l4588
u5400:
	line	25
	
l4570:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l4574
	
l825:
	line	27
	
l4572:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l4574
	line	29
	
l824:
	line	26
	
l4574:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u5411
	goto	u5410
u5411:
	goto	l4572
u5410:
	goto	l4576
	
l826:
	goto	l4576
	line	30
	
l827:
	line	31
	
l4576:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l4578:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u5421
	goto	u5420

u5421:
	goto	l4584
u5420:
	line	33
	
l4580:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l4582:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l4584
	line	35
	
l828:
	line	36
	
l4584:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l4586:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l4576
	goto	l4588
	
l829:
	goto	l4588
	line	38
	
l823:
	line	39
	
l4588:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u5431
	goto	u5430
u5431:
	goto	l4592
u5430:
	line	40
	
l4590:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l4592
	
l830:
	line	41
	
l4592:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l831
	
l4594:
	line	42
	
l831:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 116 in file "/home/newtonis/Robots/Rayito2/main.c"
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
	line	116
	global	__size_of_enc
	__size_of_enc	equ	__end_of_enc-_enc
	
_enc:
;incstack = 0
	opt	stack 26
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
	line	117
	
i2l3884:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u402_41
	goto	i2u402_40
i2u402_41:
	goto	i2l97
i2u402_40:
	line	118
	
i2l3886:
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME))&0ffh
	movlw	0
	addwfc	((_TIME+1))&0ffh
	addwfc	((_TIME+2))&0ffh
	addwfc	((_TIME+3))&0ffh
	line	119
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME2))&0ffh
	movlw	0
	addwfc	((_TIME2+1))&0ffh
	addwfc	((_TIME2+2))&0ffh
	addwfc	((_TIME2+3))&0ffh
	line	120
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME3))&0ffh
	movlw	0
	addwfc	((_TIME3+1))&0ffh
	addwfc	((_TIME3+2))&0ffh
	addwfc	((_TIME3+3))&0ffh
	line	121
	movlw	low(01h)
	movlb	0	; () banked
	addwf	((_TIME4))&0ffh
	movlw	0
	addwfc	((_TIME4+1))&0ffh
	addwfc	((_TIME4+2))&0ffh
	addwfc	((_TIME4+3))&0ffh
	line	122
	movlw	low(01h)
	movlb	1	; () banked
	addwf	((_TIME5))&0ffh
	movlw	0
	addwfc	((_TIME5+1))&0ffh
	addwfc	((_TIME5+2))&0ffh
	addwfc	((_TIME5+3))&0ffh
	line	123
	
i2l3888:; BSR set to: 1

	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	124
	
i2l3890:; BSR set to: 1

	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	125
	
i2l3892:; BSR set to: 1

	bcf	c:(32658/8),(32658)&7	;volatile
	goto	i2l97
	line	126
	
i2l96:; BSR set to: 1

	line	127
	
i2l97:
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
