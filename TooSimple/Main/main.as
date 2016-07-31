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
	global	_d1
	global	_d2
	global	_fns
	global	_loop
	global	_ma
	global	_mb
	global	_mode
	global	_sa
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
	global	_fa
	global	_fb
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
	global	_d1
_d1:
       ds      2
	global	_d2
_d2:
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
	global	_mc
	global	_mc
_mc:
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
	global	_fa
_fa:
       ds      2
	global	_fb
_fb:
       ds      2
	global	_fc
	global	_fc
_fc:
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
; Clear objects allocated to BANK0 (94 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	94
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (64 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	64
clear_3:
clrf	postinc0,c
decf	wreg
bnz	clear_3
	line	#
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
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_main:	; 0 bytes @ 0x0
	ds   1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_MotorsSpeed:	; 0 bytes @ 0x0
	global	?___almod
?___almod:	; 4 bytes @ 0x0
	global	MotorsSpeed@a
MotorsSpeed@a:	; 2 bytes @ 0x0
	global	_MotorUpdate$1795
_MotorUpdate$1795:	; 2 bytes @ 0x0
	global	___almod@dividend
___almod@dividend:	; 4 bytes @ 0x0
	ds   2
	global	MotorsSpeed@b
MotorsSpeed@b:	; 2 bytes @ 0x2
	global	_MotorUpdate$1796
_MotorUpdate$1796:	; 2 bytes @ 0x2
	ds   2
	global	___almod@divisor
___almod@divisor:	; 4 bytes @ 0x4
	ds   4
?_main:	; 2 bytes @ 0x8
main@argc:	; 2 bytes @ 0x8
	ds   2
main@argv:	; 3 bytes @ 0xA
	ds   3
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_ResetCounter:	; 0 bytes @ 0x0
?_InitAnalog:	; 0 bytes @ 0x0
?_InitTIMERS:	; 0 bytes @ 0x0
?_InitSP:	; 0 bytes @ 0x0
?_ReadAnalog:	; 0 bytes @ 0x0
?_Wixel:	; 0 bytes @ 0x0
?_configurations_init:	; 0 bytes @ 0x0
?_initYBOT:	; 0 bytes @ 0x0
?_enc:	; 0 bytes @ 0x0
??_enc:	; 0 bytes @ 0x0
?_MotorUpdate:	; 0 bytes @ 0x0
	ds   14
??_ResetCounter:	; 0 bytes @ 0xE
??_InitAnalog:	; 0 bytes @ 0xE
??_InitTIMERS:	; 0 bytes @ 0xE
??_ReadAnalog:	; 0 bytes @ 0xE
??_Wixel:	; 0 bytes @ 0xE
??_configurations_init:	; 0 bytes @ 0xE
??_MotorsSpeed:	; 0 bytes @ 0xE
??_MotorUpdate:	; 0 bytes @ 0xE
??___almod:	; 0 bytes @ 0xE
	global	___almod@counter
___almod@counter:	; 1 bytes @ 0xE
	ds   1
	global	ReadAnalog@channel
ReadAnalog@channel:	; 1 bytes @ 0xF
	global	___almod@sign
___almod@sign:	; 1 bytes @ 0xF
	ds   1
??_InitSP:	; 0 bytes @ 0x10
??_initYBOT:	; 0 bytes @ 0x10
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        52
;!    BSS         1266
;!    Persistent  2
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     16      81
;!    BANK0           160     13     160
;!    BANK1           256      1      89
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
;!    _main->___almod
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     1      5     965
;!                                              8 BANK0      5     0      5
;!                                              0 BANK1      1     1      0
;!                        _MotorUpdate
;!                        _MotorsSpeed
;!                              _Wixel
;!                            ___almod
;!                           _initYBOT
;! ---------------------------------------------------------------------------------
;! (1) _initYBOT                                             0     0      0      88
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
;! (2) _InitSP                                               0     0      0      88
;!                         _ReadAnalog
;! ---------------------------------------------------------------------------------
;! (3) _ReadAnalog                                           2     2      0      88
;!                                             14 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (2) _InitAnalog                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) ___almod                                             10     2      8     587
;!                                             14 COMRAM     2     2      0
;!                                              0 BANK0      8     0      8
;! ---------------------------------------------------------------------------------
;! (1) _Wixel                                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _MotorsSpeed                                          4     0      4     216
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
;!BANK1              100      1      59       7       34.8%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      D      A0       5      100.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     10      51       1       85.3%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     14A      20        0.0%
;!DATA                 0      0     546       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 729 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2    8[BANK0 ] int 
;;  argv            3   10[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    8[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       5       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       1       0       0       0       0       0       0
;;      Totals:         0       5       1       0       0       0       0       0       0
;;Total ram usage:        6 bytes
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
	line	729
global __ptext0
__ptext0:
psect	text0
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	729
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 27
	line	730
	
l2087:
	call	_initYBOT	;wreg free
	line	732
	
l2089:
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fa+1))&0ffh
	movlw	low(0)
	movwf	((_fa))&0ffh
	line	733
	
l2091:; BSR set to: 0

	movlw	high(0)
	movlb	0	; () banked
	movwf	((_fb+1))&0ffh
	movlw	low(0)
	movwf	((_fb))&0ffh
	line	734
	
l2093:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_ma+1)),c
	movlw	low(0)
	movwf	((c:_ma)),c
	line	735
	
l2095:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_mb+1)),c
	movlw	low(0)
	movwf	((c:_mb)),c
	line	736
	
l2097:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_d1+1)),c
	movlw	low(0)
	movwf	((c:_d1)),c
	line	737
	
l2099:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_d2+1)),c
	movlw	low(0)
	movwf	((c:_d2)),c
	line	739
	
l2101:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_sa+1)),c
	movlw	low(0)
	movwf	((c:_sa)),c
	line	740
	
l2103:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_mode+1)),c
	movlw	low(0)
	movwf	((c:_mode)),c
	line	741
	
l2105:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_a+1)),c
	movlw	low(0)
	movwf	((c:_a)),c
	line	742
	
l2107:; BSR set to: 0

	movlb	0	; () banked
	setf	((_gstatus))&0ffh
	line	743
	
l2109:; BSR set to: 0

	movlw	low(0)
	movlb	0	; () banked
	movwf	((_WAITIME))&0ffh
	movlw	high(0)
	movwf	((_WAITIME+1))&0ffh
	movlw	low highword(0)
	movwf	((_WAITIME+2))&0ffh
	movlw	high highword(0)
	movwf	((_WAITIME+3))&0ffh
	line	744
	
l2111:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_CURRENT+1)),c
	movlw	low(0)
	movwf	((c:_CURRENT)),c
	line	745
	
l2113:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_actual)),c
	line	746
	
l2115:; BSR set to: 0

	movlw	low(02h)
	movwf	((c:_status)),c
	line	747
	
l2117:; BSR set to: 0

	movlw	low(0)
	movwf	((c:_TIME)),c
	movlw	high(0)
	movwf	((c:_TIME+1)),c
	movlw	low highword(0)
	movwf	((c:_TIME+2)),c
	movlw	high highword(0)
	movwf	((c:_TIME+3)),c
	line	748
	
l2119:; BSR set to: 0

	call	_Wixel	;wreg free
	line	753
	
l2121:
	movlw	low(02h)
	movwf	((c:_status)),c
	line	754
	goto	l2125
	
l482:
	line	759
	
l2123:
	movlw	high(01h)
	movwf	((c:_fns+1)),c
	movlw	low(01h)
	movwf	((c:_fns)),c
	goto	l2125
	
l481:
	line	754
	
l2125:
	btfsc	((c:_TIME+3)),c,7
	goto	u1421
	movf	((c:_TIME+3)),c,w
	iorwf	((c:_TIME+2)),c,w
	bnz	u1420
	movlw	136
	subwf	 ((c:_TIME)),c,w
	movlw	19
	subwfb	((c:_TIME+1)),c,w
	btfss	status,0
	goto	u1421
	goto	u1420

u1421:
	goto	l2123
u1420:
	goto	l2127
	
l483:
	goto	l2127
	line	760
	
l484:
	line	761
	
l2127:
	call	_MotorUpdate	;wreg free
	line	777
	
l2129:
	btfsc	((c:3971)),c,0	;volatile
	goto	u1431
	goto	u1430
u1431:
	goto	l2141
u1430:
	
l2131:
	movf	((c:_ma)),c,w
iorwf	((c:_ma+1)),c,w
	btfss	status,2
	goto	u1441
	goto	u1440

u1441:
	goto	l2141
u1440:
	line	778
	
l2133:
	movlw	high(01h)
	movwf	((c:_ma+1)),c
	movlw	low(01h)
	movwf	((c:_ma)),c
	line	779
	
l2135:
		movlw	10
	xorwf	((c:_d1)),c,w
iorwf	((c:_d1+1)),c,w
	btfsc	status,2
	goto	u1451
	goto	u1450

u1451:
	goto	l2139
u1450:
	
l2137:
	movlw	low(01h)
	addwf	((c:_d1)),c,w
	movwf	((c:_d1)),c
	movlw	high(01h)
	addwfc	((c:_d1+1)),c,w
	movwf	1+((c:_d1)),c
	goto	l2141
	
l487:
	
l2139:
	movlw	high(-10)
	movwf	((c:_d1+1)),c
	movlw	low(-10)
	movwf	((c:_d1)),c
	goto	l2141
	
l489:
	goto	l2141
	line	780
	
l485:
	line	781
	
l2141:
	btfsc	((c:3971)),c,2	;volatile
	goto	u1461
	goto	u1460
u1461:
	goto	l2153
u1460:
	
l2143:
	movf	((c:_mb)),c,w
iorwf	((c:_mb+1)),c,w
	btfss	status,2
	goto	u1471
	goto	u1470

u1471:
	goto	l2153
u1470:
	line	782
	
l2145:
	movlw	high(01h)
	movwf	((c:_mb+1)),c
	movlw	low(01h)
	movwf	((c:_mb)),c
	line	783
	
l2147:
		movlw	10
	xorwf	((c:_d2)),c,w
iorwf	((c:_d2+1)),c,w
	btfsc	status,2
	goto	u1481
	goto	u1480

u1481:
	goto	l2151
u1480:
	
l2149:
	movlw	low(01h)
	addwf	((c:_d2)),c,w
	movwf	((c:_d2)),c
	movlw	high(01h)
	addwfc	((c:_d2+1)),c,w
	movwf	1+((c:_d2)),c
	goto	l2153
	
l492:
	
l2151:
	movlw	high(-10)
	movwf	((c:_d2+1)),c
	movlw	low(-10)
	movwf	((c:_d2)),c
	goto	l2153
	
l494:
	goto	l2153
	line	784
	
l490:
	line	785
	
l2153:
	btfss	((c:3971)),c,0	;volatile
	goto	u1491
	goto	u1490
u1491:
	goto	l2157
u1490:
	
l2155:
	movlw	high(0)
	movwf	((c:_ma+1)),c
	movlw	low(0)
	movwf	((c:_ma)),c
	goto	l2157
	
l495:
	line	786
	
l2157:
	btfss	((c:3971)),c,2	;volatile
	goto	u1501
	goto	u1500
u1501:
	goto	l2161
u1500:
	
l2159:
	movlw	high(0)
	movwf	((c:_mb+1)),c
	movlw	low(0)
	movwf	((c:_mb)),c
	goto	l2161
	
l496:
	line	787
	
l2161:
	movff	(c:_d1),(MotorsSpeed@a)
	movff	(c:_d1+1),(MotorsSpeed@a+1)
	movff	(c:_d2),(MotorsSpeed@b)
	movff	(c:_d2+1),(MotorsSpeed@b+1)
	call	_MotorsSpeed	;wreg free
	line	788
	
l2163:
	movf	((c:_d1)),c,w
iorwf	((c:_d1+1)),c,w
	btfss	status,2
	goto	u1511
	goto	u1510

u1511:
	movlb	1	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u1528
u1510:
	movlb	1	; () banked
	clrf	(??_main+0+0)&0ffh
u1528:
	movlb	1	; () banked
	swapf	(??_main+0+0)&0ffh
	movf	((c:3971)),c,w	;volatile
	movlb	1	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3971)),c	;volatile
	line	790
	
l2165:; BSR set to: 1

	movf	((c:_d2)),c,w
iorwf	((c:_d2+1)),c,w
	btfss	status,2
	goto	u1531
	goto	u1530

u1531:
	movlb	1	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u1548
u1530:
	movlb	1	; () banked
	clrf	(??_main+0+0)&0ffh
u1548:
	movlb	1	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3971)),c,w	;volatile
	movlb	1	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<6)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3971)),c	;volatile
	line	801
	
l2167:; BSR set to: 1

	movff	(c:_TIME),(___almod@dividend)
	movff	(c:_TIME+1),(___almod@dividend+1)
	movff	(c:_TIME+2),(___almod@dividend+2)
	movff	(c:_TIME+3),(___almod@dividend+3)
	movlw	low(02EE0h)
	movlb	0	; () banked
	movwf	((___almod@divisor))&0ffh
	movlw	high(02EE0h)
	movwf	((___almod@divisor+1))&0ffh
	movlw	low highword(02EE0h)
	movwf	((___almod@divisor+2))&0ffh
	movlw	high highword(02EE0h)
	movwf	((___almod@divisor+3))&0ffh
	call	___almod	;wreg free
	movlb	0	; () banked
	movlb	0	; () banked
	btfsc	(3+?___almod)&0ffh,7
	goto	u1550
	movlb	0	; () banked
	movlb	0	; () banked
	movf	(3+?___almod)&0ffh,w
	movlb	0	; () banked
	movlb	0	; () banked
	iorwf	(2+?___almod)&0ffh,w
	bnz	u1551
	movlw	113
	movlb	0	; () banked
	movlb	0	; () banked
	subwf	 (0+?___almod)&0ffh,w
	movlw	23
	movlb	0	; () banked
	movlb	0	; () banked
	subwfb	(1+?___almod)&0ffh,w
	btfsc	status,0
	goto	u1551
	goto	u1550

u1551:
	movlb	1	; () banked
	clrf	(??_main+0+0)&0ffh
	incf	(??_main+0+0)&0ffh
	goto	u1568
u1550:
	movlb	1	; () banked
	clrf	(??_main+0+0)&0ffh
u1568:
	movlb	1	; () banked
	swapf	(??_main+0+0)&0ffh
	rlncf	(??_main+0+0)&0ffh
	movf	((c:3971)),c,w	;volatile
	movlb	1	; () banked
	xorwf	(??_main+0+0)&0ffh,w
	andlw	not (((1<<1)-1)<<5)
	xorwf	(??_main+0+0)&0ffh,w
	movwf	((c:3971)),c	;volatile
	goto	l2127
	line	811
	
l497:; BSR set to: 1

	line	760
	goto	l2127
	
l498:; BSR set to: 1

	line	812
	
l499:; BSR set to: 1

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
	
_initYBOT:; BSR set to: 1

;incstack = 0
	opt	stack 27
	line	339
	
l1711:
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
	
l1713:; BSR set to: 0

	call	_ResetCounter	;wreg free
	line	342
	
l1715:
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
	
l1717:
	call	_InitSP	;wreg free
	line	351
	
l295:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_initYBOT
	__end_of_initYBOT:
	signat	_initYBOT,88
	global	_configurations_init

;; *************** function _configurations_init *****************
;; Defined at:
;;		line 272 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	
l1605:
		bsf	((c:4051)),c, 4+0	;volatile
	bsf	((c:4051)),c, 4+1	;volatile
	bsf	((c:4051)),c, 4+2	;volatile

	line	276
	
l1607:
	movlw	low(07h)
	movwf	((c:4020)),c	;volatile
	line	279
	
l1609:
	bcf	((c:3949)),c,3	;volatile
	line	280
	
l1611:
	bsf	((c:3951)),c,3	;volatile
	line	281
	
l227:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_configurations_init
	__end_of_configurations_init:
	signat	_configurations_init,88
	global	_ResetCounter

;; *************** function _ResetCounter *****************
;; Defined at:
;;		line 473 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	
l1613:
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
	signat	_ResetCounter,88
	global	_InitTIMERS

;; *************** function _InitTIMERS *****************
;; Defined at:
;;		line 378 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	
l1625:
	bcf	((c:4053)),c,7	;volatile
	line	380
	bcf	((c:4053)),c,6	;volatile
	line	381
	bcf	((c:4053)),c,5	;volatile
	line	383
	bsf	((c:4053)),c,3	;volatile
	line	384
	
l1627:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	385
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	388
	
l1629:
	bsf	((c:4081)),c,2	;volatile
	line	389
	
l1631:
	bcf	((c:4048)),c,7	;volatile
	line	390
	
l1633:
	bsf	((c:4082)),c,5	;volatile
	line	394
	
l1635:
	bsf	((c:4082)),c,7	;volatile
	line	396
	
l1637:
	bsf	((c:4053)),c,7	;volatile
	line	398
	
l1639:
	bcf	((c:4045)),c,0	;volatile
	line	399
	
l1641:
	bcf	((c:4045)),c,7	;volatile
	line	400
	
l1643:
	bcf	((c:4045)),c,6	;volatile
	line	401
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	((c:4045)),c	;volatile
	line	402
	
l1645:
	bcf	((c:4045)),c,3	;volatile
	line	403
	
l1647:
	bcf	((c:4045)),c,1	;volatile
	line	404
	
l1649:
	bsf	((c:4045)),c,0	;volatile
	line	406
	movlw	low(0F8h)
	movwf	((c:4047)),c	;volatile
	line	407
	movlw	low(02Fh)
	movwf	((c:4046)),c	;volatile
	line	415
	
l1651:
	bcf	((c:3989)),c,4	;volatile
	line	416
	
l1653:
	bcf	((c:3989)),c,5	;volatile
	line	417
	
l1655:
	bcf	((c:3989)),c,6	;volatile
	line	419
	
l1657:
	bsf	((c:3989)),c,0	;volatile
	line	420
	
l1659:
	bsf	((c:3989)),c,1	;volatile
	line	421
	
l1661:
	bsf	((c:3989)),c,2	;volatile
	line	424
	
l1663:
	bcf	((c:3989)),c,3	;volatile
	line	425
	
l1665:
	bcf	((c:3988)),c,2	;volatile
	line	427
	
l1667:
	bcf	((c:3987)),c,0	;volatile
	line	428
	
l1669:
	bcf	((c:3987)),c,2	;volatile
	line	430
	
l1671:
	bsf	((c:3988)),c,0	;volatile
	line	431
	
l1673:
	bsf	((c:3988)),c,1	;volatile
	line	434
	
l1675:
	bsf	((c:3990)),c,2	;volatile
	line	435
	
l1677:
	bsf	((c:3990)),c,1	;volatile
	line	436
	
l1679:
	bsf	((c:3990)),c,0	;volatile
	line	437
	
l1681:
	bsf	((c:3986)),c,5	;volatile
	line	438
	
l1683:
	bsf	((c:3986)),c,4	;volatile
	line	469
	
l1685:
	bsf	((c:3972)),c,7	;volatile
	line	470
	
l313:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitTIMERS
	__end_of_InitTIMERS:
	signat	_InitTIMERS,88
	global	_InitSP

;; *************** function _InitSP *****************
;; Defined at:
;;		line 525 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	
l1687:
	movlw	low(0)
	movwf	((c:_PisoActual)),c
	line	527
	
l1689:
	movf	((c:_PisoActual)),c,w
	
	call	_ReadAnalog
	line	528
	
l332:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitSP
	__end_of_InitSP:
	signat	_InitSP,88
	global	_ReadAnalog

;; *************** function _ReadAnalog *****************
;; Defined at:
;;		line 529 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	
l1593:
	
	btfsc	((c:ReadAnalog@channel)),c,(0)&7
	goto	u671
	goto	u670
u671:
	bsf	c:(32274/8),(32274)&7	;volatile
	goto	u685
u670:
	bcf	c:(32274/8),(32274)&7	;volatile
u685:
	line	531
	
l1595:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	03h
	andwf	(??_ReadAnalog+0+0),c
		movlw	02h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u691
	goto	u690

u691:
	bsf	c:(32275/8),(32275)&7	;volatile
	goto	u705
u690:
	bcf	c:(32275/8),(32275)&7	;volatile
u705:
	line	532
	
l1597:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	07h
	andwf	(??_ReadAnalog+0+0),c
		movlw	04h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u711
	goto	u710

u711:
	bsf	c:(32276/8),(32276)&7	;volatile
	goto	u725
u710:
	bcf	c:(32276/8),(32276)&7	;volatile
u725:
	line	533
	
l1599:
	movff	(c:ReadAnalog@channel),??_ReadAnalog+0+0
	movlw	0Fh
	andwf	(??_ReadAnalog+0+0),c
		movlw	08h-0
	cpfslt	(??_ReadAnalog+0+0),c
	goto	u731
	goto	u730

u731:
	bsf	c:(32277/8),(32277)&7	;volatile
	goto	u745
u730:
	bcf	c:(32277/8),(32277)&7	;volatile
u745:
	line	535
	
l1601:
	bsf	c:(32272/8),(32272)&7	;volatile
	line	536
	
l1603:
	bsf	c:(32273/8),(32273)&7	;volatile
	line	537
	
l335:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ReadAnalog
	__end_of_ReadAnalog:
	signat	_ReadAnalog,4216
	global	_InitAnalog

;; *************** function _InitAnalog *****************
;; Defined at:
;;		line 507 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	
l1615:
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
	
l1617:
	movf	((c:4032)),c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(06h & ((1<<3)-1))<<0
	movwf	((c:4032)),c	;volatile
	line	521
	
l1619:
		bcf	((c:4034)),c, 2+0	;volatile
	bcf	((c:4034)),c, 2+1	;volatile
	bcf	((c:4034)),c, 2+2	;volatile
	bcf	((c:4034)),c, 2+3	;volatile

	line	522
	
l1621:
	bcf	((c:4034)),c,1	;volatile
	line	523
	
l1623:
	bsf	((c:4034)),c,0	;volatile
	line	524
	
l329:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_InitAnalog
	__end_of_InitAnalog:
	signat	_InitAnalog,88
	global	___almod

;; *************** function ___almod *****************
;; Defined at:
;;		line 8 in file "/opt/microchip/xc8/v1.34/sources/common/almod.c"
;; Parameters:    Size  Location     Type
;;  dividend        4    0[BANK0 ] long 
;;  divisor         4    4[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   15[COMRAM] unsigned char 
;;  counter         1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       8       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       8       0       0       0       0       0       0       0
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
	
l2051:
	movlw	low(0)
	movwf	((c:___almod@sign)),c
	line	14
	
l2053:
	movlb	0	; () banked
	btfsc	((___almod@dividend+3))&0ffh,7
	goto	u1360
	goto	u1361

u1361:
	goto	l2059
u1360:
	line	15
	
l2055:; BSR set to: 0

	movlb	0	; () banked
	comf	((___almod@dividend+3))&0ffh
	comf	((___almod@dividend+2))&0ffh
	comf	((___almod@dividend+1))&0ffh
	negf	((___almod@dividend))&0ffh
	movlw	0
	addwfc	((___almod@dividend+1))&0ffh
	addwfc	((___almod@dividend+2))&0ffh
	addwfc	((___almod@dividend+3))&0ffh
	line	16
	
l2057:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:___almod@sign)),c
	goto	l2059
	line	17
	
l574:; BSR set to: 0

	line	18
	
l2059:; BSR set to: 0

	movlb	0	; () banked
	btfsc	((___almod@divisor+3))&0ffh,7
	goto	u1370
	goto	u1371

u1371:
	goto	l2063
u1370:
	line	19
	
l2061:; BSR set to: 0

	movlb	0	; () banked
	comf	((___almod@divisor+3))&0ffh
	comf	((___almod@divisor+2))&0ffh
	comf	((___almod@divisor+1))&0ffh
	negf	((___almod@divisor))&0ffh
	movlw	0
	addwfc	((___almod@divisor+1))&0ffh
	addwfc	((___almod@divisor+2))&0ffh
	addwfc	((___almod@divisor+3))&0ffh
	goto	l2063
	
l575:; BSR set to: 0

	line	20
	
l2063:; BSR set to: 0

	movlb	0	; () banked
	movf	((___almod@divisor))&0ffh,w
	movlb	0	; () banked
iorwf	((___almod@divisor+1))&0ffh,w
	movlb	0	; () banked
iorwf	((___almod@divisor+2))&0ffh,w
	movlb	0	; () banked
iorwf	((___almod@divisor+3))&0ffh,w
	btfsc	status,2
	goto	u1381
	goto	u1380

u1381:
	goto	l2079
u1380:
	line	21
	
l2065:; BSR set to: 0

	movlw	low(01h)
	movwf	((c:___almod@counter)),c
	line	22
	goto	l2069
	
l578:; BSR set to: 0

	line	23
	
l2067:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rlcf	((___almod@divisor))&0ffh
	rlcf	((___almod@divisor+1))&0ffh
	rlcf	((___almod@divisor+2))&0ffh
	rlcf	((___almod@divisor+3))&0ffh
	line	24
	incf	((c:___almod@counter)),c
	goto	l2069
	line	25
	
l577:; BSR set to: 0

	line	22
	
l2069:; BSR set to: 0

	movlb	0	; () banked
	
	movlb	0	; () banked
	btfss	((___almod@divisor+3))&0ffh,(31)&7
	goto	u1391
	goto	u1390
u1391:
	goto	l2067
u1390:
	goto	l2071
	
l579:; BSR set to: 0

	goto	l2071
	line	26
	
l580:; BSR set to: 0

	line	27
	
l2071:; BSR set to: 0

	movlb	0	; () banked
		movf	((___almod@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___almod@dividend))&0ffh,w
	movlb	0	; () banked
	movf	((___almod@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___almod@dividend+1))&0ffh,w
	movlb	0	; () banked
	movf	((___almod@divisor+2))&0ffh,w
	movlb	0	; () banked
	subwfb	((___almod@dividend+2))&0ffh,w
	movlb	0	; () banked
	movf	((___almod@divisor+3))&0ffh,w
	movlb	0	; () banked
	subwfb	((___almod@dividend+3))&0ffh,w
	btfss	status,0
	goto	u1401
	goto	u1400

u1401:
	goto	l2075
u1400:
	line	28
	
l2073:; BSR set to: 0

	movlb	0	; () banked
	movf	((___almod@divisor))&0ffh,w
	movlb	0	; () banked
	subwf	((___almod@dividend))&0ffh
	movlb	0	; () banked
	movf	((___almod@divisor+1))&0ffh,w
	movlb	0	; () banked
	subwfb	((___almod@dividend+1))&0ffh
	movlb	0	; () banked
	movf	((___almod@divisor+2))&0ffh,w
	movlb	0	; () banked
	subwfb	((___almod@dividend+2))&0ffh
	movlb	0	; () banked
	movf	((___almod@divisor+3))&0ffh,w
	movlb	0	; () banked
	subwfb	((___almod@dividend+3))&0ffh
	goto	l2075
	
l581:; BSR set to: 0

	line	29
	
l2075:; BSR set to: 0

	movlb	0	; () banked
	bcf	status,0
	rrcf	((___almod@divisor+3))&0ffh
	rrcf	((___almod@divisor+2))&0ffh
	rrcf	((___almod@divisor+1))&0ffh
	rrcf	((___almod@divisor))&0ffh
	line	30
	
l2077:; BSR set to: 0

	decfsz	((c:___almod@counter)),c
	
	goto	l2071
	goto	l2079
	
l582:; BSR set to: 0

	goto	l2079
	line	31
	
l576:; BSR set to: 0

	line	32
	
l2079:; BSR set to: 0

	movf	((c:___almod@sign)),c,w
	btfsc	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l2083
u1410:
	line	33
	
l2081:; BSR set to: 0

	movlb	0	; () banked
	comf	((___almod@dividend+3))&0ffh
	comf	((___almod@dividend+2))&0ffh
	comf	((___almod@dividend+1))&0ffh
	negf	((___almod@dividend))&0ffh
	movlw	0
	addwfc	((___almod@dividend+1))&0ffh
	addwfc	((___almod@dividend+2))&0ffh
	addwfc	((___almod@dividend+3))&0ffh
	goto	l2083
	
l583:; BSR set to: 0

	line	34
	
l2083:; BSR set to: 0

	movff	(___almod@dividend),(?___almod)
	movff	(___almod@dividend+1),(?___almod+1)
	movff	(___almod@dividend+2),(?___almod+2)
	movff	(___almod@dividend+3),(?___almod+3)
	goto	l584
	
l2085:; BSR set to: 0

	line	35
	
l584:; BSR set to: 0

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
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	194
global __ptext9
__ptext9:
psect	text9
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	194
	global	__size_of_Wixel
	__size_of_Wixel	equ	__end_of_Wixel-_Wixel
	
_Wixel:; BSR set to: 0

;incstack = 0
	opt	stack 29
	line	195
	
l1691:
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
	
l1693:
	movlw	low(033h)
	movwf	((c:4015)),c	;volatile
	line	202
	movlw	low(0)
	movwf	((c:4016)),c	;volatile
	line	203
	
l1695:
	bcf	((c:4012)),c,7	;volatile
	line	204
	
l1697:
	bcf	((c:4012)),c,6	;volatile
	line	205
	
l1699:
	bsf	((c:4012)),c,5	;volatile
	line	206
	
l1701:
	bcf	((c:4012)),c,4	;volatile
	line	208
	
l1703:
	bcf	((c:4012)),c,2	;volatile
	line	209
	
l1705:
	bcf	((c:4011)),c,6	;volatile
	line	210
	
l1707:
	bsf	((c:4011)),c,4	;volatile
	line	211
	
l1709:
	bsf	((c:4011)),c,7	;volatile
	line	213
	
l179:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_Wixel
	__end_of_Wixel:
	signat	_Wixel,88
	global	_MotorsSpeed

;; *************** function _MotorsSpeed *****************
;; Defined at:
;;		line 686 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[BANK0 ] int 
;;  b               2    2[BANK0 ] int 
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
	line	686
global __ptext10
__ptext10:
psect	text10
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	686
	global	__size_of_MotorsSpeed
	__size_of_MotorsSpeed	equ	__end_of_MotorsSpeed-_MotorsSpeed
	
_MotorsSpeed:
;incstack = 0
	opt	stack 29
	line	687
	
l2023:
	movff	(MotorsSpeed@a),(c:_speedA)
	movff	(MotorsSpeed@a+1),(c:_speedA+1)
	line	688
	movff	(MotorsSpeed@b),(c:_speedB)
	movff	(MotorsSpeed@b+1),(c:_speedB+1)
	line	689
	
l437:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorsSpeed
	__end_of_MotorsSpeed:
	signat	_MotorsSpeed,8312
	global	_MotorUpdate

;; *************** function _MotorUpdate *****************
;; Defined at:
;;		line 690 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	line	690
global __ptext11
__ptext11:
psect	text11
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	690
	global	__size_of_MotorUpdate
	__size_of_MotorUpdate	equ	__end_of_MotorUpdate-_MotorUpdate
	
_MotorUpdate:
;incstack = 0
	opt	stack 29
	line	691
	
l2025:
	btfsc	((c:_speedA+1)),c,7
	goto	u1290
	movf	((c:_speedA+1)),c,w
	bnz	u1291
	decf	((c:_speedA)),c,w
	btfsc	status,0
	goto	u1291
	goto	u1290

u1291:
	goto	l442
u1290:
	
l2027:
	movff	(c:_speedA),??_MotorUpdate+0+0
	movff	(c:_speedA+1),??_MotorUpdate+0+0+1
	comf	(??_MotorUpdate+0+0),c
	comf	(??_MotorUpdate+0+1),c
	infsnz	(??_MotorUpdate+0+0),c
	incf	(??_MotorUpdate+0+1),c
	movff	??_MotorUpdate+0+0,(_MotorUpdate$1795)
	movff	??_MotorUpdate+0+1,(_MotorUpdate$1795+1)
	goto	l2029
	
l442:
	movff	(c:_speedA),(_MotorUpdate$1795)
	movff	(c:_speedA+1),(_MotorUpdate$1795+1)
	goto	l2029
	
l444:
	
l2029:
	movlb	0	; () banked
		movf	((_MotorUpdate$1795))&0ffh,w
	subwf	((c:_loop)),c,w
	movf	((c:_loop+1)),c,w
	xorlw	80h
	movwf	(??_MotorUpdate+0+0)&0ffh,c
	movlb	0	; () banked
	movf	((_MotorUpdate$1795+1))&0ffh,w
	xorlw	80h
	subwfb	(??_MotorUpdate+0+0)&0ffh,c,w
	btfsc	status,0
	goto	u1301
	goto	u1300

u1301:
	goto	l440
u1300:
	line	692
	
l2031:; BSR set to: 0

	btfsc	((c:_speedA+1)),c,7
	goto	u1311
	movf	((c:_speedA+1)),c,w
	bnz	u1310
	decf	((c:_speedA)),c,w
	btfss	status,0
	goto	u1311
	goto	u1310

u1311:
	goto	l445
u1310:
	line	693
	
l2033:; BSR set to: 0

	bsf	((c:3969)),c,2	;volatile
	line	694
	bcf	((c:3971)),c,3	;volatile
	line	695
	goto	l2035
	
l445:; BSR set to: 0

	line	696
	bcf	((c:3969)),c,2	;volatile
	line	697
	bsf	((c:3971)),c,3	;volatile
	goto	l2035
	line	698
	
l446:; BSR set to: 0

	line	699
	goto	l2035
	
l440:; BSR set to: 0

	line	700
	bcf	((c:3969)),c,2	;volatile
	line	701
	bcf	((c:3971)),c,3	;volatile
	goto	l2035
	line	702
	
l447:; BSR set to: 0

	line	703
	
l2035:; BSR set to: 0

	btfsc	((c:_speedB+1)),c,7
	goto	u1320
	movf	((c:_speedB+1)),c,w
	bnz	u1321
	decf	((c:_speedB)),c,w
	btfsc	status,0
	goto	u1321
	goto	u1320

u1321:
	goto	l450
u1320:
	
l2037:; BSR set to: 0

	movff	(c:_speedB),??_MotorUpdate+0+0
	movff	(c:_speedB+1),??_MotorUpdate+0+0+1
	comf	(??_MotorUpdate+0+0),c
	comf	(??_MotorUpdate+0+1),c
	infsnz	(??_MotorUpdate+0+0),c
	incf	(??_MotorUpdate+0+1),c
	movff	??_MotorUpdate+0+0,(_MotorUpdate$1796)
	movff	??_MotorUpdate+0+1,(_MotorUpdate$1796+1)
	goto	l2039
	
l450:; BSR set to: 0

	movff	(c:_speedB),(_MotorUpdate$1796)
	movff	(c:_speedB+1),(_MotorUpdate$1796+1)
	goto	l2039
	
l452:; BSR set to: 0

	
l2039:; BSR set to: 0

	movlb	0	; () banked
		movf	((_MotorUpdate$1796))&0ffh,w
	subwf	((c:_loop)),c,w
	movf	((c:_loop+1)),c,w
	xorlw	80h
	movwf	(??_MotorUpdate+0+0)&0ffh,c
	movlb	0	; () banked
	movf	((_MotorUpdate$1796+1))&0ffh,w
	xorlw	80h
	subwfb	(??_MotorUpdate+0+0)&0ffh,c,w
	btfsc	status,0
	goto	u1331
	goto	u1330

u1331:
	goto	l448
u1330:
	line	704
	
l2041:; BSR set to: 0

	btfsc	((c:_speedB+1)),c,7
	goto	u1341
	movf	((c:_speedB+1)),c,w
	bnz	u1340
	decf	((c:_speedB)),c,w
	btfss	status,0
	goto	u1341
	goto	u1340

u1341:
	goto	l453
u1340:
	line	705
	
l2043:; BSR set to: 0

	bsf	((c:3970)),c,2	;volatile
	line	706
	bcf	((c:3971)),c,3	;volatile
	line	707
	goto	l2045
	
l453:; BSR set to: 0

	line	708
	bcf	((c:3970)),c,2	;volatile
	line	709
	bsf	((c:3969)),c,0	;volatile
	goto	l2045
	line	710
	
l454:; BSR set to: 0

	line	711
	goto	l2045
	
l448:; BSR set to: 0

	line	712
	bcf	((c:3970)),c,2	;volatile
	line	713
	bcf	((c:3969)),c,0	;volatile
	goto	l2045
	line	714
	
l455:; BSR set to: 0

	line	715
	
l2045:; BSR set to: 0

		movlw	9
	xorwf	((c:_loop)),c,w
iorwf	((c:_loop+1)),c,w
	btfsc	status,2
	goto	u1351
	goto	u1350

u1351:
	goto	l2049
u1350:
	
l2047:; BSR set to: 0

	movlw	low(01h)
	addwf	((c:_loop)),c,w
	movwf	((c:_loop)),c
	movlw	high(01h)
	addwfc	((c:_loop+1)),c,w
	movwf	1+((c:_loop)),c
	goto	l460
	
l457:; BSR set to: 0

	
l2049:; BSR set to: 0

	movlw	high(0)
	movwf	((c:_loop+1)),c
	movlw	low(0)
	movwf	((c:_loop)),c
	goto	l460
	
l459:; BSR set to: 0

	line	716
	
l460:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_MotorUpdate
	__end_of_MotorUpdate:
	signat	_MotorUpdate,88
	global	_enc

;; *************** function _enc *****************
;; Defined at:
;;		line 478 in file "/home/newtonis/Robots/TooSimple/Main/main.c"
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
	file	"/home/newtonis/Robots/TooSimple/Main/main.c"
	line	478
	global	__size_of_enc
	__size_of_enc	equ	__end_of_enc-_enc
	
_enc:; BSR set to: 0

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
	line	479
	
i2l1401:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u33_41
	goto	i2u33_40
i2u33_41:
	goto	i2l320
i2u33_40:
	line	480
	
i2l1403:
	movlw	low(01h)
	addwf	((c:_TIME)),c
	movlw	0
	addwfc	((c:_TIME+1)),c
	addwfc	((c:_TIME+2)),c
	addwfc	((c:_TIME+3)),c
	line	481
	
i2l1405:
	movlw	low(0F8h)
	movwf	((c:4055)),c	;volatile
	line	482
	
i2l1407:
	movlw	low(02Fh)
	movwf	((c:4054)),c	;volatile
	line	485
	
i2l1409:
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
	retfie f
	opt stack 0
GLOBAL	__end_of_enc
	__end_of_enc:
	signat	_enc,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
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
