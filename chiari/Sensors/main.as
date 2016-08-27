opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 201502162209"

opt pagewidth 120

	opt lm

	processor	16F628A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 51 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
INDF equ 00h ;# 
# 57 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR0 equ 01h ;# 
# 63 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCL equ 02h ;# 
# 69 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
STATUS equ 03h ;# 
# 156 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
FSR equ 04h ;# 
# 162 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PORTA equ 05h ;# 
# 223 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PORTB equ 06h ;# 
# 284 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCLATH equ 0Ah ;# 
# 303 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
INTCON equ 0Bh ;# 
# 380 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PIR1 equ 0Ch ;# 
# 436 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1 equ 0Eh ;# 
# 442 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1L equ 0Eh ;# 
# 448 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR1H equ 0Fh ;# 
# 454 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
T1CON equ 010h ;# 
# 512 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TMR2 equ 011h ;# 
# 518 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
T2CON equ 012h ;# 
# 588 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1 equ 015h ;# 
# 594 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1L equ 015h ;# 
# 600 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCPR1H equ 016h ;# 
# 606 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CCP1CON equ 017h ;# 
# 663 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
RCSTA equ 018h ;# 
# 733 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TXREG equ 019h ;# 
# 739 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
RCREG equ 01Ah ;# 
# 745 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
CMCON equ 01Fh ;# 
# 814 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
OPTION_REG equ 081h ;# 
# 883 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TRISA equ 085h ;# 
# 944 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TRISB equ 086h ;# 
# 1005 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PIE1 equ 08Ch ;# 
# 1061 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PCON equ 08Eh ;# 
# 1109 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
PR2 equ 092h ;# 
# 1115 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
TXSTA equ 098h ;# 
# 1171 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
SPBRG equ 099h ;# 
# 1177 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EEDATA equ 09Ah ;# 
# 1183 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EEADR equ 09Bh ;# 
# 1189 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EECON1 equ 09Ch ;# 
# 1226 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
EECON2 equ 09Dh ;# 
# 1232 "/opt/microchip/xc8/v1.34/include/pic16f628a.h"
VRCON equ 09Fh ;# 
	FNCALL	_main,_configurar_IO
	FNCALL	_main,_configurar_pwm
	FNCALL	_main,_init
	FNCALL	_main,_set
	FNCALL	_main,_store
	FNCALL	_configurar_pwm,_SetDuty
	FNCALL	_SetDuty,___awdiv
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	58

;initializer for _valores
	retlw	01h
	retlw	02h
	retlw	06h
	retlw	08h
	retlw	0Ch
	retlw	0
	retlw	0
	retlw	0
	global	_actual
	global	_ciclos
	global	_contador
	global	_estado
	global	_V
	global	_times
	global	_t
	global	_st
psect	nvCOMMON,class=COMMON,space=1,noexec
global __pnvCOMMON
__pnvCOMMON:
_st:
       ds      1

	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCP1CONbits
_CCP1CONbits	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_CMCON
_CMCON	set	0x1F
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_PORTAbits
_PORTAbits	set	0x5
	global	_PORTBbits
_PORTBbits	set	0x6
	global	_T1CONbits
_T1CONbits	set	0x10
	global	_T2CONbits
_T2CONbits	set	0x12
	global	_TMR1H
_TMR1H	set	0xF
	global	_TMR1L
_TMR1L	set	0xE
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_TMR2IF
_TMR2IF	set	0x61
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x81
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_PR2
_PR2	set	0x92
	global	_TRISBbits
_TRISBbits	set	0x86
	global	_TMR2IE
_TMR2IE	set	0x461
	global	_TRISA0
_TRISA0	set	0x428
	global	_TRISA1
_TRISA1	set	0x429
	global	_TRISA3
_TRISA3	set	0x42B
	global	_TRISA4
_TRISA4	set	0x42C
	global	_TRISA6
_TRISA6	set	0x42E
	global	_TRISA7
_TRISA7	set	0x42F
	global	_TRISB0
_TRISB0	set	0x430
	global	_TRISB1
_TRISB1	set	0x431
	global	_TRISB2
_TRISB2	set	0x432
	global	_TRISB3
_TRISB3	set	0x433
	global	_TRISB5
_TRISB5	set	0x435
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_FOSC$INTOSCIO
__CFG_FOSC$INTOSCIO equ 0x0
	file	"main.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_actual:
       ds      1

_ciclos:
       ds      1

_contador:
       ds      1

_estado:
       ds      1

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_V:
       ds      8

_sensor:
       ds      8

_times:
       ds      4

_t:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	58
_valores:
       ds      8

	file	"main.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop0		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	movlw	low(__pbssCOMMON)
	movwf	fsr
	movlw	low((__pbssCOMMON)+04h)
	fcall	clear_ram0
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+016h)
	fcall	clear_ram0
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
	fcall	__pidataBANK0+4		;fetch initializer
	movwf	__pdataBANK0+4&07fh		
	fcall	__pidataBANK0+5		;fetch initializer
	movwf	__pdataBANK0+5&07fh		
	fcall	__pidataBANK0+6		;fetch initializer
	movwf	__pdataBANK0+6&07fh		
	fcall	__pidataBANK0+7		;fetch initializer
	movwf	__pdataBANK0+7&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_init:	; 0 bytes @ 0x0
?_configurar_IO:	; 0 bytes @ 0x0
?_configurar_pwm:	; 0 bytes @ 0x0
?_store:	; 0 bytes @ 0x0
?_set:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
	ds	4
??_init:	; 0 bytes @ 0x4
??_configurar_IO:	; 0 bytes @ 0x4
??_store:	; 0 bytes @ 0x4
??_set:	; 0 bytes @ 0x4
??___awdiv:	; 0 bytes @ 0x4
	ds	1
??_configurar_pwm:	; 0 bytes @ 0x5
??_main:	; 0 bytes @ 0x5
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	_store$313
_store$313:	; 1 bytes @ 0x0
	global	set@j
set@j:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	ds	1
	global	_store$314
_store$314:	; 1 bytes @ 0x1
	ds	1
	global	_store$315
_store$315:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	ds	1
	global	_store$324
_store$324:	; 1 bytes @ 0x3
	ds	1
	global	_store$325
_store$325:	; 1 bytes @ 0x4
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x4
	ds	1
	global	_store$326
_store$326:	; 1 bytes @ 0x5
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x5
	ds	1
	global	_store$327
_store$327:	; 1 bytes @ 0x6
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x6
	ds	2
?_SetDuty:	; 0 bytes @ 0x8
	global	SetDuty@S
SetDuty@S:	; 2 bytes @ 0x8
	ds	2
??_SetDuty:	; 0 bytes @ 0xA
	ds	2
?_main:	; 2 bytes @ 0xC
main@argc:	; 2 bytes @ 0xC
	ds	2
main@argv:	; 2 bytes @ 0xE
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        8
;!    BSS         26
;!    Persistent  1
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      5      10
;!    BANK0            80     16      46
;!    BANK1            80      0       0
;!    BANK2            48      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_store
;!    _SetDuty->___awdiv
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _configurar_pwm->_SetDuty
;!    _SetDuty->___awdiv
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
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
;! (0) _main                                                 4     0      4    1190
;!                                             12 BANK0      4     0      4
;!                      _configurar_IO
;!                     _configurar_pwm
;!                               _init
;!                                _set
;!                              _store
;! ---------------------------------------------------------------------------------
;! (1) _store                                               10    10      0     168
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      7     7      0
;! ---------------------------------------------------------------------------------
;! (1) _set                                                  2     2      0      99
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _init                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _configurar_pwm                                       0     0      0     923
;!                            _SetDuty
;! ---------------------------------------------------------------------------------
;! (2) _SetDuty                                              4     2      2     923
;!                                              8 BANK0      4     2      2
;!                            ___awdiv
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4     753
;!                                              4 COMMON     1     1      0
;!                                              0 BANK0      8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _configurar_IO                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _configurar_IO
;!   _configurar_pwm
;!     _SetDuty
;!       ___awdiv
;!   _init
;!   _set
;!   _store
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               30      0       0       9        0.0%
;!BITBANK2            30      0       0       8        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     10      2E       3       57.5%
;!BITBANK0            50      0       0       5        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      5       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      38      10        0.0%
;!ABS                  0      0      38       4        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA              80      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 110 in file "/home/newtonis/Robots/chiari/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   12[BANK0 ] int 
;;  argv            2   14[BANK0 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   12[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : B00/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_configurar_IO
;;		_configurar_pwm
;;		_init
;;		_set
;;		_store
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	110
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	110
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	111
	
l1228:	
	clrf	(_st)
	incf	(_st),f
	line	112
	
l1230:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_times+3)
	movlw	low highword(0)
	movwf	(_times+2)
	movlw	high(0)
	movwf	(_times+1)
	movlw	low(0)
	movwf	(_times)

	line	113
	
l1232:	
	fcall	_init
	line	114
	fcall	_configurar_IO
	line	115
	
l1234:	
	fcall	_configurar_pwm
	line	116
	
l1236:	
	fcall	_set
	line	119
	
l1238:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1121/8)^080h,(1121)&7	;volatile
	line	120
	
l1240:	
	bsf	(94/8),(94)&7	;volatile
	line	121
	
l1242:	
	bsf	(95/8),(95)&7	;volatile
	goto	l1244
	line	122
	
l118:	
	line	137
	
l1244:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(_times+3),7
	goto	u931
	movf	(_times+3),w
	btfss	status,2
	goto	u930
	movf	(_times+2),w
	btfss	status,2
	goto	u930
	movlw	2
	subwf	(_times+1),w
	skipz
	goto	u933
	movlw	29
	subwf	(_times),w
	skipz
	goto	u933
u933:
	btfss	status,0
	goto	u931
	goto	u930

u931:
	goto	l1250
u930:
	
l1246:	
	btfsc	(_times+3),7
	goto	u940
	movf	(_times+3),w
	btfss	status,2
	goto	u941
	movf	(_times+2),w
	btfss	status,2
	goto	u941
	movlw	2
	subwf	(_times+1),w
	skipz
	goto	u943
	movlw	48
	subwf	(_times),w
	skipz
	goto	u943
u943:
	btfsc	status,0
	goto	u941
	goto	u940

u941:
	goto	l1250
u940:
	line	138
	
l1248:	
	fcall	_store
	line	139
	goto	l1244
	
l119:	
	line	140
	
l1250:	
	fcall	_set
	goto	l1244
	line	141
	
l120:	
	goto	l1244
	line	143
	
l121:	
	line	122
	goto	l1244
	
l122:	
	line	144
	
l123:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_store

;; *************** function _store *****************
;; Defined at:
;;		line 71 in file "/home/newtonis/Robots/chiari/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0        int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       7       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       7       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	71
global __ptext1
__ptext1:	;psect for function _store
psect	text1
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	71
	global	__size_of_store
	__size_of_store	equ	__end_of_store-_store
	
_store:	
;incstack = 0
	opt	stack 6
; Regs used in _store: [wreg+status,2+status,0]
	line	73
	
l954:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_store$313)
	incf	(_store$313),f
	
l956:	
	movf	((_V)),w
	btfss	status,2
	goto	u511
	goto	u510
u511:
	goto	l962
u510:
	
l958:	
	btfss	(6),2	;volatile
	goto	u521
	goto	u520
u521:
	goto	l962
u520:
	
l960:	
	clrf	(_store$313)
	goto	l962
	
l94:	
	
l962:	
	movf	(_store$313),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	(_V)
	line	74
	
l964:	
	clrf	(_store$314)
	incf	(_store$314),f
	
l966:	
	movf	(0+(_V)+01h),w
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l972
u530:
	
l968:	
	btfss	(6),1	;volatile
	goto	u541
	goto	u540
u541:
	goto	l972
u540:
	
l970:	
	clrf	(_store$314)
	goto	l972
	
l96:	
	
l972:	
	movf	(_store$314),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+01h
	line	75
	
l974:	
	clrf	(_store$315)
	incf	(_store$315),f
	
l976:	
	movf	(0+(_V)+02h),w
	btfss	status,2
	goto	u551
	goto	u550
u551:
	goto	l982
u550:
	
l978:	
	btfss	(6),0	;volatile
	goto	u561
	goto	u560
u561:
	goto	l982
u560:
	
l980:	
	clrf	(_store$315)
	goto	l982
	
l98:	
	
l982:	
	movf	(_store$315),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+02h
	line	76
	
l984:	
	clrf	(_store$324)
	incf	(_store$324),f
	
l986:	
	movf	(0+(_V)+03h),w
	btfss	status,2
	goto	u571
	goto	u570
u571:
	goto	l992
u570:
	
l988:	
	btfss	(5),4	;volatile
	goto	u581
	goto	u580
u581:
	goto	l992
u580:
	
l990:	
	clrf	(_store$324)
	goto	l992
	
l100:	
	
l992:	
	movf	(_store$324),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+03h
	line	77
	
l994:	
	clrf	(_store$325)
	incf	(_store$325),f
	
l996:	
	movf	(0+(_V)+04h),w
	btfss	status,2
	goto	u591
	goto	u590
u591:
	goto	l1002
u590:
	
l998:	
	btfss	(5),3	;volatile
	goto	u601
	goto	u600
u601:
	goto	l1002
u600:
	
l1000:	
	clrf	(_store$325)
	goto	l1002
	
l102:	
	
l1002:	
	movf	(_store$325),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+04h
	line	78
	
l1004:	
	clrf	(_store$326)
	incf	(_store$326),f
	
l1006:	
	movf	(0+(_V)+05h),w
	btfss	status,2
	goto	u611
	goto	u610
u611:
	goto	l1012
u610:
	
l1008:	
	btfss	(5),2	;volatile
	goto	u621
	goto	u620
u621:
	goto	l1012
u620:
	
l1010:	
	clrf	(_store$326)
	goto	l1012
	
l104:	
	
l1012:	
	movf	(_store$326),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+05h
	line	79
	
l1014:	
	clrf	(_store$327)
	incf	(_store$327),f
	
l1016:	
	movf	(0+(_V)+06h),w
	btfss	status,2
	goto	u631
	goto	u630
u631:
	goto	l1022
u630:
	
l1018:	
	btfss	(5),1	;volatile
	goto	u641
	goto	u640
u641:
	goto	l1022
u640:
	
l1020:	
	clrf	(_store$327)
	goto	l1022
	
l106:	
	
l1022:	
	movf	(_store$327),w
	movwf	(??_store+0)+0
	movf	(??_store+0)+0,w
	movwf	0+(_V)+06h
	line	80
	
l1024:	
	clrf	(_st)
	line	81
	
l107:	
	return
	opt stack 0
GLOBAL	__end_of_store
	__end_of_store:
	signat	_store,88
	global	_set

;; *************** function _set *****************
;; Defined at:
;;		line 82 in file "/home/newtonis/Robots/chiari/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       2       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	82
global __ptext2
__ptext2:	;psect for function _set
psect	text2
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	82
	global	__size_of_set
	__size_of_set	equ	__end_of_set-_set
	
_set:	
;incstack = 0
	opt	stack 6
; Regs used in _set: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	83
	
l1194:	
	movf	((_st)),w
	btfss	status,2
	goto	u891
	goto	u890
u891:
	goto	l115
u890:
	line	84
	
l1196:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((_t)),w
iorwf	((_t+1)),w
	btfss	status,2
	goto	u901
	goto	u900
u901:
	goto	l111
u900:
	line	85
	
l1198:	
	bcf	(6),4	;volatile
	line	86
	
l1200:	
	movf	(_V),w
	skipz
	bsf	(6),5	;volatile
	skipnz
	bcf	(6),5	;volatile
	line	87
	movf	0+(_V)+01h,w
	skipz
	bsf	(5),6	;volatile
	skipnz
	bcf	(5),6	;volatile
	line	88
	movf	0+(_V)+02h,w
	skipz
	bsf	(5),7	;volatile
	skipnz
	bcf	(5),7	;volatile
	line	89
	movf	0+(_V)+03h,w
	skipz
	bsf	(5),0	;volatile
	skipnz
	bcf	(5),0	;volatile
	line	95
	movlw	01h
	movwf	(_t)
	movlw	0
	movwf	((_t))+1
	line	96
	goto	l1204
	
l111:	
	line	97
	bsf	(6),4	;volatile
	line	98
	
l1202:	
	movf	0+(_V)+04h,w
	skipz
	bsf	(6),5	;volatile
	skipnz
	bcf	(6),5	;volatile
	line	99
	movf	0+(_V)+05h,w
	skipz
	bsf	(5),6	;volatile
	skipnz
	bcf	(5),6	;volatile
	line	100
	movf	0+(_V)+06h,w
	skipz
	bsf	(5),7	;volatile
	skipnz
	bcf	(5),7	;volatile
	line	101
	movf	0+(_V)+07h,w
	skipz
	bsf	(5),0	;volatile
	skipnz
	bcf	(5),0	;volatile
	line	102
	movlw	01h
	movwf	(_t)
	movlw	0
	movwf	((_t))+1
	goto	l1204
	line	104
	
l112:	
	line	106
	
l1204:	
	clrf	(set@j)
	clrf	(set@j+1)
	
l1206:	
	movf	(set@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u915
	movlw	08h
	subwf	(set@j),w
u915:

	skipc
	goto	u911
	goto	u910
u911:
	goto	l1210
u910:
	goto	l114
	
l1208:	
	goto	l114
	
l113:	
	
l1210:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(set@j),w
	addlw	low(_V|((0x0)<<8))&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	
l1212:	
	movlw	01h
	addwf	(set@j),f
	skipnc
	incf	(set@j+1),f
	movlw	0
	addwf	(set@j+1),f
	
l1214:	
	movf	(set@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u925
	movlw	08h
	subwf	(set@j),w
u925:

	skipc
	goto	u921
	goto	u920
u921:
	goto	l1210
u920:
	
l114:	
	line	107
	clrf	(_st)
	incf	(_st),f
	goto	l115
	line	108
	
l110:	
	line	109
	
l115:	
	return
	opt stack 0
GLOBAL	__end_of_set
	__end_of_set:
	signat	_set,88
	global	_init

;; *************** function _init *****************
;; Defined at:
;;		line 160 in file "/home/newtonis/Robots/chiari/Sensors/main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	160
global __ptext3
__ptext3:	;psect for function _init
psect	text3
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	160
	global	__size_of_init
	__size_of_init	equ	__end_of_init-_init
	
_init:	
;incstack = 0
	opt	stack 6
; Regs used in _init: [wreg+status,2]
	line	161
	
l1048:	
	movlw	low(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	162
	
l1050:	
	clrf	(_contador)
	line	163
	
l1052:	
	clrf	(_estado)
	line	164
	
l1054:	
	clrf	(_ciclos)
	line	165
	
l1056:	
	clrf	(_actual)
	line	168
	
l132:	
	return
	opt stack 0
GLOBAL	__end_of_init
	__end_of_init:
	signat	_init,88
	global	_configurar_pwm

;; *************** function _configurar_pwm *****************
;; Defined at:
;;		line 176 in file "/home/newtonis/Robots/chiari/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SetDuty
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	176
global __ptext4
__ptext4:	;psect for function _configurar_pwm
psect	text4
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	176
	global	__size_of_configurar_pwm
	__size_of_configurar_pwm	equ	__end_of_configurar_pwm-_configurar_pwm
	
_configurar_pwm:	
;incstack = 0
	opt	stack 4
; Regs used in _configurar_pwm: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	177
	
l1216:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(18),2	;volatile
	line	178
	
l1218:	
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	andwf	(18),f	;volatile
	line	179
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(18),f	;volatile
	line	181
	
l1220:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(134)^080h,3	;volatile
	line	182
	
l1222:	
	movlw	low(011h)
	movwf	(146)^080h	;volatile
	line	188
	
l1224:	
	movlw	low(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(23)	;volatile
	line	192
	
l1226:	
	movlw	0Fh
	movwf	(SetDuty@S)
	movlw	0
	movwf	((SetDuty@S))+1
	fcall	_SetDuty
	line	193
	
l138:	
	return
	opt stack 0
GLOBAL	__end_of_configurar_pwm
	__end_of_configurar_pwm:
	signat	_configurar_pwm,88
	global	_SetDuty

;; *************** function _SetDuty *****************
;; Defined at:
;;		line 169 in file "/home/newtonis/Robots/chiari/Sensors/main.c"
;; Parameters:    Size  Location     Type
;;  S               2    8[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       2       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       2       0       0
;;      Totals:         0       4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_configurar_pwm
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	169
global __ptext5
__ptext5:	;psect for function _SetDuty
psect	text5
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	169
	global	__size_of_SetDuty
	__size_of_SetDuty	equ	__end_of_SetDuty-_SetDuty
	
_SetDuty:	
;incstack = 0
	opt	stack 4
; Regs used in _SetDuty: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	172
	
l1188:	
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(SetDuty@S),w
	movwf	(??_SetDuty+0)+0
	movlw	0
	andwf	(SetDuty@S+1),w
	movwf	1+(??_SetDuty+0)+0
	movf	1+(??_SetDuty+0)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(0)^80h
	subwf	btemp+1,w
	skipz
	goto	u875
	movlw	02h
	subwf	0+(??_SetDuty+0)+0,w
u875:

	skipnc
	goto	u871
	goto	u870
	
u871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(23),5	;volatile
	goto	u884
u870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(23),5	;volatile
u884:
	line	173
	
l1190:	
	movf	(SetDuty@S),w
	andlw	01h
	movwf	(??_SetDuty+0)+0
	swapf	(??_SetDuty+0)+0,f
	movf	(23),w	;volatile
	xorwf	(??_SetDuty+0)+0,w
	andlw	not (((1<<1)-1)<<4)
	xorwf	(??_SetDuty+0)+0,w
	movwf	(23)	;volatile
	line	174
	
l1192:	
	movlw	04h
	movwf	(___awdiv@divisor)
	movlw	0
	movwf	((___awdiv@divisor))+1
	movf	(SetDuty@S+1),w
	movwf	(___awdiv@dividend+1)
	movf	(SetDuty@S),w
	movwf	(___awdiv@dividend)
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	movwf	(21)	;volatile
	line	175
	
l135:	
	return
	opt stack 0
GLOBAL	__end_of_SetDuty
	__end_of_SetDuty:
	signat	_SetDuty,4216
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    6[BANK0 ] int 
;;  sign            1    5[BANK0 ] unsigned char 
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       4       0       0
;;      Locals:         0       4       0       0
;;      Temps:          1       0       0       0
;;      Totals:         1       8       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SetDuty
;;		_DUTYSet
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___awdiv
psect	text6
	file	"/opt/microchip/xc8/v1.34/sources/common/awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1144:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1146:	
	btfss	(___awdiv@divisor+1),7
	goto	u771
	goto	u770
u771:
	goto	l1152
u770:
	line	16
	
l1148:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1150:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1152
	line	18
	
l372:	
	line	19
	
l1152:	
	btfss	(___awdiv@dividend+1),7
	goto	u781
	goto	u780
u781:
	goto	l1158
u780:
	line	20
	
l1154:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1156:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1158
	line	22
	
l373:	
	line	23
	
l1158:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1160:	
	movf	((___awdiv@divisor)),w
iorwf	((___awdiv@divisor+1)),w
	btfsc	status,2
	goto	u791
	goto	u790
u791:
	goto	l1180
u790:
	line	25
	
l1162:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1168
	
l376:	
	line	27
	
l1164:	
	movlw	01h
	
u805:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u805
	line	28
	
l1166:	
	movlw	low(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1168
	line	29
	
l375:	
	line	26
	
l1168:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u811
	goto	u810
u811:
	goto	l1164
u810:
	goto	l1170
	
l377:	
	goto	l1170
	line	30
	
l378:	
	line	31
	
l1170:	
	movlw	01h
	
u825:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u825
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u835
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u835:
	skipc
	goto	u831
	goto	u830
u831:
	goto	l1176
u830:
	line	33
	
l1172:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1174:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1176
	line	35
	
l379:	
	line	36
	
l1176:	
	movlw	01h
	
u845:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u845
	line	37
	
l1178:	
	movlw	01h
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u851
	goto	u850
u851:
	goto	l1170
u850:
	goto	l1180
	
l380:	
	goto	l1180
	line	38
	
l374:	
	line	39
	
l1180:	
	movf	((___awdiv@sign)),w
	btfsc	status,2
	goto	u861
	goto	u860
u861:
	goto	l1184
u860:
	line	40
	
l1182:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1184
	
l381:	
	line	41
	
l1184:	
	movf	(___awdiv@quotient+1),w
	movwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	movwf	(?___awdiv)
	goto	l382
	
l1186:	
	line	42
	
l382:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_configurar_IO

;; *************** function _configurar_IO *****************
;; Defined at:
;;		line 218 in file "/home/newtonis/Robots/chiari/Sensors/main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          0       0       0       0
;;      Totals:         0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	218
global __ptext7
__ptext7:	;psect for function _configurar_IO
psect	text7
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	218
	global	__size_of_configurar_IO
	__size_of_configurar_IO	equ	__end_of_configurar_IO-_configurar_IO
	
_configurar_IO:	
;incstack = 0
	opt	stack 6
; Regs used in _configurar_IO: []
	line	219
	
l1058:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	line	221
	bsf	(1074/8)^080h,(1074)&7	;volatile
	line	222
	bsf	(1073/8)^080h,(1073)&7	;volatile
	line	223
	bsf	(1072/8)^080h,(1072)&7	;volatile
	line	224
	bsf	(1068/8)^080h,(1068)&7	;volatile
	line	225
	bsf	(1067/8)^080h,(1067)&7	;volatile
	line	227
	bcf	(1065/8)^080h,(1065)&7	;volatile
	line	228
	bcf	(1064/8)^080h,(1064)&7	;volatile
	line	229
	bcf	(1071/8)^080h,(1071)&7	;volatile
	line	230
	bcf	(1070/8)^080h,(1070)&7	;volatile
	line	231
	bcf	(1077/8)^080h,(1077)&7	;volatile
	line	232
	
l147:	
	return
	opt stack 0
GLOBAL	__end_of_configurar_IO
	__end_of_configurar_IO:
	signat	_configurar_IO,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 146 in file "/home/newtonis/Robots/chiari/Sensors/main.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK2
;;      Params:         0       0       0       0
;;      Locals:         0       0       0       0
;;      Temps:          4       0       0       0
;;      Totals:         4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	line	146
global __ptext8
__ptext8:	;psect for function _ISR
psect	text8
	file	"/home/newtonis/Robots/chiari/Sensors/main.c"
	line	146
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+0)
	movf	fsr0,w
	movwf	(??_ISR+1)
	movf	pclath,w
	movwf	(??_ISR+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+3)
	ljmp	_ISR
psect	text8
	line	147
	
i1l1096:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1121/8)^080h,(1121)&7	;volatile
	goto	u71_21
	goto	u71_20
u71_21:
	goto	i1l129
u71_20:
	
i1l1098:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(97/8),(97)&7	;volatile
	goto	u72_21
	goto	u72_20
u72_21:
	goto	i1l129
u72_20:
	line	149
	
i1l1100:	
	movlw	01h
	addwf	(_times),f
	movlw	0
	skipnc
movlw 1
	addwf	(_times+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(_times+2),f
	movlw	0
	skipnc
movlw 1
	addwf	(_times+3),f
	line	150
	
i1l1102:	
		movlw	248
	xorwf	((_times)),w
	skipz
	goto	u73_21
	decf	((_times+1)),w
iorwf	((_times+2)),w
iorwf	((_times+3)),w
	btfss	status,2
	goto	u73_21
	goto	u73_20
u73_21:
	goto	i1l1106
u73_20:
	line	151
	
i1l1104:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1075/8)^080h,(1075)&7	;volatile
	goto	i1l1106
	line	152
	
i1l127:	
	line	153
	
i1l1106:	
		movlw	48
	bcf	status, 5	;RP0=0, select bank0
	xorwf	((_times)),w
	movlw	2
	skipnz
	xorwf	((_times+1)),w
iorwf	((_times+2)),w
iorwf	((_times+3)),w
	btfss	status,2
	goto	u74_21
	goto	u74_20
u74_21:
	goto	i1l1112
u74_20:
	line	154
	
i1l1108:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1075/8)^080h,(1075)&7	;volatile
	line	155
	
i1l1110:	
	movlw	high highword(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_times+3)
	movlw	low highword(0)
	movwf	(_times+2)
	movlw	high(0)
	movwf	(_times+1)
	movlw	low(0)
	movwf	(_times)

	goto	i1l1112
	line	156
	
i1l128:	
	line	157
	
i1l1112:	
	bcf	(97/8),(97)&7	;volatile
	goto	i1l129
	line	158
	
i1l126:	
	line	159
	
i1l129:	
	movf	(??_ISR+3),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_ISR+2),w
	movwf	pclath
	movf	(??_ISR+1),w
	movwf	fsr0
	swapf	(??_ISR+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
global	___latbits
___latbits	equ	0
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
