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
	dw	(03h)&0ffffh
	dw	(02h)&0ffffh
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
	global	_MF
	global	_PisoActual
	global	_RWM
	global	_actual
	global	_x
	global	_SIZES
	global	_POSICION
	global	_WAITIME
	global	_prev_line
	global	_a
	global	_fa
	global	_fb
	global	_fns
	global	_mb
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
	global	_DER
	global	_LP
	global	_MS
	global	_WAITFRENAR
	global	_division
	global	_prev2_line
	global	_sum
	global	_v
	global	_mode
	global	_gstatus
psect	nvBANK0,class=BANK0,space=1,noexec
global __pnvBANK0
__pnvBANK0:
	global	_gstatus
_gstatus:
       ds      1
	global	_status
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
	
STR_11:
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
	
STR_12:
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
STR_7	equ	STR_4+0
STR_9	equ	STR_8+0
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
	global	_POSICION
_POSICION:
       ds      4
	global	_WAITIME
_WAITIME:
       ds      4
	global	_prev_line
_prev_line:
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
	global	_fa
_fa:
       ds      2
	global	_fb
_fb:
       ds      2
	global	_fns
_fns:
       ds      2
	global	_mCiclo
	global	_mCiclo
_mCiclo:
       ds      2
	global	_mb
_mb:
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
	global	_prev2_line
_prev2_line:
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
	global	_giro
	global	_giro
_giro:
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
; Clear objects allocated to BANK1 (176 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	176
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK0 (45 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	45
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (22 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	22
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
psect	cstackBANK2,class=BANK2,space=1,noexec
global __pcstackBANK2
__pcstackBANK2:
	global	main@b
main@b:	; 4 bytes @ 0x0
	ds   4
	global	main@line
main@line:	; 2 bytes @ 0x4
	ds   2
	global	_main$1922
_main$1922:	; 4 bytes @ 0x6
	ds   4
	global	_main$1923
_main$1923:	; 4 bytes @ 0xA
	ds   4
	global	_main$1930
_main$1930:	; 4 bytes @ 0xE
	ds   4
	global	_main$1931
_main$1931:	; 4 bytes @ 0x12
	ds   4
	global	_main$1932
_main$1932:	; 4 bytes @ 0x16
	ds   4
	global	_main$1924
_main$1924:	; 1 bytes @ 0x1A
	ds   1
	global	main@am
main@am:	; 4 bytes @ 0x1B
	ds   4
	global	main@bm
main@bm:	; 4 bytes @ 0x1F
	ds   4
	global	main@j
main@j:	; 2 bytes @ 0x23
	ds   2
	global	main@j_1928
main@j_1928:	; 2 bytes @ 0x25
	ds   2
	global	main@a
main@a:	; 4 bytes @ 0x27
	ds   4
	global	main@rt
main@rt:	; 4 bytes @ 0x2B
	ds   4
	global	main@i
main@i:	; 2 bytes @ 0x2F
	ds   2
	global	main@i_1927
main@i_1927:	; 2 bytes @ 0x31
	ds   2
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_Line:	; 0 bytes @ 0x0
	global	?_printf
?_printf:	; 2 bytes @ 0x0
	global	printf@f
printf@f:	; 2 bytes @ 0x0
	ds   18
	global	_Line$2536
_Line$2536:	; 4 bytes @ 0x12
	ds   4
	global	_Line$1906
_Line$1906:	; 4 bytes @ 0x16
	ds   4
	global	_Line$1907
_Line$1907:	; 4 bytes @ 0x1A
	ds   4
	global	_Line$1908
_Line$1908:	; 4 bytes @ 0x1E
	ds   4
	global	Line@g
Line@g:	; 2 bytes @ 0x22
	ds   2
	global	_Line$1909
_Line$1909:	; 2 bytes @ 0x24
	ds   2
	global	Line@a
Line@a:	; 4 bytes @ 0x26
	ds   4
	global	Line@b
Line@b:	; 4 bytes @ 0x2A
	ds   4
	global	Line@v
Line@v:	; 4 bytes @ 0x2E
	ds   4
	global	Line@i
Line@i:	; 2 bytes @ 0x32
	ds   2
??_main:	; 0 bytes @ 0x34
	ds   18
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
	ds   2
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
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x20
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x20
	ds   4
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x24
	ds   4
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
??_printf:	; 0 bytes @ 0x2E
	global	?_Line
?_Line:	; 2 bytes @ 0x2E
	ds   1
	global	printf@ap
printf@ap:	; 2 bytes @ 0x2F
	ds   2
	global	printf@flag
printf@flag:	; 1 bytes @ 0x31
	ds   1
	global	printf@prec
printf@prec:	; 1 bytes @ 0x32
	ds   1
	global	printf@val
printf@val:	; 2 bytes @ 0x33
	ds   2
	global	printf@c
printf@c:	; 1 bytes @ 0x35
	ds   1
?_main:	; 2 bytes @ 0x36
main@argc:	; 2 bytes @ 0x36
	ds   2
main@argv:	; 3 bytes @ 0x38
	ds   3
;!
;!Data Sizes:
;!    Strings     500
;!    Constant    10
;!    Data        72
;!    BSS         1263
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     59      81
;!    BANK0           160     70     127
;!    BANK1           256      0     238
;!    BANK2           256     51      51
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    printf@f	PTR const unsigned char  size(2) Largest target is 61
;!		 -> STR_12(CODE[58]), STR_11(CODE[58]), STR_10(CODE[59]), STR_9(CODE[61]), 
;!		 -> STR_8(CODE[61]), STR_7(CODE[60]), STR_6(CODE[39]), STR_5(CODE[44]), 
;!		 -> STR_4(CODE[60]), STR_3(CODE[47]), STR_2(CODE[37]), STR_1(CODE[37]), 
;!
;!    printf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_printf(BANK0[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_printf
;!    _printf->___aldiv
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
;;Main: autosize = 0, tempsize = 18, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                74    69      5   32648
;!                                             54 COMRAM     5     0      5
;!                                             52 BANK0     18    18      0
;!                                              0 BANK2     51    51      0
;!                       _EnhancedRead
;!                               _Line
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
;! (1) _printf                                              31    17     14    2299
;!                                             46 COMRAM     8     8      0
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
;! (1) _Line                                                54    52      2   11428
;!                                             46 COMRAM     2     0      2
;!                                              0 BANK0     52    52      0
;!                            ___aldiv
;!                             ___lmul
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (1) ___wmul                                               6     2      4    2080
;!                                             14 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) ___lmul                                              12     4      8    3484
;!                                             20 COMRAM    12     4      8
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) ___aldiv                                             14     6      8    4911
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
;!   ___aldiv
;!     ___lmul (ARG)
;!       ___wmul (ARG)
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
;!     ___aldiv (ARG)
;!       ___lmul (ARG)
;!         ___wmul (ARG)
;!     ___lmul (ARG)
;!       ___wmul (ARG)
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
;!BANK2              100     33      33       9       19.9%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      EE       7       93.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     46      7F       5       79.4%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     3B      51       1       85.3%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     1F1      20        0.0%
;!DATA                 0      0     5ED       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 895 in file "/home/newtonis/Robots/Rayito2/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   54[COMRAM] int 
;;  argv            3   56[COMRAM] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  i               2   49[BANK2 ] int 
;;  j               2   37[BANK2 ] int 
;;  line            2    4[BANK2 ] int 
;;  rt              4   43[BANK2 ] long 
;;  a               4   39[BANK2 ] long 
;;  bm              4   31[BANK2 ] long 
;;  am              4   27[BANK2 ] long 
;;  b               4    0[BANK2 ] long 
;;  i               2   47[BANK2 ] int 
;;  j               2   35[BANK2 ] int 
;; Return value:  Size  Location     Type
;;                  2   54[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         5       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0      51       0       0       0       0       0
;;      Temps:          0      18       0       0       0       0       0       0       0
;;      Totals:         5      18       0      51       0       0       0       0       0
;;Total ram usage:       74 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_EnhancedRead
;;		_Line
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
	
l5073:
	call	_initYBOT	;wreg free
	line	898
	
l5075:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_sa+1))&0ffh
	movlw	low(0)
	movwf	((_sa))&0ffh
	line	899
	
l5077:; BSR set to: 0

	movlw	high(0)
	movlb	1	; () banked
	movwf	((_mode+1))&0ffh
	movlw	low(0)
	movwf	((_mode))&0ffh
	line	900
	
l5079:; BSR set to: 1

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_a+1))&0ffh
	movlw	low(0)
	movwf	((_a))&0ffh
	line	901
	
l5081:; BSR set to: 0

	movlb	0	; () banked
	setf	((_gstatus))&0ffh
	line	902
	
l5083:; BSR set to: 0

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
	
l5085:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_CURRENT+1)),c
	movlw	low(0)
	movwf	((c:_CURRENT)),c
	line	904
	
l5087:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_actual)),c
	line	905
	
l5089:; BSR set to: 0

	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	line	906
	
l5091:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	907
	
l5093:; BSR set to: 0

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
	
l5095:; BSR set to: 1

	call	_Wixel	;wreg free
	line	911
	
l5097:
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
	
l5099:
	bsf	((c:3971)),c,3	;volatile
	line	914
	
l5101:
	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	line	915
	goto	l5105
	
l710:; BSR set to: 0

	line	920
	
l5103:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(01h)
	movwf	((_fns))&0ffh
	goto	l5105
	
l709:; BSR set to: 0

	line	915
	
l5105:; BSR set to: 0

	btfsc	((c:_TIME+3)),c,7
	goto	u6071
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u6070
	movlw	136
	subwf	 ((c:_TIME)),c,w
	movlw	19
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u6071
	goto	u6070

u6071:
	goto	l5103
u6070:
	goto	l5107
	
l711:; BSR set to: 0

	goto	l5107
	line	921
	
l712:; BSR set to: 0

	line	922
	
l5107:
	call	_EnhancedRead	;wreg free
	line	926
	goto	l5343
	line	927
	
l714:
	line	928
	
l5109:
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
	goto	u6080
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6081
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6081
	goto	u6080

u6081:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6098
u6080:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6098:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	929
	
l5111:; BSR set to: 0

	movf	((c:_ma)),c,w
iorwf	((c:_ma+1)),c,w
	btfss	status,2
	goto	u6101
	goto	u6100

u6101:
	goto	l5115
u6100:
	line	930
	
l5113:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	931
	goto	l5123
	
l715:; BSR set to: 0

	
l5115:; BSR set to: 0

		decf	((c:_ma)),c,w
iorwf	((c:_ma+1)),c,w
	btfss	status,2
	goto	u6111
	goto	u6110

u6111:
	goto	l5119
u6110:
	line	932
	
l5117:; BSR set to: 0

	bsf	((c:3969)),c,5	;volatile
	line	933
	goto	l5123
	
l717:; BSR set to: 0

	
l5119:; BSR set to: 0

		incf	((c:_ma)),c,w
	bnz	u6121
	incf	((c:_ma+1)),c,w
	btfss	status,2
	goto	u6121
	goto	u6120

u6121:
	goto	l5123
u6120:
	line	934
	
l5121:; BSR set to: 0

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
	goto	u6130
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6131
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6131
	goto	u6130

u6131:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6148
u6130:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6148:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5123
	line	935
	
l719:; BSR set to: 0

	goto	l5123
	line	936
	
l718:; BSR set to: 0

	goto	l5123
	
l716:; BSR set to: 0

	
l5123:; BSR set to: 0

	movlb	0	; () banked
	movf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6151
	goto	u6150

u6151:
	goto	l5127
u6150:
	line	937
	
l5125:; BSR set to: 0

	bcf	((c:3969)),c,0	;volatile
	line	938
	goto	l5135
	
l720:; BSR set to: 0

	
l5127:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6161
	goto	u6160

u6161:
	goto	l5131
u6160:
	line	939
	
l5129:; BSR set to: 0

	bsf	((c:3969)),c,0	;volatile
	line	940
	goto	l5135
	
l722:; BSR set to: 0

	
l5131:; BSR set to: 0

	movlb	0	; () banked
		incf	((_mb))&0ffh,w
	bnz	u6171
	movlb	0	; () banked
	incf	((_mb+1))&0ffh,w
	btfss	status,2
	goto	u6171
	goto	u6170

u6171:
	goto	l5135
u6170:
	line	941
	
l5133:; BSR set to: 0

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
	goto	u6180
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6181
	movlw	245
	subwf	 (0+?___almod),c,w
	movlw	1
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6181
	goto	u6180

u6181:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6198
u6180:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6198:
	movf	((c:3969)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not ((1<<1)-1)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3969)),c	;volatile
	goto	l5135
	line	942
	
l724:; BSR set to: 0

	goto	l5135
	line	944
	
l723:; BSR set to: 0

	goto	l5135
	
l721:; BSR set to: 0

	
l5135:; BSR set to: 0

	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6201
	goto	u6200

u6201:
	goto	l5141
u6200:
	line	945
	
l5137:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	946
	
l5139:; BSR set to: 0

		movlw	low(STR_1)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_1)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	goto	l5141
	line	947
	
l725:
	line	949
	
l5141:
	btfsc	((c:3971)),c,6	;volatile
	goto	u6211
	goto	u6210
u6211:
	goto	l726
u6210:
	
l5143:
	movlb	0	; () banked
	movf	((_fa))&0ffh,w
	movlb	0	; () banked
iorwf	((_fa+1))&0ffh,w
	btfss	status,2
	goto	u6221
	goto	u6220

u6221:
	goto	l726
u6220:
	line	950
	
l5145:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(01h)
	movwf	((_fa))&0ffh
	line	951
	
l5147:; BSR set to: 0

		decf	((c:_ma)),c,w
iorwf	((c:_ma+1)),c,w
	btfsc	status,2
	goto	u6231
	goto	u6230

u6231:
	goto	l728
u6230:
	
l5149:; BSR set to: 0

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

	line	952
	
l726:
	line	953
	btfsc	((c:3971)),c,4	;volatile
	goto	u6241
	goto	u6240
u6241:
	goto	l731
u6240:
	
l5151:
	movlb	0	; () banked
	movf	((_fb))&0ffh,w
	movlb	0	; () banked
iorwf	((_fb+1))&0ffh,w
	btfss	status,2
	goto	u6251
	goto	u6250

u6251:
	goto	l731
u6250:
	line	954
	
l5153:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(01h)
	movwf	((_fb))&0ffh
	line	955
	
l5155:; BSR set to: 0

	movlb	0	; () banked
		decf	((_mb))&0ffh,w
	movlb	0	; () banked
iorwf	((_mb+1))&0ffh,w
	btfsc	status,2
	goto	u6261
	goto	u6260

u6261:
	goto	l733
u6260:
	
l5157:; BSR set to: 0

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
	goto	l731
	
l733:; BSR set to: 0

	movlb	0	; () banked
	setf	((_mb))&0ffh
	setf	((_mb+1))&0ffh
	goto	l731
	
l735:; BSR set to: 0

	line	956
	
l731:
	line	957
	btfss	((c:3971)),c,6	;volatile
	goto	u6271
	goto	u6270
u6271:
	goto	l5161
u6270:
	
l5159:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	goto	l5161
	
l736:; BSR set to: 0

	line	958
	
l5161:
	btfss	((c:3971)),c,4	;volatile
	goto	u6281
	goto	u6280
u6281:
	goto	l5165
u6280:
	
l5163:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	goto	l5165
	
l737:; BSR set to: 0

	line	960
	
l5165:
	movff	(c:_ma),(c:___wmul@multiplier)
	movff	(c:_ma+1),(c:___wmul@multiplier+1)
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
	goto	l5107
	line	962
	
l739:
	line	963
	
l5167:
	movlb	0	; () banked
	movf	((_fns))&0ffh,w
	movlb	0	; () banked
iorwf	((_fns+1))&0ffh,w
	btfsc	status,2
	goto	u6291
	goto	u6290

u6291:
	goto	l5173
u6290:
	line	964
	
l5169:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fns+1))&0ffh
	movlw	low(0)
	movwf	((_fns))&0ffh
	line	965
	
l5171:; BSR set to: 0

		movlw	low(STR_2)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_2)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	goto	l5173
	line	966
	
l740:
	line	967
	
l5173:
	bcf	((c:3969)),c,0	;volatile
	line	968
	
l5175:
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
	goto	u6300
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	bnz	u6301
	movlw	233
	subwf	 (0+?___almod),c,w
	movlw	3
	subwfb	(1+?___almod),c,w
	btfsc	status,0
	goto	u6301
	goto	u6300

u6301:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u6318
u6300:
	movlb	0	; () banked
	clrf	(??_main+0+0)&0ffh
u6318:
	movlb	0	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	969
	
l5177:; BSR set to: 0

	bcf	((c:3969)),c,5	;volatile
	line	970
	
l5179:; BSR set to: 0

	btfsc	((c:3971)),c,5	;volatile
	goto	u6321
	goto	u6320
u6321:
	goto	l5187
u6320:
	line	971
	
l5181:; BSR set to: 0

		movlw	low(STR_3)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_3)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	972
	
l5183:
	movlw	low(04h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	line	973
	
l5185:; BSR set to: 0

	call	_initLED	;wreg free
	goto	l5187
	line	974
	
l741:
	line	976
	
l5187:
	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@j+1))&0ffh
	movlw	low(0)
	movwf	((main@j))&0ffh
	
l5189:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6331
	movlb	2	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6330
	movlw	5
	movlb	2	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6331
	goto	u6330

u6331:
	goto	l5193
u6330:
	goto	l5107
	
l5191:; BSR set to: 2

	goto	l5107
	
l742:; BSR set to: 2

	line	977
	
l5193:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(main@i)
	movff	postdec2,(main@i+1)
	line	978
	
l5195:; BSR set to: 2

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
	movwf	(0+(?_printf+06h))&0ffh
	movlw	high(0FFh)
	addwfc	(1+?___wmul),c,w
	movlb	0	; () banked
	movwf	1+(0+(?_printf+06h))&0ffh
	movlw	high(0)
	movlb	0	; () banked
	movwf	(1+(?_printf+08h))&0ffh
	movlw	low(0)
	movwf	(0+(?_printf+08h))&0ffh
	movff	(main@i),(c:___wmul@multiplier)
	movff	(main@i+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,0+(?_printf+0Ah)
	movff	1+?___wmul,1+(?_printf+0Ah)
	call	_printf	;wreg free
	line	976
	
l5197:
	movlb	2	; () banked
	infsnz	((main@j))&0ffh
	incf	((main@j+1))&0ffh
	
l5199:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j+1))&0ffh,7
	goto	u6341
	movlb	2	; () banked
	movf	((main@j+1))&0ffh,w
	bnz	u6340
	movlw	5
	movlb	2	; () banked
	subwf	 ((main@j))&0ffh,w
	btfss	status,0
	goto	u6341
	goto	u6340

u6341:
	goto	l5193
u6340:
	goto	l5107
	
l743:; BSR set to: 2

	line	980
	goto	l5107
	line	981
	
l744:; BSR set to: 0

	line	982
	bsf	((c:3969)),c,5	;volatile
	line	983
	bcf	((c:3968)),c,4	;volatile
	line	984
	bcf	((c:3969)),c,0	;volatile
	line	985
	
l5201:; BSR set to: 0

	btfsc	((c:_TIME+3)),c,7
	goto	u6351
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u6350
	movlw	209
	subwf	 ((c:_TIME)),c,w
	movlw	7
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u6351
	goto	u6350

u6351:
	goto	l5107
u6350:
	
l5203:; BSR set to: 0

	movlw	low(02h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	goto	l5107
	
l745:; BSR set to: 0

	line	986
	goto	l5107
	line	987
	
l746:; BSR set to: 0

	line	988
	
l5205:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	989
	
l5207:
	movlw	high(0)
	movwf	((c:_x+1)),c
	movlw	low(0)
	movwf	((c:_x)),c
	
l5209:
	btfsc	((c:_x+1)),c,7
	goto	u6361
	movf	((c:_x+1)),c,w
	bnz	u6360
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6361
	goto	u6360

u6361:
	goto	l5213
u6360:
	goto	l5227
	
l5211:
	goto	l5227
	
l747:
	line	990
	
l5213:
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
	goto	u6371
	goto	u6370

u6371:
	goto	l5217
u6370:
	
l5215:; BSR set to: 0

	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1922)
	movff	postdec2,(_main$1922+1)
	movlb	2	; () banked
	movlw	0
	btfsc	((_main$1922+1))&0ffh,7
	movlw	-1
	movwf	((_main$1922+2))&0ffh
	movwf	((_main$1922+3))&0ffh
	goto	l752
	
l750:; BSR set to: 2

	
l5217:
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

	movff	postinc2,(_main$1922)
	movff	postinc2,(_main$1922+1)
	movff	postinc2,(_main$1922+2)
	movff	postinc2,(_main$1922+3)
	
l752:
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

	movff	(_main$1922),postinc2
	movff	(_main$1922+1),postinc2
	movff	(_main$1922+2),postinc2
	movff	(_main$1922+3),postinc2

	line	991
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
	goto	u6381
	goto	u6380

u6381:
	goto	l5221
u6380:
	
l5219:; BSR set to: 0

	bcf	status,0
	rlcf	((c:_x)),c,w
	movwf	fsr2l
	rlcf	((c:_x+1)),c,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1923)
	movff	postdec2,(_main$1923+1)
	movlb	2	; () banked
	movlw	0
	btfsc	((_main$1923+1))&0ffh,7
	movlw	-1
	movwf	((_main$1923+2))&0ffh
	movwf	((_main$1923+3))&0ffh
	goto	l756
	
l754:; BSR set to: 2

	
l5221:
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

	movff	postinc2,(_main$1923)
	movff	postinc2,(_main$1923+1)
	movff	postinc2,(_main$1923+2)
	movff	postinc2,(_main$1923+3)
	
l756:
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

	movff	(_main$1923),postinc2
	movff	(_main$1923+1),postinc2
	movff	(_main$1923+2),postinc2
	movff	(_main$1923+3),postinc2

	line	989
	
l5223:; BSR set to: 0

	infsnz	((c:_x)),c
	incf	((c:_x+1)),c
	
l5225:; BSR set to: 0

	btfsc	((c:_x+1)),c,7
	goto	u6391
	movf	((c:_x+1)),c,w
	bnz	u6390
	movlw	11
	subwf	 ((c:_x)),c,w
	btfss	status,0
	goto	u6391
	goto	u6390

u6391:
	goto	l5213
u6390:
	goto	l5227
	
l748:; BSR set to: 0

	line	994
	
l5227:
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
	goto	u6400
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6401
	movlw	201
	subwf	 (0+?___almod),c,w
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
	movf	((c:3968)),c,w	;volatile
	movlb	0	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3968)),c	;volatile
	line	995
	
l5229:; BSR set to: 0

	movlw	low(0)
	movlb	2	; () banked
	movwf	((_main$1924))&0ffh
	
l5231:; BSR set to: 2

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
	goto	u6421
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6420
	movlw	101
	subwf	 (0+?___almod),c,w
	btfss	status,0
	goto	u6421
	goto	u6420

u6421:
	goto	l5237
u6420:
	
l5233:
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
	goto	u6430
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6431
	movlw	200
	subwf	 (0+?___almod),c,w
	btfsc	status,0
	goto	u6431
	goto	u6430

u6431:
	goto	l5237
u6430:
	
l5235:
	movlw	low(01h)
	movlb	2	; () banked
	movwf	((_main$1924))&0ffh
	goto	l5237
	
l758:; BSR set to: 2

	
l5237:
	movlb	2	; () banked
	btfsc	(_main$1924)&0ffh,0
	bra	u6445
	bcf	((c:3969)),c,5	;volatile
	bra	u6446
	u6445:
	bsf	((c:3969)),c,5	;volatile
	u6446:

	line	996
	
l5239:
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
	goto	u6451
	movf	(3+?___almod),c,w
	iorwf	(2+?___almod),c,w
	iorwf	(1+?___almod),c,w
	bnz	u6450
	movlw	100
	subwf	 (0+?___almod),c,w
	btfss	status,0
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
	line	998
	
l5241:; BSR set to: 0

	btfsc	((c:3971)),c,6	;volatile
	goto	u6471
	goto	u6470
u6471:
	goto	l5249
u6470:
	line	999
	
l5243:; BSR set to: 0

		movlw	low(STR_5)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_5)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	1000
	
l5245:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	1001
	
l5247:
	movlw	low(01h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	goto	l5249
	line	1002
	
l759:; BSR set to: 0

	line	1003
	
l5249:; BSR set to: 0

	btfsc	((c:3971)),c,4	;volatile
	goto	u6481
	goto	u6480
u6481:
	goto	l5107
u6480:
	line	1004
	
l5251:; BSR set to: 0

		movlw	low(STR_6)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_6)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	call	_printf	;wreg free
	line	1005
	
l5253:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	1006
	
l5255:
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	goto	l5107
	line	1007
	
l760:; BSR set to: 0

	line	1008
	goto	l5107
	line	1009
	
l761:; BSR set to: 0

	line	1010
	bsf	((c:3969)),c,0	;volatile
	line	1011
	bcf	((c:3968)),c,4	;volatile
	line	1012
	bcf	((c:3969)),c,5	;volatile
	line	1015
	
l5257:; BSR set to: 0

	movlw	high(0)
	movwf	((c:MotorsSpeed@A+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@A)),c
	movlw	high(0)
	movwf	((c:MotorsSpeed@B+1)),c
	movlw	low(0)
	movwf	((c:MotorsSpeed@B)),c
	call	_MotorsSpeed	;wreg free
	line	1017
	
l5259:
	call	_EnhancedRead	;wreg free
	line	1019
	
l5261:
	btfsc	((c:_TIME+3)),c,7
	goto	u6491
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u6490
	movlw	233
	subwf	 ((c:_TIME)),c,w
	movlw	3
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u6491
	goto	u6490

u6491:
	goto	l5297
u6490:
	line	1020
	
l5263:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	1022
	movlw	high(0)
	movlb	2	; () banked
	movwf	((main@j_1928+1))&0ffh
	movlw	low(0)
	movwf	((main@j_1928))&0ffh
	
l5265:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j_1928+1))&0ffh,7
	goto	u6501
	movlb	2	; () banked
	movf	((main@j_1928+1))&0ffh,w
	bnz	u6500
	movlw	5
	movlb	2	; () banked
	subwf	 ((main@j_1928))&0ffh,w
	btfss	status,0
	goto	u6501
	goto	u6500

u6501:
	goto	l5269
u6500:
	goto	l5293
	
l5267:; BSR set to: 2

	goto	l5293
	
l763:; BSR set to: 2

	line	1023
	
l5269:; BSR set to: 2

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@j_1928))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@j_1928+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_fw)
	addwf	fsr2l
	movlw	high(_fw)
	addwfc	fsr2h
	movff	postinc2,(main@i_1927)
	movff	postdec2,(main@i_1927+1)
	line	1024
	
l5271:; BSR set to: 2

	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr1l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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
	goto	u6511
	goto	u6510

u6511:
	goto	l5275
u6510:
	
l5273:; BSR set to: 0

	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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

	movff	postinc2,(_main$1931)
	movff	postinc2,(_main$1931+1)
	movff	postinc2,(_main$1931+2)
	movff	postinc2,(_main$1931+3)
	goto	l772
	
l770:; BSR set to: 0

	
l5275:; BSR set to: 0

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1931)
	movff	postdec2,(_main$1931+1)
	movlb	2	; () banked
	movlw	0
	btfsc	((_main$1931+1))&0ffh,7
	movlw	-1
	movwf	((_main$1931+2))&0ffh
	movwf	((_main$1931+3))&0ffh
	
l772:
	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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

	movlb	2	; () banked
		movf	((_main$1931))&0ffh,w
	subwf	postinc2,w
	movlb	2	; () banked
	movf	((_main$1931+1))&0ffh,w
	subwfb	postinc2,w
	movlb	2	; () banked
	movf	((_main$1931+2))&0ffh,w
	subwfb	postinc2,w
	movf	postinc2,w
	xorlw	80h
	movlb	0	; () banked
	movwf	(??_main+6+0)&0ffh
	movlb	2	; () banked
	movf	((_main$1931+3))&0ffh,w
	xorlw	80h
	movlb	0	; () banked
	subwfb	(??_main+6+0)&0ffh,w
	btfss	status,0
	goto	u6521
	goto	u6520

u6521:
	goto	l5279
u6520:
	
l5277:; BSR set to: 0

	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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

	movff	postinc2,(_main$1930)
	movff	postinc2,(_main$1930+1)
	movff	postinc2,(_main$1930+2)
	movff	postinc2,(_main$1930+3)
	goto	l5287
	
l766:; BSR set to: 0

	
l5279:; BSR set to: 0

	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr1l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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
	goto	u6531
	goto	u6530

u6531:
	goto	l5283
u6530:
	
l5281:; BSR set to: 0

	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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

	movff	postinc2,(_main$1932)
	movff	postinc2,(_main$1932+1)
	movff	postinc2,(_main$1932+2)
	movff	postinc2,(_main$1932+3)
	goto	l5285
	
l774:; BSR set to: 0

	
l5283:; BSR set to: 0

	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_V)
	addwf	fsr2l
	movlw	high(_V)
	addwfc	fsr2h
	movff	postinc2,(_main$1932)
	movff	postdec2,(_main$1932+1)
	movlb	2	; () banked
	movlw	0
	btfsc	((_main$1932+1))&0ffh,7
	movlw	-1
	movwf	((_main$1932+2))&0ffh
	movwf	((_main$1932+3))&0ffh
	goto	l5285
	
l776:; BSR set to: 2

	
l5285:
	movff	(_main$1932),(_main$1930)
	movff	(_main$1932+1),(_main$1930+1)
	movff	(_main$1932+2),(_main$1930+2)
	movff	(_main$1932+3),(_main$1930+3)
	goto	l5287
	
l768:
	
l5287:
		movlw	low(STR_7)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_7)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@i_1927),0+(?_printf+02h)
	movff	(main@i_1927+1),1+(?_printf+02h)
	movlw	low((_amin))
	movlb	0	; () banked
	movwf	(??_main+0+0)&0ffh
	movlw	high((_amin))
	movlb	0	; () banked
	movwf	1+(??_main+0+0)&0ffh
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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
	movlb	2	; () banked
	movf	((_main$1930))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+2+0)&0ffh,w
	movwf	((c:___lmul@multiplier)),c
	movlb	2	; () banked
	movf	((_main$1930+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+2+1)&0ffh,w
	movwf	1+((c:___lmul@multiplier)),c
	
	movlb	2	; () banked
	movf	((_main$1930+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+2+2)&0ffh,w
	movwf	2+((c:___lmul@multiplier)),c
	
	movlb	2	; () banked
	movf	((_main$1930+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+2+3)&0ffh,w
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
	
	movlw	low((_amax))
	movlb	0	; () banked
	movwf	(??_main+6+0)&0ffh
	movlw	high((_amax))
	movlb	0	; () banked
	movwf	1+(??_main+6+0)&0ffh
	bcf	status,0
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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
	movlb	2	; () banked
	rlcf	((main@i_1927))&0ffh,w
	movwf	fsr2l
	movlb	2	; () banked
	rlcf	((main@i_1927+1))&0ffh,w
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
	
	movff	(main@i_1927),(c:___wmul@multiplier)
	movff	(main@i_1927+1),(c:___wmul@multiplier+1)
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
	movff	(main@i_1927),(c:___wmul@multiplier)
	movff	(main@i_1927+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1)),c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand)),c
	call	___wmul	;wreg free
	movff	0+?___wmul,0+(?_printf+0Ch)
	movff	1+?___wmul,1+(?_printf+0Ch)
	call	_printf	;wreg free
	line	1022
	
l5289:
	movlb	2	; () banked
	infsnz	((main@j_1928))&0ffh
	incf	((main@j_1928+1))&0ffh
	
l5291:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@j_1928+1))&0ffh,7
	goto	u6541
	movlb	2	; () banked
	movf	((main@j_1928+1))&0ffh,w
	bnz	u6540
	movlw	5
	movlb	2	; () banked
	subwf	 ((main@j_1928))&0ffh,w
	btfss	status,0
	goto	u6541
	goto	u6540

u6541:
	goto	l5269
u6540:
	goto	l5293
	
l764:; BSR set to: 2

	line	1026
	
l5293:; BSR set to: 2

	call	_Line	;wreg free
	movff	0+?_Line,(main@line)
	movff	1+?_Line,(main@line+1)
	line	1027
	
l5295:
		movlw	low(STR_8)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_8)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@line),0+(?_printf+02h)
	movff	(main@line+1),1+(?_printf+02h)
	call	_printf	;wreg free
	goto	l5297
	line	1028
	
l762:
	line	1029
	
l5297:
	btfsc	((c:3971)),c,5	;volatile
	goto	u6551
	goto	u6550
u6551:
	goto	l5107
u6550:
	line	1030
	
l5299:
	movlw	low(05h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	goto	l5107
	line	1031
	
l777:; BSR set to: 0

	line	1032
	goto	l5107
	line	1033
	
l778:; BSR set to: 0

	line	1034
	bsf	((c:3969)),c,0	;volatile
	line	1035
	bsf	((c:3968)),c,4	;volatile
	line	1036
	bsf	((c:3969)),c,5	;volatile
	line	1037
	btfss	((c:3971)),c,5	;volatile
	goto	u6561
	goto	u6560
u6561:
	goto	l5107
u6560:
	line	1038
	
l5301:; BSR set to: 0

	movlw	low(06h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	goto	l5107
	line	1039
	
l779:; BSR set to: 0

	line	1040
	goto	l5107
	line	1041
	
l780:; BSR set to: 0

	line	1042
	bsf	((c:3969)),c,0	;volatile
	line	1043
	bsf	((c:3968)),c,4	;volatile
	line	1044
	bcf	((c:3969)),c,5	;volatile
	line	1046
	
l5303:; BSR set to: 0

	call	_EnhancedRead	;wreg free
	line	1047
	
l5305:
	call	_Line	;wreg free
	movff	0+?_Line,(main@a)
	movff	1+?_Line,(main@a+1)
	movlb	2	; () banked
	movlw	0
	btfsc	((main@a+1))&0ffh,7
	movlw	-1
	movwf	((main@a+2))&0ffh
	movwf	((main@a+3))&0ffh
	line	1048
	
l5307:; BSR set to: 2

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
	movlb	2	; () banked
	movf	((main@a))&0ffh,w
	movlb	0	; () banked
	addwf	(??_main+0+0)&0ffh,w
	movlb	2	; () banked
	movwf	((main@b))&0ffh
	movlb	2	; () banked
	movf	((main@a+1))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	2	; () banked
	movwf	1+((main@b))&0ffh
	
	movlb	2	; () banked
	movf	((main@a+2))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+2)&0ffh,w
	movlb	2	; () banked
	movwf	2+((main@b))&0ffh
	
	movlb	2	; () banked
	movf	((main@a+3))&0ffh,w
	movlb	0	; () banked
	addwfc	(??_main+0+3)&0ffh,w
	movlb	2	; () banked
	movwf	3+((main@b))&0ffh
	line	1049
	
l5309:; BSR set to: 2

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
	movlb	2	; () banked
	movwf	((main@rt))&0ffh
	movf	(1+?___lmul),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	2	; () banked
	movwf	1+((main@rt))&0ffh
	
	movf	(2+?___lmul),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+2)&0ffh,w
	movlb	2	; () banked
	movwf	2+((main@rt))&0ffh
	
	movf	(3+?___lmul),c,w
	movlb	0	; () banked
	addwfc	(??_main+0+3)&0ffh,w
	movlb	2	; () banked
	movwf	3+((main@rt))&0ffh
	line	1057
	
l5311:; BSR set to: 2

	movlb	2	; () banked
	btfsc	((main@rt+3))&0ffh,7
	goto	u6571
	movlb	2	; () banked
	movf	((main@rt+3))&0ffh,w
	movlb	2	; () banked
	iorwf	((main@rt+2))&0ffh,w
	movlb	2	; () banked
	iorwf	((main@rt+1))&0ffh,w
	bnz	u6570
	movlb	2	; () banked
	decf	((main@rt))&0ffh,w
	btfss	status,0
	goto	u6571
	goto	u6570

u6571:
	goto	l5317
u6570:
	line	1058
	
l5313:; BSR set to: 2

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
	movlb	2	; () banked
	movwf	((main@am))&0ffh
	movlw	01h
	movlb	0	; () banked
	addwfc	(??_main+0+1)&0ffh,w
	movlb	2	; () banked
	movwf	1+((main@am))&0ffh
	
	movlw	0
	movlb	0	; () banked
	addwfc	(??_main+0+2)&0ffh,w
	movlb	2	; () banked
	movwf	2+((main@am))&0ffh
	
	movlw	0
	movlb	0	; () banked
	addwfc	(??_main+0+3)&0ffh,w
	movlb	2	; () banked
	movwf	3+((main@am))&0ffh
	line	1059
	
l5315:; BSR set to: 2

	movlw	low(01C2h)
	movlb	2	; () banked
	movwf	((main@bm))&0ffh
	movlw	high(01C2h)
	movwf	((main@bm+1))&0ffh
	movlw	low highword(01C2h)
	movwf	((main@bm+2))&0ffh
	movlw	high highword(01C2h)
	movwf	((main@bm+3))&0ffh
	line	1060
	goto	l5321
	
l781:; BSR set to: 2

	line	1061
	
l5317:; BSR set to: 2

	movlw	low(01C2h)
	movlb	2	; () banked
	movwf	((main@am))&0ffh
	movlw	high(01C2h)
	movwf	((main@am+1))&0ffh
	movlw	low highword(01C2h)
	movwf	((main@am+2))&0ffh
	movlw	high highword(01C2h)
	movwf	((main@am+3))&0ffh
	line	1062
	
l5319:; BSR set to: 2

	movlw	0C2h
	movlb	2	; () banked
	addwf	((main@rt))&0ffh,w
	movlb	2	; () banked
	movwf	((main@bm))&0ffh
	movlw	01h
	movlb	2	; () banked
	addwfc	((main@rt+1))&0ffh,w
	movlb	2	; () banked
	movwf	1+((main@bm))&0ffh
	
	movlw	0
	movlb	2	; () banked
	addwfc	((main@rt+2))&0ffh,w
	movlb	2	; () banked
	movwf	2+((main@bm))&0ffh
	
	movlw	0
	movlb	2	; () banked
	addwfc	((main@rt+3))&0ffh,w
	movlb	2	; () banked
	movwf	3+((main@bm))&0ffh
	goto	l5321
	line	1063
	
l782:; BSR set to: 2

	line	1064
	
l5321:; BSR set to: 2

	movff	(main@am),(c:MotorsSpeed@A)
	movff	(main@am+1),(c:MotorsSpeed@A+1)
	movff	(main@bm),(c:MotorsSpeed@B)
	movff	(main@bm+1),(c:MotorsSpeed@B+1)
	call	_MotorsSpeed	;wreg free
	line	1065
	
l5323:
	movff	(main@a),(_prev2_line)
	movff	(main@a+1),(_prev2_line+1)
	movff	(main@a+2),(_prev2_line+2)
	movff	(main@a+3),(_prev2_line+3)
	line	1066
	
l5325:
	btfsc	((c:_TIME+3)),c,7
	goto	u6581
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u6580
	movlw	245
	subwf	 ((c:_TIME)),c,w
	movlw	1
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u6581
	goto	u6580

u6581:
	goto	l5337
u6580:
	line	1067
	
l5327:
	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	1068
	
l5329:
		movlw	low(STR_9)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_9)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@a),0+(?_printf+02h)
	movff	(main@a+1),1+(?_printf+02h)
	movff	(main@a+2),2+(?_printf+02h)
	movff	(main@a+3),3+(?_printf+02h)
	call	_printf	;wreg free
	line	1069
	
l5331:
		movlw	low(STR_10)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_10)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@rt),0+(?_printf+02h)
	movff	(main@rt+1),1+(?_printf+02h)
	movff	(main@rt+2),2+(?_printf+02h)
	movff	(main@rt+3),3+(?_printf+02h)
	call	_printf	;wreg free
	line	1070
	
l5333:
		movlw	low(STR_11)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_11)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@am),0+(?_printf+02h)
	movff	(main@am+1),1+(?_printf+02h)
	movff	(main@am+2),2+(?_printf+02h)
	movff	(main@am+3),3+(?_printf+02h)
	call	_printf	;wreg free
	line	1071
	
l5335:
		movlw	low(STR_12)
	movlb	0	; () banked
	movwf	((printf@f))&0ffh
	movlw	high(STR_12)
	movlb	0	; () banked
	movwf	((printf@f+1))&0ffh

	movff	(main@bm),0+(?_printf+02h)
	movff	(main@bm+1),1+(?_printf+02h)
	movff	(main@bm+2),2+(?_printf+02h)
	movff	(main@bm+3),3+(?_printf+02h)
	call	_printf	;wreg free
	goto	l5337
	line	1072
	
l783:
	line	1073
	
l5337:
	btfsc	((c:3971)),c,6	;volatile
	goto	u6591
	goto	u6590
u6591:
	goto	l5107
u6590:
	line	1074
	
l5339:
	movlw	low(03h)
	movlb	0	; () banked
	movwf	((_status))&0ffh
	goto	l5107
	line	1075
	
l784:; BSR set to: 0

	line	1076
	goto	l5107
	line	1077
	
l5341:; BSR set to: 0

	goto	l5107
	line	926
	
l713:; BSR set to: 0

	
l5343:
	movlb	0	; () banked
	movf	((_status))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 7, Range of values is 0 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           22    12 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l5109
	xorlw	1^0	; case 1
	skipnz
	goto	l744
	xorlw	2^1	; case 2
	skipnz
	goto	l5167
	xorlw	3^2	; case 3
	skipnz
	goto	l761
	xorlw	4^3	; case 4
	skipnz
	goto	l5205
	xorlw	5^4	; case 5
	skipnz
	goto	l778
	xorlw	6^5	; case 6
	skipnz
	goto	l780
	goto	l5107

	line	1077
	
l738:; BSR set to: 0

	goto	l5107
	line	1078
	
l785:; BSR set to: 0

	line	921
	goto	l5107
	
l786:; BSR set to: 0

	line	1079
	
l787:; BSR set to: 0

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
;;  f               2    0[BANK0 ] PTR const unsigned char 
;;		 -> STR_12(58), STR_11(58), STR_10(59), STR_9(61), 
;;		 -> STR_8(61), STR_7(60), STR_6(39), STR_5(44), 
;;		 -> STR_4(60), STR_3(47), STR_2(37), STR_1(37), 
;; Auto vars:     Size  Location     Type
;;  tmpval          4    0        struct .
;;  cp              3    0        PTR const unsigned char 
;;  val             2   51[COMRAM] unsigned int 
;;  ap              2   47[COMRAM] PTR void [1]
;;		 -> ?_printf(2), 
;;  len             2    0        unsigned int 
;;  c               1   53[COMRAM] char 
;;  prec            1   50[COMRAM] char 
;;  flag            1   49[COMRAM] unsigned char 
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
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	464
global __ptext1
__ptext1:
psect	text1
	file	"/opt/microchip/xc8/v1.34/sources/common/doprnt.c"
	line	464
	global	__size_of_printf
	__size_of_printf	equ	__end_of_printf-_printf
	
_printf:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	533
	
l4951:
		movlw	low(?_printf+02h)
	movwf	((c:printf@ap)),c
	movlw	high(?_printf+02h)
	movwf	((c:printf@ap+1)),c

	line	536
	goto	l4999
	
l799:
	line	538
	
l4953:
		movlw	37
	xorwf	((c:printf@c)),c,w
	btfsc	status,2
	goto	u5871
	goto	u5870

u5871:
	goto	l4957
u5870:
	line	541
	
l4955:
	movf	((c:printf@c)),c,w
	
	call	_putch
	line	542
	goto	l4999
	line	543
	
l800:
	line	548
	
l4957:
	movlw	low(0)
	movwf	((c:printf@flag)),c
	line	635
	goto	l4961
	line	637
	
l802:
	line	638
	goto	l817
	line	697
	
l804:
	goto	l4963
	line	698
	
l805:
	line	699
	goto	l4963
	line	802
	
l807:
	line	813
	goto	l4999
	line	822
	
l4959:
	goto	l4963
	line	635
	
l801:
	
l4961:
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
	goto	l817
	xorlw	100^0	; case 100
	skipnz
	goto	l4963
	xorlw	105^100	; case 105
	skipnz
	goto	l4963
	goto	l4999

	line	822
	
l806:; BSR set to: 0

	line	1259
	
l4963:
	movff	(c:printf@ap),fsr2l
	movff	(c:printf@ap+1),fsr2h
	movff	postinc2,(c:printf@val)
	movff	postdec2,(c:printf@val+1)
	
l4965:
	movlw	02h
	addwf	((c:printf@ap)),c
	movlw	0
	addwfc	((c:printf@ap+1)),c
	line	1261
	
l4967:
	btfsc	((c:printf@val+1)),c,7
	goto	u5880
	goto	u5881

u5881:
	goto	l4973
u5880:
	line	1262
	
l4969:
	movlw	(03h)&0ffh
	iorwf	((c:printf@flag)),c
	line	1263
	
l4971:
	negf	((c:printf@val)),c
	comf	((c:printf@val+1)),c
	btfsc	status,0
	incf	((c:printf@val+1)),c
	goto	l4973
	line	1264
	
l808:
	line	1305
	
l4973:
	movlw	low(01h)
	movwf	((c:printf@c)),c
	
l4975:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5891
	goto	u5890

u5891:
	goto	l4979
u5890:
	goto	l4987
	
l4977:
	goto	l4987
	line	1306
	
l809:
	
l4979:
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
	goto	u5901
	goto	u5900

u5901:
	goto	l4983
u5900:
	goto	l4987
	line	1307
	
l4981:
	goto	l4987
	
l811:
	line	1305
	
l4983:
	incf	((c:printf@c)),c
	
l4985:
		movlw	5
	xorwf	((c:printf@c)),c,w
	btfss	status,2
	goto	u5911
	goto	u5910

u5911:
	goto	l4979
u5910:
	goto	l4987
	
l810:
	line	1438
	
l4987:
	movff	(c:printf@flag),??_printf+0+0
	movlw	03h
	andwf	(??_printf+0+0),c
	btfsc	status,2
	goto	u5921
	goto	u5920
u5921:
	goto	l4991
u5920:
	line	1439
	
l4989:
	movlw	(02Dh)&0ffh
	
	call	_putch
	goto	l4991
	
l812:
	line	1472
	
l4991:
	movff	(c:printf@c),(c:printf@prec)
	line	1474
	goto	l4997
	
l814:
	line	1489
	
l4993:
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
	
l4995:
	movf	((c:printf@c)),c,w
	
	call	_putch
	goto	l4997
	line	1525
	
l813:
	line	1474
	
l4997:
	decf	((c:printf@prec)),c
		incf	((c:printf@prec)),c,w
	btfss	status,2
	goto	u5931
	goto	u5930

u5931:
	goto	l4993
u5930:
	goto	l4999
	
l815:
	goto	l4999
	line	1533
	
l798:
	line	536
	
l4999:
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
	goto	u5941
	goto	u5940
u5941:
	goto	l4953
u5940:
	goto	l817
	
l816:; BSR set to: 0

	goto	l817
	line	1535
	
l803:; BSR set to: 0

	line	1541
;	Return value of _printf is never used
	
l817:
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
	
l4271:
	goto	l200
	
l201:
	line	210
	
l200:
	line	209
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u4871
	goto	u4870
u4871:
	goto	l200
u4870:
	goto	l4273
	
l202:
	line	211
	
l4273:
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
	
l4503:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u5091
	goto	u5090

u5091:
	goto	l1348
u5090:
	line	14
	
l4505:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l4509
	
l1350:
	line	16
	
l4507:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l4509
	line	18
	
l1349:
	line	15
	
l4509:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u5101
	goto	u5100
u5101:
	goto	l4507
u5100:
	goto	l4511
	
l1351:
	goto	l4511
	line	19
	
l1352:
	line	20
	
l4511:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u5111
	goto	u5110

u5111:
	goto	l4515
u5110:
	line	21
	
l4513:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l4515
	
l1353:
	line	22
	
l4515:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l4517:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l4511
	goto	l1348
	
l1354:
	line	24
	
l1348:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1355:
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
	
l4481:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l4483:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u5061
	goto	u5060

u5061:
	goto	l1338
u5060:
	line	16
	
l4485:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l4489
	
l1340:
	line	18
	
l4487:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l4489
	line	20
	
l1339:
	line	17
	
l4489:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u5071
	goto	u5070
u5071:
	goto	l4487
u5070:
	goto	l4491
	
l1341:
	goto	l4491
	line	21
	
l1342:
	line	22
	
l4491:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l4493:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u5081
	goto	u5080

u5081:
	goto	l4499
u5080:
	line	24
	
l4495:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l4497:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l4499
	line	26
	
l1343:
	line	27
	
l4499:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l4501:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l4491
	goto	l1338
	
l1344:
	line	29
	
l1338:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1345:
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
	
l4539:
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
	movlb	1	; () banked
	movwf	((_MS))&0ffh
	movlw	high(0)
	movwf	((_MS+1))&0ffh
	movlw	low highword(0)
	movwf	((_MS+2))&0ffh
	movlw	high highword(0)
	movwf	((_MS+3))&0ffh
	line	335
	
l4541:; BSR set to: 1

	call	_ResetCounter	;wreg free
	line	336
	
l4543:
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
	
l4545:
	call	_InitSP	;wreg free
	line	343
	
l4547:
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
	
l4275:
		bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	270
	
l4277:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	273
	
l4279:
	bcf	((c:3949)),c,3	;volatile
	line	274
	
l4281:
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
	
l4283:
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
	
l4377:
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
	
l4379:
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
	
l4381:
	bcf	((c:4042)),c,2	;volatile
	line	787
	movlw	low(0F9h)
	movwf	((c:4043)),c	;volatile
	line	788
	
l4383:
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
	
l4295:
	bcf	((c:4053)),c,7	;volatile
	line	375
	bcf	((c:4053)),c,6	;volatile
	line	376
	bcf	((c:4053)),c,5	;volatile
	line	378
	bsf	((c:4053)),c,3	;volatile
	line	379
	
l4297:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	380
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	383
	
l4299:
	bsf	((c:4081)),c,2	;volatile
	line	384
	
l4301:
	bcf	((c:4048)),c,7	;volatile
	line	385
	
l4303:
	bsf	((c:4082)),c,5	;volatile
	line	389
	
l4305:
	bsf	((c:4082)),c,7	;volatile
	line	391
	
l4307:
	bsf	((c:4053)),c,7	;volatile
	line	393
	
l4309:
	bcf	((c:4045)),c,0	;volatile
	line	394
	
l4311:
	bcf	((c:4045)),c,7	;volatile
	line	395
	
l4313:
	bcf	((c:4045)),c,6	;volatile
	line	396
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	397
	
l4315:
	bcf	((c:4045)),c,3	;volatile
	line	398
	
l4317:
	bcf	((c:4045)),c,1	;volatile
	line	399
	
l4319:
	bsf	((c:4045)),c,0	;volatile
	line	401
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	402
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	410
	
l4321:
	bcf	((c:3987)),c,5	;volatile
	line	412
	
l4323:
	bcf	((c:3986)),c,4	;volatile
	line	413
	
l4325:
	bcf	((c:3987)),c,0	;volatile
	line	415
	
l4327:
	bsf	((c:3989)),c,4	;volatile
	line	416
	
l4329:
	bsf	((c:3989)),c,5	;volatile
	line	417
	
l4331:
	bsf	((c:3989)),c,6	;volatile
	line	420
	
l4333:
	bcf	((c:3989)),c,1	;volatile
	line	421
	
l4335:
	bcf	((c:3989)),c,2	;volatile
	line	422
	
l4337:
	bsf	((c:3989)),c,0	;volatile
	line	423
	
l4339:
	bcf	((c:3989)),c,3	;volatile
	line	426
	
l4341:
	bcf	((c:3988)),c,1	;volatile
	line	427
	
l4343:
	bcf	((c:3988)),c,2	;volatile
	line	430
	
l4345:
	bsf	((c:3986)),c,0	;volatile
	line	431
	
l4347:
	bsf	((c:3986)),c,1	;volatile
	line	432
	
l4349:
	bsf	((c:3986)),c,2	;volatile
	line	433
	
l4351:
	bsf	((c:3986)),c,3	;volatile
	line	434
	
l4353:
	bsf	((c:3986)),c,5	;volatile
	line	436
	
l4355:
	bsf	((c:3990)),c,0	;volatile
	line	437
	
l4357:
	bsf	((c:3990)),c,1	;volatile
	line	438
	
l4359:
	bsf	((c:3990)),c,2	;volatile
	line	439
	
l4361:
	bsf	((c:3987)),c,2	;volatile
	line	441
	
l4363:
	bsf	((c:3987)),c,1	;volatile
	line	446
	
l4365:
	bcf	((c:3988)),c,6	;volatile
	line	447
	
l4367:
	bsf	((c:3988)),c,7	;volatile
	line	449
	
l4369:
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
	
l4373:
	movlw	low(0)
	movwf	((c:_PisoActual)),c
	line	696
	
l4375:
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
	
l4215:
	
	btfsc	((c:ReadAnalog@channel)),c,(0)&7
	goto	u4731
	goto	u4730
u4731:
	bsf	c:(32274/8),(32274)&7	;volatile
	goto	u4745
u4730:
	bcf	c:(32274/8),(32274)&7	;volatile
u4745:
	line	700
	
l4217:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	03h
	andwf	(??_ReadAnalog+0+0),c
		movlw	02h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4751
	goto	u4750

u4751:
	bsf	c:(32275/8),(32275)&7	;volatile
	goto	u4765
u4750:
	bcf	c:(32275/8),(32275)&7	;volatile
u4765:
	line	701
	
l4219:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	07h
	andwf	(??_ReadAnalog+0+0),c
		movlw	04h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4771
	goto	u4770

u4771:
	bsf	c:(32276/8),(32276)&7	;volatile
	goto	u4785
u4770:
	bcf	c:(32276/8),(32276)&7	;volatile
u4785:
	line	702
	
l4221:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	0Fh
	andwf	(??_ReadAnalog+0+0),c
		movlw	08h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u4791
	goto	u4790

u4791:
	bsf	c:(32277/8),(32277)&7	;volatile
	goto	u4805
u4790:
	bcf	c:(32277/8),(32277)&7	;volatile
u4805:
	line	704
	
l4223:
	bsf	c:(32272/8),(32272)&7	;volatile
	line	705
	
l4225:
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
	
l4371:
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
	
l4285:
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
	
l4287:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	690
	
l4289:
		bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	691
	
l4291:
	bcf	((c:4034)),c,1	;volatile
	line	692
	
l4293:
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
	
l4885:
	movlw	high(0)
	movwf	((c:initLED@x+1)),c
	movlw	low(0)
	movwf	((c:initLED@x)),c
	
l4887:
	btfsc	((c:initLED@x+1)),c,7
	goto	u5771
	movf	((c:initLED@x+1)),c,w
	bnz	u5770
	movlw	11
	subwf	 ((c:initLED@x)),c,w
	btfss	status,0
	goto	u5771
	goto	u5770

u5771:
	goto	l4891
u5770:
	goto	l645
	
l4889:
	goto	l645
	
l643:
	line	821
	
l4891:
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
	
l4893:
	infsnz	((c:initLED@x)),c
	incf	((c:initLED@x+1)),c
	
l4895:
	btfsc	((c:initLED@x+1)),c,7
	goto	u5781
	movf	((c:initLED@x+1)),c,w
	bnz	u5780
	movlw	11
	subwf	 ((c:initLED@x)),c,w
	btfss	status,0
	goto	u5781
	goto	u5780

u5781:
	goto	l4891
u5780:
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
	
l5001:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l5003:
	btfsc	((c:___almod@dividend+3)),c,7
	goto	u5950
	goto	u5951

u5951:
	goto	l5009
u5950:
	line	15
	
l5005:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	line	16
	
l5007:
	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l5009
	line	17
	
l892:
	line	18
	
l5009:
	btfsc	((c:___almod@divisor+3)),c,7
	goto	u5960
	goto	u5961

u5961:
	goto	l5013
u5960:
	line	19
	
l5011:
	comf	((c:___almod@divisor+3)),c
	comf	((c:___almod@divisor+2)),c
	comf	((c:___almod@divisor+1)),c
	negf	((c:___almod@divisor)),c
	movlw	0
	addwfc	((c:___almod@divisor+1)),c
	addwfc	((c:___almod@divisor+2)),c
	addwfc	((c:___almod@divisor+3)),c
	goto	l5013
	
l893:
	line	20
	
l5013:
	movf	((c:___almod@divisor)),c,w
iorwf	((c:___almod@divisor+1)),c,w
iorwf	((c:___almod@divisor+2)),c,w
iorwf	((c:___almod@divisor+3)),c,w
	btfsc	status,2
	goto	u5971
	goto	u5970

u5971:
	goto	l5029
u5970:
	line	21
	
l5015:
	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l5019
	
l896:
	line	23
	
l5017:
	bcf	status,0
	rlcf	((c:___almod@divisor)),c
	rlcf	((c:___almod@divisor+1)),c
	rlcf	((c:___almod@divisor+2)),c
	rlcf	((c:___almod@divisor+3)),c
	line	24
	incf	((c:___almod@counter)),c
	goto	l5019
	line	25
	
l895:
	line	22
	
l5019:
	
	btfss	((c:___almod@divisor+3)),c,(31)&7
	goto	u5981
	goto	u5980
u5981:
	goto	l5017
u5980:
	goto	l5021
	
l897:
	goto	l5021
	line	26
	
l898:
	line	27
	
l5021:
		movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c,w
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c,w
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c,w
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c,w
	btfss	status,0
	goto	u5991
	goto	u5990

u5991:
	goto	l5025
u5990:
	line	28
	
l5023:
	movf	((c:___almod@divisor)),c,w
	subwf	((c:___almod@dividend)),c
	movf	((c:___almod@divisor+1)),c,w
	subwfb	((c:___almod@dividend+1)),c
	movf	((c:___almod@divisor+2)),c,w
	subwfb	((c:___almod@dividend+2)),c
	movf	((c:___almod@divisor+3)),c,w
	subwfb	((c:___almod@dividend+3)),c
	goto	l5025
	
l899:
	line	29
	
l5025:
	bcf	status,0
	rrcf	((c:___almod@divisor+3)),c
	rrcf	((c:___almod@divisor+2)),c
	rrcf	((c:___almod@divisor+1)),c
	rrcf	((c:___almod@divisor)),c
	line	30
	
l5027:
	decfsz	((c:___almod@counter)),c
	
	goto	l5021
	goto	l5029
	
l900:
	goto	l5029
	line	31
	
l894:
	line	32
	
l5029:
	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u6001
	goto	u6000
u6001:
	goto	l5033
u6000:
	line	33
	
l5031:
	comf	((c:___almod@dividend+3)),c
	comf	((c:___almod@dividend+2)),c
	comf	((c:___almod@dividend+1)),c
	negf	((c:___almod@dividend)),c
	movlw	0
	addwfc	((c:___almod@dividend+1)),c
	addwfc	((c:___almod@dividend+2)),c
	addwfc	((c:___almod@dividend+3)),c
	goto	l5033
	
l901:
	line	34
	
l5033:
	movff	(c:___almod@dividend),(c:?___almod)
	movff	(c:___almod@dividend+1),(c:?___almod+1)
	movff	(c:___almod@dividend+2),(c:?___almod+2)
	movff	(c:___almod@dividend+3),(c:?___almod+3)
	goto	l902
	
l5035:
	line	35
	
l902:
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
	
l4519:
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
	
l4521:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	196
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	197
	
l4523:
	bcf	((c:4012)),c,7	;volatile
	line	198
	
l4525:
	bcf	((c:4012)),c,6	;volatile
	line	199
	
l4527:
	bsf	((c:4012)),c,5	;volatile
	line	200
	
l4529:
	bcf	((c:4012)),c,4	;volatile
	line	202
	
l4531:
	bcf	((c:4012)),c,2	;volatile
	line	203
	
l4533:
	bcf	((c:4011)),c,6	;volatile
	line	204
	
l4535:
	bsf	((c:4011)),c,4	;volatile
	line	205
	
l4537:
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
	
l4855:
	goto	l592
	
l4857:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1853)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1853+1)
	goto	l4859
	
l592:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1853)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1853+1)
	goto	l4859
	
l594:
	
l4859:
	movff	(c:_MotorsSpeed$1853),(c:MotorASpeed@S)
	movff	(c:_MotorsSpeed$1853+1),(c:MotorASpeed@S+1)
	call	_MotorASpeed	;wreg free
	line	755
	
l4861:
	movff	(c:MotorsSpeed@B),(c:_MotorsSpeed$1854)
	movff	(c:MotorsSpeed@B+1),(c:_MotorsSpeed$1854+1)
	goto	l4863
	
l596:
	movff	(c:MotorsSpeed@A),(c:_MotorsSpeed$1854)
	movff	(c:MotorsSpeed@A+1),(c:_MotorsSpeed$1854+1)
	goto	l4863
	
l598:
	
l4863:
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
	
l4403:
	negf	((c:MotorBSpeed@S)),c
	comf	((c:MotorBSpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorBSpeed@S+1)),c
	line	809
	
l4405:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4931
	movlw	232
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfss	status,0
	goto	u4931
	goto	u4930

u4931:
	goto	l4409
u4930:
	
l4407:
	movlw	high(03E8h)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4409
	
l629:
	goto	l4409
	
l631:
	line	810
	
l4409:
	btfss	((c:MotorBSpeed@S+1)),c,7
	goto	u4941
	movlw	25
	subwf	 ((c:MotorBSpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorBSpeed@S+1)),c,w
	btfsc	status,0
	goto	u4941
	goto	u4940

u4941:
	goto	l4413
u4940:
	
l4411:
	movlw	high(-1000)
	movwf	((c:MotorBSpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorBSpeed@S)),c
	goto	l4413
	
l633:
	goto	l4413
	
l635:
	line	812
	
l4413:
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4951
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u4950
	decf	((c:MotorBSpeed@S)),c,w
	btfss	status,0
	goto	u4951
	goto	u4950

u4951:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
	incf	(??_MotorBSpeed+0+0)&0ffh,c
	goto	u4968
u4950:
	clrf	(??_MotorBSpeed+0+0)&0ffh,c
u4968:
	rlncf	(??_MotorBSpeed+0+0),c
	rlncf	(??_MotorBSpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorBSpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<2)
	xorwf	(??_MotorBSpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	813
	btfsc	((c:MotorBSpeed@S+1)),c,7
	goto	u4970
	movf	((c:MotorBSpeed@S+1)),c,w
	bnz	u4971
	decf	((c:MotorBSpeed@S)),c,w
	btfsc	status,0
	goto	u4971
	goto	u4970

u4971:
	goto	l4417
u4970:
	
l4415:
	movlw	low(03E8h)
	addwf	((c:MotorBSpeed@S)),c,w
	movwf	((c:MotorBSpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorBSpeed@S+1)),c,w
	movwf	1+((c:MotorBSpeed@S)),c
	goto	l4417
	
l637:
	goto	l4417
	
l639:
	line	815
	
l4417:
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
	
l4419:
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
	
l4385:
	negf	((c:MotorASpeed@S)),c
	comf	((c:MotorASpeed@S+1)),c
	btfsc	status,0
	incf	((c:MotorASpeed@S+1)),c
	line	798
	
l4387:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4881
	movlw	232
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	3
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfss	status,0
	goto	u4881
	goto	u4880

u4881:
	goto	l4391
u4880:
	
l4389:
	movlw	high(03E8h)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(03E8h)
	movwf	((c:MotorASpeed@S)),c
	goto	l4391
	
l614:
	goto	l4391
	
l616:
	line	799
	
l4391:
	btfss	((c:MotorASpeed@S+1)),c,7
	goto	u4891
	movlw	25
	subwf	 ((c:MotorASpeed@S)),c,w
	movlw	252
	subwfb	((c:MotorASpeed@S+1)),c,w
	btfsc	status,0
	goto	u4891
	goto	u4890

u4891:
	goto	l4395
u4890:
	
l4393:
	movlw	high(-1000)
	movwf	((c:MotorASpeed@S+1)),c
	movlw	low(-1000)
	movwf	((c:MotorASpeed@S)),c
	goto	l4395
	
l618:
	goto	l4395
	
l620:
	line	801
	
l4395:
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4901
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u4900
	decf	((c:MotorASpeed@S)),c,w
	btfss	status,0
	goto	u4901
	goto	u4900

u4901:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
	incf	(??_MotorASpeed+0+0)&0ffh,c
	goto	u4918
u4900:
	clrf	(??_MotorASpeed+0+0)&0ffh,c
u4918:
	rlncf	(??_MotorASpeed+0+0),c
	movf	((c:3971)),c,w	;volatile
	xorwf	(??_MotorASpeed+0+0),c,w
	andlw	not (((1<<1)-1)<<1)
	xorwf	(??_MotorASpeed+0+0),c,w
	movwf	((c:3971)),c	;volatile
	line	802
	btfsc	((c:MotorASpeed@S+1)),c,7
	goto	u4920
	movf	((c:MotorASpeed@S+1)),c,w
	bnz	u4921
	decf	((c:MotorASpeed@S)),c,w
	btfsc	status,0
	goto	u4921
	goto	u4920

u4921:
	goto	l4399
u4920:
	
l4397:
	movlw	low(03E8h)
	addwf	((c:MotorASpeed@S)),c,w
	movwf	((c:MotorASpeed@S)),c
	movlw	high(03E8h)
	addwfc	((c:MotorASpeed@S+1)),c,w
	movwf	1+((c:MotorASpeed@S)),c
	goto	l4399
	
l622:
	goto	l4399
	
l624:
	line	804
	
l4399:
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
	
l4401:
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
;;  v               4   46[BANK0 ] long 
;;  b               4   42[BANK0 ] long 
;;  a               4   38[BANK0 ] long 
;;  i               2   50[BANK0 ] int 
;;  g               2   34[BANK0 ] int 
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
;;      Locals:         0      34       0       0       0       0       0       0       0
;;      Temps:          0      18       0       0       0       0       0       0       0
;;      Totals:         2      52       0       0       0       0       0       0       0
;;Total ram usage:       54 bytes
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
	
l4897:
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
	
l4899:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@i+1))&0ffh,7
	goto	u5791
	movlb	0	; () banked
	movf	((Line@i+1))&0ffh,w
	bnz	u5790
	movlw	5
	movlb	0	; () banked
	subwf	 ((Line@i))&0ffh,w
	btfss	status,0
	goto	u5791
	goto	u5790

u5791:
	goto	l4903
u5790:
	goto	l4933
	
l4901:; BSR set to: 0

	goto	l4933
	
l686:; BSR set to: 0

	line	880
	
l4903:; BSR set to: 0

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
	goto	u5801
	goto	u5800

u5801:
	goto	l4907
u5800:
	
l4905:; BSR set to: 0

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

	
l4907:; BSR set to: 0

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
	goto	u5811
	goto	u5810

u5811:
	goto	l4911
u5810:
	
l4909:; BSR set to: 0

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
	goto	l4919
	
l689:; BSR set to: 0

	
l4911:; BSR set to: 0

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
	goto	u5821
	goto	u5820

u5821:
	goto	l4915
u5820:
	
l4913:; BSR set to: 0

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
	goto	l4917
	
l697:; BSR set to: 0

	
l4915:; BSR set to: 0

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
	goto	l4917
	
l699:; BSR set to: 0

	
l4917:; BSR set to: 0

	movff	(_Line$1908),(_Line$1906)
	movff	(_Line$1908+1),(_Line$1906+1)
	movff	(_Line$1908+2),(_Line$1906+2)
	movff	(_Line$1908+3),(_Line$1906+3)
	goto	l4919
	
l691:; BSR set to: 0

	
l4919:; BSR set to: 0

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
	comf	(0+?___aldiv),c
	comf	(1+?___aldiv),c
	comf	(2+?___aldiv),c
	comf	(3+?___aldiv),c
	incf	(0+?___aldiv),c
	movlw	0
	addwfc	(1+?___aldiv),c
	addwfc	(2+?___aldiv),c
	addwfc	(3+?___aldiv),c
	movlw	064h
	addwf	(0+?___aldiv),c,w
	movlb	0	; () banked
	movwf	((Line@v))&0ffh
	movlw	0
	addwfc	(1+?___aldiv),c,w
	movlb	0	; () banked
	movwf	1+((Line@v))&0ffh
	
	movlw	0
	addwfc	(2+?___aldiv),c,w
	movlb	0	; () banked
	movwf	2+((Line@v))&0ffh
	
	movlw	0
	addwfc	(3+?___aldiv),c,w
	movlb	0	; () banked
	movwf	3+((Line@v))&0ffh
	line	881
	
l4921:; BSR set to: 0

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
	
l4923:; BSR set to: 0

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
	
l4925:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@v+3))&0ffh,7
	goto	u5831
	movlb	0	; () banked
	movf	((Line@v+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((Line@v+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((Line@v+1))&0ffh,w
	bnz	u5830
	movlw	31
	movlb	0	; () banked
	subwf	 ((Line@v))&0ffh,w
	btfss	status,0
	goto	u5831
	goto	u5830

u5831:
	goto	l4929
u5830:
	line	884
	
l4927:; BSR set to: 0

	movlw	high(01h)
	movlb	0	; () banked
	movwf	((Line@g+1))&0ffh
	movlw	low(01h)
	movwf	((Line@g))&0ffh
	goto	l4929
	line	885
	
l700:; BSR set to: 0

	line	879
	
l4929:; BSR set to: 0

	movlb	0	; () banked
	infsnz	((Line@i))&0ffh
	incf	((Line@i+1))&0ffh
	
l4931:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((Line@i+1))&0ffh,7
	goto	u5841
	movlb	0	; () banked
	movf	((Line@i+1))&0ffh,w
	bnz	u5840
	movlw	5
	movlb	0	; () banked
	subwf	 ((Line@i))&0ffh,w
	btfss	status,0
	goto	u5841
	goto	u5840

u5841:
	goto	l4903
u5840:
	goto	l4933
	
l687:; BSR set to: 0

	line	887
	
l4933:; BSR set to: 0

	movlb	0	; () banked
	movf	((Line@g))&0ffh,w
	movlb	0	; () banked
iorwf	((Line@g+1))&0ffh,w
	btfss	status,2
	goto	u5851
	goto	u5850

u5851:
	goto	l4947
u5850:
	line	888
	
l4935:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((_prev_line+3))&0ffh,7
	goto	u5860
	movlb	0	; () banked
	movf	((_prev_line+3))&0ffh,w
	movlb	0	; () banked
	iorwf	((_prev_line+2))&0ffh,w
	movlb	0	; () banked
	iorwf	((_prev_line+1))&0ffh,w
	bnz	u5861
	movlb	0	; () banked
	decf	((_prev_line))&0ffh,w
	btfsc	status,0
	goto	u5861
	goto	u5860

u5861:
	goto	l4939
u5860:
	
l4937:; BSR set to: 0

	movlw	high(-180)
	movlb	0	; () banked
	movwf	((_Line$1909+1))&0ffh
	movlw	low(-180)
	movwf	((_Line$1909))&0ffh
	goto	l4941
	
l703:; BSR set to: 0

	
l4939:; BSR set to: 0

	movlw	high(0B4h)
	movlb	0	; () banked
	movwf	((_Line$1909+1))&0ffh
	movlw	low(0B4h)
	movwf	((_Line$1909))&0ffh
	goto	l4941
	
l705:; BSR set to: 0

	
l4941:; BSR set to: 0

	movff	(_Line$1909),(_prev_line)
	movff	(_Line$1909+1),(_prev_line+1)
	movlb	0	; () banked
	movlw	0
	btfsc	((_prev_line+1))&0ffh,7
	movlw	-1
	movwf	((_prev_line+2))&0ffh
	movwf	((_prev_line+3))&0ffh
	line	889
	
l4943:; BSR set to: 0

	movff	(_prev_line),(c:___aldiv@dividend)
	movff	(_prev_line+1),(c:___aldiv@dividend+1)
	movff	(_prev_line+2),(c:___aldiv@dividend+2)
	movff	(_prev_line+3),(c:___aldiv@dividend+3)
	movlw	low(04h)
	movwf	((c:___aldiv@divisor)),c
	movlw	high(04h)
	movwf	((c:___aldiv@divisor+1)),c
	movlw	low highword(04h)
	movwf	((c:___aldiv@divisor+2)),c
	movlw	high highword(04h)
	movwf	((c:___aldiv@divisor+3)),c
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:?_Line)
	movff	1+?___aldiv,(c:?_Line+1)
	goto	l706
	
l4945:
	goto	l706
	line	890
	
l701:
	line	891
	
l4947:
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
	movff	(Line@b),(c:___aldiv@divisor)
	movff	(Line@b+1),(c:___aldiv@divisor+1)
	movff	(Line@b+2),(c:___aldiv@divisor+2)
	movff	(Line@b+3),(c:___aldiv@divisor+3)
	movff	(Line@a),(c:___aldiv@dividend)
	movff	(Line@a+1),(c:___aldiv@dividend+1)
	movff	(Line@a+2),(c:___aldiv@dividend+2)
	movff	(Line@a+3),(c:___aldiv@dividend+3)
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(_Line$2536)
	movff	1+?___aldiv,(_Line$2536+1)
	movff	2+?___aldiv,(_Line$2536+2)
	movff	3+?___aldiv,(_Line$2536+3)
	
	movff	(_Line$2536),(c:___aldiv@dividend)
	movff	(_Line$2536+1),(c:___aldiv@dividend+1)
	movff	(_Line$2536+2),(c:___aldiv@dividend+2)
	movff	(_Line$2536+3),(c:___aldiv@dividend+3)
	movlw	low(04h)
	movwf	((c:___aldiv@divisor)),c
	movlw	high(04h)
	movwf	((c:___aldiv@divisor+1)),c
	movlw	low highword(04h)
	movwf	((c:___aldiv@divisor+2)),c
	movlw	high highword(04h)
	movwf	((c:___aldiv@divisor+3)),c
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(c:?_Line)
	movff	1+?___aldiv,(c:?_Line+1)
	goto	l706
	
l4949:
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
	
l4421:
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
	
l4423:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	goto	l820
	
l4425:
	line	53
	
l820:
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
	
l4427:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l4429
	line	120
	
l829:
	line	121
	
l4429:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u4981
	goto	u4980
u4981:
	goto	l4433
u4980:
	line	122
	
l4431:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l4433
	
l830:
	line	123
	
l4433:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l4435:
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
	goto	u4991
	goto	u4990

u4991:
	goto	l4429
u4990:
	
l831:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l832:
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
;;		_main
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
	opt	stack 29
	line	14
	
l4437:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l4439:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u5000
	goto	u5001

u5001:
	goto	l4445
u5000:
	line	16
	
l4441:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l4443:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l4445
	line	18
	
l879:
	line	19
	
l4445:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u5010
	goto	u5011

u5011:
	goto	l4451
u5010:
	line	20
	
l4447:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l4449:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l4451
	line	22
	
l880:
	line	23
	
l4451:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l4453:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u5021
	goto	u5020

u5021:
	goto	l4473
u5020:
	line	25
	
l4455:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l4459
	
l883:
	line	27
	
l4457:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l4459
	line	29
	
l882:
	line	26
	
l4459:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u5031
	goto	u5030
u5031:
	goto	l4457
u5030:
	goto	l4461
	
l884:
	goto	l4461
	line	30
	
l885:
	line	31
	
l4461:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l4463:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u5041
	goto	u5040

u5041:
	goto	l4469
u5040:
	line	33
	
l4465:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l4467:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l4469
	line	35
	
l886:
	line	36
	
l4469:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l4471:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l4461
	goto	l4473
	
l887:
	goto	l4473
	line	38
	
l881:
	line	39
	
l4473:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u5051
	goto	u5050
u5051:
	goto	l4477
u5050:
	line	40
	
l4475:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l4477
	
l888:
	line	41
	
l4477:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l889
	
l4479:
	line	42
	
l889:
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
	
l4865:
	movlw	low(0)
	movwf	((c:EnhancedRead@i)),c
	
l4867:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u5741
	goto	u5740

u5741:
	goto	l4871
u5740:
	goto	l607
	
l4869:
	goto	l607
	
l602:
	line	761
	
l4871:
	movff	(c:EnhancedRead@i),??_EnhancedRead+0+0
	rlncf	(??_EnhancedRead+0+0),c
	rlncf	(??_EnhancedRead+0+0),c
	movf	((c:4034)),c,w	;volatile
	xorwf	(??_EnhancedRead+0+0),c,w
	andlw	not (((1<<4)-1)<<2)
	xorwf	(??_EnhancedRead+0+0),c,w
	movwf	((c:4034)),c	;volatile
	line	762
	
l4873:
	bsf	((c:4034)),c,1	;volatile
	line	763
	goto	l604
	
l605:
	
l604:
	btfsc	((c:4034)),c,1	;volatile
	goto	u5751
	goto	u5750
u5751:
	goto	l604
u5750:
	goto	l4875
	
l606:
	line	764
	
l4875:
	movf	((c:4036)),c,w	;volatile
	mullw	04h
	movff	prodl,(c:EnhancedRead@aux)
	movff	prodh,(c:EnhancedRead@aux+1)
	line	765
	
l4877:
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
	
l4879:
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
	
l4881:
	incf	((c:EnhancedRead@i)),c
	
l4883:
		movlw	0Bh-1
	cpfsgt	((c:EnhancedRead@i)),c
	goto	u5761
	goto	u5760

u5761:
	goto	l4871
u5760:
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
	
l4227:
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	line	15
	
l4229:
	btfsc	((c:___awdiv@divisor+1)),c,7
	goto	u4810
	goto	u4811

u4811:
	goto	l4235
u4810:
	line	16
	
l4231:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l4233:
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	goto	l4235
	line	18
	
l1003:
	line	19
	
l4235:
	btfsc	((c:___awdiv@dividend+1)),c,7
	goto	u4820
	goto	u4821

u4821:
	goto	l4241
u4820:
	line	20
	
l4237:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l4239:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l4241
	line	22
	
l1004:
	line	23
	
l4241:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l4243:
	movf	((c:___awdiv@divisor)),c,w
iorwf	((c:___awdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u4831
	goto	u4830

u4831:
	goto	l4263
u4830:
	line	25
	
l4245:
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	line	26
	goto	l4249
	
l1007:
	line	27
	
l4247:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l4249
	line	29
	
l1006:
	line	26
	
l4249:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u4841
	goto	u4840
u4841:
	goto	l4247
u4840:
	goto	l4251
	
l1008:
	goto	l4251
	line	30
	
l1009:
	line	31
	
l4251:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l4253:
		movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u4851
	goto	u4850

u4851:
	goto	l4259
u4850:
	line	33
	
l4255:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l4257:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l4259
	line	35
	
l1010:
	line	36
	
l4259:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l4261:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l4251
	goto	l4263
	
l1011:
	goto	l4263
	line	38
	
l1005:
	line	39
	
l4263:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u4861
	goto	u4860
u4861:
	goto	l4267
u4860:
	line	40
	
l4265:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l4267
	
l1012:
	line	41
	
l4267:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l1013
	
l4269:
	line	42
	
l1013:
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
	
i2l2379:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u151_41
	goto	i2u151_40
i2u151_41:
	goto	i2l511
i2u151_40:
	line	596
	
i2l2381:
	movlw	low(01h)
	addwf	((c:_TIME)),c
	movlw	0
	addwfc	((c:_TIME+1)),c
	addwfc	((c:_TIME+2)),c
	addwfc	((c:_TIME+3)),c
	line	597
	
i2l2383:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	598
	
i2l2385:
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	601
	
i2l2387:
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
